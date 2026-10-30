#!/usr/bin/env python3
"""Diagnostic ELF function-layout transplant for equal-size AArch64 functions.

This tool is intentionally conservative: it copies only one function's code
window from a reference ELF and remaps that window's existing candidate
relocations by semantic target. It is useful for proving that a mismatch is
only basic-block placement. It is not a source reconstruction step and must
not be promoted without an explicit provenance record and the normal module
gates.
"""

from __future__ import annotations

import argparse
import struct
from collections import defaultdict, deque
from pathlib import Path

from elftools.elf.elffile import ELFFile


_SPECIAL_SHNDX = {"SHN_ABS", "SHN_UNDEF", 0, 0xFFF1, 0xFFF2}


def _section_index(elf: ELFFile, name: str) -> int:
    for index, section in enumerate(elf.iter_sections()):
        if section.name == name:
            return index
    raise ValueError(f"missing ELF section: {name}")


def _symbol(elf: ELFFile, name: str):
    symtab = elf.get_section_by_name(".symtab")
    if symtab is None:
        raise ValueError("missing .symtab")
    matches = [symbol for symbol in symtab.iter_symbols() if symbol.name == name]
    if len(matches) != 1:
        raise ValueError(f"expected one symbol {name!r}, found {len(matches)}")
    return symtab, matches[0]


def _target_bytes(elf: ELFFile, symbol, addend: int) -> bytes | None:
    shndx = symbol["st_shndx"]
    if shndx in _SPECIAL_SHNDX or not isinstance(shndx, int):
        return None
    section = elf.get_section(shndx)
    if section is None or addend < 0 or addend >= section["sh_size"]:
        return None
    data = section.data()[addend:]
    return data.split(b"\0", 1)[0]


def _relocation_key(elf: ELFFile, symtab, relocation) -> tuple:
    symbol = symtab.get_symbol(relocation["r_info_sym"])
    shndx = symbol["st_shndx"]
    section_name = None
    defined = isinstance(shndx, int) and shndx not in _SPECIAL_SHNDX
    section_anchor = defined and symbol["st_value"] == 0
    if defined:
        section_name = elf.get_section(shndx).name
    target_data = _target_bytes(elf, symbol, relocation["r_addend"]) if section_anchor else None
    symbol_name = "" if section_anchor else symbol.name
    return (
        relocation["r_info_type"],
        symbol_name,
        section_name,
        target_data,
        relocation["r_addend"] if target_data is None else None,
    )


def _find_code_relocations(elf: ELFFile, code_index: int, start: int, size: int):
    end = start + size
    for section in elf.iter_sections():
        if section["sh_type"] == "SHT_RELA" and section["sh_info"] == code_index:
            records = []
            for index, relocation in enumerate(section.iter_relocations()):
                if start <= relocation["r_offset"] < end:
                    records.append((index, relocation))
            return section, records
    raise ValueError(f"missing relocation section for code section index {code_index}")


def _sign_extend(value: int, bits: int) -> int:
    sign = 1 << (bits - 1)
    return (value ^ sign) - sign


def _local_function_map(elf: ELFFile, text_index: int) -> dict[int, str]:
    symtab = elf.get_section_by_name(".symtab")
    if symtab is None:
        return {}
    result = {}
    for symbol in symtab.iter_symbols():
        if (
            symbol["st_shndx"] == text_index
            and symbol["st_size"] > 0
            and symbol["st_info"]["type"] == "STT_FUNC"
            and symbol.name
        ):
            result.setdefault(symbol["st_value"], symbol.name)
    return result


def _remap_local_branches(
    data: bytearray,
    stock_data: bytes,
    candidate_offset: int,
    candidate_start: int,
    stock_offset: int,
    stock_start: int,
    size: int,
    candidate_functions: dict[str, int],
    stock_functions: dict[int, str],
) -> int:
    changed = 0
    for relative in range(0, size, 4):
        word = struct.unpack_from("<I", stock_data, stock_offset + relative)[0]
        if (word & 0xFC000000) not in (0x14000000, 0x94000000):
            continue
        immediate = _sign_extend(word & 0x03FFFFFF, 26) * 4
        target = stock_start + relative + immediate
        target_name = stock_functions.get(target)
        candidate_target = candidate_functions.get(target_name) if target_name else None
        if candidate_target is None or candidate_start <= candidate_target < candidate_start + size:
            continue
        new_immediate = (candidate_target - (candidate_start + relative)) // 4
        if not -(1 << 25) <= new_immediate < (1 << 25):
            raise ValueError(f"branch target out of range for {target_name}")
        new_word = (word & 0xFC000000) | (new_immediate & 0x03FFFFFF)
        struct.pack_into("<I", data, candidate_offset + relative, new_word)
        changed += 1
    return changed


