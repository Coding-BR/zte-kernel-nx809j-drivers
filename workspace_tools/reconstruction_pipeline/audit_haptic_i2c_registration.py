#!/usr/bin/env python3
"""Check the recovered haptic I2C registration object against the stock ELF."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
from pathlib import Path
from typing import Any

from elftools.elf.elffile import ELFFile


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def symbol_table(elf: ELFFile):
    table = elf.get_section_by_name(".symtab")
    if table is None:
        raise ValueError("ELF has no .symtab")
    return table


def named_symbol(table, name: str):
    matches = table.get_symbol_by_name(name) or []
    if not matches:
        raise ValueError(f"missing ELF symbol: {name}")
    return matches[0]


def section_name(elf: ELFFile, index: Any) -> str:
    if not isinstance(index, int):
        return str(index)
    return elf.get_section(index).name


def relocations_for_object(elf: ELFFile, symbol) -> dict[int, Any]:
    section_index = symbol["st_shndx"]
    result: dict[int, Any] = {}
    for relsec in elf.iter_sections():
        if not hasattr(relsec, "iter_relocations"):
            continue
        if relsec["sh_info"] != section_index:
            continue
        for relocation in relsec.iter_relocations():
            offset = relocation["r_offset"] - symbol["st_value"]
            if 0 <= offset < symbol["st_size"]:
                result[offset] = relocation
    return result


def target_of(elf: ELFFile, table, relocation) -> tuple[str, int, str]:
    symbol = table.get_symbol(relocation["r_info_sym"])
    addend = relocation["r_addend"] if relocation.is_RELA() else 0
    if symbol.name:
        name = symbol.name
        if name == "__this_module":
            return ("symbol", 0, name)
        if symbol["st_shndx"] != "SHN_UNDEF":
            target_section = section_name(elf, symbol["st_shndx"])
            offset = symbol["st_value"] + addend
            if target_section == ".text":
                for candidate in table.iter_symbols():
                    if (
                        candidate.name
                        and candidate["st_shndx"] == symbol["st_shndx"]
                        and candidate["st_value"] == offset
                        and candidate["st_info"]["type"] == "STT_FUNC"
                    ):
                        return ("function", offset, candidate.name)
            return (target_section, offset, name)
        return ("symbol", addend, name)

    target_section = elf.get_section(symbol["st_shndx"])
    offset = addend
    if target_section.name == ".text":
        for candidate in table.iter_symbols():
            if (
                candidate.name
                and candidate["st_shndx"] == symbol["st_shndx"]
                and candidate["st_value"] == offset
                and candidate["st_info"]["type"] == "STT_FUNC"
            ):
                return ("function", offset, candidate.name)
    if target_section.name == ".rodata.str1.1":
        data = target_section.data()
        end = data.find(b"\0", offset)
        if end >= 0:
            return ("string", offset, data[offset:end].decode("ascii", "replace"))
    return (target_section.name, offset, "")


def c_string(section, offset: int) -> str:
    data = section.data()
    if offset < 0 or offset >= len(data):
        return ""
    end = data.find(b"\0", offset)
    if end < 0:
        end = len(data)
    return data[offset:end].decode("ascii", "replace")


def modinfo(elf: ELFFile) -> dict[str, list[str]]:
    section = elf.get_section_by_name(".modinfo")
    result: dict[str, list[str]] = {}
    if section is None:
        return result
    for raw in section.data().split(b"\0"):
        if b"=" not in raw:
            continue
        key, value = raw.split(b"=", 1)
        result.setdefault(key.decode("ascii", "replace"), []).append(
            value.decode("ascii", "replace")
        )
    return result


def audit_module(path: Path) -> dict[str, Any]:
    with path.open("rb") as stream:
        elf = ELFFile(stream)
        table = symbol_table(elf)
        driver = named_symbol(table, "aw_i2c_driver")
        driver_section = elf.get_section(driver["st_shndx"])
        driver_relocs = relocations_for_object(elf, driver)
        fields: dict[str, Any] = {}

        for field, offset in (
            ("probe", 0x08),
            ("remove", 0x10),
            ("name", 0x30),
            ("owner", 0x40),
            ("of_match_table", 0x58),
            ("pm", 0xA8),
            ("id_table", 0xE0),
        ):
            relocation = driver_relocs.get(offset)
            fields[field] = None
            if relocation is None:
                continue
            kind, target_offset, target_name = target_of(elf, table, relocation)
            target_symbol = table.get_symbol(relocation["r_info_sym"])
            if not target_symbol.name and kind not in ("function", "string"):
                kind = section_name(elf, target_symbol["st_shndx"])
            fields[field] = {
                "field_offset": offset,
                "kind": kind,
                "offset": target_offset,
                "name": target_name,
            }

        rodata = elf.get_section_by_name(".rodata")
        id_reloc = driver_relocs.get(0xE0)
        id_symbol = table.get_symbol(id_reloc["r_info_sym"]) if id_reloc else None
        if id_symbol and id_symbol.name:
            id_base = id_symbol["st_value"] + (
                id_reloc["r_addend"] if id_reloc.is_RELA() else 0
            )
        elif id_reloc:
            id_base = id_reloc["r_addend"] if id_reloc.is_RELA() else 0
        else:
            id_base = -1

        of_reloc = driver_relocs.get(0x58)
        pm_reloc = driver_relocs.get(0xA8)
        of_base = (
            (of_reloc["r_addend"] if of_reloc.is_RELA() else 0)
            if of_reloc
            else -1
        )
        if of_reloc:
            target = table.get_symbol(of_reloc["r_info_sym"])
            if target.name and target["st_shndx"] != "SHN_UNDEF":
                of_base += target["st_value"]
        pm_base = (
            (pm_reloc["r_addend"] if pm_reloc.is_RELA() else 0)
            if pm_reloc
            else -1
        )
        if pm_reloc:
            target = table.get_symbol(pm_reloc["r_info_sym"])
            if target.name and target["st_shndx"] != "SHN_UNDEF":
                pm_base += target["st_value"]

        pm_targets: dict[int, str] = {}
        if rodata is not None and pm_base >= 0:
            for relsec in elf.iter_sections():
                if not hasattr(relsec, "iter_relocations"):
                    continue
                if section_name(elf, relsec["sh_info"]) != ".rodata":
                    continue
                for relocation in relsec.iter_relocations():
                    offset = relocation["r_offset"] - pm_base
                    if offset not in (0x10, 0x18, 0x20, 0x28, 0x30, 0x38):
                        continue
                    _, _, name = target_of(elf, table, relocation)
                    pm_targets[offset] = name

        entry_calls: dict[str, list[str]] = {}
        for function_name in ("init_module", "cleanup_module"):
            function = named_symbol(table, function_name)
            function_section = elf.get_section(function["st_shndx"])
            calls: list[str] = []
            for relsec in elf.iter_sections():
                if not hasattr(relsec, "iter_relocations"):
                    continue
                if relsec["sh_info"] != function["st_shndx"]:
                    continue
                for relocation in relsec.iter_relocations():
                    if not (
                        function["st_value"]
                        <= relocation["r_offset"]
                        < function["st_value"] + function["st_size"]
                    ):
                        continue
                    _, _, name = target_of(elf, table, relocation)
                    if name:
                        calls.append(name)
            entry_calls[function_name] = sorted(set(calls))

        return {
            "path": str(path),
            "sha256": sha256(path),
            "driver_object": {
                "section": driver_section.name,
                "offset": driver["st_value"],
                "size": driver["st_size"],
                "fields": fields,
            },
            "of_match": {
                "section": ".rodata",
                "offset": of_base,
                "compatible": c_string(rodata, of_base + 0x40) if rodata else "",
            },
            "pm_ops": {
                "section": ".rodata",
                "offset": pm_base,
                "size": 0xC0,
                "callback_relocations": {
                    f"0x{offset:x}": name for offset, name in sorted(pm_targets.items())
                },
            },
            "id_table": {
                "section": ".rodata",
                "offset": id_base,
                "size": id_symbol["st_size"] if id_symbol else 0,
                "first_name": c_string(rodata, id_base) if rodata else "",
                "tail_is_zero": bool(
                    rodata
                    and id_base >= 0
                    and rodata.data()[id_base + 0x20 : id_base + 0x40]
                    == bytes(0x20)
                ),
            },
            "entry_functions": {
                name: {
                    "section": elf.get_section(named_symbol(table, name)["st_shndx"]).name,
                    "size": named_symbol(table, name)["st_size"],
                    "relocation_targets": targets,
                }
                for name, targets in entry_calls.items()
            },
            "modinfo": modinfo(elf),
        }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--stock", required=True, type=Path)
    parser.add_argument("--candidate", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    parser.add_argument("--script", type=Path, default=Path(__file__))
    args = parser.parse_args()

    stock = audit_module(args.stock)
    candidate = audit_module(args.candidate)
    expected_driver_fields = {
        "probe": ("function", "aw_i2c_probe"),
        "remove": ("function", "aw_remove"),
        "name": ("string", "haptic_hv"),
        "owner": ("symbol", "__this_module"),
    }

    def field_check(report: dict[str, Any], field: str, expected: tuple[str, str]) -> bool:
        value = report["driver_object"]["fields"].get(field) or {}
        return value.get("kind") == expected[0] and value.get("name") == expected[1]

    checks: dict[str, bool] = {
        "stock_driver_size_0x110": stock["driver_object"]["size"] == 0x110,
        "candidate_driver_size_0x110": candidate["driver_object"]["size"] == 0x110,
        "stock_of_compatible": stock["of_match"]["compatible"] == "awinic,haptic_hv",
        "candidate_of_compatible": candidate["of_match"]["compatible"] == "awinic,haptic_hv",
        "stock_pm_callbacks": list(stock["pm_ops"]["callback_relocations"].values())
        == ["aw_i2c_suspend", "aw_i2c_resume"] * 3,
        "candidate_pm_callbacks": list(candidate["pm_ops"]["callback_relocations"].values())
        == ["aw_i2c_suspend", "aw_i2c_resume"] * 3,
        "stock_i2c_id": stock["id_table"]["first_name"] == "haptic_hv"
        and stock["id_table"]["tail_is_zero"],
        "candidate_i2c_id": candidate["id_table"]["first_name"] == "haptic_hv"
        and candidate["id_table"]["tail_is_zero"],
        "init_register_call": "i2c_register_driver"
        in candidate["entry_functions"]["init_module"]["relocation_targets"],
        "exit_unregister_call": "i2c_del_driver"
        in candidate["entry_functions"]["cleanup_module"]["relocation_targets"],
        "init_body_size_matches_stock": candidate["entry_functions"]["init_module"]["size"]
        == stock["entry_functions"]["init_module"]["size"],
        "exit_body_size_matches_stock": candidate["entry_functions"]["cleanup_module"]["size"]
        == stock["entry_functions"]["cleanup_module"]["size"],
        "modinfo_aliases_match": candidate["modinfo"].get("alias", [])
        == stock["modinfo"].get("alias", []),
        "modinfo_description_matches": candidate["modinfo"].get("description", [])
        == stock["modinfo"].get("description", []),
        "modinfo_license_matches": candidate["modinfo"].get("license", [])
        == stock["modinfo"].get("license", []),
    }
    for field, expected in expected_driver_fields.items():
        checks[f"stock_field_{field}"] = field_check(stock, field, expected)
        checks[f"candidate_field_{field}"] = field_check(candidate, field, expected)

    for label, report in (("stock", stock), ("candidate", candidate)):
        fields = report["driver_object"]["fields"]
        for field, kind in (("of_match_table", ".rodata"), ("pm", ".rodata"), ("id_table", ".rodata")):
            checks[f"{label}_field_{field}_rodata"] = (
                fields.get(field, {}).get("kind") == kind
            )

    checks["driver_object_field_offsets_match"] = all(
        stock["driver_object"]["fields"].get(key, {}).get("field_offset")
        == expected_offset
        and candidate["driver_object"]["fields"].get(key, {}).get("field_offset")
        == expected_offset
        for key, expected_offset in (
            ("probe", 0x08),
            ("remove", 0x10),
            ("name", 0x30),
            ("owner", 0x40),
            ("of_match_table", 0x58),
            ("pm", 0xA8),
            ("id_table", 0xE0),
        )
    )
    checks["pm_callback_relocations_match"] = (
        stock["pm_ops"]["callback_relocations"]
        == candidate["pm_ops"]["callback_relocations"]
    )

    report = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "status": "PASS" if all(checks.values()) else "FAIL",
        "checks": checks,
        "stock": stock,
        "candidate": candidate,
        "auditor_script": {
            "path": str(args.script),
            "sha256": sha256(args.script),
        },
        "limitations": [
            "ELF relocation and metadata parity do not prove behavior on physical hardware.",
            "The full driver reconstruction still requires independent review of all map entries.",
        ],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(json.dumps({"status": report["status"], "output": str(args.output)}, sort_keys=True))
    return 0 if report["status"] == "PASS" else 1


if __name__ == "__main__":
    raise SystemExit(main())
