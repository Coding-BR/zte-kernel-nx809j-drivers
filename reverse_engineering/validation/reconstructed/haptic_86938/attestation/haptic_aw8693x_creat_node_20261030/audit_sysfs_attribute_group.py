#!/usr/bin/env python3
"""Compare stock and candidate ELF sysfs group contents by relocations."""

from __future__ import annotations

import argparse
import hashlib
import json
import struct
from pathlib import Path
from typing import Any

from elftools.elf.elffile import ELFFile


EXPECTED = [
    ("cont_drv_lvl", "cont_drv_lvl_show", "cont_drv_lvl_store"),
    ("cont_drv_time", "cont_drv_time_show", "cont_drv_time_store"),
    ("cont_brk_time", "cont_brk_time_show", "cont_brk_time_store"),
    ("trig", "trig_show", "trig_store"),
    ("rtp_auto_sin", "rtp_auto_sin_show", "rtp_auto_sin_store"),
]


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


class Module:
    def __init__(self, path: Path):
        self.path = path
        self.stream = path.open("rb")
        self.elf = ELFFile(self.stream)
        self.symtab = self.elf.get_section_by_name(".symtab")
        if self.symtab is None:
            raise ValueError(f"missing .symtab: {path}")
        self.sections = list(self.elf.iter_sections())
        self.section_index = {section.name: index for index, section in enumerate(self.sections)}
        self.data = self.elf.get_section_by_name(".data")
        if self.data is None:
            raise ValueError(f"missing .data: {path}")
        self.data_index = self.section_index[".data"]
        self.data_bytes = self.data.data()
        self.relocations: dict[int, Any] = {}
        for section in self.sections:
            if section["sh_type"] in ("SHT_REL", "SHT_RELA") and section["sh_info"] == self.data_index:
                for relocation in section.iter_relocations():
                    self.relocations[relocation["r_offset"]] = relocation
        self.function_symbols: dict[int, str] = {}
        for symbol in self.symtab.iter_symbols():
            if symbol["st_info"]["type"] == "STT_FUNC":
                self.function_symbols.setdefault(symbol["st_value"], symbol.name)

    def close(self) -> None:
        self.stream.close()

    def symbol(self, name: str):
        matches = [symbol for symbol in self.symtab.iter_symbols() if symbol.name == name]
        if len(matches) != 1:
            raise ValueError(f"expected one {name} symbol in {self.path}, got {len(matches)}")
        return matches[0]

    def resolve(self, data_offset: int) -> tuple[str, int] | None:
        relocation = self.relocations.get(data_offset)
        if relocation is None:
            return None
        symbol = self.symtab.get_symbol(relocation["r_info_sym"])
        addend = relocation["r_addend"] if relocation.is_RELA() else 0
        if symbol["st_info"]["type"] == "STT_SECTION":
            section_name = self.sections[symbol["st_shndx"]].name
            target_offset = symbol["st_value"] + addend
        else:
            section_name = self.sections[symbol["st_shndx"]].name
            target_offset = symbol["st_value"] + addend
            if symbol["st_info"]["type"] == "STT_FUNC":
                return symbol.name, target_offset
            if symbol.name and section_name != ".data":
                return symbol.name, target_offset
        if section_name == ".text":
            return self.function_symbols.get(target_offset, f".text+0x{target_offset:x}"), target_offset
        return section_name, target_offset

    def read_string(self, target: tuple[str, int] | None) -> str | None:
        if target is None:
            return None
        section_name, offset = target
        if section_name.startswith(".rodata"):
            section = self.elf.get_section_by_name(section_name)
            if section is None:
                return None
            raw = section.data()
            end = raw.find(b"\0", offset)
            if end < 0:
                return None
            return raw[offset:end].decode("utf-8", errors="strict")
        return None

    def inspect_group(self) -> dict[str, Any]:
        group = self.symbol("aw8693x_vibrator_attribute_group")
        if self.sections[group["st_shndx"]].name != ".data":
            raise ValueError("group is not in .data")
        group_offset = group["st_value"]
        if group["st_size"] != 40:
            raise ValueError(f"unexpected attribute_group size: {group['st_size']}")

        group_fields = [self.resolve(group_offset + index * 8) for index in range(5)]
        if any(field is not None for field in group_fields[:3]) or group_fields[4] is not None:
            raise ValueError(f"unexpected group name/visibility/bin_attrs fields: {group_fields}")
        if group_fields[3] is None or group_fields[3][0] != ".data":
            raise ValueError(f"invalid attrs array pointer: {group_fields[3]}")
        array_offset = group_fields[3][1]

        attributes = []
        for index in range(6):
            pointer = self.resolve(array_offset + index * 8)
            if index == 5:
                if pointer is not None or self.data_bytes[array_offset + index * 8:array_offset + index * 8 + 8] != bytes(8):
                    raise ValueError("attrs array is not NULL terminated after five entries")
                continue
            if pointer is None or pointer[0] != ".data":
                raise ValueError(f"invalid attribute pointer at index {index}: {pointer}")
            descriptor_offset = pointer[1]
            descriptor = next(
                (symbol for symbol in self.symtab.iter_symbols()
                 if symbol["st_shndx"] == self.data_index
                 and symbol["st_value"] == descriptor_offset
                 and symbol["st_size"] == 32),
                None,
            )
            if descriptor is None:
                raise ValueError(f"missing 32-byte device_attribute at .data+0x{descriptor_offset:x}")
            name = self.read_string(self.resolve(descriptor_offset))
            mode = struct.unpack_from("<H", self.data_bytes, descriptor_offset + 8)[0]
            show = self.resolve(descriptor_offset + 16)
            store = self.resolve(descriptor_offset + 24)
            attributes.append({
                "order": index,
                "name": name,
                "mode_octal": f"0{mode:o}",
                "show": show[0] if show else None,
                "store": store[0] if store else None,
                "descriptor_data_offset": f"0x{descriptor_offset:x}",
            })

        return {
            "module_sha256": sha256(self.path),
            "module_path": str(self.path),
            "group": {
                "section": ".data",
                "offset": f"0x{group_offset:x}",
                "size_bytes": group["st_size"],
                "attrs_array_offset": f"0x{array_offset:x}",
                "name": None,
                "is_visible": None,
                "is_bin_visible": None,
                "bin_attrs": None,
            },
            "attributes": attributes,
            "null_terminator": True,
        }


