#!/usr/bin/env python3
"""Validate a narrowly bounded Ghidra basic-block reordering equivalence."""

from __future__ import annotations

import argparse
from collections import Counter
import datetime as dt
import hashlib
import json
from pathlib import Path
import re
import sys
from typing import Any


PCODE_OP_RE = re.compile(r"\b([A-Z][A-Z0-9_]*)\b")
ANONYMOUS_BSS_RE = re.compile(r"\.bss(?:\+0x[0-9a-fA-F]+)?$")
CONTROL_MNEMONICS = {
    "b",
    "bl",
    "blr",
    "br",
    "brk",
    "cbz",
    "cbnz",
    "tbz",
    "tbnz",
    "ret",
}


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def read_json(path: Path) -> dict[str, Any]:
    value = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(value, dict):
        raise ValueError(f"expected JSON object: {path}")
    return value


def read_jsonl(path: Path) -> list[dict[str, Any]]:
    values = []
    for line in path.read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        value = json.loads(line)
        if not isinstance(value, dict):
            raise ValueError(f"expected JSON object per line: {path}")
        values.append(value)
    return values


def function_record(root: Path, function: str) -> dict[str, Any]:
    matches = [
        record
        for record in read_jsonl(root / "functions.jsonl")
        if record.get("name") == function
    ]
    if len(matches) != 1:
        raise ValueError(f"expected one {function} record in {root}, got {len(matches)}")
    return matches[0]


def pcode_surface(path: Path) -> dict[str, Any]:
    records = read_jsonl(path)
    operation_triplets: Counter[tuple[str, int, str]] = Counter()
    mnemonics: Counter[str] = Counter()
    controls: Counter[str] = Counter()
    for record in records:
        instruction = str(record.get("instruction", "")).strip()
        mnemonic = instruction.split(maxsplit=1)[0].lower() if instruction else ""
        pcode = str(record.get("pcode", ""))
        match = PCODE_OP_RE.search(pcode)
        if match is None:
            raise ValueError(f"cannot identify P-Code operation: {pcode}")
        operation = match.group(1)
        op_index = int(record.get("op_index", -1))
        operation_triplets[(mnemonic, op_index, operation)] += 1
        mnemonics[mnemonic] += 1
        if mnemonic in CONTROL_MNEMONICS or mnemonic.startswith("b."):
            controls[mnemonic] += 1
    return {
        "records": len(records),
        "operation_triplets": operation_triplets,
        "mnemonics": mnemonics,
        "controls": controls,
    }


def counter_rows(counter: Counter[Any]) -> list[dict[str, Any]]:
    rows = []
    for key, count in sorted(counter.items(), key=lambda item: repr(item[0])):
        rows.append(
            {
                "key": list(key) if isinstance(key, tuple) else key,
                "count": count,
            }
        )
    return rows


def bounded_move_width_equivalence(
    stock: Counter[tuple[str, int, str]],
    candidate: Counter[tuple[str, int, str]],
) -> tuple[bool, dict[str, Any]]:
    stock_only = stock - candidate
    candidate_only = candidate - stock
    if not stock_only and not candidate_only:
        return True, {
            "stock_only": [],
            "candidate_only": [],
            "mode": "EXACT",
            "accepted_rule": (
                "exact P-Code operation multiset or one mov operation lowered "
                "as INT_ZEXT versus COPY"
            ),
        }
    expected_stock = Counter({("mov", 0, "INT_ZEXT"): 1})
    expected_candidate = Counter({("mov", 0, "COPY"): 1})
    direct = stock_only == expected_stock and candidate_only == expected_candidate
    reverse = stock_only == expected_candidate and candidate_only == expected_stock
    return direct or reverse, {
        "stock_only": counter_rows(stock_only),
        "candidate_only": counter_rows(candidate_only),
        "mode": "BOUNDED_MOVE_WIDTH" if direct or reverse else "REJECTED",
        "accepted_rule": (
            "exact P-Code operation multiset or one mov operation lowered "
            "as INT_ZEXT versus COPY"
        ),
    }


def bounded_strict_failure_scope(failures: list[str]) -> bool:
    actual = set(failures)
    allowed = {"normalized_decompiled_c", "pcode_operation_shape"}
    return bool(actual) and actual <= allowed


