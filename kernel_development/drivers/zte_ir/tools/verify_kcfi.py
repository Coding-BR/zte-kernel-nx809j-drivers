#!/usr/bin/env python3
"""Compare KCFI records from a stock object with compiled ABI probes."""

from __future__ import annotations

import argparse
import datetime as dt
import json
import sys
from pathlib import Path


def parse_pair(value: str) -> tuple[str, str]:
    stock, separator, probe = value.partition("=")
    if not separator or not stock or not probe:
        raise argparse.ArgumentTypeError("pairs must use STOCK_FUNCTION=PROBE_FUNCTION")
    return stock, probe


def load_records(path: Path) -> tuple[dict[str, object], dict[str, dict[str, object]]]:
    payload = json.loads(path.read_text(encoding="utf-8"))
    records = payload.get("records")
    if not isinstance(records, list):
        raise ValueError(f"{path} does not contain a records array")
    indexed: dict[str, dict[str, object]] = {}
    for record in records:
        if not isinstance(record, dict) or not isinstance(record.get("function"), str):
            raise ValueError(f"{path} contains an invalid KCFI record")
        indexed[record["function"]] = record
    return payload, indexed


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("stock", type=Path, help="JSON generated from the stock module")
    parser.add_argument("probe", type=Path, help="JSON generated from the ABI probe object")
    parser.add_argument(
        "--pair",
        action="append",
        required=True,
        type=parse_pair,
        metavar="STOCK=PROBE",
        help="callback mapping to verify; repeat for each callback",
    )
    parser.add_argument("-o", "--output", type=Path, help="verification JSON output")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    stock_payload, stock_records = load_records(args.stock)
    probe_payload, probe_records = load_records(args.probe)
    comparisons = []
    for stock_name, probe_name in args.pair:
        if stock_name not in stock_records:
            raise ValueError(f"stock function {stock_name!r} is missing")
        if probe_name not in probe_records:
            raise ValueError(f"probe function {probe_name!r} is missing")
        stock_type = stock_records[stock_name].get("type_id")
        probe_type = probe_records[probe_name].get("type_id")
        comparisons.append(
            {
                "stock_function": stock_name,
                "stock_type_id": stock_type,
                "probe_function": probe_name,
                "probe_type_id": probe_type,
                "match": stock_type == probe_type,
            }
        )

    passed = all(comparison["match"] for comparison in comparisons)
    output = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "passed": passed,
        "stock_source": stock_payload.get("source"),
        "probe_source": probe_payload.get("source"),
        "comparisons": comparisons,
    }
    rendered = json.dumps(output, indent=2, sort_keys=True) + "\n"
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(rendered, encoding="utf-8", newline="\n")
    else:
        sys.stdout.write(rendered)
    return 0 if passed else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError) as exc:
        print(f"error: {exc}", file=sys.stderr)
        raise SystemExit(2)
