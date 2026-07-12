#!/usr/bin/env python3
"""Compare function inventory and per-function call multiplicity in Ghidra exports."""

from __future__ import annotations

import argparse
import collections
import datetime as dt
import json
from pathlib import Path
from typing import Any


def read_jsonl(path: Path) -> list[dict[str, Any]]:
    return [
        json.loads(line)
        for line in path.read_text(encoding="utf-8").splitlines()
        if line.strip()
    ]


def call_counters(root: Path) -> dict[str, collections.Counter[str]]:
    result: dict[str, collections.Counter[str]] = collections.defaultdict(collections.Counter)
    for item in read_jsonl(root / "calls.jsonl"):
        caller = str(item.get("caller", ""))
        target = str(item.get("target", "")).removeprefix("<EXTERNAL>::")
        if caller and target:
            result[caller][target] += 1
    return result


def functions(root: Path) -> dict[str, dict[str, Any]]:
    return {str(item["name"]): item for item in read_jsonl(root / "functions.jsonl")}


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("stock", type=Path)
    parser.add_argument("candidate", type=Path)
    parser.add_argument("--output", type=Path, required=True)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    stock_root = args.stock.resolve()
    candidate_root = args.candidate.resolve()
    for root in (stock_root, candidate_root):
        for name in ("functions.jsonl", "calls.jsonl", "manifest.json"):
            if not (root / name).is_file():
                raise ValueError(f"missing {name}: {root}")

    stock_functions = functions(stock_root)
    candidate_functions = functions(candidate_root)
    stock_calls = call_counters(stock_root)
    candidate_calls = call_counters(candidate_root)
    names = sorted(set(stock_functions) | set(candidate_functions))
    comparisons = []
    for name in names:
        stock_counter = stock_calls.get(name, collections.Counter())
        candidate_counter = candidate_calls.get(name, collections.Counter())
        comparisons.append({
            "function": name,
            "present_in_stock": name in stock_functions,
            "present_in_candidate": name in candidate_functions,
            "stock_body_bytes": stock_functions.get(name, {}).get("body_bytes"),
            "candidate_body_bytes": candidate_functions.get(name, {}).get("body_bytes"),
            "stock_calls": dict(sorted(stock_counter.items())),
            "candidate_calls": dict(sorted(candidate_counter.items())),
            "missing_calls": dict(sorted((stock_counter - candidate_counter).items())),
            "unexpected_calls": dict(sorted((candidate_counter - stock_counter).items())),
            "call_graph_match": stock_counter == candidate_counter,
        })
    inventory_match = set(stock_functions) == set(candidate_functions)
    passed = inventory_match and all(item["call_graph_match"] for item in comparisons)
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "stock_export": str(stock_root),
        "candidate_export": str(candidate_root),
        "inventory_match": inventory_match,
        "stock_functions": len(stock_functions),
        "candidate_functions": len(candidate_functions),
        "comparisons": comparisons,
        "passed": passed,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"output": str(args.output), "passed": passed, "functions": len(names)}))
    return 0 if passed else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError) as error:
        print(f"error: {error}")
        raise SystemExit(2)