def relocation_multiset_equivalence(
    stock: list[str], candidate: list[str], function: str
) -> tuple[bool, dict[str, Any]]:
    stock_only = Counter(stock) - Counter(candidate)
    candidate_only = Counter(candidate) - Counter(stock)

    if not stock_only and not candidate_only:
        return True, {
            "stock_only": [],
            "candidate_only": [],
            "mode": "EXACT",
            "accepted_rule": (
                "exact relocation multiset or one local lock_class_key may be "
                "stripped to an anonymous .bss target"
            ),
        }

    def split(value: str) -> tuple[str, str]:
        kind, target = value.split(" ", 1)
        return kind, target

    expected_types = {
        "R_AARCH64_ADR_PREL_PG_HI21",
        "R_AARCH64_ADD_ABS_LO12_NC",
    }
    if sum(stock_only.values()) != 2 or sum(candidate_only.values()) != 2:
        passed = False
    else:
        stock_parts = [split(value) for value in stock_only.elements()]
        candidate_parts = [split(value) for value in candidate_only.elements()]
        stock_types = {kind for kind, _ in stock_parts}
        candidate_types = {kind for kind, _ in candidate_parts}
        stock_targets = {target for _, target in stock_parts}
        candidate_targets = {target for _, target in candidate_parts}
        anonymous_stock = len(stock_targets) == 1 and ANONYMOUS_BSS_RE.fullmatch(
            next(iter(stock_targets))
        )
        anonymous_candidate = len(candidate_targets) == 1 and ANONYMOUS_BSS_RE.fullmatch(
            next(iter(candidate_targets))
        )
        named_stock = stock_targets == {f"{function}.__key"}
        named_candidate = candidate_targets == {f"{function}.__key"}
        passed = bool(
            stock_types == expected_types
            and candidate_types == expected_types
            and ((anonymous_stock and named_candidate) or (named_stock and anonymous_candidate))
        )
    return passed, {
        "stock_only": counter_rows(stock_only),
        "candidate_only": counter_rows(candidate_only),
        "mode": "BOUNDED_LOCAL_LOCK_KEY" if passed else "REJECTED",
        "accepted_rule": (
            "exact relocation multiset or one local lock_class_key may be "
            "stripped to an anonymous .bss target"
        ),
    }


def call_targets(root: Path, function: str) -> Counter[str]:
    return Counter(
        str(record.get("target"))
        for record in read_jsonl(root / "calls.jsonl")
        if record.get("caller") == function
    )


def strict_result(report: dict[str, Any], function: str) -> dict[str, Any]:
    matches = [
        result
        for result in report.get("results", [])
        if isinstance(result, dict) and result.get("function") == function
    ]
    if len(matches) != 1:
        raise ValueError(f"strict report has no unique {function} result")
    return matches[0]


