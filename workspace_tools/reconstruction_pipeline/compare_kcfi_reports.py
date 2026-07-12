#!/usr/bin/env python3
"""Compare two extract_kcfi.py reports and emit auditable evidence."""

from __future__ import annotations

import argparse
import datetime as dt
import json
import sys
from pathlib import Path
from typing import Any


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("stock", type=Path)
    parser.add_argument("candidate", type=Path)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument(
        "--require-function",
        action="append",
        default=[],
        help="compare only this function; repeat for the complete required surface",
    )
    parser.add_argument(
        "--ignore-size",
        action="store_true",
        help="validate KCFI type/section only; leave symbol size to the parity gate",
    )
    return parser.parse_args()


def records_by_function(payload: dict[str, Any], source: Path) -> dict[str, dict[str, Any]]:
    records: dict[str, dict[str, Any]] = {}
    for record in payload.get("records", []):
        name = record.get("function")
        if not isinstance(name, str) or not name:
            raise ValueError(f"invalid function record in {source}")
        if name in records:
            raise ValueError(f"duplicate KCFI function in {source}: {name}")
        records[name] = record
    return records


def main() -> int:
    args = parse_args()
    stock_payload = json.loads(args.stock.read_text(encoding="utf-8"))
    candidate_payload = json.loads(args.candidate.read_text(encoding="utf-8"))
    stock = records_by_function(stock_payload, args.stock)
    candidate = records_by_function(candidate_payload, args.candidate)

    names = set(args.require_function) if args.require_function else stock.keys() | candidate.keys()
    comparisons = []
    for name in sorted(names):
        stock_record = stock.get(name, {})
        candidate_record = candidate.get(name, {})
        type_match = stock_record.get("type_id") == candidate_record.get("type_id")
        size_match = stock_record.get("symbol_size") == candidate_record.get("symbol_size")
        section_match = stock_record.get("section") == candidate_record.get("section")
        comparisons.append(
            {
                "function": name,
                "stock_type_id": stock_record.get("type_id"),
                "candidate_type_id": candidate_record.get("type_id"),
                "stock_symbol_size": stock_record.get("symbol_size"),
                "candidate_symbol_size": candidate_record.get("symbol_size"),
                "stock_section": stock_record.get("section"),
                "candidate_section": candidate_record.get("section"),
                "type_match": type_match,
                "size_match": size_match,
                "section_match": section_match,
                "passed": bool(
                    stock_record
                    and candidate_record
                    and type_match
                    and section_match
                    and (size_match or args.ignore_size)
                ),
            }
        )

    passed = bool(comparisons) and all(record["passed"] for record in comparisons)
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "stock_report": str(args.stock.resolve()),
        "candidate_report": str(args.candidate.resolve()),
        "required_functions": sorted(names),
        "size_is_gating": not args.ignore_size,
        "comparisons": comparisons,
        "passed": passed,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"output": str(args.output), "passed": passed, "functions": len(comparisons)}))
    return 0 if passed else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError) as exc:
        print(f"error: {exc}", file=sys.stderr)
        raise SystemExit(2)
