#!/usr/bin/env python3
"""Inventory ELF relocations that reference selected AArch64 functions."""

from __future__ import annotations

import argparse
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path
import sys
from typing import Any

from elftools.elf.elffile import ELFFile


RELOCATION_NAMES = {
    282: "R_AARCH64_JUMP26",
    283: "R_AARCH64_CALL26",
}
DIRECT_RELOCATIONS = set(RELOCATION_NAMES.values())


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def audit(path: Path, requested: list[str]) -> tuple[dict[str, Any], list[dict[str, Any]]]:
    with path.open("rb") as stream:
        elf = ELFFile(stream)
        if elf.get_machine_arch() != "AArch64":
            raise ValueError(f"expected AArch64 ELF: {path}")
        symtab = elf.get_section_by_name(".symtab")
        if symtab is None:
            raise ValueError(f"missing .symtab: {path}")

        symbols: dict[str, Any] = {}
        for name in requested:
            matches = symtab.get_symbol_by_name(name) or []
            if len(matches) != 1:
                raise ValueError(f"expected exactly one {name}, found {len(matches)}")
            symbol = matches[0]
            if symbol["st_info"]["type"] != "STT_FUNC" or not isinstance(
                symbol["st_shndx"], int
            ):
                raise ValueError(f"{name} is not a section-defined function")
            symbols[name] = symbol

        functions = [
            symbol
            for symbol in symtab.iter_symbols()
            if symbol.name
            and symbol["st_info"]["type"] == "STT_FUNC"
            and isinstance(symbol["st_shndx"], int)
        ]
        records: dict[str, dict[str, Any]] = {}
        for name, symbol in symbols.items():
            section = elf.get_section(int(symbol["st_shndx"]))
            start = int(symbol["st_value"]) - int(section["sh_addr"])
            size = int(symbol["st_size"])
            section_data = section.data()
            body = section_data[start : start + size]
            if len(body) != size:
                raise ValueError(f"function body is truncated: {name}")
            prefix = section_data[max(0, start - 4) : start]
            records[name] = {
                "binding": symbol["st_info"]["bind"],
                "visibility": symbol["st_other"]["visibility"],
                "section": section.name,
                "entry": hex(int(symbol["st_value"])),
                "size": size,
                "body_sha256": hashlib.sha256(body).hexdigest(),
                "preceding_word_le": prefix.hex(),
                "preceding_word_u32": (
                    hex(int.from_bytes(prefix, "little")) if len(prefix) == 4 else None
                ),
                "incoming_relocations": [],
            }

        call_records: list[dict[str, Any]] = []
        for relocation_section in elf.iter_sections():
            if relocation_section["sh_type"] not in ("SHT_RELA", "SHT_REL"):
                continue
            target_section_index = int(relocation_section["sh_info"])
            relocation_symbols = elf.get_section(int(relocation_section["sh_link"]))
            for relocation in relocation_section.iter_relocations():
                target_symbol = relocation_symbols.get_symbol(
                    int(relocation["r_info_sym"])
                )
                if target_symbol.name not in records:
                    continue
                offset = int(relocation["r_offset"])
                caller = next(
                    (
                        function
                        for function in functions
                        if int(function["st_shndx"]) == target_section_index
                        and int(function["st_value"])
                        <= offset
                        < int(function["st_value"]) + int(function["st_size"])
                    ),
                    None,
                )
                relocation_type = int(relocation["r_info_type"])
                type_name = RELOCATION_NAMES.get(
                    relocation_type, f"R_AARCH64_TYPE_{relocation_type}"
                )
                record = {
                    "relocation_section": relocation_section.name,
                    "target_section": elf.get_section(target_section_index).name,
                    "offset": hex(offset),
                    "type_number": relocation_type,
                    "type_name": type_name,
                    "caller": caller.name if caller else None,
                    "caller_entry": hex(int(caller["st_value"])) if caller else None,
                }
                records[target_symbol.name]["incoming_relocations"].append(record)
                if caller is not None and type_name in DIRECT_RELOCATIONS:
                    call_records.append(
                        {
                            "caller": caller.name,
                            "caller_entry": hex(int(caller["st_value"])),
                            "callsite": hex(offset),
                            "target": target_symbol.name,
                            "target_address": records[target_symbol.name]["entry"],
                            "reference_type": (
                                "UNCONDITIONAL_CALL"
                                if type_name == "R_AARCH64_CALL26"
                                else "DIRECT_BRANCH"
                            ),
                            "relocation_type": type_name,
                            "relocation_section": relocation_section.name,
                        }
                    )

    report = {
        "schema_version": "1.0",
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "module": {
            "path": str(path.resolve()),
            "sha256": sha256_file(path),
            "size": path.stat().st_size,
            "elf_type": elf["e_type"],
            "machine": elf["e_machine"],
        },
        "functions": records,
        "all_references_are_direct": all(
            relocation["type_name"] in DIRECT_RELOCATIONS
            for function in records.values()
            for relocation in function["incoming_relocations"]
        ),
        "direct_call_records": len(call_records),
        "limitations": [
            "The report inventories symbol-based ELF relocations. Review disassembly and source as well when checking references encoded without relocations.",
            "A direct-call classification is not a substitute for function-body, KCFI-type, semantic, or hardware validation.",
        ],
    }
    return report, call_records


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--elf", required=True, type=Path)
    parser.add_argument("--function", required=True, action="append")
    parser.add_argument("--output", required=True, type=Path)
    parser.add_argument("--calls-output", required=True, type=Path)
    args = parser.parse_args()
    try:
        report, calls = audit(args.elf.resolve(), args.function)
    except (OSError, ValueError) as error:
        print(f"error: {error}", file=sys.stderr)
        return 2
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(
        json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8"
    )
    args.calls_output.write_text(
        "".join(json.dumps(row, sort_keys=True) + "\n" for row in calls),
        encoding="utf-8",
    )
    print(
        json.dumps(
            {
                "module_sha256": report["module"]["sha256"],
                "functions": len(report["functions"]),
                "direct_call_records": len(calls),
                "all_references_are_direct": report["all_references_are_direct"],
            },
            sort_keys=True,
        )
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