def semantic_view(item: dict[str, Any]) -> dict[str, Any]:
    return {
        key: value
        for key, value in item["group"].items()
        if key not in {"offset", "attrs_array_offset"}
    } | {
        "attributes": [
            {key: attribute[key] for key in ("order", "name", "mode_octal", "show", "store")}
            for attribute in item["attributes"]
        ],
        "null_terminator": item["null_terminator"],
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--stock", required=True, type=Path)
    parser.add_argument("--candidate", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()

    stock = Module(args.stock)
    candidate = Module(args.candidate)
    try:
        stock_group = stock.inspect_group()
        candidate_group = candidate.inspect_group()
    finally:
        stock.close()
        candidate.close()
    expected = [
        {"order": index, "name": name, "mode_octal": "0644", "show": show, "store": store}
        for index, (name, show, store) in enumerate(EXPECTED)
    ]
    candidate_semantics = semantic_view(candidate_group)
    stock_semantics = semantic_view(stock_group)
    report = {
        "schema_version": "1.0",
        "status": "PASS" if stock_semantics == candidate_semantics == {
            "section": ".data", "size_bytes": 40, "name": None,
            "is_visible": None, "is_bin_visible": None, "bin_attrs": None,
            "attributes": expected, "null_terminator": True,
        } else "FAIL",
        "checks": {
            "stock_layout_matches_expected": stock_semantics == {
                "section": ".data", "size_bytes": 40, "name": None,
                "is_visible": None, "is_bin_visible": None, "bin_attrs": None,
                "attributes": expected, "null_terminator": True,
            },
            "candidate_layout_matches_stock": candidate_semantics == stock_semantics,
        },
        "stock": stock_group,
        "candidate": candidate_group,
        "authority": "ELF .symtab, .data bytes, and .rela.data targets; callback addresses resolved to exact STT_FUNC symbols",
        "limitations": [
            "This confirms the emitted attribute table and callback references, not sysfs teardown or runtime lifetime.",
            "Whole-driver equivalence and device hardware behavior remain unverified.",
        ],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"status": report["status"], "output": str(args.output), "checks": report["checks"]}))
    return 0 if report["status"] == "PASS" else 1


if __name__ == "__main__":
    raise SystemExit(main())
