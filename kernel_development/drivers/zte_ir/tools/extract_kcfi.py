#!/usr/bin/env python3
"""Extract KCFI type preambles from little-endian ELF64 objects.

Linux/Android arm64 places a 32-bit KCFI type identifier immediately before
each instrumented function. This tool resolves function symbols through the
ELF section and symbol tables and emits a reproducible JSON evidence file.
"""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import struct
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable


ELF_HEADER = struct.Struct("<16sHHIQQQIHHHHHH")
SECTION_HEADER = struct.Struct("<IIQQQQIIQQ")
SYMBOL = struct.Struct("<IBBHQQ")

ET_REL = 1
EM_AARCH64 = 183
SHT_SYMTAB = 2
STT_FUNC = 2
SHN_UNDEF = 0
SHN_LORESERVE = 0xFF00


@dataclass(frozen=True)
class Section:
    index: int
    name_offset: int
    section_type: int
    address: int
    offset: int
    size: int
    link: int
    entry_size: int
    name: str = ""


@dataclass(frozen=True)
class Symbol:
    name: str
    info: int
    section_index: int
    value: int
    size: int

    @property
    def symbol_type(self) -> int:
        return self.info & 0x0F


def read_c_string(table: bytes, offset: int) -> str:
    if offset < 0 or offset >= len(table):
        raise ValueError(f"string offset {offset} is outside table")
    end = table.find(b"\0", offset)
    if end < 0:
        raise ValueError(f"unterminated string at offset {offset}")
    return table[offset:end].decode("utf-8", errors="replace")


class Elf64:
    def __init__(self, path: Path) -> None:
        self.path = path
        self.data = path.read_bytes()
        if len(self.data) < ELF_HEADER.size:
            raise ValueError("file is smaller than an ELF64 header")

        header = ELF_HEADER.unpack_from(self.data)
        ident = header[0]
        if ident[:4] != b"\x7fELF":
            raise ValueError("not an ELF file")
        if ident[4] != 2:
            raise ValueError("only ELF64 files are supported")
        if ident[5] != 1:
            raise ValueError("only little-endian ELF files are supported")

        self.elf_type = header[1]
        self.machine = header[2]
        section_table_offset = header[6]
        section_entry_size = header[11]
        section_count = header[12]
        section_names_index = header[13]

        if self.machine != EM_AARCH64:
            raise ValueError(
                f"expected AArch64 ELF machine {EM_AARCH64}, got {self.machine}"
            )
        if section_entry_size < SECTION_HEADER.size:
            raise ValueError("ELF section header is unexpectedly small")
        if section_count == 0 or section_names_index >= section_count:
            raise ValueError("extended or invalid section indexes are unsupported")

        sections: list[Section] = []
        for index in range(section_count):
            offset = section_table_offset + index * section_entry_size
            if offset + SECTION_HEADER.size > len(self.data):
                raise ValueError("section header table exceeds file size")
            values = SECTION_HEADER.unpack_from(self.data, offset)
            sections.append(
                Section(
                    index=index,
                    name_offset=values[0],
                    section_type=values[1],
                    address=values[3],
                    offset=values[4],
                    size=values[5],
                    link=values[6],
                    entry_size=values[9],
                )
            )

        section_names = self.section_bytes(sections[section_names_index])
        self.sections = [
            Section(**{**section.__dict__, "name": read_c_string(section_names, section.name_offset)})
            for section in sections
        ]
        self.symbols = list(self._read_symbols())

    def section_bytes(self, section: Section) -> bytes:
        end = section.offset + section.size
        if section.offset < 0 or end > len(self.data):
            raise ValueError(f"section {section.index} exceeds file size")
        return self.data[section.offset:end]

    def _read_symbols(self) -> Iterable[Symbol]:
        for section in self.sections:
            if section.section_type != SHT_SYMTAB:
                continue
            if section.link >= len(self.sections):
                raise ValueError(f"symbol table {section.name} has an invalid string table")
            strings = self.section_bytes(self.sections[section.link])
            entry_size = section.entry_size or SYMBOL.size
            if entry_size < SYMBOL.size or section.size % entry_size:
                raise ValueError(f"symbol table {section.name} has an invalid entry size")
            raw = self.section_bytes(section)
            for offset in range(0, len(raw), entry_size):
                name_offset, info, _other, section_index, value, size = SYMBOL.unpack_from(
                    raw, offset
                )
                yield Symbol(
                    name=read_c_string(strings, name_offset),
                    info=info,
                    section_index=section_index,
                    value=value,
                    size=size,
                )

    def function(self, name: str) -> Symbol:
        matches = [
            symbol
            for symbol in self.symbols
            if symbol.name == name
            and symbol.symbol_type == STT_FUNC
            and symbol.section_index != SHN_UNDEF
            and symbol.section_index < SHN_LORESERVE
        ]
        if len(matches) != 1:
            raise ValueError(f"expected one defined function named {name!r}, got {len(matches)}")
        return matches[0]

    def kcfi_record(self, symbol: Symbol) -> dict[str, object]:
        section = self.sections[symbol.section_index]
        symbol_offset = symbol.value if self.elf_type == ET_REL else symbol.value - section.address
        preamble_offset = symbol_offset - 4
        if preamble_offset < 0 or symbol_offset > section.size:
            raise ValueError(f"function {symbol.name} has no in-section 4-byte preamble")
        preamble = self.section_bytes(section)[preamble_offset:symbol_offset]
        if len(preamble) != 4:
            raise ValueError(f"function {symbol.name} has a truncated KCFI preamble")
        return {
            "function": symbol.name,
            "section": section.name,
            "symbol_offset": f"0x{symbol_offset:x}",
            "symbol_size": symbol.size,
            "preamble_offset": f"0x{preamble_offset:x}",
            "preamble_bytes_le": preamble.hex(),
            "type_id": f"0x{int.from_bytes(preamble, 'little'):08x}",
        }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("elf", type=Path, help="AArch64 ELF64 module or object")
    parser.add_argument(
        "-f",
        "--function",
        action="append",
        dest="functions",
        help="function to inspect; repeat for multiple names (default: all functions)",
    )
    parser.add_argument("-o", "--output", type=Path, help="JSON output path")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    elf = Elf64(args.elf)
    if args.functions:
        symbols = [elf.function(name) for name in args.functions]
    else:
        symbols = sorted(
            (
                symbol
                for symbol in elf.symbols
                if symbol.symbol_type == STT_FUNC
                and symbol.section_index != SHN_UNDEF
                and symbol.section_index < SHN_LORESERVE
            ),
            key=lambda symbol: (symbol.section_index, symbol.value, symbol.name),
        )

    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "source": {
            "path": str(args.elf),
            "size": len(elf.data),
            "sha256": hashlib.sha256(elf.data).hexdigest(),
            "elf_type": elf.elf_type,
            "machine": elf.machine,
        },
        "records": [elf.kcfi_record(symbol) for symbol in symbols],
    }
    rendered = json.dumps(payload, indent=2, sort_keys=True) + "\n"
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(rendered, encoding="utf-8", newline="\n")
    else:
        sys.stdout.write(rendered)
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, struct.error) as exc:
        print(f"error: {exc}", file=sys.stderr)
        raise SystemExit(2)
