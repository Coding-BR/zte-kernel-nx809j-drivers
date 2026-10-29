#!/usr/bin/env python3
"""Compare KCFI guards and type IDs at indirect AArch64 callsites."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import re
import sys
from pathlib import Path
from typing import Any


INSTRUCTION_RE = re.compile(
    r"^\s*([0-9a-f]+):\s+[0-9a-f]{8}\s+([a-z0-9.]+)(?:\s+(.*?))?\s*$",
    re.IGNORECASE,
)


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def read_manifest(root: Path) -> dict[str, Any]:
    payload = json.loads((root / "manifest.json").read_text(encoding="utf-8"))
    if not isinstance(payload, dict) or not isinstance(payload.get("records"), list):
        raise ValueError(f"invalid assembly manifest: {root}")
    if payload.get("passed") is not True:
        raise ValueError(f"assembly manifest did not pass extraction: {root}")
    source = payload.get("source")
    if not isinstance(source, dict) or not re.fullmatch(
        r"[0-9a-f]{64}", str(source.get("sha256", "")), re.IGNORECASE
    ):
        raise ValueError(f"assembly manifest has no valid source SHA-256: {root}")
    return payload


def select_record(manifest: dict[str, Any], selector: str, root: Path) -> dict[str, Any]:
    name, separator, raw_offset = selector.partition("@")
    records = [
        item for item in manifest["records"]
        if isinstance(item, dict)
        and (item.get("function") == name or item.get("function_id") == name)
    ]
    if separator:
        try:
            wanted = int(raw_offset, 0)
        except ValueError:
            wanted = int(raw_offset, 16)

        def matches_offset(record: dict[str, Any]) -> bool:
            for key in ("ghidra_entry", "symbol_start", "entry", "symbol_offset"):
                value = record.get(key)
                if value is None:
                    continue
                try:
                    if int(str(value), 0) == wanted:
                        return True
                except ValueError:
                    try:
                        if int(str(value), 16) == wanted:
                            return True
                    except ValueError:
                        continue
            return False

        narrowed = [item for item in records if matches_offset(item)]
        if narrowed:
            records = narrowed
    if len(records) != 1:
        raise ValueError(
            f"assembly selector {selector!r} resolved to {len(records)} records in {root}"
        )
    record = records[0]
    if record.get("found") is not True or record.get("complete") is not True:
        raise ValueError(f"assembly record is incomplete for {selector}: {record}")
    asm_path = root / str(record.get("file", ""))
    if not asm_path.is_file():
        raise FileNotFoundError(f"assembly file missing for {selector}: {asm_path}")
    recorded_hash = record.get("sha256")
    actual_hash = sha256_file(asm_path)
    if recorded_hash != actual_hash:
        raise ValueError(f"assembly file hash differs from manifest: {asm_path}")
    record["_asm_path"] = asm_path
    record["_asm_sha256"] = actual_hash
    return record


def parse_instructions(path: Path) -> list[dict[str, Any]]:
    result = []
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        match = INSTRUCTION_RE.match(line)
        if not match:
            continue
        result.append({
            "address": int(match.group(1), 16),
            "mnemonic": match.group(2).lower(),
            "operands": (match.group(3) or "").split("//", 1)[0].strip().lower(),
        })
    if not result:
        raise ValueError(f"no AArch64 instructions parsed from {path}")
    return result


def parse_register_pair(operands: str) -> tuple[int, int] | None:
    match = re.fullmatch(r"w(\d+)\s*,\s*w(\d+)", operands)
    if not match:
        return None
    return int(match.group(1)), int(match.group(2))


def immediate_value(text: str) -> int:
    return int(text, 16) if text.startswith("0x") else int(text, 10)


def decode_type_id(instructions: list[dict[str, Any]], compare_index: int, register: int) -> int | None:
    writes = []
    low = max(0, compare_index - 5)
    for index in range(low, compare_index):
        instruction = instructions[index]
        match = re.fullmatch(
            r"w(\d+)\s*,\s*#(0x[0-9a-f]+|[0-9]+)"
            r"(?:\s*,\s*lsl\s*#([0-9]+))?",
            instruction["operands"],
        )
        if not match or int(match.group(1)) != register:
            continue
        writes.append((instruction["mnemonic"], immediate_value(match.group(2)), int(match.group(3) or 0)))

    value = 0
    known_mask = 0
    for mnemonic, immediate, shift in writes:
        if shift not in (0, 16):
            return None
        if mnemonic in {"movz", "mov"}:
            value = (immediate << shift) & 0xFFFFFFFF
            known_mask = 0xFFFFFFFF
        elif mnemonic == "movn":
            value = (~(immediate << shift)) & 0xFFFFFFFF
            known_mask = 0xFFFFFFFF
        elif mnemonic == "movk":
            half_mask = 0xFFFF << shift
            value = (value & ~half_mask) | ((immediate & 0xFFFF) << shift)
            known_mask |= half_mask
    return value if known_mask == 0xFFFFFFFF else None


def find_slot_offset(instructions: list[dict[str, Any]], before_index: int, target_register: int) -> int | None:
    lower = max(0, before_index - 8)
    load_re = re.compile(r"x(\d+)\s*,\s*\[x\d+\s*,\s*#(0x[0-9a-f]+|[0-9]+)\]")
    for index in range(before_index - 1, lower - 1, -1):
        match = load_re.fullmatch(instructions[index]["operands"])
        if match and int(match.group(1)) == target_register:
            return immediate_value(match.group(2))
    return None


def extract_callsites(path: Path) -> dict[str, Any]:
    instructions = parse_instructions(path)
    sites = []
    for call_index, call in enumerate(instructions):
        if call["mnemonic"] != "blr":
            continue
        call_register_match = re.fullmatch(r"x(\d+)", call["operands"])
        if not call_register_match:
            sites.append({"address": f"0x{call['address']:x}", "passed": False, "reason": "unsupported_blr_operand"})
            continue

        guard_index = call_index - 1
        branch_index = call_index - 2
        compare_index = call_index - 3
        if compare_index < 0:
            sites.append({"address": f"0x{call['address']:x}", "passed": False, "reason": "missing_kcfi_guard"})
            continue

        guard = instructions[guard_index]
        branch = instructions[branch_index]
        compare = instructions[compare_index]
        pair = parse_register_pair(compare["operands"]) if compare["mnemonic"] == "cmp" else None
        branch_target = re.match(r"(?:0x)?([0-9a-f]+)", branch["operands"])
        trap_match = re.fullmatch(r"#(0x[0-9a-f]+|[0-9]+)", guard["operands"])
        if (
            pair is None
            or branch["mnemonic"] != "b.eq"
            or branch_target is None
            or int(branch_target.group(1), 16) != call["address"]
            or guard["mnemonic"] != "brk"
            or trap_match is None
            or immediate_value(trap_match.group(1)) != 0x8228
        ):
            sites.append({"address": f"0x{call['address']:x}", "passed": False, "reason": "unsupported_kcfi_guard_shape"})
            continue

        loaded_register, type_register = pair
        load_re = re.compile(
            rf"w{loaded_register}\s*,\s*\[x(\d+)\s*,\s*#-(?:0x)?0*4\]"
        )
        load_match = None
        load_index = None
        for index in range(compare_index - 1, max(-1, compare_index - 7), -1):
            match = load_re.fullmatch(instructions[index]["operands"])
            if match:
                load_match = match
                load_index = index
                break
        type_id = decode_type_id(instructions, compare_index, type_register)
        target_register = int(call_register_match.group(1))
        if (
            load_match is None
            or load_index is None
            or int(load_match.group(1)) != target_register
            or type_id is None
        ):
            sites.append({"address": f"0x{call['address']:x}", "passed": False, "reason": "could_not_decode_type_id_or_target"})
            continue
        sites.append({
            "address": f"0x{call['address']:x}",
            "slot_offset": find_slot_offset(instructions, load_index, target_register),
            "type_id": f"0x{type_id:08x}",
            "guarded": True,
            "passed": True,
        })

    return {"indirect_call_count": sum(item["mnemonic"] == "blr" for item in instructions), "callsites": sites}


def parse_pair(value: str) -> tuple[str, str]:
    stock, separator, candidate = value.partition("=")
    if not separator or not stock or not candidate:
        raise ValueError("--function-pair must be STOCK_FUNCTION[@ENTRY]=CANDIDATE_FUNCTION[@ENTRY]")
    return stock, candidate


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--stock-dir", type=Path, required=True)
    parser.add_argument("--candidate-dir", type=Path, required=True)
    parser.add_argument("--function-pair", action="append", type=parse_pair, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()

    stock_root = args.stock_dir.resolve()
    candidate_root = args.candidate_dir.resolve()
    stock_manifest = read_manifest(stock_root)
    candidate_manifest = read_manifest(candidate_root)
    results = []
    for stock_selector, candidate_selector in args.function_pair:
        stock_record = select_record(stock_manifest, stock_selector, stock_root)
        candidate_record = select_record(candidate_manifest, candidate_selector, candidate_root)
        stock_sites = extract_callsites(stock_record["_asm_path"])
        candidate_sites = extract_callsites(candidate_record["_asm_path"])
        stock_sequence = [
            (site.get("slot_offset"), site.get("type_id"), site.get("passed"))
            for site in stock_sites["callsites"]
        ]
        candidate_sequence = [
            (site.get("slot_offset"), site.get("type_id"), site.get("passed"))
            for site in candidate_sites["callsites"]
        ]
        all_guarded = (
            all(site.get("passed") is True for site in stock_sites["callsites"])
            and all(site.get("passed") is True for site in candidate_sites["callsites"])
        )
        all_slots_identified = (
            all(site.get("slot_offset") is not None for site in stock_sites["callsites"])
            and all(site.get("slot_offset") is not None for site in candidate_sites["callsites"])
        )
        passed = (
            stock_sites["indirect_call_count"] == candidate_sites["indirect_call_count"]
            and len(stock_sites["callsites"]) == len(candidate_sites["callsites"])
            and all_guarded
            and all_slots_identified
            and stock_sequence == candidate_sequence
        )
        results.append({
            "stock_function": stock_selector,
            "candidate_function": candidate_selector,
            "passed": passed,
            "stock": {
                "assembly": str(stock_record["_asm_path"]),
                "assembly_sha256": stock_record["_asm_sha256"],
                "module_sha256": stock_manifest.get("source", {}).get("sha256"),
                **stock_sites,
            },
            "candidate": {
                "assembly": str(candidate_record["_asm_path"]),
                "assembly_sha256": candidate_record["_asm_sha256"],
                "module_sha256": candidate_manifest.get("source", {}).get("sha256"),
                **candidate_sites,
            },
            "comparison": {
                "indirect_call_count_match": stock_sites["indirect_call_count"] == candidate_sites["indirect_call_count"],
                "all_sites_guarded": all_guarded,
                "all_slots_identified": all_slots_identified,
                "slot_type_sequence_match": stock_sequence == candidate_sequence,
            },
        })

    stock_site_total = sum(item["stock"]["indirect_call_count"] for item in results)
    candidate_site_total = sum(item["candidate"]["indirect_call_count"] for item in results)
    at_least_one_site = stock_site_total > 0 and candidate_site_total > 0
    report = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "stock_manifest_sha256": sha256_file(stock_root / "manifest.json"),
        "candidate_manifest_sha256": sha256_file(candidate_root / "manifest.json"),
        "indirect_call_count_total": {"stock": stock_site_total, "candidate": candidate_site_total},
        "at_least_one_indirect_callsite": at_least_one_site,
        "passed": bool(results) and at_least_one_site and all(item["passed"] for item in results),
        "results": results,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"output": str(args.output), "passed": report["passed"], "functions": len(results)}))
    return 0 if report["passed"] else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError) as error:
        print(f"compare_kcfi_callsites.py: {error}", file=sys.stderr)
        raise SystemExit(2)
