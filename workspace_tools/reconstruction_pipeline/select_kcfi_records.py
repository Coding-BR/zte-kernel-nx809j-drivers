#!/usr/bin/env python3
"""Project a hash-bound, function-scoped KCFI report from a larger inventory."""

from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
from typing import Any


def sha256_file(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def selected_by_function(
    payload: dict[str, Any], key: str, functions: set[str], source: Path
) -> list[dict[str, Any]]:
    selected: list[dict[str, Any]] = []
    seen: set[str] = set()
    records = payload.get(key, [])
    if not isinstance(records, list):
        raise ValueError(f"{source}: {key} is not a list")
    for record in records:
        if not isinstance(record, dict):
            raise ValueError(f"{source}: invalid {key} record")
        function = record.get("function")
        if function not in functions:
            continue
        if not isinstance(function, str) or not function:
            raise ValueError(f"{source}: invalid {key} function")
        if function in seen:
            raise ValueError(f"{source}: duplicate selected {key} function: {function}")
        seen.add(function)
        selected.append(record)
    return sorted(selected, key=lambda record: str(record["function"]))


def project_payload(source: Path, functions: list[str]) -> dict[str, Any]:
    requested = sorted(set(functions))
    if not requested:
        raise ValueError("at least one --function is required")
    payload = json.loads(source.read_text(encoding="utf-8"))
    if not isinstance(payload, dict):
        raise ValueError(f"{source}: expected a JSON object")
    requested_set = set(requested)
    records = selected_by_function(payload, "records", requested_set, source)
    excluded = selected_by_function(payload, "excluded", requested_set, source)
    record_names = {str(record["function"]) for record in records}
    excluded_names = {str(record["function"]) for record in excluded}
    overlap = record_names & excluded_names
    if overlap:
        raise ValueError(
            f"{source}: selected records and exclusions overlap: "
            + ", ".join(sorted(overlap))
        )
    missing = requested_set - record_names - excluded_names
    if missing:
        raise ValueError(
            f"{source}: selected functions are absent: " + ", ".join(sorted(missing))
        )
    return {
        "schema_version": "1.0",
        "mode": "bounded_kcfi_projection",
        "source_report": {
            "path": str(source.resolve()),
            "sha256": sha256_file(source),
        },
        "selected_functions": requested,
        "records": records,
        "excluded": excluded,
    }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source", type=Path)
    parser.add_argument("--function", action="append", dest="functions", default=[])
    parser.add_argument("--output", type=Path, required=True)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    source = args.source.resolve()
    if not source.is_file():
        raise FileNotFoundError(f"missing source report: {source}")
    output = args.output.resolve()
    result = project_payload(source, args.functions)
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(result, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"output": str(output), "functions": len(result["selected_functions"])}))
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError) as error:
        print(f"error: {error}")
        raise SystemExit(2)
