#!/usr/bin/env python3
"""Generate a reproducible command-level inventory for a Ghidra dispatcher export.

The report deliberately records observations instead of inferring lost protocol
types.  It is an analysis aid for a large entrypoint that must remain one ABI
function until per-command evidence proves a source decomposition safe.
"""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import re
from collections import Counter
from pathlib import Path
from typing import Any


CASE_RE = re.compile(r"^\s*case\s+(0x[0-9a-fA-F]+|\d+)\s*:")
DEFAULT_RE = re.compile(r"^\s*default\s*:")
CALL_RE = re.compile(r"(?<![.\w])([A-Za-z_]\w*)\s*\(")
OFFSET_RE = re.compile(r"\+\s*(0x[0-9a-fA-F]+)")
ERROR_RE = re.compile(r"\b0x(?:[89a-fA-F][0-9a-fA-F]{7}|[0-9a-fA-F]{8,})\b")
KEYWORDS = {"if", "while", "switch", "for", "return", "sizeof"}


def sha256_file(path: Path) -> str:
    return hashlib.sha256(path.read_bytes().replace(b"\r\n", b"\n")).hexdigest()


def path_record(path: Path) -> dict[str, Any]:
    return {
        "path": str(path.resolve()),
        "sha256": sha256_file(path),
        "size": path.stat().st_size,
    }


def parse_pcode(path: Path) -> dict[str, Any]:
    records = [json.loads(line) for line in path.read_text(encoding="utf-8").splitlines() if line]
    addresses = sorted({record["address"] for record in records})
    instructions = {record["address"]: record.get("instruction", "") for record in records}
    return {
        "pcode_operation_count": len(records),
        "instruction_count": len(addresses),
        "entry": addresses[0] if addresses else None,
        "last_address": addresses[-1] if addresses else None,
        "instructions": instructions,
    }


def block_observations(lines: list[str]) -> dict[str, Any]:
    calls = [match.group(1) for line in lines for match in CALL_RE.finditer(line)]
    calls = [name for name in calls if name not in KEYWORDS]
    offsets = sorted({match.group(1).lower() for line in lines for match in OFFSET_RE.finditer(line)})
    errors = sorted({match.group(0).lower() for line in lines for match in ERROR_RE.finditer(line)})
    return {
        "call_counts": dict(sorted(Counter(calls).items())),
        "offsets": offsets,
        "error_constants": errors,
    }


def parse_cases(pseudocode: Path) -> list[dict[str, Any]]:
    lines = pseudocode.read_text(encoding="utf-8").splitlines()
    labels: list[tuple[int, str]] = []
    for index, line in enumerate(lines, start=1):
        case = CASE_RE.match(line)
        if case:
            labels.append((index, case.group(1).lower()))
        elif DEFAULT_RE.match(line):
            labels.append((index, "default"))

    cases = []
    for index, (line_start, command) in enumerate(labels):
        line_end = labels[index + 1][0] - 1 if index + 1 < len(labels) else len(lines)
        block = lines[line_start - 1:line_end]
        record = {
            "command": command,
            "line_start": line_start,
            "line_end": line_end,
            **block_observations(block),
        }
        cases.append(record)
    return cases


def build_inventory(
    pseudocode: Path,
    pcode: Path,
    function: str,
    stock_entry: str | None,
) -> dict[str, Any]:
    pseudocode = pseudocode.resolve()
    pcode = pcode.resolve()
    text = pseudocode.read_text(encoding="utf-8")
    cases = parse_cases(pseudocode)
    pcode_inventory = parse_pcode(pcode)
    return {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "function": function,
        "stock_entry": stock_entry,
        "inputs": {
            "pseudocode": path_record(pseudocode),
            "pcode": path_record(pcode),
        },
        "function_observations": {
            "pseudocode_line_count": len(text.splitlines()),
            **block_observations(text.splitlines()),
            **pcode_inventory,
        },
        "dispatch_cases": cases,
        "limitations": [
            "Ghidra pseudocode and P-Code do not recover original struct tags, macro names, or hardware semantics.",
            "A command record is evidence to review, not proof that a candidate source path is equivalent.",
            "The public dispatcher remains monolithic until KCFI, assembly, relocation, harness, and hardware gates pass.",
        ],
    }


def render_markdown(inventory: dict[str, Any]) -> str:
    lines = [
        f"# Ghidra Dispatcher Inventory: `{inventory['function']}`",
        "",
        "Analysis-only evidence generated from the pinned pseudocode and P-Code exports.",
        "",
        "| Command | Pseudocode lines | Calls | Offsets | Error constants |",
        "| --- | --- | ---: | ---: | ---: |",
    ]
    for case in inventory["dispatch_cases"]:
        lines.append(
            "| `{command}` | {line_start}-{line_end} | {calls} | {offsets} | {errors} |".format(
                command=case["command"],
                line_start=case["line_start"],
                line_end=case["line_end"],
                calls=sum(case["call_counts"].values()),
                offsets=len(case["offsets"]),
                errors=len(case["error_constants"]),
            )
        )
    lines.extend([
        "",
        "## Gate",
        "",
        "This table is a decomposition plan only. It must not be used to claim command equivalence or hardware validation.",
        "",
    ])
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--pseudocode", type=Path, required=True)
    parser.add_argument("--pcode", type=Path, required=True)
    parser.add_argument("--function", required=True)
    parser.add_argument("--stock-entry")
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--markdown", type=Path)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    inventory = build_inventory(args.pseudocode, args.pcode, args.function, args.stock_entry)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(inventory, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    if args.markdown:
        args.markdown.parent.mkdir(parents=True, exist_ok=True)
        args.markdown.write_text(render_markdown(inventory), encoding="utf-8")
    print(json.dumps({
        "output": str(args.output.resolve()),
        "markdown": str(args.markdown.resolve()) if args.markdown else None,
        "case_count": len(inventory["dispatch_cases"]),
        "passed": True,
    }, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
