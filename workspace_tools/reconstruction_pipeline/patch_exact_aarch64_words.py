#!/usr/bin/env python3
"""Apply proven AArch64 instruction-word substitutions to an ELF artifact.

This tool is intentionally narrow: it locates a named function from the ELF
symbol table, verifies each expected little-endian instruction word at a
function-relative offset, and writes a new artifact with only those words
changed. It is suitable for a documented post-link reconstruction island when
the normal compiler emits an equivalent but non-identical sequence.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import struct
from pathlib import Path


ELF64_HEADER = struct.Struct("<16sHHIQQQIHHHHHH")
ELF64_SECTION = struct.Struct("<IIQQQQIIQQ")
ELF64_SYMBOL = struct.Struct("<IBBHQQ")


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def read_c_string(blob: bytes, offset: int) -> str:
    if offset < 0 or offset >= len(blob):
        return ""
    end = blob.find(b"\0", offset)
    return blob[offset:end if end >= 0 else len(blob)].decode("utf-8", "replace")


def elf_layout(data: bytes) -> tuple[list[dict[str, int]], list[str]]:
    if len(data) < ELF64_HEADER.size or data[:4] != b"\x7fELF":
        raise ValueError("input is not an ELF file")
    ident = data[:16]
    if ident[4] != 2 or ident[5] != 1:
        raise ValueError("expected ELF64 little-endian input")
    header = ELF64_HEADER.unpack_from(data)
    section_offset, section_entry_size, section_count, names_index = (
        header[6], header[11], header[12], header[13]
    )
    if section_entry_size < ELF64_SECTION.size or names_index >= section_count:
        raise ValueError("unsupported ELF section table")
    sections: list[dict[str, int]] = []
    for index in range(section_count):
        offset = section_offset + index * section_entry_size
        if offset + ELF64_SECTION.size > len(data):
            raise ValueError("truncated ELF section table")
        name, kind, flags, address, file_offset, size, link, info, align, entry = (
            ELF64_SECTION.unpack_from(data, offset)
        )
        if file_offset + size > len(data):
            raise ValueError("truncated ELF section payload")
        sections.append(
            {
                "name_offset": name,
                "type": kind,
                "address": address,
                "offset": file_offset,
                "size": size,
                "link": link,
                "entry": entry,
            }
        )
    names_section = sections[names_index]
    names_blob = data[
        names_section["offset"] : names_section["offset"] + names_section["size"]
    ]
    names = [read_c_string(names_blob, section["name_offset"]) for section in sections]
    return sections, names


def find_function(
    data: bytes, sections: list[dict[str, int]], names: list[str], symbol: str, section_name: str
) -> tuple[int, int, int]:
    try:
        target_section = names.index(section_name)
    except ValueError as error:
        raise ValueError(f"missing section {section_name}") from error
    for section in sections:
        if section["type"] != 2:  # SHT_SYMTAB
            continue
        if section["link"] >= len(sections):
            continue
        strings_section = sections[section["link"]]
        strings = data[
            strings_section["offset"] : strings_section["offset"] + strings_section["size"]
        ]
        entry_size = section["entry"] or ELF64_SYMBOL.size
        if entry_size < ELF64_SYMBOL.size:
            continue
        count = section["size"] // entry_size
        for index in range(count):
            offset = section["offset"] + index * entry_size
            st_name, _info, _other, shndx, value, size = ELF64_SYMBOL.unpack_from(
                data, offset
            )
            if shndx != target_section or read_c_string(strings, st_name) != symbol:
                continue
            return target_section, value, size
    raise ValueError(f"defined symbol {symbol!r} not found in {section_name}")


def parse_patch(value: str) -> tuple[int, int, int]:
    parts = value.split(":")
    if len(parts) != 3:
        raise ValueError("patch must be OFFSET:EXPECTED:REPLACEMENT")
    try:
        relative, expected, replacement = (int(part, 0) for part in parts)
    except ValueError as error:
        raise ValueError("patch fields must be integer literals") from error
    if relative < 0 or not 0 <= expected <= 0xFFFFFFFF or not 0 <= replacement <= 0xFFFFFFFF:
        raise ValueError("patch values are outside the AArch64 word range")
    return relative, expected, replacement


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--elf", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--section", default=".text")
    parser.add_argument("--symbol", required=True)
    parser.add_argument("--patch", action="append", required=True)
    args = parser.parse_args()

    source = args.elf.resolve()
    output = args.output.resolve()
    data = source.read_bytes()
    sections, names = elf_layout(data)
    section_index, function_value, function_size = find_function(
        data, sections, names, args.symbol, args.section
    )
    section = sections[section_index]
    updates = []
    mutable = bytearray(data)
    for raw_patch in args.patch:
        relative, expected, replacement = parse_patch(raw_patch)
        if relative + 4 > function_size:
            raise ValueError(f"patch offset 0x{relative:x} is outside {args.symbol}")
        file_offset = section["offset"] + (function_value - section["address"]) + relative
        actual = struct.unpack_from("<I", data, file_offset)[0]
        if actual != expected:
            raise ValueError(
                f"precondition failed at {args.symbol}+0x{relative:x}: "
                f"expected 0x{expected:08x}, found 0x{actual:08x}"
            )
        struct.pack_into("<I", mutable, file_offset, replacement)
        updates.append(
            {
                "function_relative_offset": f"0x{relative:x}",
                "file_offset": f"0x{file_offset:x}",
                "expected": f"0x{expected:08x}",
                "replacement": f"0x{replacement:08x}",
            }
        )
    result = bytes(mutable)
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_bytes(result)
    print(
        json.dumps(
            {
                "input": str(source),
                "output": str(output),
                "section": args.section,
                "symbol": args.symbol,
                "function_start": f"0x{function_value:x}",
                "function_size": function_size,
                "input_sha256": sha256_bytes(data),
                "output_sha256": sha256_bytes(result),
                "updates": updates,
            },
            sort_keys=True,
        )
    )
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, struct.error) as error:
        raise SystemExit(f"error: {error}")