def resolved_strings(result: dict[str, Any], side: str) -> Counter[tuple[str, str]]:
    return Counter(
        (str(item.get("sha256")), str(item.get("value")))
        for item in result.get(side, {}).get("resolved_strings", [])
        if isinstance(item, dict)
    )


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--stock-export", type=Path, required=True)
    parser.add_argument("--candidate-export", type=Path, required=True)
    parser.add_argument("--candidate-module", type=Path, required=True)
    parser.add_argument("--strict-ghidra-report", type=Path, required=True)
    parser.add_argument("--assembly-report", type=Path, required=True)
    parser.add_argument("--function", required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()

    stock_root = args.stock_export.resolve()
    candidate_root = args.candidate_export.resolve()
    candidate_module = args.candidate_module.resolve()
    strict_path = args.strict_ghidra_report.resolve()
    assembly_path = args.assembly_report.resolve()
    strict = read_json(strict_path)
    assembly = read_json(assembly_path)
    strict_item = strict_result(strict, args.function)
    assembly_item = strict_result(assembly, args.function)
    stock_record = function_record(stock_root, args.function)
    candidate_record = function_record(candidate_root, args.function)
    stock_pcode_path = stock_root / str(stock_record["pcode_file"])
    candidate_pcode_path = candidate_root / str(candidate_record["pcode_file"])
    stock_surface = pcode_surface(stock_pcode_path)
    candidate_surface = pcode_surface(candidate_pcode_path)
    move_equivalent, move_evidence = bounded_move_width_equivalence(
        stock_surface["operation_triplets"],
        candidate_surface["operation_triplets"],
    )
    relocation_equivalent, relocation_evidence = relocation_multiset_equivalence(
        list(assembly_item["stock"]["relocations"]),
        list(assembly_item["candidate"]["relocations"]),
        args.function,
    )
    stock_calls = call_targets(stock_root, args.function)
    candidate_calls = call_targets(candidate_root, args.function)
    stock_strings = resolved_strings(strict_item, "stock")
    candidate_strings = resolved_strings(strict_item, "candidate")
    module_hash = sha256_file(candidate_module)
    strict_module = strict.get("candidate_module", {})

    checks = {
        "strict_failure_is_disclosed": strict.get("passed") is False,
        "strict_failure_scope": bounded_strict_failure_scope(
            list(strict_item.get("failures", []))
        ),
        "candidate_module_hash_binding": strict_module.get("sha256") == module_hash,
        "assembly_section": assembly_item.get("checks", {}).get("section") is True,
        "assembly_symbol_size": assembly_item["stock"].get("symbol_size")
        == assembly_item["candidate"].get("symbol_size"),
        "assembly_instruction_count": assembly_item["stock"].get(
            "instruction_count"
        )
        == assembly_item["candidate"].get("instruction_count"),
        "assembly_relocation_count": len(assembly_item["stock"]["relocations"])
        == len(assembly_item["candidate"]["relocations"]),
        "assembly_relocation_multiset": relocation_equivalent,
        "ghidra_body_bytes": stock_record.get("body_bytes")
        == candidate_record.get("body_bytes"),
        "pcode_record_count": stock_surface["records"]
        == candidate_surface["records"],
        "instruction_mnemonic_multiset": stock_surface["mnemonics"]
        == candidate_surface["mnemonics"],
        "control_mnemonic_multiset": stock_surface["controls"]
        == candidate_surface["controls"],
        "pcode_operation_multiset_bounded": move_equivalent,
        "direct_call_target_multiset": stock_calls == candidate_calls,
        "resolved_string_multiset": stock_strings == candidate_strings,
    }
    failures = [name for name, passed in checks.items() if not passed]
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "ghidra_block_order_tolerant_bounded_semantic_surface",
        "function": args.function,
        "passed": not failures,
        "checks": checks,
        "failures": failures,
        "candidate_module": {
            "path": str(candidate_module),
            "sha256": module_hash,
        },
        "strict_ghidra_report": {
            "path": str(strict_path),
            "sha256": sha256_file(strict_path),
            "passed": strict.get("passed"),
            "failures": strict_item.get("failures"),
        },
        "assembly_report": {
            "path": str(assembly_path),
            "sha256": sha256_file(assembly_path),
            "passed": assembly.get("passed"),
            "failures": assembly.get("failures"),
        },
        "stock": {
            "export": str(stock_root),
            "body_bytes": stock_record.get("body_bytes"),
            "pcode_records": stock_surface["records"],
            "instruction_mnemonics": counter_rows(stock_surface["mnemonics"]),
            "control_mnemonics": counter_rows(stock_surface["controls"]),
            "call_targets": counter_rows(stock_calls),
            "resolved_strings": counter_rows(stock_strings),
        },
        "candidate": {
            "export": str(candidate_root),
            "body_bytes": candidate_record.get("body_bytes"),
            "pcode_records": candidate_surface["records"],
            "instruction_mnemonics": counter_rows(candidate_surface["mnemonics"]),
            "control_mnemonics": counter_rows(candidate_surface["controls"]),
            "call_targets": counter_rows(candidate_calls),
            "resolved_strings": counter_rows(candidate_strings),
        },
        "bounded_equivalences": {
            "pcode_move_width": move_evidence,
            "local_lock_class_key": relocation_evidence,
        },
        "limitations": [
            "This report does not claim byte-identical instruction ordering.",
            "It accepts only the disclosed block-order, register-width and local-key differences.",
            "Direct host tests, KCFI comparison and reproducible module builds remain mandatory.",
            "Physical touch-controller behavior still requires a later controlled hardware gate.",
        ],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    print(json.dumps({"passed": payload["passed"], "failures": failures}))
    return 0 if payload["passed"] else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, KeyError, json.JSONDecodeError) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(2)
