#!/usr/bin/env python3
"""Compare selected ELF data objects and relocation relationships."""

from __future__ import annotations

import argparse
import hashlib
import json
import sys
from pathlib import Path
from typing import Any

from elftools.elf.elffile import ELFFile


def _symbol_record(symbol: Any, sections: dict[int, Any]) -> dict[str, Any]:
    section_index = symbol["st_shndx"]
    section_name = (
        sections[section_index].name
        if isinstance(section_index, int) and section_index in sections
        else str(section_index)
    )
    return {
        "name": symbol.name,
        "section": section_name,
        "section_index": section_index,
        "offset": int(symbol["st_value"]),
        "size": int(symbol["st_size"]),
        "type": symbol["st_info"]["type"],
        "binding": symbol["st_info"]["bind"],
    }


def _data_bytes(symbol: dict[str, Any], sections: dict[int, Any]) -> bytes | None:
    index = symbol["section_index"]
    if not isinstance(index, int) or index not in sections:
        return None
    section_data = sections[index].data()
    start = symbol["offset"]
    end = start + symbol["size"]
    if start < 0 or end > len(section_data):
        return None
    return section_data[start:end]


def _matching_symbol(
    symbols: list[dict[str, Any]], section_index: int, offset: int, *, functions: bool
) -> str | None:
    eligible = [
        item for item in symbols
        if item["section_index"] == section_index
        and item["name"]
        and item["type"] != "STT_SECTION"
        and (item["type"] == "STT_FUNC" if functions else item["type"] == "STT_OBJECT")
    ]
    exact = [item for item in eligible if item["offset"] == offset]
    if exact:
        exact.sort(key=lambda item: (item["name"].startswith("$"), item["name"].startswith("."), item["name"]))
        return exact[0]["name"]
    containing = [
        item for item in eligible
        if item["size"] > 0 and item["offset"] <= offset < item["offset"] + item["size"]
    ]
    if len(containing) == 1:
        item = containing[0]
        return f"{item['name']}+0x{offset - item['offset']:x}"
    return None


def _target_identity(
    *,
    section_index: Any,
    offset: int,
    symbol_name: str,
    symbol_type: str,
    sections: dict[int, Any],
    symbols: list[dict[str, Any]],
) -> str:
    if not isinstance(section_index, int) or section_index not in sections:
        return f"{section_index}:{symbol_name}+0x{offset:x}"

    section = sections[section_index]
    if section.name.startswith(".rodata.str"):
        data = section.data()
        if 0 <= offset < len(data):
            value = data[offset:].split(b"\0", 1)[0]
            try:
                decoded = value.decode("utf-8")
                return f"string:{decoded}"
            except UnicodeDecodeError:
                return f"bytes:{value.hex()}"

    is_code = section.name.startswith(".text") or section.name.startswith(".init.text")
    matched = _matching_symbol(symbols, section_index, offset, functions=is_code)
    if matched:
        return f"{section.name}:{matched}"

    matched = _matching_symbol(symbols, section_index, offset, functions=False)
    if matched:
        return f"{section.name}:{matched}"

    if symbol_name and symbol_type != "STT_SECTION":
        return f"{section.name}:{symbol_name}+0x{offset:x}"
    return f"{section.name}+0x{offset:x}"


def read_elf(path: Path, section_name: str, selected_names: list[str]) -> dict[str, Any]:
    with path.open("rb") as stream:
        elf = ELFFile(stream)
        section_list = list(elf.iter_sections())
        sections = {index: section for index, section in enumerate(section_list)}
        section_by_name = {section.name: (index, section) for index, section in sections.items()}
        if section_name not in section_by_name:
            raise ValueError(f"{path}: ELF has no {section_name} section")
        target_index, target_section = section_by_name[section_name]

        symtab = elf.get_section_by_name(".symtab")
        if symtab is None:
            raise ValueError(f"{path}: ELF has no .symtab")
        symbols = [_symbol_record(item, sections) for item in symtab.iter_symbols()]
        symbols_by_name: dict[str, list[dict[str, Any]]] = {}
        for item in symbols:
            if item["name"]:
                symbols_by_name.setdefault(item["name"], []).append(item)

        selected: dict[str, dict[str, Any] | None] = {}
        for name in selected_names:
            matches = symbols_by_name.get(name, [])
            selected[name] = matches[0] if len(matches) == 1 else None

        relocation_section = next(
            (item for item in section_list if item.name in {f".rela{section_name}", f".rel{section_name}"}),
            None,
        )
        relocations: list[dict[str, Any]] = []
        if relocation_section is not None:
            relocation_symbols = elf.get_section(relocation_section["sh_link"])
            for relocation in relocation_section.iter_relocations():
                symbol = relocation_symbols.get_symbol(relocation["r_info_sym"])
                symbol_section = symbol["st_shndx"]
                addend = int(relocation["r_addend"]) if relocation.is_RELA() else 0
                target_offset = int(symbol["st_value"]) + addend
                relocations.append({
                    "source_offset": int(relocation["r_offset"]),
                    "type": int(relocation["r_info_type"]),
                    "symbol": symbol.name,
                    "symbol_type": symbol["st_info"]["type"],
                    "target": _target_identity(
                        section_index=symbol_section,
                        offset=target_offset,
                        symbol_name=symbol.name,
                        symbol_type=symbol["st_info"]["type"],
                        sections=sections,
                        symbols=symbols,
                    ),
                })

        selected_bytes = {
            name: _data_bytes(record, sections) if record else None
            for name, record in selected.items()
        }
        return {
            "path": str(path.resolve()),
            "sha256": hashlib.sha256(path.read_bytes()).hexdigest(),
            "size": path.stat().st_size,
            "section_index": target_index,
            "section_size": int(target_section["sh_size"]),
            "section_sha256": hashlib.sha256(target_section.data()).hexdigest(),
            "section_data": target_section.data(),
            "symbols": selected,
            "symbol_bytes": selected_bytes,
            "relocations": relocations,
        }


