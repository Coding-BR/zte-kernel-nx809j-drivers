#!/usr/bin/env python3
"""Summarize the published offline driver audit without device operations."""

from __future__ import annotations

import argparse
import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
AUDIT = ROOT / "reverse_engineering" / "validation" / "OFFLINE_RECONSTRUCTION_AUDIT.json"


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--strict",
        action="store_true",
        help="return nonzero unless every driver is STATIC_ALIGNED_CANDIDATE",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    payload = json.loads(AUDIT.read_text(encoding="utf-8"))
    rows = []
    for driver in payload.get("drivers", []):
        gates = driver.get("gates", [])
        rows.append({
            "driver": driver.get("driver"),
            "verdict": driver.get("verdict"),
            "pass_gates": sum(gate.get("status") == "PASS" for gate in gates),
            "incomplete_gates": [
                gate.get("name") for gate in gates if gate.get("status") == "INCOMPLETE"
            ],
            "hardware": next(
                (gate.get("status") for gate in gates if gate.get("name") == "Hardware"),
                "MISSING",
            ),
        })
    complete = bool(rows) and all(row["verdict"] == "STATIC_ALIGNED_CANDIDATE" for row in rows)
    print(json.dumps({
        "mode": "offline_only",
        "device_commands_executed": False,
        "driver_count": len(rows),
        "all_static_aligned": complete,
        "drivers": rows,
    }, indent=2, sort_keys=True))
    return 1 if args.strict and not complete else 0


if __name__ == "__main__":
    raise SystemExit(main())
