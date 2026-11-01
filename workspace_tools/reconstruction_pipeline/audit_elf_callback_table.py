#!/usr/bin/env python3
"""Compare one AArch64 function-pointer table by ELF slot relocations."""

from __future__ import annotations

import argparse
import hashlib
import json
import sys
from pathlib import Path
from typing import Any

from elftools.elf.elffile import ELFFile


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def read_functions(path: Path) -> dict[str, str]:
    result: dict[str, str] = {}
    for line_number, line in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
        if not line.strip():
            continue
        row = json.loads(line)
        entry = str(row.get("entry", "")).lower().removeprefix("0x")
        name = str(row.get("name", ""))
        if entry and name:
            if entry in result and result[entry] != name:
                raise ValueError(f"ambiguous function entry at {path}:{line_number}: {entry}")
            result[entry] = name
    return result


def elf_table(path: Path, symbol_name: str, *, stock_base: int | None,
              stock_functions: dict[str, str] | None) -> dict[str, Any]:
    with path.open("rb") as stream:
        elf = ELFFile(stream)
        if elf.get_machine_arch() != "AArch64":
            raise ValueError(f"{path}: expected AArch64 ELF")
        symtab = elf.get_section_by_name(".symtab")
        if symtab is None:
            raise ValueError(f"{path}: missing .symtab")
        matches = symtab.get_symbol_by_name(symbol_name) or []
        if len(matches) != 1:
            raise ValueError(f"{path}: expected one {symbol_name} symbol, found {len(matches)}")
        table = matches[0]
        section_index = table["st_shndx"]
        if not isinstance(section_index, int):
            raise ValueError(f"{path}: {symbol_name} is not section-defined")
        section = elf.get_section(section_index)
        start = int(table["st_value"])
        size = int(table["st_size"])
        if size % 8:
            raise ValueError(f"{path}: {symbol_name} size {size} is not pointer-aligned")

        function_symbols: dict[tuple[int, int], str] = {}
        for candidate in symtab.iter_symbols():
            if candidate.name and candidate["st_info"]["type"] == "STT_FUNC":
                function_symbols[(candidate["st_shndx"], int(candidate["st_value"]))] = candidate.name

        slots: list[dict[str, Any]] = []
        raw = section.data()[start:start + size]
        if len(raw) != size:
            raise ValueError(f"{path}: {symbol_name} exceeds its containing section")
        relocs_by_offset: dict[int, list[dict[str, Any]]] = {}
        for relocation_section in elf.iter_sections():
            if relocation_section["sh_type"] not in ("SHT_RELA", "SHT_REL"):
                continue
            if relocation_section["sh_info"] != section_index:
                continue
            relocation_symbols = elf.get_section(relocation_section["sh_link"])
            for relocation in relocation_section.iter_relocations():
                absolute_offset = int(relocation["r_offset"])
                offset = absolute_offset - start
                if offset < 0 or offset >= size:
                    continue
                if offset % 8:
                    raise ValueError(f"{path}: unaligned relocation inside {symbol_name}: 0x{offset:x}")
                target_symbol = relocation_symbols.get_symbol(relocation["r_info_sym"])
                addend = int(relocation["r_addend"]) if relocation.is_RELA() else 0
                target_section_index = target_symbol["st_shndx"]
                target_offset = int(target_symbol["st_value"]) + addend
                target_name = target_symbol.name or None

                if stock_functions is not None and stock_base is not None:
                    target_section = (
                        elf.get_section(target_section_index).name
                        if isinstance(target_section_index, int)
                        else str(target_section_index)
                    )
                    if target_section == ".text":
                        target_name = stock_functions.get(f"{stock_base + target_offset:08x}")
                elif isinstance(target_section_index, int):
                    target_name = function_symbols.get((target_section_index, target_offset), target_name)

                relocs_by_offset.setdefault(offset, []).append({
                    "type": int(relocation["r_info_type"]),
                    "symbol": target_symbol.name,
                    "target": target_name,
                    "addend": addend,
                })

        for index in range(size // 8):
            offset = index * 8
            relocations = relocs_by_offset.get(offset, [])
            if len(relocations) > 1:
                raise ValueError(f"{path}: multiple relocations for {symbol_name} slot {index}")
            slot_bytes = raw[offset:offset + 8]
            relocation = relocations[0] if relocations else None
            slots.append({
                "index": index,
                "offset": f"0x{offset:x}",
                "target": relocation["target"] if relocation else None,
                "relocation_type": relocation["type"] if relocation else None,
                "relocation_symbol": relocation["symbol"] if relocation else None,
                "raw_unrelocated_bytes": slot_bytes.hex(),
                "is_null": relocation is None and slot_bytes == bytes(8),
            })
        return {
            "path": str(path.resolve()),
            "sha256": sha256(path),
            "elf_type": elf["e_type"],
            "section": section.name,
            "section_index": section_index,
            "symbol": symbol_name,
            "symbol_offset": start,
            "symbol_size": size,
            "slots": slots,
        }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--stock", required=True, type=Path)
    parser.add_argument("--candidate", required=True, type=Path)
    parser.add_argument("--symbol", required=True)
    parser.add_argument("--stock-functions", required=True, type=Path)
    parser.add_argument("--stock-text-base", required=True, type=lambda value: int(value, 0))
    parser.add_argument("--expected-size", type=int)
    parser.add_argument("--expected-null-slots", default="")
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()

    try:
        stock_function_map = read_functions(args.stock_functions)
        stock = elf_table(args.stock, args.symbol, stock_base=args.stock_text_base,
                          stock_functions=stock_function_map)
        candidate = elf_table(args.candidate, args.symbol, stock_base=None,
                              stock_functions=None)
    except (OSError, ValueError, json.JSONDecodeError) as error:
        print(f"error: {error}", file=sys.stderr)
        return 2

    expected_nulls = sorted(
        int(item, 0) for item in args.expected_null_slots.split(",") if item.strip()
    )
    stock_targets = [slot["target"] for slot in stock["slots"]]
    candidate_targets = [slot["target"] for slot in candidate["slots"]]
    observed_nulls = [slot["index"] for slot in stock["slots"] if slot["is_null"]]
    candidate_nulls = [slot["index"] for slot in candidate["slots"] if slot["is_null"]]
    slots_match = len(stock_targets) == len(candidate_targets) and all(
        left == right and stock["slots"][index]["relocation_type"]
        == candidate["slots"][index]["relocation_type"]
        and stock["slots"][index]["is_null"] == candidate["slots"][index]["is_null"]
        for index, (left, right) in enumerate(zip(stock_targets, candidate_targets))
    )
    errors: list[str] = []
    if stock["section"] != candidate["section"]:
        errors.append("callback object section differs")
    if stock["symbol_size"] != candidate["symbol_size"]:
        errors.append("callback object size differs")
    if args.expected_size is not None and candidate["symbol_size"] != args.expected_size:
        errors.append("candidate callback object size differs from expected size")
    if not slots_match:
        errors.append("callback slot target/relocation sequence differs")
    if expected_nulls and (observed_nulls != expected_nulls or candidate_nulls != expected_nulls):
        errors.append("null-slot set differs from expected slots")
    if any(slot["target"] is None and not slot["is_null"] for slot in stock["slots"]):
        errors.append("stock relocation target did not resolve to a named function")
    if any(slot["target"] is None and not slot["is_null"] for slot in candidate["slots"]):
        errors.append("candidate relocation target did not resolve to a named function")

    report = {
        "schema_version": "1.0",
        "status": "PASS" if not errors else "FAIL",
        "symbol": args.symbol,
        "pointer_size": 8,
        "stock": stock,
        "candidate": candidate,
        "slot_count_match": len(stock_targets) == len(candidate_targets),
        "section_match": stock["section"] == candidate["section"],
        "slot_targets_match": slots_match,
        "expected_null_slots": expected_nulls,
        "observed_stock_null_slots": observed_nulls,
        "observed_candidate_null_slots": candidate_nulls,
        "errors": errors,
        "limitations": [
            "This audit verifies the static table object and its ELF relocations; it does not prove the runtime setup path assigns this object to a device instance."
        ],
    }
    encoded = json.dumps(report, indent=2, ensure_ascii=False) + "\n"
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(encoded, encoding="utf-8")
    print(encoded, end="")
    return 0 if not errors else 1


if __name__ == "__main__":
    raise SystemExit(main())