def _public_snapshot(snapshot: dict[str, Any]) -> dict[str, Any]:
    return {key: value for key, value in snapshot.items() if key not in {"section_data", "symbol_bytes"}}


def compare(stock: dict[str, Any], candidate: dict[str, Any], names: list[str], section: str) -> dict[str, Any]:
    symbol_results: list[dict[str, Any]] = []
    for name in names:
        left = stock["symbols"].get(name)
        right = candidate["symbols"].get(name)
        left_bytes = stock["symbol_bytes"].get(name)
        right_bytes = candidate["symbol_bytes"].get(name)
        symbol_results.append({
            "name": name,
            "stock": left,
            "candidate": right,
            "section_match": bool(left and right and left["section"] == right["section"]),
            "offset_match": bool(left and right and left["offset"] == right["offset"]),
            "size_match": bool(left and right and left["size"] == right["size"]),
            "bytes_match": left_bytes is not None and left_bytes == right_bytes,
        })

    stock_relocs = stock["relocations"]
    candidate_relocs = candidate["relocations"]
    relocation_results: list[dict[str, Any]] = []
    for index in range(max(len(stock_relocs), len(candidate_relocs))):
        left = stock_relocs[index] if index < len(stock_relocs) else None
        right = candidate_relocs[index] if index < len(candidate_relocs) else None
        relocation_results.append({
            "stock": left,
            "candidate": right,
            "source_offset_match": bool(left and right and left["source_offset"] == right["source_offset"]),
            "type_match": bool(left and right and left["type"] == right["type"]),
            "target_identity_match": bool(left and right and left["target"] == right["target"]),
        })

    passed = (
        stock["section_size"] == candidate["section_size"]
        and stock["section_data"] == candidate["section_data"]
        and all(
            item["section_match"] and item["offset_match"] and item["size_match"] and item["bytes_match"]
            for item in symbol_results
        )
        and len(stock_relocs) == len(candidate_relocs)
        and all(
            item["source_offset_match"] and item["type_match"] and item["target_identity_match"]
            for item in relocation_results
        )
    )
    return {
        "schema_version": "1.0",
        "section": section,
        "tool": {
            "path": str(Path(__file__).resolve()),
            "sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        },
        "stock": _public_snapshot(stock),
        "candidate": _public_snapshot(candidate),
        "section_size_match": stock["section_size"] == candidate["section_size"],
        "section_bytes_match": stock["section_data"] == candidate["section_data"],
        "symbols": symbol_results,
        "relocation_count_match": len(stock_relocs) == len(candidate_relocs),
        "relocations": relocation_results,
        "passed": passed,
        "limitations": [
            "This report compares selected static data and normalized relocation targets; it does not establish driver-wide runtime or hardware equivalence."
        ],
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--stock", required=True, type=Path)
    parser.add_argument("--candidate", required=True, type=Path)
    parser.add_argument("--section", default=".data")
    parser.add_argument("--symbol", action="append", dest="symbols", required=True)
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()

    try:
        stock = read_elf(args.stock, args.section, args.symbols)
        candidate = read_elf(args.candidate, args.section, args.symbols)
        report = compare(stock, candidate, args.symbols, args.section)
    except (OSError, ValueError) as error:
        print(f"error: {error}", file=sys.stderr)
        return 2

    encoded = json.dumps(report, indent=2, ensure_ascii=False) + "\n"
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(encoded, encoding="utf-8")
    print(encoded, end="")
    return 0 if report["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