def transplant(candidate_path: Path, stock_path: Path, output_path: Path, function: str) -> None:
    with candidate_path.open("rb") as candidate_file, stock_path.open("rb") as stock_file:
        candidate_elf = ELFFile(candidate_file)
        stock_elf = ELFFile(stock_file)
        if candidate_elf.elfclass != 64 or stock_elf.elfclass != 64:
            raise ValueError("only ELF64 is supported")
        if candidate_elf.little_endian is not True or stock_elf.little_endian is not True:
            raise ValueError("only little-endian ELF is supported")

        candidate_symtab, candidate_symbol = _symbol(candidate_elf, function)
        stock_symtab, stock_symbol = _symbol(stock_elf, function)
        candidate_code_index = candidate_symbol["st_shndx"]
        stock_code_index = stock_symbol["st_shndx"]
        if not isinstance(candidate_code_index, int) or not isinstance(stock_code_index, int):
            raise ValueError(f"{function} is not defined in a code section")
        candidate_code = candidate_elf.get_section(candidate_code_index)
        stock_code = stock_elf.get_section(stock_code_index)
        if candidate_code is None or stock_code is None:
            raise ValueError(f"missing code section for {function}")
        if candidate_code.name != stock_code.name:
            raise ValueError(
                f"code sections differ: candidate={candidate_code.name} stock={stock_code.name}"
            )
        if candidate_symbol["st_size"] != stock_symbol["st_size"]:
            raise ValueError(
                f"function sizes differ: candidate={candidate_symbol['st_size']} "
                f"stock={stock_symbol['st_size']}"
            )

        candidate_rela, candidate_records = _find_code_relocations(
            candidate_elf,
            candidate_code_index,
            candidate_symbol["st_value"],
            candidate_symbol["st_size"],
        )
        stock_rela, stock_records = _find_code_relocations(
            stock_elf,
            stock_code_index,
            stock_symbol["st_value"],
            stock_symbol["st_size"],
        )
        if len(candidate_records) != len(stock_records):
            raise ValueError(
                f"relocation counts differ: candidate={len(candidate_records)} "
                f"stock={len(stock_records)}"
            )

        candidate_by_key: dict[tuple, deque] = defaultdict(deque)
        for index, relocation in candidate_records:
            candidate_by_key[_relocation_key(candidate_elf, candidate_symtab, relocation)].append(
                (index, relocation)
            )
        assignments = []
        for stock_index, stock_relocation in stock_records:
            key = _relocation_key(stock_elf, stock_symtab, stock_relocation)
            if not candidate_by_key[key]:
                raise ValueError(f"candidate lacks relocation target for stock record {stock_index}")
            assignments.append((candidate_by_key[key].popleft(), stock_relocation))
        if any(candidate_by_key.values()):
            raise ValueError("candidate contains unused function relocation records")

        candidate_file.seek(0)
        candidate_data = bytearray(candidate_file.read())
        stock_file.seek(0)
        stock_data = stock_file.read()
        candidate_function_offset = candidate_code["sh_offset"] + candidate_symbol["st_value"]
        stock_function_offset = stock_code["sh_offset"] + stock_symbol["st_value"]
        size = candidate_symbol["st_size"]
        candidate_data[candidate_function_offset : candidate_function_offset + size] = stock_data[
            stock_function_offset : stock_function_offset + size
        ]

        stock_functions = _local_function_map(stock_elf, stock_code_index)
        candidate_functions = {
            symbol.name: symbol["st_value"]
            for symbol in candidate_symtab.iter_symbols()
            if (
                symbol["st_shndx"] == candidate_code_index
                and symbol["st_size"] > 0
                and symbol["st_info"]["type"] == "STT_FUNC"
                and symbol.name
            )
        }
        local_branch_count = _remap_local_branches(
            candidate_data,
            stock_data,
            candidate_function_offset,
            candidate_symbol["st_value"],
            stock_function_offset,
            stock_symbol["st_value"],
            size,
            candidate_functions,
            stock_functions,
        )

        rela_entry_size = candidate_rela["sh_entsize"] or 24
        if rela_entry_size != 24:
            raise ValueError(f"unexpected ELF64 RELA entry size: {rela_entry_size}")
        for (candidate_index, candidate_relocation), stock_relocation in assignments:
            new_offset = candidate_symbol["st_value"] + (
                stock_relocation["r_offset"] - stock_symbol["st_value"]
            )
            rela_offset = candidate_rela["sh_offset"] + candidate_index * rela_entry_size
            struct.pack_into(
                "<QQq",
                candidate_data,
                rela_offset,
                new_offset,
                candidate_relocation["r_info"],
                candidate_relocation["r_addend"],
            )

    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_bytes(candidate_data)
    print(
        f"transplanted {function}: {size} bytes, "
        f"{len(assignments)} relocations, {local_branch_count} local branches "
        f"-> {output_path}"
    )


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("candidate", type=Path)
    parser.add_argument("stock", type=Path)
    parser.add_argument("--function", required=True)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()
    transplant(args.candidate, args.stock, args.output, args.function)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
