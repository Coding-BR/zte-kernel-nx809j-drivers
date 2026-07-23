#!/usr/bin/env python3
"""Compare selected functions across two deterministic Ghidra exports."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import re
import sys
from pathlib import Path
from typing import Any


DAT_RE = re.compile(r"&DAT_([0-9a-fA-F]+)")
PCODE_OP_RE = re.compile(r"\b([A-Z][A-Z0-9_]*)\b")
SOFTWARE_BREAKPOINT_CONTEXT_RE = re.compile(
    r"(SoftwareBreakpoint\(\s*0x[0-9a-fA-F]+\s*,\s*)"
    r"0x[0-9a-fA-F]+(\s*\))"
)
LOCAL_LABEL_RE = re.compile(r"\bLAB_[0-9a-fA-F]+\b")
ALLOC_TAG_ARGUMENT_RE = re.compile(
    r"(__kmalloc_cache_noprof\(\s*)"
    r"([A-Za-z_][A-Za-z0-9_]*)(\s*,)"
)


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def read_json(path: Path) -> dict[str, Any]:
    value = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(value, dict):
        raise ValueError(f"expected JSON object: {path}")
    return value


def read_jsonl(path: Path) -> list[dict[str, Any]]:
    records = []
    for line in path.read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        value = json.loads(line)
        if not isinstance(value, dict):
            raise ValueError(f"expected JSON object per line: {path}")
        records.append(value)
    return records


def function_index(root: Path) -> dict[str, dict[str, Any]]:
    return {
        str(record["name"]): record
        for record in read_jsonl(root / "functions.jsonl")
    }


def string_index(root: Path) -> dict[int, str]:
    result = {}
    for record in read_jsonl(root / "strings.jsonl"):
        address = record.get("address")
        value = record.get("value")
        if isinstance(address, str) and isinstance(value, str):
            try:
                numeric_address = int(address, 16)
            except ValueError:
                continue
            result[numeric_address] = value
    return result


def normalize_decompiled(
    text: str, strings: dict[int, str]
) -> tuple[str, list[dict[str, Any]], list[dict[str, Any]]]:
    evidence: list[dict[str, Any]] = []
    artifact_evidence: list[dict[str, Any]] = []

    def replace(match: re.Match[str]) -> str:
        address = int(match.group(1), 16)
        for delta in (0, 1):
            value = strings.get(address + delta)
            if value is None:
                continue
            fingerprint = hashlib.sha256(value.encode("utf-8")).hexdigest()
            evidence.append(
                {
                    "ghidra_address": f"{address:08x}",
                    "string_address_delta": delta,
                    "value": value,
                    "sha256": fingerprint,
                }
            )
            return f'GHIDRA_STRING[{json.dumps(value, ensure_ascii=True)}]'
        return match.group(0)

    replaced = DAT_RE.sub(replace, text.replace("\r\n", "\n"))

    def replace_breakpoint_context(match: re.Match[str]) -> str:
        artifact_evidence.append(
            {
                "kind": "software_breakpoint_context_address",
                "value": match.group(0),
            }
        )
        return f"{match.group(1)}GHIDRA_FUNCTION_ADDRESS{match.group(2)}"

    replaced = SOFTWARE_BREAKPOINT_CONTEXT_RE.sub(
        replace_breakpoint_context, replaced
    )

    def replace_alloc_tag(match: re.Match[str]) -> str:
        artifact_evidence.append(
            {
                "kind": "compiler_allocation_tag_symbol",
                "value": match.group(2),
            }
        )
        return f"{match.group(1)}GHIDRA_ALLOC_TAG{match.group(3)}"

    replaced = ALLOC_TAG_ARGUMENT_RE.sub(replace_alloc_tag, replaced)

    local_labels: dict[str, str] = {}

    def replace_local_label(match: re.Match[str]) -> str:
        label = match.group(0)
        normalized = local_labels.get(label)
        if normalized is None:
            normalized = f"GHIDRA_LOCAL_LABEL_{len(local_labels)}"
            local_labels[label] = normalized
            artifact_evidence.append(
                {
                    "kind": "ghidra_local_label_address",
                    "value": label,
                    "normalized": normalized,
                }
            )
        return normalized

    replaced = LOCAL_LABEL_RE.sub(replace_local_label, replaced)
    return re.sub(r"\s+", "", replaced), evidence, artifact_evidence


def pcode_shape(records: list[dict[str, Any]]) -> list[dict[str, Any]]:
    shape = []
    for record in records:
        pcode = str(record.get("pcode", ""))
        match = PCODE_OP_RE.search(pcode)
        if match is None:
            raise ValueError(f"cannot identify P-Code operation: {pcode}")
        instruction = str(record.get("instruction", "")).strip()
        mnemonic = instruction.split(maxsplit=1)[0].lower() if instruction else ""
        shape.append(
            {
                "instruction_mnemonic": mnemonic,
                "op_index": record.get("op_index"),
                "operation": match.group(1),
            }
        )
    return shape


def compare_function(
    function: str,
    stock_root: Path,
    candidate_root: Path,
    stock_record: dict[str, Any] | None,
    candidate_record: dict[str, Any] | None,
    stock_strings: dict[int, str],
    candidate_strings: dict[int, str],
) -> dict[str, Any]:
    if stock_record is None or candidate_record is None:
        return {
            "function": function,
            "passed": False,
            "failures": ["missing function record"],
        }

    paths: dict[str, dict[str, Path]] = {}
    for side, root, record in (
        ("stock", stock_root, stock_record),
        ("candidate", candidate_root, candidate_record),
    ):
        decompiled = root / str(record.get("decompiled_file", ""))
        pcode = root / str(record.get("pcode_file", ""))
        if not decompiled.is_file() or not pcode.is_file():
            return {
                "function": function,
                "passed": False,
                "failures": [f"missing {side} decompiled or P-Code file"],
            }
        paths[side] = {"decompiled": decompiled, "pcode": pcode}

    (
        stock_normalized,
        stock_string_evidence,
        stock_artifact_evidence,
    ) = normalize_decompiled(
        paths["stock"]["decompiled"].read_text(encoding="utf-8"), stock_strings
    )
    (
        candidate_normalized,
        candidate_string_evidence,
        candidate_artifact_evidence,
    ) = normalize_decompiled(
        paths["candidate"]["decompiled"].read_text(encoding="utf-8"),
        candidate_strings,
    )
    stock_shape = pcode_shape(read_jsonl(paths["stock"]["pcode"]))
    candidate_shape = pcode_shape(read_jsonl(paths["candidate"]["pcode"]))
    checks = {
        "decompiled": bool(stock_record.get("decompiled"))
        and bool(candidate_record.get("decompiled")),
        "body_bytes": stock_record.get("body_bytes")
        == candidate_record.get("body_bytes"),
        "normalized_decompiled_c": stock_normalized == candidate_normalized,
        "pcode_operation_shape": stock_shape == candidate_shape,
    }
    failures = [name for name, passed in checks.items() if not passed]
    return {
        "function": function,
        "passed": not failures,
        "checks": checks,
        "failures": failures,
        "stock": {
            "body_bytes": stock_record.get("body_bytes"),
            "decompiled_path": str(paths["stock"]["decompiled"]),
            "decompiled_sha256": sha256_file(paths["stock"]["decompiled"]),
            "normalized_decompiled_sha256": hashlib.sha256(
                stock_normalized.encode("utf-8")
            ).hexdigest(),
            "pcode_path": str(paths["stock"]["pcode"]),
            "pcode_sha256": sha256_file(paths["stock"]["pcode"]),
            "pcode_records": len(stock_shape),
            "resolved_strings": stock_string_evidence,
            "normalized_ghidra_artifacts": stock_artifact_evidence,
        },
        "candidate": {
            "body_bytes": candidate_record.get("body_bytes"),
            "decompiled_path": str(paths["candidate"]["decompiled"]),
            "decompiled_sha256": sha256_file(paths["candidate"]["decompiled"]),
            "normalized_decompiled_sha256": hashlib.sha256(
                candidate_normalized.encode("utf-8")
            ).hexdigest(),
            "pcode_path": str(paths["candidate"]["pcode"]),
            "pcode_sha256": sha256_file(paths["candidate"]["pcode"]),
            "pcode_records": len(candidate_shape),
            "resolved_strings": candidate_string_evidence,
            "normalized_ghidra_artifacts": candidate_artifact_evidence,
        },
    }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--stock-export", type=Path, required=True)
    parser.add_argument("--candidate-export", type=Path, required=True)
    parser.add_argument("--candidate-module", type=Path)
    parser.add_argument("--function", action="append", dest="functions", required=True)
    parser.add_argument("--output", type=Path, required=True)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    stock_root = args.stock_export.resolve()
    candidate_root = args.candidate_export.resolve()
    for root in (stock_root, candidate_root):
        for name in ("manifest.json", "functions.jsonl", "strings.jsonl"):
            if not (root / name).is_file():
                raise ValueError(f"missing {name}: {root}")

    stock_manifest = read_json(stock_root / "manifest.json")
    candidate_manifest = read_json(candidate_root / "manifest.json")
    stock_functions = function_index(stock_root)
    candidate_functions = function_index(candidate_root)
    results = [
        compare_function(
            function,
            stock_root,
            candidate_root,
            stock_functions.get(function),
            candidate_functions.get(function),
            string_index(stock_root),
            string_index(candidate_root),
        )
        for function in args.functions
    ]
    candidate_module = args.candidate_module.resolve() if args.candidate_module else None
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "method": (
            "Ghidra normalized decompiled-C equality plus ordered instruction-mnemonic "
            "and P-Code-operation shape equality"
        ),
        "passed": len(results) == len(args.functions)
        and all(result["passed"] for result in results),
        "requested_functions": args.functions,
        "stock_export": {
            "path": str(stock_root),
            "manifest_sha256": sha256_file(stock_root / "manifest.json"),
            "executable_md5": stock_manifest.get("executable_md5"),
        },
        "candidate_export": {
            "path": str(candidate_root),
            "manifest_sha256": sha256_file(candidate_root / "manifest.json"),
            "executable_md5": candidate_manifest.get("executable_md5"),
        },
        "candidate_module": (
            {
                "path": str(candidate_module),
                "sha256": sha256_file(candidate_module),
            }
            if candidate_module
            else None
        ),
        "results": results,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    print(json.dumps({"passed": payload["passed"], "checked": len(results)}))
    return 0 if payload["passed"] else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(2)
