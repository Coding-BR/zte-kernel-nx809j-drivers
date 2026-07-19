#!/usr/bin/env python3
"""Verify callback relocations in an ELF data object."""

from __future__ import annotations

import argparse
import datetime as dt
import json
import sys
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from compare_function_assembly import (
    elf_relocation_sites,
    elf_symbol_ranges,
    sha256_file,
)


def parse_callback(value: str) -> tuple[int, str]:
    try:
        offset_text, symbol = value.split("=", 1)
        offset = int(offset_text, 0)
    except (ValueError, TypeError) as error:
        raise argparse.ArgumentTypeError("callback must be OFFSET=SYMBOL") from error
    if offset < 0 or not symbol:
        raise argparse.ArgumentTypeError("callback must be OFFSET=SYMBOL")
    return offset, symbol


def verify_table(
    symbols: dict[str, tuple[str, int, int]],
    relocations: dict[tuple[str, int], tuple[str, str]],
    table: str,
    expected_size: int,
    callbacks: list[tuple[int, str]],
    forbidden_symbols: list[str],
) -> tuple[dict[str, bool], list[dict[str, Any]]]:
    record = symbols.get(table)
    checks = {
        "table_present": record is not None,
        "table_size": bool(record and record[2] == expected_size),
        "forbidden_symbols_absent": all(name not in symbols for name in forbidden_symbols),
    }
    callback_results = []
    for offset, expected_symbol in callbacks:
        relocation = None
        if record:
            relocation = relocations.get((record[0], record[1] + offset))
        callback_passed = relocation == ("R_AARCH64_ABS64", expected_symbol)
        checks[f"callback_0x{offset:x}"] = callback_passed
        callback_results.append(
            {
                "offset": f"0x{offset:x}",
                "expected": {
                    "relocation": "R_AARCH64_ABS64",
                    "symbol": expected_symbol,
                },
                "actual": (
                    {"relocation": relocation[0], "symbol": relocation[1]}
                    if relocation
                    else None
                ),
                "passed": callback_passed,
            }
        )
    return checks, callback_results


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("module", type=Path)
    parser.add_argument("--table", required=True)
    parser.add_argument("--table-size", type=lambda value: int(value, 0), required=True)
    parser.add_argument("--callback", type=parse_callback, action="append", required=True)
    parser.add_argument("--forbid-symbol", action="append", default=[])
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()

    module = args.module.resolve()
    symbols = elf_symbol_ranges(module)
    relocations = elf_relocation_sites(module)
    checks, callbacks = verify_table(
        symbols,
        relocations,
        args.table,
        args.table_size,
        args.callback,
        args.forbid_symbol,
    )
    table_record = symbols.get(args.table)
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "passed": all(checks.values()),
        "module": {
            "path": str(module),
            "size": module.stat().st_size,
            "sha256": sha256_file(module),
        },
        "table": {
            "symbol": args.table,
            "expected_size": args.table_size,
            "actual": (
                {"section": table_record[0], "offset": table_record[1], "size": table_record[2]}
                if table_record
                else None
            ),
        },
        "checks": checks,
        "callbacks": callbacks,
        "forbidden_symbols": args.forbid_symbol,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    print(json.dumps({"passed": payload["passed"], "callbacks": len(callbacks)}))
    return 0 if payload["passed"] else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(2)
