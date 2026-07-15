#!/usr/bin/env python3
"""Finalize a hash-backed structural reconstruction map.

The resulting ``reviewed`` status means that a stock function identity is
traceable to Ghidra, stock assembly, and a local source unit. It does not mean
semantic equivalence, direct test coverage, independent review, or hardware
validation; those are separate gates.
"""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import re
from pathlib import Path
from typing import Any


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def read_json(path: Path) -> dict[str, Any]:
    payload = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(payload, dict):
        raise ValueError(f"{path}: expected a JSON object")
    return payload


def read_jsonl(path: Path) -> list[dict[str, Any]]:
    rows: list[dict[str, Any]] = []
    for line_number, line in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
        if not line.strip():
            continue
        row = json.loads(line)
        if not isinstance(row, dict):
            raise ValueError(f"{path}:{line_number}: expected a JSON object")
        rows.append(row)
    return rows


def function_id(row: dict[str, Any]) -> str:
    name = row.get("name") or row.get("stock_function")
    entry = row.get("entry") or row.get("stock_entry")
    if not isinstance(name, str) or not name or not isinstance(entry, str) or not entry:
        raise ValueError(f"function identity is incomplete: {row}")
    return f"{name}@{entry}"


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--driver", required=True)
    parser.add_argument("--source-dir", type=Path, required=True)
    parser.add_argument("--stock", type=Path, required=True)
    parser.add_argument("--candidate", type=Path, required=True)
    parser.add_argument("--draft-map", type=Path, required=True)
    parser.add_argument("--ghidra-dir", type=Path, required=True)
    parser.add_argument("--assembly-dir", type=Path, required=True)
    parser.add_argument("--overrides", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    source_dir = args.source_dir.resolve()
    ghidra_dir = args.ghidra_dir.resolve()
    assembly_dir = args.assembly_dir.resolve()
    stock = args.stock.resolve()
    candidate = args.candidate.resolve()
    for path in (
        source_dir,
        ghidra_dir,
        assembly_dir,
        stock,
        candidate,
        args.draft_map.resolve(),
        args.overrides.resolve(),
    ):
        if not path.exists():
            raise ValueError(f"required input is missing: {path}")

    functions_path = ghidra_dir / "functions.jsonl"
    assembly_manifest_path = assembly_dir / "manifest.json"
    rows = read_jsonl(functions_path)
    draft = read_json(args.draft_map.resolve())
    assembly_manifest = read_json(assembly_manifest_path)
    override_payload = read_json(args.overrides.resolve())
    overrides = override_payload.get("overrides", {})
    if not isinstance(overrides, dict):
        raise ValueError("overrides must be a JSON object keyed by function_id")

    draft_by_id = {
        function_id(mapping): mapping
        for mapping in draft.get("mappings", [])
        if isinstance(mapping, dict)
    }
    assembly_by_id = {
        record.get("function_id"): record
        for record in assembly_manifest.get("records", [])
        if isinstance(record, dict) and isinstance(record.get("function_id"), str)
    }
    required_ids = {function_id(row) for row in rows}
    unknown_overrides = sorted(set(overrides) - required_ids)
    if unknown_overrides:
        raise ValueError("overrides target unknown functions: " + ", ".join(unknown_overrides))

    mappings = []
    failures = []
    used_overrides = set()
    for row in rows:
        identity = function_id(row)
        draft_mapping = draft_by_id.get(identity, {})
        override = overrides.get(identity, {})
        if override:
            used_overrides.add(identity)
        source_file = override.get("source_file") or draft_mapping.get("source_file")
        source_function = override.get("source_function") or draft_mapping.get("source_function")
        token = override.get("token") or source_function
        basis = override.get("basis") or "exact filename and function-token match"
        if not all(isinstance(value, str) and value for value in (source_file, source_function, token, basis)):
            failures.append(f"{identity}: source mapping is incomplete")
            continue

        source_path = source_dir / source_file
        pseudocode_rel = row.get("decompiled_file")
        pcode_rel = row.get("pcode_file")
        pseudocode_path = ghidra_dir / str(pseudocode_rel)
        pcode_path = ghidra_dir / str(pcode_rel)
        assembly = assembly_by_id.get(identity)
        if not source_path.is_file():
            failures.append(f"{identity}: source file is missing: {source_file}")
            continue
        source_text = source_path.read_text(encoding="utf-8", errors="replace")
        if not re.search(rf"\b{re.escape(token)}\s*\(", source_text):
            failures.append(f"{identity}: token {token!r} not found in {source_file}")
            continue
        if not pseudocode_path.is_file() or not pcode_path.is_file():
            failures.append(f"{identity}: Ghidra pseudocode or P-Code is missing")
            continue
        if not isinstance(assembly, dict) or assembly.get("complete") is not True:
            failures.append(f"{identity}: complete stock assembly evidence is missing")
            continue
        assembly_path = assembly_dir / str(assembly.get("file"))
        if not assembly_path.is_file() or sha256_file(assembly_path) != assembly.get("sha256"):
            failures.append(f"{identity}: stock assembly hash mismatch")
            continue

        mappings.append(
            {
                "stock_function": row["name"],
                "stock_entry": row["entry"],
                "stock_body_bytes": row.get("body_bytes"),
                "source_file": source_file,
                "source_function": source_function,
                "status": "reviewed",
                "review_scope": "structural_identity_only",
                "semantic_equivalence": "UNPROVEN",
                "mapping_basis": basis,
                "evidence": [
                    f"source:{source_file}:sha256:{sha256_file(source_path)}",
                    f"ghidra-pseudocode:{pseudocode_rel}:sha256:{sha256_file(pseudocode_path)}",
                    f"ghidra-pcode:{pcode_rel}:sha256:{sha256_file(pcode_path)}",
                    f"stock-assembly:{assembly.get('file')}:sha256:{assembly.get('sha256')}",
                ],
            }
        )

    if failures:
        raise ValueError("structural traceability failed:\n" + "\n".join(failures))
    if len(mappings) != len(rows):
        raise ValueError(f"mapped {len(mappings)} of {len(rows)} Ghidra functions")

    output = {
        "schema_version": "2.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "driver": args.driver,
        "review_status": "PASS",
        "review_scope": "structural_identity_only",
        "semantic_equivalence": "UNPROVEN",
        "independent_review": "NOT_PERFORMED",
        "hardware_validation": "DEFERRED",
        "stock_sha256": sha256_file(stock),
        "candidate_sha256": sha256_file(candidate),
        "function_count": len(rows),
        "override_count": len(used_overrides),
        "inputs": {
            "draft_map": str(args.draft_map.resolve()),
            "draft_map_sha256": sha256_file(args.draft_map.resolve()),
            "ghidra_functions": str(functions_path),
            "ghidra_functions_sha256": sha256_file(functions_path),
            "assembly_manifest": str(assembly_manifest_path),
            "assembly_manifest_sha256": sha256_file(assembly_manifest_path),
            "overrides": str(args.overrides.resolve()),
            "overrides_sha256": sha256_file(args.overrides.resolve()),
        },
        "limitations": [
            "A reviewed mapping proves identity and evidence reachability, not semantic parity.",
            "Direct host tests remain mandatory per function under the microtask gate.",
            "O10 requires a reviewer independent from the implementer and this automation.",
            "Hardware behavior remains unverified until the controlled NX809J procedure runs.",
        ],
        "mappings": mappings,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(output, indent=2, sort_keys=True) + "\n", encoding="utf-8", newline="\n")
    print(json.dumps({"output": str(args.output), "functions": len(mappings), "passed": True}))
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError) as error:
        print(f"error: {error}")
        raise SystemExit(2)
