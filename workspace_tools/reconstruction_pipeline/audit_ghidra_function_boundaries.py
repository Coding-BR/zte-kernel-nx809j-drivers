#!/usr/bin/env python3
"""Compare exported Ghidra function extents with exact-name ELF STT_FUNC sizes."""

from __future__ import annotations

import argparse
import hashlib
import json
from collections import defaultdict
from pathlib import Path
from typing import Any

from elftools.elf.elffile import ELFFile


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def load_ghidra_functions(path: Path) -> list[dict[str, Any]]:
    records = []
    for line_number, line in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
        if not line.strip():
            continue
        try:
            record = json.loads(line)
        except json.JSONDecodeError as error:
            raise ValueError(f"invalid JSON at {path}:{line_number}: {error}") from error
        if not isinstance(record.get("name"), str) or not isinstance(record.get("body_bytes"), int):
            raise ValueError(f"missing function name/body_bytes at {path}:{line_number}")
        records.append(record)
    return records


def load_elf_functions(path: Path) -> dict[str, list[dict[str, Any]]]:
    symbols: dict[str, dict[tuple[int, int, int], dict[str, Any]]] = defaultdict(dict)
    with path.open("rb") as stream:
        elf = ELFFile(stream)
        for section in elf.iter_sections():
            if section.__class__.__name__ != "SymbolTableSection":
                continue
            for symbol in section.iter_symbols():
                if not symbol.name or symbol["st_info"]["type"] != "STT_FUNC":
                    continue
                size = int(symbol["st_size"])
                if size <= 0:
                    continue
                section_index = int(symbol["st_shndx"]) if isinstance(symbol["st_shndx"], int) else -1
                key = (section_index, int(symbol["st_value"]), size)
                symbols[symbol.name][key] = {
                    "section_index": section_index,
                    "entry_value": int(symbol["st_value"]),
                    "size_bytes": size,
                    "binding": symbol["st_info"]["bind"],
                    "symbol_type": symbol["st_info"]["type"],
                }
    return {name: list(records.values()) for name, records in symbols.items()}


def audit(module: Path, functions_path: Path) -> dict[str, Any]:
    ghidra = load_ghidra_functions(functions_path)
    elf = load_elf_functions(module)
    ghidra_by_name: dict[str, list[dict[str, Any]]] = defaultdict(list)
    for record in ghidra:
        ghidra_by_name[record["name"]].append(record)

    names = sorted(set(ghidra_by_name) | set(elf))
    comparisons = []
    repair_arguments = []
    ambiguous = []
    unmatched_ghidra = []
    unmatched_elf = []
    for name in names:
        ghidra_records = ghidra_by_name.get(name, [])
        elf_records = elf.get(name, [])
        if not ghidra_records:
            unmatched_elf.append(name)
            continue
        if not elf_records:
            unmatched_ghidra.append(name)
            continue
        if len(ghidra_records) != 1 or len(elf_records) != 1:
            ambiguous.append(name)
            comparisons.append({
                "name": name,
                "status": "AMBIGUOUS_NAME",
                "ghidra_entries": [record.get("entry") for record in ghidra_records],
                "ghidra_body_bytes": [record.get("body_bytes") for record in ghidra_records],
                "elf_symbol_records": elf_records,
            })
            continue

        ghidra_record = ghidra_records[0]
        elf_record = elf_records[0]
        body_bytes = int(ghidra_record["body_bytes"])
        symbol_bytes = int(elf_record["size_bytes"])
        if body_bytes == symbol_bytes:
            status = "EXACT"
        elif body_bytes < symbol_bytes:
            status = "GHIDRA_TRUNCATED"
            entry = ghidra_record.get("entry")
            if not isinstance(entry, str):
                status = "REVIEW_REQUIRED_MISSING_ENTRY"
            else:
                repair_arguments.append(f"{entry}:{symbol_bytes:x}")
        else:
            status = "GHIDRA_EXCEEDS_ELF_SYMBOL"
        comparisons.append({
            "name": name,
            "ghidra_entry": ghidra_record.get("entry"),
            "ghidra_body_bytes": body_bytes,
            "elf_section_index": elf_record["section_index"],
            "elf_symbol_value": f"0x{elf_record['entry_value']:x}",
            "elf_symbol_size_bytes": symbol_bytes,
            "status": status,
        })

    mismatch_count = sum(item["status"] != "EXACT" for item in comparisons)
    status = "BOUNDARIES_MATCH"
    if ambiguous or unmatched_ghidra or unmatched_elf or any(
        item["status"] in {"GHIDRA_EXCEEDS_ELF_SYMBOL", "REVIEW_REQUIRED_MISSING_ENTRY"}
        for item in comparisons
    ):
        if ambiguous or any(
            item["status"] in {"GHIDRA_EXCEEDS_ELF_SYMBOL", "REVIEW_REQUIRED_MISSING_ENTRY"}
            for item in comparisons
        ):
            status = "REVIEW_REQUIRED"
        elif repair_arguments:
            status = "REPAIR_CANDIDATES_FOUND"
        else:
            status = "BOUNDARIES_MATCH_WITH_UNMATCHED_NAMES"
    elif repair_arguments:
        status = "REPAIR_CANDIDATES_FOUND"

    return {
        "schema_version": "1.0",
        "status": status,
        "module": {"path": str(module.resolve()), "sha256": sha256(module), "size_bytes": module.stat().st_size},
        "ghidra_functions": {"path": str(functions_path.resolve()), "sha256": sha256(functions_path), "count": len(ghidra)},
        "summary": {
            "matched_names": sum(1 for item in comparisons if item["status"] != "AMBIGUOUS_NAME"),
            "exact": sum(1 for item in comparisons if item["status"] == "EXACT"),
            "truncated": sum(1 for item in comparisons if item["status"] == "GHIDRA_TRUNCATED"),
            "ghidra_larger_than_elf": sum(1 for item in comparisons if item["status"] == "GHIDRA_EXCEEDS_ELF_SYMBOL"),
            "ambiguous_names": ambiguous,
            "unmatched_ghidra_names": unmatched_ghidra,
            "unmatched_elf_names": unmatched_elf,
            "mismatch_count": mismatch_count,
        },
        "repair_arguments": repair_arguments,
        "comparisons": comparisons,
        "interpretation": "A repair argument is only a candidate. Confirm the symbol is unique and its extent stays inside the intended ELF section before passing it to ExtendGhidraFunctionBodies.java.",
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--module", required=True, type=Path, help="ELF relocatable module (.ko)")
    parser.add_argument("--functions", required=True, type=Path, help="Ghidra export functions.jsonl")
    parser.add_argument("--output", required=True, type=Path, help="JSON report path")
    args = parser.parse_args()

    report = audit(args.module, args.functions)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"status": report["status"], **report["summary"], "output": str(args.output)}))
    return 0 if report["status"] != "REVIEW_REQUIRED" else 2


if __name__ == "__main__":
    raise SystemExit(main())
