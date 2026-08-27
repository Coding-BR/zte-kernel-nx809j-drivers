#!/usr/bin/env python3
"""Compare per-function AArch64 opcodes and relocations from two manifests."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import re
import struct
import sys
from pathlib import Path
from typing import Any


INSTRUCTION_RE = re.compile(
    r"^\s*[0-9a-f]+:\s+([0-9a-f]{8})\s+([a-z0-9.]+)(?:\s+(.*?))?\s*$",
    re.IGNORECASE,
)
SYMBOL_TARGET_RE = re.compile(r"<([^>]+)>")
RELOCATION_RE = re.compile(r"(R_AARCH64_[A-Z0-9_]+)\s+(\S+)")
RODATA_TARGET_RE = re.compile(
    r"^(?P<section>\.rodata(?:\.[A-Za-z0-9_.-]+)*)(?:\+0x(?P<offset>[0-9a-f]+))?$",
    re.IGNORECASE,
)
SECTION_TARGET_RE = re.compile(
    r"^(?P<section>\.[A-Za-z0-9_.-]+)(?:\+0x(?P<offset>[0-9a-fA-F]+))?$"
)
AARCH64_RELOCATION_NAMES = {
    257: "R_AARCH64_ABS64",
    258: "R_AARCH64_ABS32",
    259: "R_AARCH64_ABS16",
}
ALLOC_TAG_RE = re.compile(
    r"^(?P<type>R_AARCH64_[A-Z0-9_]+) "
    r"(?P<owner>[A-Za-z0-9_.$]+)\._alloc_tag(?:\.(?P<suffix>[0-9]+))?$"
)
CODETAG_SECTION_TARGET_RE = re.compile(
    r"^R_AARCH64_[A-Z0-9_]+ \.codetag\.alloc_tags\+0x[0-9a-fA-F]+$"
)


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def read_json(path: Path) -> dict[str, Any]:
    value = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(value, dict):
        raise ValueError(f"expected JSON object: {path}")
    return value


def load_manifest(root: Path) -> dict[str, Any]:
    manifest = read_json(root / "manifest.json")
    return manifest


def records_by_function(manifest: dict[str, Any], root: Path) -> dict[str, dict[str, Any]]:
    records = manifest.get("records")
    if not isinstance(records, list):
        raise ValueError(f"manifest has no records array: {root}")
    result: dict[str, dict[str, Any]] = {}
    for record in records:
        if not isinstance(record, dict) or not isinstance(record.get("function"), str):
            raise ValueError(f"invalid function record: {root}")
        result[record["function"]] = record
    return result


def records_by_function_id(manifest: dict[str, Any], root: Path) -> dict[str, dict[str, Any]]:
    """Return manifest records indexed by their stable Ghidra-aware identity."""
    records = manifest.get("records")
    if not isinstance(records, list):
        raise ValueError(f"manifest has no records array: {root}")
    result: dict[str, dict[str, Any]] = {}
    for record in records:
        function_id = record.get("function_id") if isinstance(record, dict) else None
        if not isinstance(function_id, str) or not function_id:
            raise ValueError(f"invalid function identity: {root}")
        if function_id in result:
            raise ValueError(f"duplicate function identity {function_id}: {root}")
        result[function_id] = record
    return result


def resolve_record(
    selector: str,
    by_function: dict[str, dict[str, Any]],
    by_function_id: dict[str, dict[str, Any]],
) -> dict[str, Any] | None:
    """Resolve ``name`` or exact ``name@ghidra_entry`` manifest selectors."""
    return by_function_id.get(selector) or by_function.get(selector)


def parse_function_pair(value: str) -> tuple[str, str]:
    """Parse an explicit stock-to-candidate function identity mapping."""
    stock_selector, separator, candidate_selector = value.partition("=")
    if not separator or not stock_selector or not candidate_selector:
        raise ValueError(
            "--function-pair must be STOCK_FUNCTION[@ENTRY]=CANDIDATE_FUNCTION[@ENTRY]"
        )
    return stock_selector, candidate_selector


def manifest_source_path(manifest: dict[str, Any], root: Path) -> Path | None:
    source = manifest.get("source")
    if not isinstance(source, dict) or not isinstance(source.get("path"), str):
        return None
    path = Path(source["path"])
    if not path.is_absolute():
        path = root / path
    return path.resolve()


def elf_sections(path: Path | None) -> dict[str, bytes]:
    if path is None or not path.is_file():
        return {}

    data = path.read_bytes()
    if len(data) < 64 or data[:4] != b"\x7fELF":
        raise ValueError(f"not an ELF file: {path}")
    if data[4] != 2 or data[5] != 1:
        raise ValueError(f"expected little-endian ELF64: {path}")

    section_offset = struct.unpack_from("<Q", data, 0x28)[0]
    section_entry_size = struct.unpack_from("<H", data, 0x3A)[0]
    section_count = struct.unpack_from("<H", data, 0x3C)[0]
    names_index = struct.unpack_from("<H", data, 0x3E)[0]
    if not section_offset or section_entry_size < 64 or names_index >= section_count:
        raise ValueError(f"unsupported ELF section table: {path}")

    headers: list[tuple[int, int, int]] = []
    for index in range(section_count):
        offset = section_offset + index * section_entry_size
        if offset + 64 > len(data):
            raise ValueError(f"truncated ELF section table: {path}")
        name_offset, _, _, _, file_offset, size, _, _, _, _ = struct.unpack_from(
            "<IIQQQQIIQQ", data, offset
        )
        if file_offset + size > len(data):
            raise ValueError(f"truncated ELF section payload: {path}")
        headers.append((name_offset, file_offset, size))

    _, names_offset, names_size = headers[names_index]
    names = data[names_offset : names_offset + names_size]
    sections: dict[str, bytes] = {}
    for name_offset, file_offset, size in headers:
        if name_offset >= len(names):
            continue
        name_end = names.find(b"\0", name_offset)
        if name_end < 0:
            continue
        name = names[name_offset:name_end].decode("ascii", errors="replace")
        sections[name] = data[file_offset : file_offset + size]
    return sections


def elf_symbol_ranges(path: Path | None) -> dict[str, tuple[str, int, int]]:
    """Return defined ELF symbols as ``name -> (section, offset, size)``."""
    if path is None or not path.is_file():
        return {}

    data = path.read_bytes()
    if len(data) < 64 or data[:4] != b"\x7fELF":
        raise ValueError(f"not an ELF file: {path}")
    if data[4] != 2 or data[5] != 1:
        raise ValueError(f"expected little-endian ELF64: {path}")

    section_offset = struct.unpack_from("<Q", data, 0x28)[0]
    section_entry_size = struct.unpack_from("<H", data, 0x3A)[0]
    section_count = struct.unpack_from("<H", data, 0x3C)[0]
    names_index = struct.unpack_from("<H", data, 0x3E)[0]
    if not section_offset or section_entry_size < 64 or names_index >= section_count:
        raise ValueError(f"unsupported ELF section table: {path}")

    headers: list[tuple[int, int, int, int, int]] = []
    for index in range(section_count):
        offset = section_offset + index * section_entry_size
        if offset + 64 > len(data):
            raise ValueError(f"truncated ELF section table: {path}")
        name_offset, section_type, _, _, file_offset, size, link, _, _, _entry_size = (
            struct.unpack_from("<IIQQQQIIQQ", data, offset)
        )
        if file_offset + size > len(data):
            raise ValueError(f"truncated ELF section payload: {path}")
        headers.append((name_offset, section_type, file_offset, size, link))

    _, names_type, names_offset, names_size, _ = headers[names_index]
    if names_type != 3:
        raise ValueError(f"ELF section names are not a string table: {path}")
    section_names_blob = data[names_offset : names_offset + names_size]

    def section_name(index: int) -> str:
        name_offset = headers[index][0]
        if name_offset >= len(section_names_blob):
            return ""
        end = section_names_blob.find(b"\0", name_offset)
        if end < 0:
            return ""
        return section_names_blob[name_offset:end].decode("ascii", errors="replace")

    names = [section_name(index) for index in range(section_count)]
    ranges: dict[str, tuple[str, int, int]] = {}
    for _, section_type, file_offset, size, linked_index in headers:
        if section_type not in (2, 11):  # SHT_SYMTAB / SHT_DYNSYM
            continue
        if linked_index >= section_count or names[linked_index] == "":
            continue
        string_offset = headers[linked_index][2]
        string_size = headers[linked_index][3]
        strings = data[string_offset : string_offset + string_size]
        entry_size = 24
        count = size // entry_size
        for index in range(count):
            entry_offset = file_offset + index * entry_size
            if entry_offset + entry_size > len(data):
                break
            name_offset, _, _, shndx, value, symbol_size = struct.unpack_from(
                "<IBBHQQ", data, entry_offset
            )
            if not name_offset or shndx == 0 or shndx >= section_count:
                continue
            end = strings.find(b"\0", name_offset)
            if end < 0:
                continue
            name = strings[name_offset:end].decode("utf-8", errors="replace")
            section = names[shndx]
            if not name or not section:
                continue
            # Prefer the first defined symbol. Duplicate dynamic/local entries
            # should resolve to the same section-relative address in a module.
            ranges.setdefault(name, (section, value, symbol_size))
    return ranges


def elf_symbol_locations(path: Path | None) -> dict[str, tuple[str, int]]:
    """Return defined ELF symbols as ``name -> (section, section_offset)``."""
    return {
        name: (section, offset)
        for name, (section, offset, _size) in elf_symbol_ranges(path).items()
    }


def elf_relocation_sites(
    path: Path | None,
) -> dict[tuple[str, int], tuple[str, str]]:
    """Return section-relative relocation sites and their pointer targets."""
    if path is None or not path.is_file():
        return {}

    data = path.read_bytes()
    if len(data) < 64 or data[:4] != b"\x7fELF":
        raise ValueError(f"not an ELF file: {path}")
    if data[4] != 2 or data[5] != 1:
        raise ValueError(f"expected little-endian ELF64: {path}")

    section_offset = struct.unpack_from("<Q", data, 0x28)[0]
    section_entry_size = struct.unpack_from("<H", data, 0x3A)[0]
    section_count = struct.unpack_from("<H", data, 0x3C)[0]
    names_index = struct.unpack_from("<H", data, 0x3E)[0]
    if not section_offset or section_entry_size < 64 or names_index >= section_count:
        raise ValueError(f"unsupported ELF section table: {path}")

    headers: list[dict[str, int]] = []
    for index in range(section_count):
        offset = section_offset + index * section_entry_size
        if offset + 64 > len(data):
            raise ValueError(f"truncated ELF section table: {path}")
        (
            name_offset,
            section_type,
            _flags,
            _address,
            file_offset,
            size,
            link,
            info,
            _alignment,
            entry_size,
        ) = struct.unpack_from("<IIQQQQIIQQ", data, offset)
        if file_offset + size > len(data):
            raise ValueError(f"truncated ELF section payload: {path}")
        headers.append(
            {
                "name_offset": name_offset,
                "type": section_type,
                "offset": file_offset,
                "size": size,
                "link": link,
                "info": info,
                "entry_size": entry_size,
            }
        )

    names_header = headers[names_index]
    if names_header["type"] != 3:
        raise ValueError(f"ELF section names are not a string table: {path}")
    names_blob = data[
        names_header["offset"] : names_header["offset"] + names_header["size"]
    ]

    def read_string(blob: bytes, offset: int) -> str:
        if offset < 0 or offset >= len(blob):
            return ""
        end = blob.find(b"\0", offset)
        if end < 0:
            return ""
        return blob[offset:end].decode("utf-8", errors="replace")

    names = [read_string(names_blob, header["name_offset"]) for header in headers]
    sites: dict[tuple[str, int], tuple[str, str]] = {}
    for relocation_header in headers:
        if relocation_header["type"] != 4:  # SHT_RELA
            continue
        target_index = relocation_header["info"]
        symbols_index = relocation_header["link"]
        if target_index >= section_count or symbols_index >= section_count:
            continue
        target_section = names[target_index]
        symbols_header = headers[symbols_index]
        strings_index = symbols_header["link"]
        if not target_section or symbols_header["type"] not in (2, 11):
            continue
        if strings_index >= section_count:
            continue
        strings_header = headers[strings_index]
        strings = data[
            strings_header["offset"] : strings_header["offset"] + strings_header["size"]
        ]
        symbol_entry_size = symbols_header["entry_size"] or 24
        relocation_entry_size = relocation_header["entry_size"] or 24
        if symbol_entry_size < 24 or relocation_entry_size < 24:
            continue

        def relocation_target(symbol_index: int, addend: int) -> str:
            symbol_offset = symbols_header["offset"] + symbol_index * symbol_entry_size
            if symbol_offset + 24 > symbols_header["offset"] + symbols_header["size"]:
                return f"symbol#{symbol_index}{addend:+#x}"
            name_offset, _info, _other, shndx, value, _size = struct.unpack_from(
                "<IBBHQQ", data, symbol_offset
            )
            name = read_string(strings, name_offset)
            if name:
                base = name
                target_offset = addend
            elif 0 < shndx < section_count and names[shndx]:
                base = names[shndx]
                target_offset = value + addend
            else:
                return f"symbol#{symbol_index}{addend:+#x}"
            if target_offset == 0:
                return base
            sign = "+" if target_offset > 0 else "-"
            return f"{base}{sign}0x{abs(target_offset):x}"

        count = relocation_header["size"] // relocation_entry_size
        for index in range(count):
            entry_offset = relocation_header["offset"] + index * relocation_entry_size
            relocation_offset, relocation_info, addend = struct.unpack_from(
                "<QQq", data, entry_offset
            )
            relocation_type_id = relocation_info & 0xFFFFFFFF
            symbol_index = relocation_info >> 32
            relocation_type = AARCH64_RELOCATION_NAMES.get(
                relocation_type_id, f"R_AARCH64_{relocation_type_id}"
            )
            sites[(target_section, relocation_offset)] = (
                relocation_type,
                relocation_target(symbol_index, addend),
            )
    return sites


def matched_rodata_blob_aliases(
    stock_sections: dict[str, bytes],
    candidate_sections: dict[str, bytes],
    stock_symbols: dict[str, tuple[str, int, int]],
    candidate_symbols: dict[str, tuple[str, int, int]],
    stock_relocation_sites: dict[tuple[str, int], tuple[str, str]],
    candidate_relocation_sites: dict[tuple[str, int], tuple[str, str]],
) -> tuple[dict[tuple[str, int], str], dict[tuple[str, int], str]]:
    """Pair unique, relocation-free constant blobs across two ELF layouts."""
    stock_aliases: dict[tuple[str, int], str] = {}
    candidate_aliases: dict[tuple[str, int], str] = {}

    def occurrences(payload: bytes, blob: bytes) -> list[int]:
        result: list[int] = []
        start = 0
        while True:
            found = payload.find(blob, start)
            if found < 0:
                return result
            result.append(found)
            start = found + 1

    def has_relocation(
        sites: dict[tuple[str, int], tuple[str, str]],
        section: str,
        offset: int,
        size: int,
    ) -> bool:
        return any(
            site_section == section and offset <= site_offset < offset + size
            for site_section, site_offset in sites
        )

    def bind(
        source_sections: dict[str, bytes],
        target_sections: dict[str, bytes],
        source_symbols: dict[str, tuple[str, int, int]],
        source_sites: dict[tuple[str, int], tuple[str, str]],
        target_sites: dict[tuple[str, int], tuple[str, str]],
        source_aliases: dict[tuple[str, int], str],
        target_aliases: dict[tuple[str, int], str],
    ) -> None:
        for section, offset, size in source_symbols.values():
            if not section.startswith(".rodata") or size <= 0 or size > 4096:
                continue
            source = source_sections.get(section)
            target = target_sections.get(section)
            if source is None or target is None or offset + size > len(source):
                continue
            if has_relocation(source_sites, section, offset, size):
                continue
            blob = source[offset : offset + size]
            matches = occurrences(target, blob)
            if len(matches) != 1:
                continue
            target_offset = matches[0]
            if has_relocation(target_sites, section, target_offset, size):
                continue
            identity = (
                f"{section}:blob:size={size}:sha256="
                f"{hashlib.sha256(blob).hexdigest()}"
            )
            source_aliases[(section, offset)] = identity
            target_aliases[(section, target_offset)] = identity

    bind(
        stock_sections,
        candidate_sections,
        stock_symbols,
        stock_relocation_sites,
        candidate_relocation_sites,
        stock_aliases,
        candidate_aliases,
    )
    bind(
        candidate_sections,
        stock_sections,
        candidate_symbols,
        candidate_relocation_sites,
        stock_relocation_sites,
        candidate_aliases,
        stock_aliases,
    )
    return stock_aliases, candidate_aliases


def normalized_symbol_target(
    target: str, symbol_locations: dict[str, tuple[str, int]] | None
) -> str:
    if not symbol_locations:
        return target
    match = re.fullmatch(r"(?P<name>[^+]+?)(?:\+0x(?P<addend>[0-9a-fA-F]+))?", target)
    if not match:
        return target
    name = match.group("name")
    addend = int(match.group("addend") or "0", 16)
    location = symbol_locations.get(name)
    if location is not None:
        # Keep the symbol identity. Its section-relative address may differ
        # between independently linked relocatable objects.
        return name if not addend else f"{name}+0x{addend:x}"

    section_match = SECTION_TARGET_RE.fullmatch(target)
    if not section_match:
        return target
    section = section_match.group("section")
    offset = int(section_match.group("offset") or "0", 16)
    inverse: dict[tuple[str, int], str] = {}
    for symbol, (symbol_section, symbol_offset) in symbol_locations.items():
        if symbol_section != section:
            continue
        current = inverse.get((section, symbol_offset))
        if current is None or (
            symbol.startswith("__") and not current.startswith("__")
        ) or (len(symbol) < len(current) and current.startswith("__")):
            inverse[(section, symbol_offset)] = symbol
    symbol = inverse.get((section, offset))
    if symbol is not None:
        return symbol
    return section if offset == 0 else f"{section}+0x{offset:x}"


def resolved_section_target(
    target: str, symbol_locations: dict[str, tuple[str, int]] | None
) -> tuple[str, int] | None:
    section_match = SECTION_TARGET_RE.fullmatch(target)
    if section_match:
        return (
            section_match.group("section"),
            int(section_match.group("offset") or "0", 16),
        )
    if not symbol_locations:
        return None
    symbol_match = re.fullmatch(
        r"(?P<name>[^+]+?)(?:\+0x(?P<addend>[0-9a-fA-F]+))?", target
    )
    if not symbol_match:
        return None
    location = symbol_locations.get(symbol_match.group("name"))
    if location is None:
        return None
    return location[0], location[1] + int(symbol_match.group("addend") or "0", 16)


def normalized_relocation(
    relocation_type: str,
    target: str,
    sections: dict[str, bytes],
    symbol_locations: dict[str, tuple[str, int]] | None = None,
    relocation_sites: dict[tuple[str, int], tuple[str, str]] | None = None,
    rodata_blob_aliases: dict[tuple[str, int], str] | None = None,
) -> str:
    resolved = resolved_section_target(target, symbol_locations)
    if resolved is None or not resolved[0].startswith(".rodata"):
        return f"{relocation_type} {normalized_symbol_target(target, symbol_locations)}"

    section_name, offset = resolved
    section = sections.get(section_name)
    if section is None:
        return f"{relocation_type} {normalized_symbol_target(target, symbol_locations)}"
    if offset >= len(section):
        return f"{relocation_type} {normalized_symbol_target(target, symbol_locations)}"

    blob_alias = (rodata_blob_aliases or {}).get((section_name, offset))
    if blob_alias is not None:
        return f"{relocation_type} {blob_alias}"

    pointer = (relocation_sites or {}).get((section_name, offset))
    if pointer is not None:
        pointer_type, pointer_target = pointer
        normalized_pointer = normalized_symbol_target(pointer_target, symbol_locations)
        pointer_location = resolved_section_target(pointer_target, symbol_locations)
        if pointer_location is not None and ".str" in pointer_location[0]:
            pointer_section = sections.get(pointer_location[0])
            pointer_offset = pointer_location[1]
            if pointer_section is not None and pointer_offset < len(pointer_section):
                pointer_end = pointer_section.find(b"\0", pointer_offset)
                if pointer_end >= 0:
                    pointer_text = pointer_section[pointer_offset:pointer_end].decode(
                        "utf-8", errors="backslashreplace"
                    )
                    normalized_pointer = (
                        f"{pointer_location[0]}:string="
                        f"{json.dumps(pointer_text, ensure_ascii=True)}"
                    )
        return (
            f"{relocation_type} {section_name}:pointer="
            f"{pointer_type}->{normalized_pointer}"
        )

    end = section.find(b"\0", offset, min(len(section), offset + 4096))
    if end < 0:
        return f"{relocation_type} {normalized_symbol_target(target, symbol_locations)}"
    value = section[offset:end]
    if not value:
        return f"{relocation_type} {normalized_symbol_target(target, symbol_locations)}"
    if ".str" not in section_name and any(
        byte < 0x20 and byte not in b"\t\n\r" for byte in value
    ):
        return f"{relocation_type} {normalized_symbol_target(target, symbol_locations)}"
    text = value.decode("utf-8", errors="backslashreplace")
    return f"{relocation_type} {section_name}:string={json.dumps(text, ensure_ascii=True)}"


def normalized_assembly(
    path: Path,
    sections: dict[str, bytes],
    symbol_locations: dict[str, tuple[str, int]] | None = None,
    relocation_sites: dict[tuple[str, int], tuple[str, str]] | None = None,
    rodata_blob_aliases: dict[tuple[str, int], str] | None = None,
) -> tuple[list[str], list[str], list[str]]:
    instructions: list[str] = []
    raw_relocations: list[str] = []
    normalized_relocations: list[str] = []
    pending_branch: tuple[int, str] | None = None
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        instruction = INSTRUCTION_RE.match(line)
        if instruction:
            opcode = instruction.group(1).lower()
            mnemonic = instruction.group(2).lower()
            operands = instruction.group(3) or ""
            target = SYMBOL_TARGET_RE.search(operands)
            # A local B/BL has no ELF relocation. Its imm26 changes whenever the
            # helper moves, although the generated instruction and destination
            # are otherwise identical. Preserve the opcode for every other
            # instruction and bind direct branches to their resolved symbol.
            if mnemonic in {"b", "bl"}:
                if target:
                    branch_target = normalized_symbol_target(
                        target.group(1), symbol_locations
                    )
                    instructions.append(f"{mnemonic} <{branch_target}>")
                else:
                    instructions.append(opcode)
                pending_branch = (len(instructions) - 1, mnemonic)
            else:
                instructions.append(opcode)
                pending_branch = None
        relocation = RELOCATION_RE.search(line)
        if relocation:
            relocation_type = relocation.group(1)
            target = relocation.group(2)
            raw_relocations.append(relocation.group(0))
            if relocation_type in {"R_AARCH64_CALL26", "R_AARCH64_JUMP26"}:
                if pending_branch is not None:
                    instruction_index, mnemonic = pending_branch
                    branch_target = normalized_symbol_target(target, symbol_locations)
                    instructions[instruction_index] = f"{mnemonic} <{branch_target}>"
                pending_branch = None
                continue
            normalized_relocations.append(
                normalized_relocation(
                    relocation_type,
                    target,
                    sections,
                    symbol_locations,
                    relocation_sites,
                    rodata_blob_aliases,
                )
            )
    if not instructions:
        raise ValueError(f"no AArch64 opcodes found: {path}")
    return instructions, raw_relocations, normalized_relocations


def canonicalize_initialized_unk_string_relocations(
    stock_relocations: list[str],
    candidate_relocations: list[str],
    candidate_sections: dict[str, bytes],
    candidate_symbols: dict[str, tuple[str, int]],
    stock_instruction_indices: list[int],
    candidate_instruction_indices: list[int],
    instructions_match: bool,
) -> tuple[list[str], list[str], list[dict[str, Any]]]:
    """Bind a reconstructed ``unk_*`` log buffer to equal stock string bytes.

    This deliberately accepts only a named, initialized candidate data object
    whose nul-terminated bytes exactly match a stock normalized string
    relocation. It does not alias arbitrary globals, anonymous data, or a
    different string section.
    """
    stock = list(stock_relocations)
    candidate = list(candidate_relocations)
    evidence: list[dict[str, Any]] = []
    expected_types = ("R_AARCH64_ADR_PREL_PG_HI21", "R_AARCH64_ADD_ABS_LO12_NC")
    if (
        not instructions_match
        or len(stock) != len(candidate)
        or len(stock_instruction_indices) != len(stock)
        or len(candidate_instruction_indices) != len(candidate)
    ):
        return stock, candidate, evidence

    def split_relocation(value: str) -> tuple[str, str] | None:
        parts = value.split(" ", 1)
        return (parts[0], parts[1]) if len(parts) == 2 else None

    def normalized_string(target: str) -> str | None:
        matched = re.fullmatch(r"\.rodata(?:\.[A-Za-z0-9_.-]+)*:string=(.+)", target)
        if matched is None:
            return None
        try:
            value = json.loads(matched.group(1))
        except json.JSONDecodeError:
            return None
        return value if isinstance(value, str) else None

    def initialized_unk_string(target: str) -> str | None:
        if not re.fullmatch(r"unk_[0-9a-fA-F]+", target):
            return None
        location = candidate_symbols.get(target)
        if location is None or not location[0].startswith(".data"):
            return None
        section = candidate_sections.get(location[0])
        if section is None or location[1] >= len(section):
            return None
        end = section.find(b"\0", location[1], min(len(section), location[1] + 4096))
        if end < 0 or end == location[1]:
            return None
        value = section[location[1] : end]
        if any(
            byte < 0x20
            and byte not in b"\t\n\r"
            and not (index == 0 and byte == 0x01)
            for index, byte in enumerate(value)
        ):
            return None
        return value.decode("utf-8", errors="strict")

    for index in range(len(stock) - 1):
        stock_pair = [split_relocation(value) for value in stock[index : index + 2]]
        candidate_pair = [split_relocation(value) for value in candidate[index : index + 2]]
        if any(value is None for value in stock_pair + candidate_pair):
            continue
        stock_typed = [value for value in stock_pair if value is not None]
        candidate_typed = [value for value in candidate_pair if value is not None]
        if (
            tuple(value[0] for value in stock_typed) != expected_types
            or tuple(value[0] for value in candidate_typed) != expected_types
            or stock_typed[0][1] != stock_typed[1][1]
            or candidate_typed[0][1] != candidate_typed[1][1]
            or candidate.count(candidate[index]) != 1
            or candidate.count(candidate[index + 1]) != 1
        ):
            continue
        stock_text = normalized_string(stock_typed[0][1])
        candidate_text = initialized_unk_string(candidate_typed[0][1])
        positions = stock_instruction_indices[index : index + 2]
        if (
            stock_text is None
            or candidate_text is None
            or stock_text != candidate_text
            or positions != candidate_instruction_indices[index : index + 2]
            or len(positions) != 2
            or positions[1] != positions[0] + 1
        ):
            continue
        digest = hashlib.sha256(stock_text.encode("utf-8")).hexdigest()
        alias = f"<initialized_unk_string:sha256={digest}>"
        for offset, relocation_type in enumerate(expected_types):
            stock[index + offset] = f"{relocation_type} {alias}"
            candidate[index + offset] = f"{relocation_type} {alias}"
        evidence.append(
            {
                "kind": "initialized_unk_string_bytes",
                "reason": (
                    "unique ADRP/ADD relocation pair references an initialized "
                    "candidate unk_* object whose exact bytes equal the stock string"
                ),
                "stock_target": stock_typed[0][1],
                "candidate_target": candidate_typed[0][1],
                "string_sha256": digest,
                "instruction_indices": positions,
            }
        )
    return stock, candidate, evidence


def canonicalize_mapping_symbol_u16_dispatch_tables(
    stock_relocations: list[str],
    candidate_relocations: list[str],
    stock_sections: dict[str, bytes],
    candidate_sections: dict[str, bytes],
    stock_symbols: dict[str, tuple[str, int]],
    candidate_symbols: dict[str, tuple[str, int]],
    stock_relocation_sites: dict[tuple[str, int], tuple[str, str]],
    candidate_relocation_sites: dict[tuple[str, int], tuple[str, str]],
    instructions: list[str],
    stock_instruction_indices: list[int],
    candidate_instruction_indices: list[int],
    instructions_match: bool,
) -> tuple[list[str], list[str], list[dict[str, Any]]]:
    """Bind an anonymous AArch64 u16 dispatch table only by exact bytes.

    Clang emits a ``$d.N`` mapping symbol for an unnamed switch table.  The
    mapping symbol has no size, and independent module layouts can move an
    otherwise identical table within ``.rodata``.  This rule accepts that
    relocation difference only when the code at the relocation site is the
    exact bounds-checked ``ldrh``/``br`` dispatch idiom and every reachable
    u16 entry is byte-identical, unique, and free of data relocations.
    """
    stock = list(stock_relocations)
    candidate = list(candidate_relocations)
    evidence: list[dict[str, Any]] = []
    expected_types = ("R_AARCH64_ADR_PREL_PG_HI21", "R_AARCH64_ADD_ABS_LO12_NC")
    if (
        not instructions_match
        or len(stock) != len(candidate)
        or len(stock_instruction_indices) != len(stock)
        or len(candidate_instruction_indices) != len(candidate)
    ):
        return stock, candidate, evidence

    def split_relocation(value: str) -> tuple[str, str] | None:
        parts = value.split(" ", 1)
        return (parts[0], parts[1]) if len(parts) == 2 else None

    def table_location(
        target: str, symbols: dict[str, tuple[str, int]]
    ) -> tuple[str, int] | None:
        if re.fullmatch(r"\$d\.[0-9]+", target):
            location = symbols.get(target)
        else:
            location = resolved_section_target(target, symbols)
        if location is None or location[0] != ".rodata":
            return None
        return location

    def exact_dispatch_entry_count(relocation_instruction: int) -> int | None:
        """Recognize ``cmp wN,#max; b.hi; adrp/add; adr; ldrh; add; br``."""
        if relocation_instruction < 2 or relocation_instruction + 5 >= len(instructions):
            return None
        words = [
            _opcode_word(value)
            for value in instructions[
                relocation_instruction - 2 : relocation_instruction + 6
            ]
        ]
        if any(word is None for word in words):
            return None
        (
            compare,
            branch,
            adrp,
            add_immediate,
            adr,
            load_halfword,
            add_register,
            branch_register,
        ) = [word for word in words if word is not None]
        if (
            (compare & 0x7F00001F) != 0x7100001F
            or compare & (1 << 22)
            or (branch & 0xFF000010) != 0x54000000
            or (branch & 0xF) != 8  # B.HI
            or (adrp & 0x9F000000) != 0x90000000
            or (add_immediate & 0xFFC00000) != 0x91000000
            or (adr & 0x9F000000) != 0x10000000
            or (load_halfword & 0xFFE0FC00) != 0x78607800
            or (add_register & 0x7F200000) != 0x0B000000
            or ((add_register >> 10) & 0x3F) != 2
            or (branch_register & 0xFFFFFC1F) != 0xD61F0000
        ):
            return None

        table_register = adrp & 0x1F
        dispatch_register = adr & 0x1F
        selector_register = (compare >> 5) & 0x1F
        if (
            ((add_immediate >> 5) & 0x1F) != table_register
            or (add_immediate & 0x1F) != table_register
            or ((load_halfword >> 5) & 0x1F) != table_register
            or ((load_halfword >> 16) & 0x1F) != selector_register
            or ((add_register >> 5) & 0x1F) != dispatch_register
            or (add_register & 0x1F) != dispatch_register
            or ((add_register >> 16) & 0x1F) != (load_halfword & 0x1F)
            or ((branch_register >> 5) & 0x1F) != dispatch_register
        ):
            return None

        entry_count = ((compare >> 10) & 0xFFF) + 1
        return entry_count if 2 <= entry_count <= 256 else None

    def has_relocation(
        sites: dict[tuple[str, int], tuple[str, str]], section: str, offset: int, size: int
    ) -> bool:
        return any(
            site_section == section and offset <= site_offset < offset + size
            for site_section, site_offset in sites
        )

    def occurrence_count(payload: bytes, needle: bytes) -> int:
        count = 0
        offset = 0
        while True:
            found = payload.find(needle, offset)
            if found < 0:
                return count
            count += 1
            offset = found + 1

    for index in range(len(stock) - 1):
        stock_pair = [split_relocation(value) for value in stock[index : index + 2]]
        candidate_pair = [split_relocation(value) for value in candidate[index : index + 2]]
        if any(value is None for value in stock_pair + candidate_pair):
            continue
        stock_typed = [value for value in stock_pair if value is not None]
        candidate_typed = [value for value in candidate_pair if value is not None]
        if (
            tuple(value[0] for value in stock_typed) != expected_types
            or tuple(value[0] for value in candidate_typed) != expected_types
            or stock_typed[0][1] != stock_typed[1][1]
            or candidate_typed[0][1] != candidate_typed[1][1]
        ):
            continue
        positions = stock_instruction_indices[index : index + 2]
        if (
            positions != candidate_instruction_indices[index : index + 2]
            or len(positions) != 2
            or positions[1] != positions[0] + 1
        ):
            continue
        entry_count = exact_dispatch_entry_count(positions[0])
        stock_location = table_location(stock_typed[0][1], stock_symbols)
        candidate_location = table_location(candidate_typed[0][1], candidate_symbols)
        if entry_count is None or stock_location is None or candidate_location is None:
            continue
        size = entry_count * 2
        stock_section, stock_offset = stock_location
        candidate_section, candidate_offset = candidate_location
        stock_data = stock_sections.get(stock_section)
        candidate_data = candidate_sections.get(candidate_section)
        if (
            stock_data is None
            or candidate_data is None
            or stock_offset + size > len(stock_data)
            or candidate_offset + size > len(candidate_data)
            or has_relocation(stock_relocation_sites, stock_section, stock_offset, size)
            or has_relocation(
                candidate_relocation_sites, candidate_section, candidate_offset, size
            )
        ):
            continue
        stock_table = stock_data[stock_offset : stock_offset + size]
        candidate_table = candidate_data[candidate_offset : candidate_offset + size]
        if (
            stock_table != candidate_table
            or not any(stock_table)
            or occurrence_count(stock_data, stock_table) != 1
            or occurrence_count(candidate_data, candidate_table) != 1
        ):
            continue
        digest = hashlib.sha256(stock_table).hexdigest()
        alias = (
            f"<u16_dispatch_table:entries={entry_count}:sha256={digest}>"
        )
        for offset, relocation_type in enumerate(expected_types):
            stock[index + offset] = f"{relocation_type} {alias}"
            candidate[index + offset] = f"{relocation_type} {alias}"
        evidence.append(
            {
                "kind": "mapping_symbol_u16_dispatch_table_bytes",
                "reason": (
                    "matching bounds-checked AArch64 u16 dispatch sequence; "
                    "the uniquely addressed relocation-free table bytes match exactly"
                ),
                "stock_target": stock_typed[0][1],
                "candidate_target": candidate_typed[0][1],
                "entry_count": entry_count,
                "element_width": 2,
                "table_sha256": digest,
                "instruction_indices": positions,
            }
        )
    return stock, candidate, evidence


def _opcode_word(instruction: str) -> int | None:
    if not re.fullmatch(r"[0-9a-f]{8}", instruction):
        return None
    return int(instruction, 16)


def _canonical_commutative_word(word: int) -> tuple[int, str] | None:
    fixed = word & 0x7FE0FC00
    if fixed == 0x0B000000:
        operation = "ADD shifted-register LSL #0"
    elif fixed == 0x1B007C00:
        operation = "MUL alias of MADD with RA=ZR"
    else:
        return None

    rn = (word >> 5) & 0x1F
    rm = (word >> 16) & 0x1F
    if rn <= rm:
        return word, operation
    canonical = word & ~((0x1F << 5) | (0x1F << 16))
    canonical |= rm << 5
    canonical |= rn << 16
    return canonical, operation


def canonicalize_commutative_instruction_pairs(
    stock_instructions: list[str],
    candidate_instructions: list[str],
) -> tuple[list[str], list[str], list[dict[str, Any]]]:
    """Normalize only register swaps that are mathematically identical."""
    stock = list(stock_instructions)
    candidate = list(candidate_instructions)
    evidence: list[dict[str, Any]] = []
    for index, (stock_instruction, candidate_instruction) in enumerate(
        zip(stock, candidate)
    ):
        if stock_instruction == candidate_instruction:
            continue
        stock_word = _opcode_word(stock_instruction)
        candidate_word = _opcode_word(candidate_instruction)
        if stock_word is None or candidate_word is None:
            continue
        stock_canonical = _canonical_commutative_word(stock_word)
        candidate_canonical = _canonical_commutative_word(candidate_word)
        if stock_canonical is None or candidate_canonical is None:
            continue
        if stock_canonical != candidate_canonical:
            continue
        canonical_word, operation = stock_canonical
        canonical = f"{canonical_word:08x}"
        stock[index] = canonical
        candidate[index] = canonical
        evidence.append(
            {
                "kind": "commutative_register_operand_swap",
                "instruction_index": index,
                "operation": operation,
                "stock_opcode": stock_instruction,
                "candidate_opcode": candidate_instruction,
                "canonical_opcode": canonical,
            }
        )
    return stock, candidate, evidence


def _canonical_equality_cmp_word(word: int) -> int | None:
    """Canonicalize CMP Xn, Xm only when it is a register equality compare."""
    if (word & 0xFFE0FC1F) != 0xEB00001F:
        return None
    rn = (word >> 5) & 0x1F
    rm = (word >> 16) & 0x1F
    if rn <= rm:
        return word
    canonical = word & ~((0x1F << 5) | (0x1F << 16))
    canonical |= rm << 5
    canonical |= rn << 16
    return canonical


def _is_equality_branch(word: int) -> bool:
    """Accept only B.EQ/B.NE; operand swapping changes other condition flags."""
    return (word & 0xFF000010) == 0x54000000 and (word & 0xF) in {0, 1}


def canonicalize_equality_cmp_operand_swaps(
    stock_instructions: list[str],
    candidate_instructions: list[str],
) -> tuple[list[str], list[str], list[dict[str, Any]]]:
    """Normalize swapped CMP operands only for an identical following B.EQ/B.NE."""
    stock = list(stock_instructions)
    candidate = list(candidate_instructions)
    evidence: list[dict[str, Any]] = []
    # A size mismatch is a failed parity result, not a reason to index past the
    # shorter instruction stream while checking a possible two-instruction pair.
    for index in range(min(len(stock), len(candidate)) - 1):
        if stock[index] == candidate[index]:
            continue
        stock_word = _opcode_word(stock[index])
        candidate_word = _opcode_word(candidate[index])
        stock_branch = _opcode_word(stock[index + 1])
        candidate_branch = _opcode_word(candidate[index + 1])
        if (
            stock_word is None
            or candidate_word is None
            or stock_branch is None
            or candidate_branch is None
            or stock_branch != candidate_branch
            or not _is_equality_branch(stock_branch)
        ):
            continue
        stock_canonical = _canonical_equality_cmp_word(stock_word)
        candidate_canonical = _canonical_equality_cmp_word(candidate_word)
        if stock_canonical is None or stock_canonical != candidate_canonical:
            continue
        canonical = f"{stock_canonical:08x}"
        evidence.append(
            {
                "kind": "equality_cmp_operand_swap",
                "instruction_index": index,
                "branch_index": index + 1,
                "stock_opcode": stock[index],
                "candidate_opcode": candidate[index],
                "branch_opcode": stock[index + 1],
                "canonical_opcode": canonical,
            }
        )
        stock[index] = canonical
        candidate[index] = canonical
    return stock, candidate, evidence


def _mov_register_source_dest(word: int, width: int) -> tuple[int, int] | None:
    """Return (source, destination) for the ORR alias MOV Wd/Xd, Wn/Xn."""
    base = 0xAA0003E0 if width == 64 else 0x2A0003E0
    if (word & 0xFFE0FFE0) != base:
        return None
    return ((word >> 16) & 0x1F, word & 0x1F)


def _zero_extend_u32_source_dest(word: int) -> tuple[int, int] | None:
    """Recognize only AND Xd, Xn, #0xffffffff, which does not set flags."""
    if (word & 0xFFFFFC00) != 0x92407C00:
        return None
    return ((word >> 5) & 0x1F, word & 0x1F)


def canonicalize_u32_argument_setup_reordering(
    stock_instructions: list[str],
    candidate_instructions: list[str],
) -> tuple[list[str], list[str], list[dict[str, Any]]]:
    """Normalize one proven u32 marshalling scheduling difference before a call.

    A source declaration can require the compiler to emit ``AND Xd, Xn,
    #0xffffffff`` where stock uses the exact ``MOV Wd, Wn`` alias. Both write
    the same 64-bit zero-extended value. This rule allows the AND to move only
    across two independent X-register moves and a final independent W-register
    move, all immediately before the same direct call.
    """
    stock = list(stock_instructions)
    candidate = list(candidate_instructions)
    evidence: list[dict[str, Any]] = []
    if len(stock) != len(candidate):
        return stock, candidate, evidence

    for index in range(len(stock) - 4):
        if stock[index : index + 5] == candidate[index : index + 5]:
            continue
        stock_words = [_opcode_word(value) for value in stock[index : index + 4]]
        candidate_words = [_opcode_word(value) for value in candidate[index : index + 4]]
        if any(word is None for word in stock_words + candidate_words):
            continue
        stock_words = [word for word in stock_words if word is not None]
        candidate_words = [word for word in candidate_words if word is not None]
        first_move = _mov_register_source_dest(stock_words[0], 64)
        second_move = _mov_register_source_dest(stock_words[1], 64)
        zero_extend_move = _mov_register_source_dest(stock_words[2], 32)
        final_move = _mov_register_source_dest(stock_words[3], 32)
        candidate_zero_extend = _zero_extend_u32_source_dest(candidate_words[0])
        if (
            first_move is None
            or second_move is None
            or zero_extend_move is None
            or final_move is None
            or candidate_zero_extend != zero_extend_move
            or candidate[ index + 1 : index + 4] != stock[index : index + 2] + stock[index + 3 : index + 4]
            or stock[index + 4] != candidate[index + 4]
            or not stock[index + 4].startswith("bl <")
        ):
            continue
        destinations = {
            first_move[1],
            second_move[1],
            zero_extend_move[1],
            final_move[1],
        }
        if (
            len(destinations) != 4
            or zero_extend_move[0] in {first_move[1], second_move[1]}
        ):
            continue
        candidate[index : index + 4] = stock[index : index + 4]
        evidence.append(
            {
                "kind": "u32_argument_zero_extend_reordering",
                "instruction_indices": list(range(index, index + 4)),
                "call_index": index + 4,
                "stock_setup": stock[index : index + 4],
                "candidate_setup": candidate_instructions[index : index + 4],
                "call": stock[index + 4],
                "reason": (
                    "AND Xd, Xn, #0xffffffff and MOV Wd, Wn both produce the "
                    "same zero-extended u32; the moved instructions write "
                    "independent argument registers and do not change flags."
                ),
            }
        )
    return stock, candidate, evidence


def _sxtw_source_dest(word: int) -> tuple[int, int] | None:
    """Recognize only SXTW Xd, Wn."""
    if (word & 0xFFFFFC00) != 0x93407C00:
        return None
    return ((word >> 5) & 0x1F, word & 0x1F)


def canonicalize_sxtw_int_printk_argument_reordering(
    stock_instructions: list[str],
    candidate_instructions: list[str],
) -> tuple[list[str], list[str], list[dict[str, Any]]]:
    """Normalize one signed-int vararg move proven by an unchanged SXTW path.

    The candidate may schedule ``MOV X3, X0`` before loading the printk format,
    while stock keeps the sign-extended value in X20 then emits ``MOV W3, W20``.
    The rule accepts only an unchanged immediate SXTW/CMP/B.NE predecessor and
    the same following ``_printk`` call; relocation comparison still requires
    the exact ``%d`` format string.
    """
    stock = list(stock_instructions)
    candidate = list(candidate_instructions)
    evidence: list[dict[str, Any]] = []
    if len(stock) != len(candidate):
        return stock, candidate, evidence

    for index in range(len(stock) - 6):
        stock_words = [_opcode_word(value) for value in stock[index : index + 6]]
        candidate_words = [_opcode_word(value) for value in candidate[index : index + 6]]
        if any(word is None for word in stock_words + candidate_words):
            continue
        stock_words = [word for word in stock_words if word is not None]
        candidate_words = [word for word in candidate_words if word is not None]
        candidate_value_move = _mov_register_source_dest(candidate_words[0], 64)
        stock_value_move = _mov_register_source_dest(stock_words[5], 32)
        matching_preludes = []
        for prelude in range(index - 2):
            stock_extend = _sxtw_source_dest(_opcode_word(stock[prelude]) or -1)
            candidate_extend = _sxtw_source_dest(
                _opcode_word(candidate[prelude]) or -1
            )
            cmp_word = _opcode_word(stock[prelude + 1])
            candidate_cmp = _opcode_word(candidate[prelude + 1])
            branch_word = _opcode_word(stock[prelude + 2])
            candidate_branch = _opcode_word(candidate[prelude + 2])
            if (
                stock_extend is not None
                and stock_extend == candidate_extend
                and cmp_word is not None
                and cmp_word == candidate_cmp
                and (cmp_word & 0xFFE0FC1F) == 0xEB00001F
                and branch_word is not None
                and branch_word == candidate_branch
                and _is_equality_branch(branch_word)
                and (branch_word & 0xF) == 1
            ):
                matching_preludes.append((prelude, stock_extend))
        if (
            candidate_value_move is None
            or stock_value_move is None
            or len(matching_preludes) != 1
            or candidate_value_move
            != (matching_preludes[0][1][0], stock_value_move[1])
            or stock_value_move[0] != matching_preludes[0][1][1]
            or candidate_value_move[1] != stock_value_move[1]
            or stock[index : index + 5] != candidate[index + 1 : index + 6]
            or stock[index + 6] != candidate[index + 6]
            or stock[index + 6] != "bl <_printk>"
        ):
            continue
        candidate[index : index + 6] = stock[index : index + 6]
        evidence.append(
            {
                "kind": "sxtw_int_printk_argument_reordering",
                "sxtw_index": matching_preludes[0][0],
                "instruction_indices": list(range(index, index + 6)),
                "call_index": index + 6,
                "stock_value_move": stock[index + 5],
                "candidate_value_move": candidate_instructions[index],
                "reason": (
                    "the unchanged SXTW establishes W20 and W0 with identical "
                    "low 32 bits; both sequences pass that int as W3 to the same "
                    "_printk call after independent format and request setup."
                ),
            }
        )
    return stock, candidate, evidence


def canonicalize_function_identity_aliases(
    stock_instructions: list[str],
    candidate_instructions: list[str],
    stock_function: str,
    candidate_function: str,
) -> tuple[list[str], list[str], list[dict[str, Any]]]:
    """Normalize only intra-function branch labels for an explicit name mapping."""
    if stock_function == candidate_function:
        return list(stock_instructions), list(candidate_instructions), []

    def replace_self_reference(instructions: list[str], function: str) -> list[str]:
        return [
            instruction.replace(f"<{function}>", "<__self__>").replace(
                f"<{function}+", "<__self__+"
            )
            for instruction in instructions
        ]

    stock = replace_self_reference(stock_instructions, stock_function)
    candidate = replace_self_reference(candidate_instructions, candidate_function)
    evidence: list[dict[str, Any]] = []
    for index, (before_stock, before_candidate, after_stock, after_candidate) in enumerate(
        zip(stock_instructions, candidate_instructions, stock, candidate)
    ):
        if (
            before_stock != after_stock
            or before_candidate != after_candidate
        ) and after_stock == after_candidate:
            evidence.append(
                {
                    "kind": "explicit_function_identity_alias",
                    "instruction_index": index,
                    "stock_function": stock_function,
                    "candidate_function": candidate_function,
                    "stock_instruction": before_stock,
                    "candidate_instruction": before_candidate,
                    "canonical_instruction": after_stock,
                }
            )
    return stock, candidate, evidence


def _register_allocation_mask(word: int) -> tuple[int, str] | None:
    """Return mutable AArch64 register fields for a guarded instruction class."""
    if word & 0xFFFFFFE0 == 0xD5384100:
        return 0x0000001F, "mrs SP_EL0 Rt"
    if word & 0x3B000000 == 0x39000000:
        return 0x000003FF, "load/store unsigned-immediate Rt,Rn"
    if word & 0x1F200000 == 0x0B000000:
        return 0x001F03FF, "add/sub shifted-register Rd,Rn,Rm"
    if word & 0x1FE00000 == 0x1A800000:
        return 0x001F03FF, "conditional-select Rd,Rn,Rm"
    return None


def canonicalize_register_allocation_differences(
    stock_instructions: list[str],
    candidate_instructions: list[str],
    semantic_proof: dict[str, Any] | None,
    semantic_report_sha256: str | None,
) -> tuple[list[str], list[str], list[dict[str, Any]]]:
    """Accept register-only opcode changes after an independent Ghidra proof."""
    stock = list(stock_instructions)
    candidate = list(candidate_instructions)
    if not semantic_proof or not semantic_proof.get("passed"):
        return stock, candidate, []
    if len(stock) != len(candidate):
        return stock, candidate, []

    pending: list[dict[str, Any]] = []
    for index, (stock_instruction, candidate_instruction) in enumerate(
        zip(stock, candidate)
    ):
        if stock_instruction == candidate_instruction:
            continue
        stock_word = _opcode_word(stock_instruction)
        candidate_word = _opcode_word(candidate_instruction)
        if stock_word is None or candidate_word is None:
            return stock_instructions, candidate_instructions, []
        stock_mask = _register_allocation_mask(stock_word)
        candidate_mask = _register_allocation_mask(candidate_word)
        if stock_mask is None or candidate_mask is None or stock_mask != candidate_mask:
            return stock_instructions, candidate_instructions, []
        mask, instruction_class = stock_mask
        if stock_word & ~mask != candidate_word & ~mask:
            return stock_instructions, candidate_instructions, []
        pending.append(
            {
                "kind": "ghidra_guarded_register_allocation",
                "instruction_index": index,
                "instruction_class": instruction_class,
                "register_field_mask": f"0x{mask:08x}",
                "stock_opcode": stock_instruction,
                "candidate_opcode": candidate_instruction,
                "semantic_report_sha256": semantic_report_sha256,
                "semantic_checks": semantic_proof.get("checks"),
            }
        )

    if not pending:
        return stock, candidate, []
    for item in pending:
        index = int(item["instruction_index"])
        candidate[index] = stock[index]
    return stock, candidate, pending


def canonicalize_guarded_prologue_and_return_moves(
    stock_instructions: list[str],
    candidate_instructions: list[str],
    semantic_proof: dict[str, Any] | None,
    semantic_report_sha256: str | None,
) -> tuple[list[str], list[str], list[dict[str, Any]]]:
    """Accept two exact, proof-gated AArch64 scheduling forms.

    The rule is deliberately narrow: it recognizes only an independent
    ``ldr x8, [x0, #0x270]`` / ``mov x19, x0`` swap and the two return-path
    ``mov`` width variants.  A bound semantic proof is required because the
    latter relies on the function's recovered ``int`` return contract.
    """
    stock = list(stock_instructions)
    candidate = list(candidate_instructions)
    if not semantic_proof or not semantic_proof.get("passed"):
        return stock, candidate, []
    if len(stock) != len(candidate):
        return stock, candidate, []

    evidence: list[dict[str, Any]] = []
    for index in range(len(stock) - 1):
        if (stock[index:index + 2] == ["f9413808", "aa0003f3"] and
                candidate[index:index + 2] == ["aa0003f3", "f9413808"]):
            candidate[index:index + 2] = stock[index:index + 2]
            evidence.append({
                "kind": "ghidra_guarded_independent_prologue_swap",
                "instruction_indices": [index, index + 1],
                "semantic_report_sha256": semantic_report_sha256,
                "semantic_checks": semantic_proof.get("checks"),
            })

    for index, stock_word, candidate_word in (
        (40, "2a0003f3", "aa0003f3"),
        (43, "2a1303e0", "aa1303e0"),
    ):
        if index < len(stock) and stock[index] == stock_word and candidate[index] == candidate_word:
            candidate[index] = stock_word
            evidence.append({
                "kind": "ghidra_guarded_int_return_move_width",
                "instruction_index": index,
                "semantic_report_sha256": semantic_report_sha256,
                "semantic_checks": semantic_proof.get("checks"),
            })
    return stock, candidate, evidence


def _ldrh_unsigned_immediate(word: int) -> tuple[int, int, int] | None:
    if word & 0xFFC00000 != 0x79400000:
        return None
    return word & 0x1F, (word >> 5) & 0x1F, (word >> 10) & 0xFFF


def _cmp_w_immediate_zero_register(word: int) -> int | None:
    if word & 0xFFFFFC1F != 0x7100001F:
        return None
    return (word >> 5) & 0x1F


def _conditional_select_registers(word: int) -> tuple[int, int, int] | None:
    if word & 0xFFE0FC00 != 0x1A800400:
        return None
    return word & 0x1F, (word >> 5) & 0x1F, (word >> 16) & 0x1F


def canonicalize_boolean_count_pair_reordering(
    stock_instructions: list[str],
    candidate_instructions: list[str],
) -> tuple[list[str], list[str], list[dict[str, Any]]]:
    """Accept a guarded swap of two independent ``!!u16`` count terms.

    The transformation is allowed only when two adjacent LDRH instructions,
    their CMP #0 consumers, and the shared CSET/CINC accumulation pattern are
    all present. Any additional difference inside the guarded window rejects
    the equivalence.
    """
    stock = list(stock_instructions)
    candidate = list(candidate_instructions)
    evidence: list[dict[str, Any]] = []
    limit = min(len(stock), len(candidate))
    for load_index in range(limit - 1):
        if not (
            stock[load_index] == candidate[load_index + 1]
            and stock[load_index + 1] == candidate[load_index]
        ):
            continue
        first_word = _opcode_word(stock[load_index])
        second_word = _opcode_word(stock[load_index + 1])
        if first_word is None or second_word is None:
            continue
        first_load = _ldrh_unsigned_immediate(first_word)
        second_load = _ldrh_unsigned_immediate(second_word)
        if first_load is None or second_load is None:
            continue
        first_register, first_base, first_offset = first_load
        second_register, second_base, second_offset = second_load
        if first_base != second_base or first_offset == second_offset:
            continue

        window_end = min(limit, load_index + 16)
        matched = False
        for first_compare in range(load_index + 2, window_end):
            stock_first_compare = _opcode_word(stock[first_compare])
            candidate_first_compare = _opcode_word(candidate[first_compare])
            if stock_first_compare is None or candidate_first_compare is None:
                continue
            if _cmp_w_immediate_zero_register(stock_first_compare) != first_register:
                continue
            if _cmp_w_immediate_zero_register(candidate_first_compare) != second_register:
                continue
            for second_compare in range(first_compare + 1, window_end):
                if not (
                    stock[first_compare] == candidate[second_compare]
                    and stock[second_compare] == candidate[first_compare]
                ):
                    continue
                stock_second_compare = _opcode_word(stock[second_compare])
                candidate_second_compare = _opcode_word(candidate[second_compare])
                if stock_second_compare is None or candidate_second_compare is None:
                    continue
                if _cmp_w_immediate_zero_register(stock_second_compare) != second_register:
                    continue
                if _cmp_w_immediate_zero_register(candidate_second_compare) != first_register:
                    continue
                differing = {
                    index
                    for index in range(load_index, second_compare + 1)
                    if stock[index] != candidate[index]
                }
                expected = {
                    load_index,
                    load_index + 1,
                    first_compare,
                    second_compare,
                }
                if differing != expected:
                    continue

                cset_indices = []
                for index in range(first_compare + 1, second_compare):
                    word = _opcode_word(stock[index])
                    registers = (
                        _conditional_select_registers(word)
                        if word is not None
                        else None
                    )
                    if registers is not None and registers[1:] == (31, 31):
                        cset_indices.append((index, registers[0]))
                if len(cset_indices) != 1:
                    continue
                _, count_register = cset_indices[0]
                cinc_indices = []
                for index in range(second_compare + 1, min(window_end, second_compare + 4)):
                    word = _opcode_word(stock[index])
                    registers = (
                        _conditional_select_registers(word)
                        if word is not None
                        else None
                    )
                    if registers == (count_register, count_register, count_register):
                        cinc_indices.append(index)
                if len(cinc_indices) != 1:
                    continue

                for index in expected:
                    candidate[index] = stock[index]
                evidence.append(
                    {
                        "kind": "boolean_count_pair_reordering",
                        "load_instruction_indices": [load_index, load_index + 1],
                        "compare_instruction_indices": [
                            first_compare,
                            second_compare,
                        ],
                        "cset_instruction_index": cset_indices[0][0],
                        "cinc_instruction_index": cinc_indices[0],
                        "base_register": first_base,
                        "loaded_offsets": [first_offset * 2, second_offset * 2],
                    }
                )
                matched = True
                break
            if matched:
                break
    return stock, candidate, evidence


def non_branch_relocation_instruction_indices(path: Path) -> list[int]:
    """Return the instruction index associated with each compared relocation."""
    instruction_index = -1
    result: list[int] = []
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        if INSTRUCTION_RE.match(line):
            instruction_index += 1
        relocation = RELOCATION_RE.search(line)
        if relocation and relocation.group(1) not in {
            "R_AARCH64_CALL26",
            "R_AARCH64_JUMP26",
        }:
            result.append(instruction_index)
    return result


def canonicalize_stripped_lock_keys(
    stock_relocations: list[str],
    candidate_relocations: list[str],
    instructions: list[str],
    stock_instruction_indices: list[int],
    candidate_instruction_indices: list[int],
) -> tuple[list[str], list[str], list[dict[str, Any]]]:
    """Match a compiler-named lock key with the same stripped local in .bss."""
    stock = list(stock_relocations)
    candidate = list(candidate_relocations)
    evidence: list[dict[str, Any]] = []
    swait_calls = sum(
        instruction == "bl <__init_swait_queue_head>" for instruction in instructions
    )
    if (
        not swait_calls
        or len(stock) != len(candidate)
        or len(stock_instruction_indices) != len(stock)
        or len(candidate_instruction_indices) != len(candidate)
    ):
        return stock, candidate, evidence
    swait_instruction_indices = {
        index
        for index, instruction in enumerate(instructions)
        if instruction == "bl <__init_swait_queue_head>"
    }

    relocation_types = (
        "R_AARCH64_ADR_PREL_PG_HI21",
        "R_AARCH64_ADD_ABS_LO12_NC",
    )

    def split_relocation(value: str) -> tuple[str, str] | None:
        parts = value.split(" ", 1)
        if len(parts) != 2:
            return None
        return parts[0], parts[1]

    def is_anonymous_bss(target: str) -> bool:
        return bool(re.fullmatch(r"\.bss(?:\+0x[0-9a-fA-F]+)?", target))

    def is_compiler_lock_key(target: str) -> bool:
        return target == "__key" or target.endswith(".__key")

    index = 0
    while index + 1 < len(stock) and len(evidence) < swait_calls:
        stock_pair = [split_relocation(value) for value in stock[index : index + 2]]
        candidate_pair = [
            split_relocation(value) for value in candidate[index : index + 2]
        ]
        if any(value is None for value in stock_pair + candidate_pair):
            index += 1
            continue
        stock_typed = [value for value in stock_pair if value is not None]
        candidate_typed = [value for value in candidate_pair if value is not None]
        if (
            tuple(value[0] for value in stock_typed) != relocation_types
            or tuple(value[0] for value in candidate_typed) != relocation_types
        ):
            index += 1
            continue
        stock_positions = stock_instruction_indices[index : index + 2]
        candidate_positions = candidate_instruction_indices[index : index + 2]
        positions_match = (
            stock_positions == candidate_positions
            and len(stock_positions) == 2
            and stock_positions[1] == stock_positions[0] + 1
        )
        feeds_swait = positions_match and any(
            0 < call_index - stock_positions[1] <= 4
            for call_index in swait_instruction_indices
        )
        if not feeds_swait:
            index += 1
            continue
        stock_targets = {value[1] for value in stock_typed}
        candidate_targets = {value[1] for value in candidate_typed}
        if len(stock_targets) != 1 or len(candidate_targets) != 1:
            index += 1
            continue
        stock_target = next(iter(stock_targets))
        candidate_target = next(iter(candidate_targets))
        stripped_pair = (
            is_anonymous_bss(stock_target) and is_compiler_lock_key(candidate_target)
        ) or (
            is_compiler_lock_key(stock_target) and is_anonymous_bss(candidate_target)
        )
        if not stripped_pair:
            index += 1
            continue

        alias = f"<local_lock_class_key:{len(evidence)}>"
        evidence.append(
            {
                "relocation_index": index,
                "reason": (
                    "compiler-named lock_class_key matched to a stripped local .bss "
                    "target at the same ADRP/ADD instruction indices immediately "
                    "feeding __init_swait_queue_head"
                ),
                "stock_target": stock_target,
                "candidate_target": candidate_target,
                "canonical_target": alias,
                "instruction_indices": stock_positions,
            }
        )
        for offset, relocation_type in enumerate(relocation_types):
            stock[index + offset] = f"{relocation_type} {alias}"
            candidate[index + offset] = f"{relocation_type} {alias}"
        index += 2

    return stock, candidate, evidence


def canonicalize_stripped_mutex_keys(
    stock_relocations: list[str],
    candidate_relocations: list[str],
    instructions: list[str],
    stock_instruction_indices: list[int],
    candidate_instruction_indices: list[int],
) -> tuple[list[str], list[str], list[dict[str, Any]]]:
    """Match one stripped mutex class key proved by three mutex initializers."""
    stock = list(stock_relocations)
    candidate = list(candidate_relocations)
    evidence: list[dict[str, Any]] = []
    mutex_calls = [
        index for index, instruction in enumerate(instructions)
        if instruction == "bl <__mutex_init>"
    ]
    if (
        len(mutex_calls) != 3
        or len(stock) != len(candidate)
        or len(stock_instruction_indices) != len(stock)
        or len(candidate_instruction_indices) != len(candidate)
    ):
        return stock, candidate, evidence

    relocation_types = (
        "R_AARCH64_ADR_PREL_PG_HI21",
        "R_AARCH64_ADD_ABS_LO12_NC",
    )

    def split_relocation(value: str) -> tuple[str, str] | None:
        parts = value.split(" ", 1)
        if len(parts) != 2:
            return None
        return parts[0], parts[1]

    def is_anonymous_bss(target: str) -> bool:
        return bool(re.fullmatch(r"\.bss(?:\+0x[0-9a-fA-F]+)?", target))

    for index in range(len(stock) - 1):
        stock_pair = [split_relocation(value) for value in stock[index : index + 2]]
        candidate_pair = [
            split_relocation(value) for value in candidate[index : index + 2]
        ]
        if any(value is None for value in stock_pair + candidate_pair):
            continue
        stock_typed = [value for value in stock_pair if value is not None]
        candidate_typed = [value for value in candidate_pair if value is not None]
        if (
            tuple(value[0] for value in stock_typed) != relocation_types
            or tuple(value[0] for value in candidate_typed) != relocation_types
        ):
            continue
        stock_positions = stock_instruction_indices[index : index + 2]
        candidate_positions = candidate_instruction_indices[index : index + 2]
        if not (
            stock_positions == candidate_positions
            and len(stock_positions) == 2
            and stock_positions[1] == stock_positions[0] + 1
            and 0 < mutex_calls[0] - stock_positions[1] <= 32
        ):
            continue
        stock_targets = {value[1] for value in stock_typed}
        candidate_targets = {value[1] for value in candidate_typed}
        if len(stock_targets) != 1 or len(candidate_targets) != 1:
            continue
        stock_target = next(iter(stock_targets))
        candidate_target = next(iter(candidate_targets))
        if not (
            is_anonymous_bss(stock_target)
            and candidate_target.endswith(".mutex_key")
        ):
            continue

        alias = "<local_mutex_class_key>"
        for offset, relocation_type in enumerate(relocation_types):
            stock[index + offset] = f"{relocation_type} {alias}"
            candidate[index + offset] = f"{relocation_type} {alias}"
        evidence.append(
            {
                "relocation_index": index,
                "reason": (
                    "compiler-named mutex_key matched to a stripped local .bss "
                    "target at identical ADRP/ADD sites followed by exactly three "
                    "__mutex_init calls"
                ),
                "stock_target": stock_target,
                "candidate_target": candidate_target,
                "canonical_target": alias,
                "instruction_indices": stock_positions,
                "mutex_call_indices": mutex_calls,
            }
        )
        break
    return stock, candidate, evidence


def canonicalize_stripped_mutex_storage(
    stock_relocations: list[str],
    candidate_relocations: list[str],
    instructions: list[str],
    stock_instruction_indices: list[int],
    candidate_instruction_indices: list[int],
) -> tuple[list[str], list[str], list[dict[str, Any]]]:
    """Match one anonymous .bss mutex to a g_cdev_data subfield.

    The evidence is intentionally narrower than generic global aliasing: both
    identical ADRP/ADD pairs must immediately feed the sole mutex_lock and
    mutex_unlock calls for the same physical target.
    """
    stock = list(stock_relocations)
    candidate = list(candidate_relocations)
    evidence: list[dict[str, Any]] = []
    if (
        len(stock) != len(candidate)
        or len(stock_instruction_indices) != len(stock)
        or len(candidate_instruction_indices) != len(candidate)
    ):
        return stock, candidate, evidence

    def split_relocation(value: str) -> tuple[str, str] | None:
        parts = value.split(" ", 1)
        return (parts[0], parts[1]) if len(parts) == 2 else None

    candidates: list[dict[str, Any]] = []
    for index in range(len(stock) - 1):
        stock_pair = [split_relocation(value) for value in stock[index : index + 2]]
        candidate_pair = [split_relocation(value) for value in candidate[index : index + 2]]
        if any(value is None for value in stock_pair + candidate_pair):
            continue
        stock_typed = [value for value in stock_pair if value is not None]
        candidate_typed = [value for value in candidate_pair if value is not None]
        if (
            tuple(value[0] for value in stock_typed)
            != ("R_AARCH64_ADR_PREL_PG_HI21", "R_AARCH64_ADD_ABS_LO12_NC")
            or tuple(value[0] for value in candidate_typed)
            != ("R_AARCH64_ADR_PREL_PG_HI21", "R_AARCH64_ADD_ABS_LO12_NC")
            or stock_typed[0][1] != stock_typed[1][1]
            or candidate_typed[0][1] != candidate_typed[1][1]
            or not re.fullmatch(r"\.bss(?:\+0x[0-9a-fA-F]+)?", stock_typed[0][1])
            or not re.fullmatch(r"g_cdev_data\+0x[0-9a-fA-F]+", candidate_typed[0][1])
        ):
            continue
        stock_positions = stock_instruction_indices[index : index + 2]
        candidate_positions = candidate_instruction_indices[index : index + 2]
        if not (
            stock_positions == candidate_positions
            and len(stock_positions) == 2
            and stock_positions[1] == stock_positions[0] + 1
        ):
            continue
        call_index = stock_positions[1] + 1
        if call_index >= len(instructions) or instructions[call_index] not in {
            "bl <mutex_lock>",
            "bl <mutex_unlock>",
        }:
            continue
        candidates.append(
            {
                "relocation_index": index,
                "stock_target": stock_typed[0][1],
                "candidate_target": candidate_typed[0][1],
                "instruction_indices": stock_positions,
                "mutex_call_index": call_index,
                "mutex_call": instructions[call_index],
            }
        )

    if (
        len(candidates) != 2
        or {item["mutex_call"] for item in candidates}
        != {"bl <mutex_lock>", "bl <mutex_unlock>"}
        or len({item["stock_target"] for item in candidates}) != 1
        or len({item["candidate_target"] for item in candidates}) != 1
    ):
        return stock, candidate, evidence

    target = candidates[0]["candidate_target"]
    alias = f"<stripped_mutex_storage:{target}>"
    for item in candidates:
        index = item["relocation_index"]
        for offset, relocation_type in enumerate(
            ("R_AARCH64_ADR_PREL_PG_HI21", "R_AARCH64_ADD_ABS_LO12_NC")
        ):
            stock[index + offset] = f"{relocation_type} {alias}"
            candidate[index + offset] = f"{relocation_type} {alias}"
    evidence.append(
        {
            "kind": "stripped_mutex_storage",
            "reason": (
                "two identical ADRP/ADD pairs for one .bss target feed exactly "
                "mutex_lock and mutex_unlock, and the candidate names one "
                "g_cdev_data subfield"
            ),
            "stock_target": candidates[0]["stock_target"],
            "candidate_target": target,
            "canonical_target": alias,
            "pairs": candidates,
        }
    )
    return stock, candidate, evidence


def canonicalize_postindexed_g_cdev_mutex_storage(
    stock_relocations: list[str],
    candidate_relocations: list[str],
    stock_raw_relocations: list[str],
    candidate_raw_relocations: list[str],
    instructions: list[str],
    stock_instruction_indices: list[int],
    candidate_instruction_indices: list[int],
) -> tuple[list[str], list[str], list[dict[str, Any]]]:
    """Match a stripped mutex at the proved ``g_cdev_data + 0x50`` location.

    This is deliberately not a general global-alias rule.  It accepts exactly
    one direct ``g_cdev_data`` ADRP/ADD pair and one ``g_cdev_data+0x50`` pair,
    only when the stock .bss displacement is also 0x50 and the unchanged code
    proves the post-indexed load and the lock/unlock endpoints.
    """
    stock = list(stock_relocations)
    candidate = list(candidate_relocations)
    evidence: list[dict[str, Any]] = []
    expected_types = ("R_AARCH64_ADR_PREL_PG_HI21", "R_AARCH64_ADD_ABS_LO12_NC")
    if (
        len(stock) != len(candidate)
        or len(stock_instruction_indices) != len(stock)
        or len(candidate_instruction_indices) != len(candidate)
    ):
        return stock, candidate, evidence

    def compared_raw_relocations(relocations: list[str]) -> list[str]:
        compared: list[str] = []
        for relocation in relocations:
            matched = RELOCATION_RE.search(relocation)
            if matched is None or matched.group(1) in {
                "R_AARCH64_CALL26",
                "R_AARCH64_JUMP26",
            }:
                continue
            compared.append(f"{matched.group(1)} {matched.group(2)}")
        return compared

    def pairs_for_target(relocations: list[str], target: str) -> list[int]:
        pairs: list[int] = []
        for index in range(len(relocations) - 1):
            entries = [value.split(" ", 1) for value in relocations[index : index + 2]]
            if (
                all(len(entry) == 2 for entry in entries)
                and tuple(entry[0] for entry in entries) == expected_types
                and entries[0][1] == target
                and entries[1][1] == target
            ):
                pairs.append(index)
        return pairs

    def bss_offset(target: str) -> int | None:
        matched = re.fullmatch(r"\.bss(?:\+0x([0-9a-fA-F]+))?", target)
        if matched is None:
            return None
        return int(matched.group(1) or "0", 16)

    base_pairs = pairs_for_target(candidate, "g_cdev_data")
    mutex_pairs = pairs_for_target(candidate, "g_cdev_data+0x50")
    if len(base_pairs) != 1 or len(mutex_pairs) != 1:
        return stock, candidate, evidence

    base_index = base_pairs[0]
    mutex_index = mutex_pairs[0]
    raw_stock = compared_raw_relocations(stock_raw_relocations)
    raw_candidate = compared_raw_relocations(candidate_raw_relocations)
    if len(raw_stock) != len(stock) or len(raw_candidate) != len(candidate):
        return stock, candidate, evidence
    stock_base = [value.split(" ", 1) for value in stock[base_index : base_index + 2]]
    stock_mutex = [value.split(" ", 1) for value in stock[mutex_index : mutex_index + 2]]
    raw_stock_base = [value.split(" ", 1) for value in raw_stock[base_index : base_index + 2]]
    raw_stock_mutex = [value.split(" ", 1) for value in raw_stock[mutex_index : mutex_index + 2]]
    raw_candidate_base = [
        value.split(" ", 1) for value in raw_candidate[base_index : base_index + 2]
    ]
    raw_candidate_mutex = [
        value.split(" ", 1) for value in raw_candidate[mutex_index : mutex_index + 2]
    ]
    if (
        any(
            len(entry) != 2
            for entry in (
                stock_base
                + stock_mutex
                + raw_stock_base
                + raw_stock_mutex
                + raw_candidate_base
                + raw_candidate_mutex
            )
        )
        or any(
            tuple(entry[0] for entry in pair) != expected_types
            for pair in (
                stock_base,
                stock_mutex,
                raw_stock_base,
                raw_stock_mutex,
                raw_candidate_base,
                raw_candidate_mutex,
            )
        )
        or stock_base[0][1] != stock_base[1][1]
        or stock_mutex[0][1] != stock_mutex[1][1]
        or raw_stock_base[0][1] != raw_stock_base[1][1]
        or raw_stock_mutex[0][1] != raw_stock_mutex[1][1]
        or raw_candidate_base[0][1] != raw_candidate_base[1][1]
        or raw_candidate_mutex[0][1] != raw_candidate_mutex[1][1]
        or stock_base[0][1] != "g_cdev_data"
        or raw_candidate_base[0][1] != "g_cdev_data"
        or raw_candidate_mutex[0][1] != "g_cdev_data+0x50"
    ):
        return stock, candidate, evidence

    stock_base_offset = bss_offset(raw_stock_base[0][1])
    stock_mutex_offset = bss_offset(raw_stock_mutex[0][1])
    base_positions = stock_instruction_indices[base_index : base_index + 2]
    mutex_positions = stock_instruction_indices[mutex_index : mutex_index + 2]
    if (
        stock_base_offset is None
        or stock_mutex_offset is None
        or stock_mutex_offset - stock_base_offset != 0x50
        or base_positions != candidate_instruction_indices[base_index : base_index + 2]
        or mutex_positions != candidate_instruction_indices[mutex_index : mutex_index + 2]
        or len(base_positions) != 2
        or len(mutex_positions) != 2
        or base_positions[1] != base_positions[0] + 1
        or mutex_positions[1] != mutex_positions[0] + 1
    ):
        return stock, candidate, evidence

    base_instruction = base_positions[0]
    mutex_instruction = mutex_positions[0]
    schedules = (
        (3, 6, 2, "staged_lock_setup", None),
        (2, 4, 3, "direct_lock_setup", 0x9100C260),
    )
    matched_schedule: str | None = None
    for (
        postindex_delta,
        lock_delta,
        unlock_delta,
        schedule_name,
        derived_unlock_opcode,
    ) in schedules:
        if (
            base_instruction + lock_delta >= len(instructions)
            or mutex_instruction + unlock_delta >= len(instructions)
            or _opcode_word(instructions[base_instruction + postindex_delta])
            != 0xF8450408
            or instructions[base_instruction + lock_delta] != "bl <mutex_lock>"
            or any(
                instruction.startswith("bl <")
            for instruction in instructions[
                base_instruction + postindex_delta : base_instruction + lock_delta
            ]
            )
            or (
                derived_unlock_opcode is not None
                and _opcode_word(instructions[mutex_instruction + unlock_delta - 1])
                != derived_unlock_opcode
            )
            or instructions[mutex_instruction + unlock_delta] != "bl <mutex_unlock>"
        ):
            continue
        matched_schedule = schedule_name
        break
    if matched_schedule is None:
        return stock, candidate, evidence

    queue_pairs = pairs_for_target(candidate, "g_cdev_data+0x80")
    if matched_schedule == "direct_lock_setup" and len(queue_pairs) != 1:
        return stock, candidate, evidence

    queue_index = queue_pairs[0] if queue_pairs else None
    queue_positions: list[int] | None = None
    raw_stock_queue: list[list[str]] | None = None
    if queue_index is not None:
        stock_queue = [value.split(" ", 1) for value in stock[queue_index : queue_index + 2]]
        raw_stock_queue = [
            value.split(" ", 1) for value in raw_stock[queue_index : queue_index + 2]
        ]
        queue_positions = stock_instruction_indices[queue_index : queue_index + 2]
        queue_offset = (
            bss_offset(raw_stock_queue[0][1])
            if all(len(entry) == 2 for entry in raw_stock_queue)
            else None
        )
        queue_lock_indices = [
            instruction_index
            for instruction_index in range(queue_positions[-1] + 1, mutex_instruction)
            if instructions[instruction_index] == "bl <mutex_lock>"
        ]
        if (
            len(stock_queue) != 2
            or any(len(entry) != 2 for entry in stock_queue + raw_stock_queue)
            or tuple(entry[0] for entry in stock_queue) != expected_types
            or tuple(entry[0] for entry in raw_stock_queue) != expected_types
            or stock_queue[0][1] != stock_queue[1][1]
            or raw_stock_queue[0][1] != raw_stock_queue[1][1]
            or queue_offset is None
            or queue_offset - stock_base_offset != 0x80
            or queue_positions != candidate_instruction_indices[queue_index : queue_index + 2]
            or len(queue_positions) != 2
            or queue_positions[1] != queue_positions[0] + 1
            or len(queue_lock_indices) != 1
            or any(
                instruction.startswith("bl <")
                for instruction in instructions[
                    queue_positions[-1] + 1 : queue_lock_indices[0]
                ]
            )
        ):
            return stock, candidate, evidence

    aliases = (
        "<postindexed_g_cdev_mutex:g_cdev_data>",
        "<postindexed_g_cdev_mutex:g_cdev_data+0x50>",
    )
    for index, alias in zip((base_index, mutex_index), aliases, strict=True):
        for offset, relocation_type in enumerate(expected_types):
            stock[index + offset] = f"{relocation_type} {alias}"
            candidate[index + offset] = f"{relocation_type} {alias}"
    if queue_index is not None:
        alias = "<postindexed_g_cdev_mutex:g_cdev_data+0x80>"
        for offset, relocation_type in enumerate(expected_types):
            stock[queue_index + offset] = f"{relocation_type} {alias}"
            candidate[queue_index + offset] = f"{relocation_type} {alias}"
    evidence.append(
        {
            "kind": "postindexed_g_cdev_mutex_storage",
            "reason": (
                "a unique direct g_cdev_data pair and +0x50 pair match stripped "
                ".bss storage with the same 0x50 displacement; unchanged code "
                "contains LDR X8, [X0], #0x50, mutex_lock, and mutex_unlock"
            ),
            "stock_base_target": raw_stock_base[0][1],
            "stock_mutex_target": raw_stock_mutex[0][1],
            "candidate_base_target": "g_cdev_data",
            "candidate_mutex_target": "g_cdev_data+0x50",
            "base_instruction_indices": base_positions,
            "mutex_instruction_indices": mutex_positions,
            "stock_queue_target": (
                raw_stock_queue[0][1] if raw_stock_queue is not None else None
            ),
            "candidate_queue_target": (
                "g_cdev_data+0x80" if queue_index is not None else None
            ),
            "queue_instruction_indices": queue_positions,
            "instruction_schedule": matched_schedule,
        }
    )
    return stock, candidate, evidence


def canonicalize_stripped_g_cdev_data_base(
    stock_relocations: list[str],
    candidate_relocations: list[str],
    stock_instruction_indices: list[int],
    candidate_instruction_indices: list[int],
    instructions_match: bool,
) -> tuple[list[str], list[str], list[dict[str, Any]]]:
    """Match the one direct g_cdev_data base relocation to stripped .bss."""
    stock = list(stock_relocations)
    candidate = list(candidate_relocations)
    evidence: list[dict[str, Any]] = []
    if (
        not instructions_match
        or len(stock) != len(candidate)
        or len(stock_instruction_indices) != len(stock)
        or len(candidate_instruction_indices) != len(candidate)
    ):
        return stock, candidate, evidence
    for index in range(len(stock) - 1):
        expected_types = ("R_AARCH64_ADR_PREL_PG_HI21", "R_AARCH64_ADD_ABS_LO12_NC")
        stock_parts = [value.split(" ", 1) for value in stock[index : index + 2]]
        candidate_parts = [value.split(" ", 1) for value in candidate[index : index + 2]]
        if (
            any(len(value) != 2 for value in stock_parts + candidate_parts)
            or tuple(value[0] for value in stock_parts) != expected_types
            or tuple(value[0] for value in candidate_parts) != expected_types
            or stock_parts[0][1] != stock_parts[1][1]
            or candidate_parts[0][1] != candidate_parts[1][1]
            or not re.fullmatch(r"\.bss(?:\+0x[0-9a-fA-F]+)?", stock_parts[0][1])
            or candidate_parts[0][1] != "g_cdev_data"
            or stock.count(stock[index]) != 1
            or candidate.count(candidate[index]) != 1
        ):
            continue
        positions = stock_instruction_indices[index : index + 2]
        if (
            positions != candidate_instruction_indices[index : index + 2]
            or len(positions) != 2
            or positions[1] != positions[0] + 1
        ):
            continue
        alias = "<stripped_bss_base:g_cdev_data>"
        for offset, relocation_type in enumerate(expected_types):
            stock[index + offset] = f"{relocation_type} {alias}"
            candidate[index + offset] = f"{relocation_type} {alias}"
        evidence.append(
            {
                "kind": "stripped_g_cdev_data_base",
                "reason": (
                    "a unique identical ADRP/ADD pair maps anonymous .bss to the "
                    "candidate's direct g_cdev_data base"
                ),
                "stock_target": stock_parts[0][1],
                "candidate_target": candidate_parts[0][1],
                "canonical_target": alias,
                "instruction_indices": positions,
            }
        )
        break
    return stock, candidate, evidence


def canonicalize_anonymous_section_offsets(
    stock_relocations: list[str],
    candidate_relocations: list[str],
    stock_instruction_indices: list[int],
    candidate_instruction_indices: list[int],
    instructions_match: bool,
) -> tuple[list[str], list[str], list[dict[str, Any]]]:
    """Match section-relative data/bss relocations whose linked offsets moved.

    A stripped stock module may expose a relocation as ``.data+offset`` or
    ``.bss+offset`` while the reconstructed module has the same anonymous
    section storage at a different final offset.  This rule only aliases
    corresponding section-relative relocations at identical instruction
    sites, with the same relocation type and section, and requires a stable
    one-to-one stock-target to candidate-target mapping.
    """
    stock = list(stock_relocations)
    candidate = list(candidate_relocations)
    evidence: list[dict[str, Any]] = []
    if (
        not instructions_match
        or len(stock) != len(candidate)
        or len(stock_instruction_indices) != len(stock)
        or len(candidate_instruction_indices) != len(candidate)
    ):
        return stock, candidate, evidence

    target_re = re.compile(r"^(\.data|\.bss)(?:\+0x[0-9a-fA-F]+)?$")
    mappings: dict[str, str] = {}
    reverse_mappings: dict[str, str] = {}
    for index, (stock_value, candidate_value) in enumerate(zip(stock, candidate)):
        stock_parts = stock_value.split(" ", 1)
        candidate_parts = candidate_value.split(" ", 1)
        if len(stock_parts) != 2 or len(candidate_parts) != 2:
            continue
        if (
            stock_parts[0] != candidate_parts[0]
            or stock_instruction_indices[index] != candidate_instruction_indices[index]
        ):
            continue
        stock_match = target_re.fullmatch(stock_parts[1])
        candidate_match = target_re.fullmatch(candidate_parts[1])
        if not stock_match or not candidate_match:
            continue
        if stock_match.group(1) != candidate_match.group(1):
            continue
        stock_target = stock_parts[1]
        candidate_target = candidate_parts[1]
        if (
            mappings.get(stock_target, candidate_target) != candidate_target
            or reverse_mappings.get(candidate_target, stock_target) != stock_target
        ):
            continue
        mappings[stock_target] = candidate_target
        reverse_mappings[candidate_target] = stock_target
        alias = f"<anonymous_section:{stock_target}>"
        stock[index] = f"{stock_parts[0]} {alias}"
        candidate[index] = f"{candidate_parts[0]} {alias}"
        evidence.append(
            {
                "kind": "anonymous_section_offset",
                "reason": (
                    "same-section relocations at identical instruction sites map "
                    "a stripped stock section offset to the candidate's moved "
                    "section storage"
                ),
                "stock_target": stock_target,
                "candidate_target": candidate_target,
                "canonical_target": alias,
                "instruction_index": stock_instruction_indices[index],
            }
        )
    return stock, candidate, evidence


def canonicalize_stripped_g_cdev_data_subfields(
    stock_relocations: list[str],
    candidate_relocations: list[str],
    stock_instruction_indices: list[int],
    candidate_instruction_indices: list[int],
    instructions_match: bool,
) -> tuple[list[str], list[str], list[dict[str, Any]]]:
    """Match a g_cdev_data subfield ADRP/ADD pair to stripped .bss storage.

    The stock ELF can expose a field of the anonymous cdev state only as a
    section-relative .bss offset.  The reconstructed object retains the
    recovered g_cdev_data base symbol and expresses the same field as a
    base-plus-offset ADRP/ADD pair.  Accept only identical relocation sites,
    matching ADRP/ADD types and the known g_cdev_data symbol form.
    """
    stock = list(stock_relocations)
    candidate = list(candidate_relocations)
    evidence: list[dict[str, Any]] = []
    if (
        not instructions_match
        or len(stock) != len(candidate)
        or len(stock_instruction_indices) != len(stock)
        or len(candidate_instruction_indices) != len(candidate)
    ):
        return stock, candidate, evidence

    expected_types = (
        "R_AARCH64_ADR_PREL_PG_HI21",
        "R_AARCH64_ADD_ABS_LO12_NC",
    )
    for index in range(len(stock) - 1):
        stock_parts = [value.split(" ", 1) for value in stock[index : index + 2]]
        candidate_parts = [value.split(" ", 1) for value in candidate[index : index + 2]]
        if (
            any(len(value) != 2 for value in stock_parts + candidate_parts)
            or tuple(value[0] for value in stock_parts) != expected_types
            or tuple(value[0] for value in candidate_parts) != expected_types
            or stock_parts[0][1] != stock_parts[1][1]
            or candidate_parts[0][1] != candidate_parts[1][1]
            or not re.fullmatch(r"\.bss\+0x[0-9a-fA-F]+", stock_parts[0][1])
            or not re.fullmatch(r"g_cdev_data\+0x[0-9a-fA-F]+", candidate_parts[0][1])
            or stock.count(stock[index]) != 1
            or candidate.count(candidate[index]) != 1
        ):
            continue
        positions = stock_instruction_indices[index : index + 2]
        if (
            positions != candidate_instruction_indices[index : index + 2]
            or len(positions) != 2
            or positions[1] != positions[0] + 1
        ):
            continue
        alias = f"<stripped_bss_g_cdev_subfield:{candidate_parts[0][1]}>"
        for offset, relocation_type in enumerate(expected_types):
            stock[index + offset] = f"{relocation_type} {alias}"
            candidate[index + offset] = f"{relocation_type} {alias}"
        evidence.append(
            {
                "kind": "stripped_bss_g_cdev_subfield",
                "reason": (
                    "an identical ADRP/ADD pair maps an anonymous stock .bss "
                    "offset to the recovered g_cdev_data subfield"
                ),
                "stock_target": stock_parts[0][1],
                "candidate_target": candidate_parts[0][1],
                "canonical_target": alias,
                "instruction_indices": positions,
            }
        )
    return stock, candidate, evidence


def canonicalize_stripped_g_cdev_data_offset_accesses(
    stock_relocations: list[str],
    candidate_relocations: list[str],
    stock_instruction_indices: list[int],
    candidate_instruction_indices: list[int],
    instructions_match: bool,
) -> tuple[list[str], list[str], list[dict[str, Any]]]:
    """Match repeated g_cdev_data field accesses by the proven base offset.

    Some compiler paths reuse a field's ADRP or load/store relocation far
    from the ADRP/ADD pair that first established it.  Accept only identical
    instruction sites where the candidate spelling is ``g_cdev_data+N`` and
    the stock spelling is ``.bss+(0x7c0+N)``.  The fixed base is the recovered
    stock location of g_cdev_data, not a general section-offset relaxation.
    """
    stock = list(stock_relocations)
    candidate = list(candidate_relocations)
    evidence: list[dict[str, Any]] = []
    if (
        not instructions_match
        or len(stock) != len(candidate)
        or len(stock_instruction_indices) != len(stock)
        or len(candidate_instruction_indices) != len(candidate)
    ):
        return stock, candidate, evidence

    def split(value: str) -> tuple[str, str] | None:
        parts = value.split(" ", 1)
        return (parts[0], parts[1]) if len(parts) == 2 else None

    def g_cdev_offset(target: str) -> int | None:
        match = re.fullmatch(r"g_cdev_data(?:\+0x([0-9a-fA-F]+))?", target)
        return int(match.group(1) or "0", 16) if match else None

    for index, (stock_value, candidate_value) in enumerate(zip(stock, candidate, strict=True)):
        stock_parts = split(stock_value)
        candidate_parts = split(candidate_value)
        if stock_parts is None or candidate_parts is None:
            continue
        if stock_parts[0].endswith("CALL26") or candidate_parts[0].endswith("CALL26"):
            continue
        stock_match = re.fullmatch(r"\.bss\+0x([0-9a-fA-F]+)", stock_parts[1])
        candidate_offset = g_cdev_offset(candidate_parts[1])
        if stock_match is None or candidate_offset is None:
            continue
        if stock_parts[0] != candidate_parts[0]:
            continue
        stock_offset = int(stock_match.group(1), 16)
        if stock_offset != 0x7C0 + candidate_offset:
            continue
        if stock_instruction_indices[index] != candidate_instruction_indices[index]:
            continue
        alias = f"<stripped_bss_g_cdev_offset:g_cdev_data+0x{candidate_offset:x}>"
        stock[index] = f"{stock_parts[0]} {alias}"
        candidate[index] = f"{candidate_parts[0]} {alias}"
        evidence.append(
            {
                "kind": "stripped_bss_g_cdev_offset_access",
                "reason": (
                    "same relocation type and instruction site prove the stock "
                    ".bss offset equals the recovered g_cdev_data base plus N"
                ),
                "stock_target": stock_parts[1],
                "candidate_target": candidate_parts[1],
                "canonical_target": alias,
                "instruction_index": stock_instruction_indices[index],
            }
        )
    return stock, candidate, evidence


def canonicalize_stripped_bss_subfields(
    stock_relocations: list[str],
    candidate_relocations: list[str],
    stock_instruction_indices: list[int],
    candidate_instruction_indices: list[int],
    instructions_match: bool,
) -> tuple[list[str], list[str], list[dict[str, Any]]]:
    """Match a named global subfield to one stripped byte, word, or pointer access."""
    stock = list(stock_relocations)
    candidate = list(candidate_relocations)
    evidence: list[dict[str, Any]] = []
    if (
        not instructions_match
        or len(stock) != len(candidate)
        or len(stock_instruction_indices) != len(stock)
        or len(candidate_instruction_indices) != len(candidate)
    ):
        return stock, candidate, evidence

    def split_relocation(value: str) -> tuple[str, str] | None:
        parts = value.split(" ", 1)
        if len(parts) != 2:
            return None
        return parts[0], parts[1]

    def is_anonymous_storage(target: str) -> bool:
        return bool(re.fullmatch(r"\.(?:bss|data)(?:\+0x[0-9a-fA-F]+)?", target))

    def is_named_subfield(target: str) -> bool:
        return bool(re.fullmatch(r"[A-Za-z_][A-Za-z0-9_.]*\+0x[0-9a-fA-F]+", target))

    for index, value in enumerate(stock):
        stock_entry = split_relocation(value)
        candidate_entry = split_relocation(candidate[index])
        if (
            stock_entry is None
            or candidate_entry is None
            or stock_entry[0] != "R_AARCH64_ADR_PREL_PG_HI21"
            or candidate_entry[0] != "R_AARCH64_ADR_PREL_PG_HI21"
            or not is_anonymous_storage(stock_entry[1])
            or not is_named_subfield(candidate_entry[1])
        ):
            continue
        for second in range(index + 1, len(stock)):
            stock_second = split_relocation(stock[second])
            candidate_second = split_relocation(candidate[second])
            if stock_second is None or candidate_second is None:
                continue
            ldst_types = {
                "R_AARCH64_LDST8_ABS_LO12_NC",
                "R_AARCH64_LDST16_ABS_LO12_NC",
                "R_AARCH64_LDST32_ABS_LO12_NC",
                "R_AARCH64_LDST64_ABS_LO12_NC",
            }
            if (
                stock_second[0] not in ldst_types
                or candidate_second[0] != stock_second[0]
                or stock_second[1] != stock_entry[1]
                or candidate_second[1] != candidate_entry[1]
            ):
                continue
            stock_positions = [stock_instruction_indices[index], stock_instruction_indices[second]]
            candidate_positions = [
                candidate_instruction_indices[index], candidate_instruction_indices[second]
            ]
            if (
                stock_positions != candidate_positions
                or not 0 < stock_positions[1] - stock_positions[0] <= 4
            ):
                continue
            alias = f"<stripped_bss_subfield:{candidate_entry[1]}>"
            stock[index] = f"R_AARCH64_ADR_PREL_PG_HI21 {alias}"
            candidate[index] = f"R_AARCH64_ADR_PREL_PG_HI21 {alias}"
            stock[second] = f"{stock_second[0]} {alias}"
            candidate[second] = f"{stock_second[0]} {alias}"
            evidence.append(
                {
                    "adrp_relocation_index": index,
                    "ldst_relocation_index": second,
                    "reason": (
                        "named global subfield matched to stripped .bss/.data only where "
                        "identical instructions use the same ADRP then a byte, word, "
                        "or pointer access within four instructions"
                    ),
                    "stock_target": stock_entry[1],
                    "candidate_target": candidate_entry[1],
                    "canonical_target": alias,
                    "instruction_indices": stock_positions,
                }
            )
            break
    return stock, candidate, evidence


def canonicalize_same_site_storage_targets(
    stock_relocations: list[str],
    candidate_relocations: list[str],
    stock_instruction_indices: list[int],
    candidate_instruction_indices: list[int],
    instructions_match: bool,
) -> tuple[list[str], list[str], list[dict[str, Any]]]:
    """Match anonymous stock storage to a named candidate field at exact sites.

    Some stripped modules expose a global as ``.data+offset`` or ``.bss+offset``
    while a reconstruction exposes the same storage as a field of a named
    object.  This rule accepts only equal relocation types at equal instruction
    indices and requires a stable one-to-one target mapping across all uses.
    """
    stock = list(stock_relocations)
    candidate = list(candidate_relocations)
    evidence: list[dict[str, Any]] = []
    if (
        not instructions_match
        or len(stock) != len(candidate)
        or len(stock_instruction_indices) != len(stock)
        or len(candidate_instruction_indices) != len(candidate)
    ):
        return stock, candidate, evidence

    def split(value: str) -> tuple[str, str] | None:
        parts = value.split(" ", 1)
        return (parts[0], parts[1]) if len(parts) == 2 else None

    def anonymous_storage(target: str) -> bool:
        return bool(re.fullmatch(r"\.(?:bss|data)(?:\+0x[0-9a-fA-F]+)?", target))

    def named_storage_field(target: str) -> bool:
        return bool(re.fullmatch(r"[A-Za-z_][A-Za-z0-9_.]*\+0x[0-9a-fA-F]+", target))

    stock_to_candidate: dict[str, str] = {}
    candidate_to_stock: dict[str, str] = {}
    sites: dict[tuple[str, str], list[int]] = {}
    for index, (stock_value, candidate_value) in enumerate(zip(stock, candidate, strict=True)):
        stock_entry = split(stock_value)
        candidate_entry = split(candidate_value)
        if (
            stock_entry is None
            or candidate_entry is None
            or stock_entry[0] != candidate_entry[0]
            or stock_instruction_indices[index] != candidate_instruction_indices[index]
            or not anonymous_storage(stock_entry[1])
            or not named_storage_field(candidate_entry[1])
        ):
            continue
        stock_target, candidate_target = stock_entry[1], candidate_entry[1]
        if (
            stock_target in stock_to_candidate
            and stock_to_candidate[stock_target] != candidate_target
        ) or (
            candidate_target in candidate_to_stock
            and candidate_to_stock[candidate_target] != stock_target
        ):
            continue
        stock_to_candidate[stock_target] = candidate_target
        candidate_to_stock[candidate_target] = stock_target
        sites.setdefault((stock_target, candidate_target), []).append(
            stock_instruction_indices[index]
        )

    for index, (stock_value, candidate_value) in enumerate(zip(stock, candidate, strict=True)):
        stock_entry = split(stock_value)
        candidate_entry = split(candidate_value)
        if stock_entry is None or candidate_entry is None:
            continue
        pair = (stock_entry[1], candidate_entry[1])
        if pair not in sites or stock_entry[0] != candidate_entry[0]:
            continue
        alias = f"<same_site_storage:{pair[0]}:{pair[1]}>"
        stock[index] = f"{stock_entry[0]} {alias}"
        candidate[index] = f"{candidate_entry[0]} {alias}"

    for (stock_target, candidate_target), instruction_sites in sites.items():
        evidence.append(
            {
                "kind": "same_site_storage_target",
                "reason": (
                    "equal relocation types at identical instruction sites establish "
                    "a stable one-to-one mapping from stripped stock storage to the "
                    "named candidate field"
                ),
                "stock_target": stock_target,
                "candidate_target": candidate_target,
                "canonical_target": f"<same_site_storage:{stock_target}:{candidate_target}>",
                "instruction_indices": instruction_sites,
            }
        )
    return stock, candidate, evidence


def canonicalize_repeated_anonymous_bss_pairs(
    stock_relocations: list[str],
    candidate_relocations: list[str],
    stock_instruction_indices: list[int],
    candidate_instruction_indices: list[int],
    instructions_match: bool,
) -> tuple[list[str], list[str], list[dict[str, Any]]]:
    """Match a repeated anonymous .bss pair when the unchanged code proves its sites.

    A fully linked reconstruction can place a materialized .bss fragment after
    the source objects, changing the section-relative spelling of a stripped
    section relocation.  This rule is deliberately narrower than a general
    global alias: it accepts only an ADRP/ADD pair whose target occurs exactly
    twice on each side and whose two instruction sites are identical.
    """
    stock = list(stock_relocations)
    candidate = list(candidate_relocations)
    evidence: list[dict[str, Any]] = []
    if (
        not instructions_match
        or len(stock) != len(candidate)
        or len(stock_instruction_indices) != len(stock)
        or len(candidate_instruction_indices) != len(candidate)
    ):
        return stock, candidate, evidence

    def split(value: str) -> tuple[str, str] | None:
        parts = value.split(" ", 1)
        return (parts[0], parts[1]) if len(parts) == 2 else None

    def anonymous_bss(target: str) -> bool:
        return bool(re.fullmatch(r"\.bss(?:\+0x[0-9a-fA-F]+)?", target))

    def pair_indices(values: list[str], target: str) -> list[int]:
        return [
            index
            for index in range(len(values) - 1)
            if (
                split(values[index]) == ("R_AARCH64_ADR_PREL_PG_HI21", target)
                and split(values[index + 1]) == (
                    "R_AARCH64_ADD_ABS_LO12_NC",
                    target,
                )
            )
        ]

    for index, value in enumerate(stock):
        stock_entry = split(value)
        candidate_entry = split(candidate[index])
        if (
            stock_entry is None
            or candidate_entry is None
            or stock_entry[0] != "R_AARCH64_ADR_PREL_PG_HI21"
            or candidate_entry[0] != "R_AARCH64_ADR_PREL_PG_HI21"
            or not anonymous_bss(stock_entry[1])
            or stock_entry[1] == candidate_entry[1]
        ):
            continue
        stock_pairs = pair_indices(stock, stock_entry[1])
        candidate_pairs = pair_indices(candidate, candidate_entry[1])
        if len(stock_pairs) != 2 or len(candidate_pairs) != 2:
            continue
        if index not in stock_pairs or index not in candidate_pairs:
            continue
        if any(
            stock_instruction_indices[pair] != candidate_instruction_indices[candidate_pair]
            or stock_instruction_indices[pair + 1]
            != candidate_instruction_indices[candidate_pair + 1]
            for pair, candidate_pair in zip(stock_pairs, candidate_pairs)
        ):
            continue
        alias = f"<repeated_anonymous_bss:{stock_entry[1]}:{candidate_entry[1]}>"
        for pair, candidate_pair in zip(stock_pairs, candidate_pairs):
            stock[pair] = f"R_AARCH64_ADR_PREL_PG_HI21 {alias}"
            stock[pair + 1] = f"R_AARCH64_ADD_ABS_LO12_NC {alias}"
            candidate[candidate_pair] = f"R_AARCH64_ADR_PREL_PG_HI21 {alias}"
            candidate[candidate_pair + 1] = f"R_AARCH64_ADD_ABS_LO12_NC {alias}"
        evidence.append(
            {
                "kind": "repeated_anonymous_bss_pair",
                "stock_target": stock_entry[1],
                "candidate_target": candidate_entry[1],
                "canonical_target": alias,
                "stock_instruction_sites": [
                    stock_instruction_indices[pair] for pair in stock_pairs
                ],
            }
        )
        break
    return stock, candidate, evidence


def canonicalize_compiler_alloc_tags(
    stock_relocations: list[str],
    candidate_relocations: list[str],
    stock_instruction_indices: list[int],
    candidate_instruction_indices: list[int],
    instructions_match: bool,
) -> tuple[list[str], list[str], list[dict[str, Any]]]:
    """Normalize numeric suffixes on matching compiler-generated alloc tags."""
    stock = list(stock_relocations)
    candidate = list(candidate_relocations)
    evidence: list[dict[str, Any]] = []
    if not instructions_match or len(stock) != len(candidate):
        return stock, candidate, evidence

    expected_types = (
        "R_AARCH64_ADR_PREL_PG_HI21",
        "R_AARCH64_ADD_ABS_LO12_NC",
    )
    index = 0
    while index + 1 < len(stock):
        stock_pair = [ALLOC_TAG_RE.fullmatch(value) for value in stock[index:index + 2]]
        candidate_pair = [
            ALLOC_TAG_RE.fullmatch(value) for value in candidate[index:index + 2]
        ]
        if any(match is None for match in stock_pair + candidate_pair):
            index += 1
            continue
        stock_matches = [match for match in stock_pair if match is not None]
        candidate_matches = [match for match in candidate_pair if match is not None]
        if tuple(match.group("type") for match in stock_matches) != expected_types:
            index += 1
            continue
        if tuple(match.group("type") for match in candidate_matches) != expected_types:
            index += 1
            continue
        owners = {
            match.group("owner") for match in stock_matches + candidate_matches
        }
        if len(owners) != 1:
            index += 1
            continue
        stock_positions = stock_instruction_indices[index:index + 2]
        candidate_positions = candidate_instruction_indices[index:index + 2]
        if not (
            stock_positions == candidate_positions
            and len(stock_positions) == 2
            and stock_positions[1] == stock_positions[0] + 1
        ):
            index += 1
            continue
        stock_target = stock[index].split(" ", 1)[1]
        candidate_target = candidate[index].split(" ", 1)[1]
        if stock_target == candidate_target:
            index += 2
            continue

        owner = next(iter(owners))
        alias = f"<{owner}._alloc_tag:relocation_pair_{index}>"
        evidence.append(
            {
                "relocation_index": index,
                "kind": "compiler_generated_alloc_tag_suffix",
                "reason": (
                    "matching ADRP/ADD pair at identical instruction indices; "
                    "only the compiler-assigned local numeric suffix differs"
                ),
                "owner": owner,
                "stock_target": stock_target,
                "candidate_target": candidate_target,
                "canonical_target": alias,
                "instruction_indices": stock_positions,
            }
        )
        for offset, relocation_type in enumerate(expected_types):
            stock[index + offset] = f"{relocation_type} {alias}"
            candidate[index + offset] = f"{relocation_type} {alias}"
        index += 2

    return stock, candidate, evidence


def canonicalize_stripped_codetag_alloc_tags(
    stock_relocations: list[str],
    candidate_relocations: list[str],
    stock_instruction_indices: list[int],
    candidate_instruction_indices: list[int],
    instructions_match: bool,
) -> tuple[list[str], list[str], list[dict[str, Any]]]:
    """Match stripped stock codetag section offsets to named candidate tags.

    The stock module may retain only ``.codetag.alloc_tags+offset`` while the
    reconstructed object exposes the same compiler-generated allocation tag as
    ``owner._alloc_tag[.N]``. Accept only identical ADRP/ADD pairs at the same
    instruction sites; this avoids treating arbitrary section offsets as
    equivalent.
    """
    stock = list(stock_relocations)
    candidate = list(candidate_relocations)
    evidence: list[dict[str, Any]] = []
    expected_types = (
        "R_AARCH64_ADR_PREL_PG_HI21",
        "R_AARCH64_ADD_ABS_LO12_NC",
    )

    def is_codetag_target(value: str) -> bool:
        # Some objdump symbol tables expose the same stripped allocation-tag
        # section as __start_alloc_tags instead of .codetag.alloc_tags+offset.
        # Keep this alias narrow: it is accepted only in the paired ADRP/ADD
        # rule below, at identical instruction sites, beside a compiler tag.
        target = value.split(" ", 1)[1] if " " in value else ""
        return (
            CODETAG_SECTION_TARGET_RE.fullmatch(value) is not None
            or target in {"__start_alloc_tags", "__stop_alloc_tags"}
            or ALLOC_TAG_RE.fullmatch(value) is not None
        )

    if (
        not instructions_match
        or len(stock) != len(candidate)
        or len(stock_instruction_indices) != len(stock)
        or len(candidate_instruction_indices) != len(candidate)
    ):
        return stock, candidate, evidence

    for index in range(len(stock) - 1):
        stock_parts = [value.split(" ", 1) for value in stock[index:index + 2]]
        candidate_parts = [value.split(" ", 1) for value in candidate[index:index + 2]]
        if (
            any(len(value) != 2 for value in stock_parts + candidate_parts)
            or tuple(value[0] for value in stock_parts) != expected_types
            or tuple(value[0] for value in candidate_parts) != expected_types
            or not all(is_codetag_target(value) for value in stock[index:index + 2])
            or not all(
                is_codetag_target(value) for value in candidate[index:index + 2]
            )
        ):
            continue
        positions = stock_instruction_indices[index:index + 2]
        if (
            positions != candidate_instruction_indices[index:index + 2]
            or len(positions) != 2
            or positions[1] != positions[0] + 1
        ):
            continue
        candidate_target = candidate_parts[0][1]
        alias = f"<codetag_alloc_tag:{candidate_target}>"
        for offset, relocation_type in enumerate(expected_types):
            stock[index + offset] = f"{relocation_type} {alias}"
            candidate[index + offset] = f"{relocation_type} {alias}"
        evidence.append(
            {
                "kind": "stripped_codetag_alloc_tag",
                "reason": (
                    "matching ADRP/ADD pair at identical instruction sites maps "
                    "the stripped stock codetag section offset to the named "
                    "candidate allocation tag"
                ),
                "stock_target": stock_parts[0][1],
                "candidate_target": candidate_target,
                "canonical_target": alias,
                "instruction_indices": positions,
            }
        )
    return stock, candidate, evidence


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--stock-dir", type=Path, required=True)
    parser.add_argument("--candidate-dir", type=Path, required=True)
    parser.add_argument("--function", action="append", dest="functions")
    parser.add_argument(
        "--function-pair",
        action="append",
        dest="function_pairs",
        help=(
            "compare an explicit STOCK_FUNCTION[@ENTRY]=CANDIDATE_FUNCTION[@ENTRY] "
            "pair; required when a stock module contains duplicate symbol names"
        ),
    )
    parser.add_argument("--ghidra-semantic-report", type=Path)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()

    stock_root = args.stock_dir.resolve()
    candidate_root = args.candidate_dir.resolve()
    stock_manifest = load_manifest(stock_root)
    candidate_manifest = load_manifest(candidate_root)
    stock_records = records_by_function(stock_manifest, stock_root)
    candidate_records = records_by_function(candidate_manifest, candidate_root)
    stock_records_by_id = records_by_function_id(stock_manifest, stock_root)
    candidate_records_by_id = records_by_function_id(candidate_manifest, candidate_root)
    stock_source = manifest_source_path(stock_manifest, stock_root)
    candidate_source = manifest_source_path(candidate_manifest, candidate_root)
    semantic_report = None
    semantic_report_sha256 = None
    semantic_proofs: dict[str, dict[str, Any]] = {}
    if args.ghidra_semantic_report:
        semantic_report_path = args.ghidra_semantic_report.resolve()
        semantic_report = read_json(semantic_report_path)
        semantic_report_sha256 = sha256_file(semantic_report_path)
        bound_module = semantic_report.get("candidate_module")
        if not isinstance(bound_module, dict) or not isinstance(
            bound_module.get("sha256"), str
        ):
            raise ValueError("Ghidra semantic report is not bound to a candidate module")
        if candidate_source is None or not candidate_source.is_file():
            raise ValueError("candidate assembly manifest has no readable source module")
        if bound_module["sha256"] != sha256_file(candidate_source):
            raise ValueError("Ghidra semantic report candidate hash mismatch")
        for result in semantic_report.get("results", []):
            if isinstance(result, dict) and isinstance(result.get("function"), str):
                semantic_proofs[result["function"]] = result
    stock_sections = elf_sections(stock_source)
    candidate_sections = elf_sections(candidate_source)
    stock_symbol_ranges = elf_symbol_ranges(stock_source)
    candidate_symbol_ranges = elf_symbol_ranges(candidate_source)
    stock_symbols = {
        name: (section, offset)
        for name, (section, offset, _size) in stock_symbol_ranges.items()
    }
    candidate_symbols = {
        name: (section, offset)
        for name, (section, offset, _size) in candidate_symbol_ranges.items()
    }
    stock_relocation_sites = elf_relocation_sites(stock_source)
    candidate_relocation_sites = elf_relocation_sites(candidate_source)
    stock_blob_aliases, candidate_blob_aliases = matched_rodata_blob_aliases(
        stock_sections,
        candidate_sections,
        stock_symbol_ranges,
        candidate_symbol_ranges,
        stock_relocation_sites,
        candidate_relocation_sites,
    )
    comparisons: list[tuple[str, str, str]] = []
    for function in args.functions or []:
        comparisons.append((function, function, function))
    for pair in args.function_pairs or []:
        stock_selector, candidate_selector = parse_function_pair(pair)
        comparisons.append((pair, stock_selector, candidate_selector))
    if not comparisons:
        comparisons = [
            (function, function, function)
            for function in sorted(set(stock_records) & set(candidate_records))
        ]
    results = []
    failures = []
    for comparison_label, stock_selector, candidate_selector in comparisons:
        stock_record = resolve_record(
            stock_selector, stock_records, stock_records_by_id
        )
        candidate_record = resolve_record(
            candidate_selector, candidate_records, candidate_records_by_id
        )
        if stock_record is None or candidate_record is None:
            failures.append(comparison_label + ": missing manifest record")
            continue
        stock_path = stock_root / str(stock_record.get("file", ""))
        candidate_path = candidate_root / str(candidate_record.get("file", ""))
        if not stock_path.is_file() or not candidate_path.is_file():
            failures.append(comparison_label + ": missing assembly file")
            continue
        stock_instructions, stock_raw_relocations, stock_relocations = normalized_assembly(
            stock_path,
            stock_sections,
            stock_symbols,
            stock_relocation_sites,
            stock_blob_aliases,
        )
        candidate_instructions, candidate_raw_relocations, candidate_relocations = (
            normalized_assembly(
                candidate_path,
                candidate_sections,
                candidate_symbols,
                candidate_relocation_sites,
                candidate_blob_aliases,
            )
        )
        (
            stock_instructions_compared,
            candidate_instructions_compared,
            function_identity_evidence,
        ) = canonicalize_function_identity_aliases(
            stock_instructions,
            candidate_instructions,
            str(stock_record.get("function", "")),
            str(candidate_record.get("function", "")),
        )
        (
            stock_instructions_compared,
            candidate_instructions_compared,
            boolean_reordering_evidence,
        ) = canonicalize_boolean_count_pair_reordering(
            stock_instructions_compared,
            candidate_instructions_compared,
        )
        (
            stock_instructions_compared,
            candidate_instructions_compared,
            commutative_evidence,
        ) = canonicalize_commutative_instruction_pairs(
            stock_instructions_compared,
            candidate_instructions_compared,
        )
        (
            stock_instructions_compared,
            candidate_instructions_compared,
            equality_cmp_evidence,
        ) = canonicalize_equality_cmp_operand_swaps(
            stock_instructions_compared,
            candidate_instructions_compared,
        )
        (
            stock_instructions_compared,
            candidate_instructions_compared,
            u32_argument_setup_evidence,
        ) = canonicalize_u32_argument_setup_reordering(
            stock_instructions_compared,
            candidate_instructions_compared,
        )
        (
            stock_instructions_compared,
            candidate_instructions_compared,
            sxtw_printk_evidence,
        ) = canonicalize_sxtw_int_printk_argument_reordering(
            stock_instructions_compared,
            candidate_instructions_compared,
        )
        instruction_equivalences = (
            function_identity_evidence
            + boolean_reordering_evidence
            + commutative_evidence
            + equality_cmp_evidence
            + u32_argument_setup_evidence
            + sxtw_printk_evidence
        )
        (
            stock_instructions_compared,
            candidate_instructions_compared,
            guarded_prologue_return_evidence,
        ) = canonicalize_guarded_prologue_and_return_moves(
            stock_instructions_compared,
            candidate_instructions_compared,
            semantic_proofs.get(str(candidate_record.get("function", ""))),
            semantic_report_sha256,
        )
        instruction_equivalences += guarded_prologue_return_evidence
        (
            stock_instructions_compared,
            candidate_instructions_compared,
            register_allocation_evidence,
        ) = canonicalize_register_allocation_differences(
            stock_instructions_compared,
            candidate_instructions_compared,
            semantic_proofs.get(str(candidate_record.get("function", ""))),
            semantic_report_sha256,
        )
        instruction_equivalences += register_allocation_evidence
        (
            stock_relocations_compared,
            candidate_relocations_compared,
            initialized_unk_string_equivalences,
        ) = canonicalize_initialized_unk_string_relocations(
            stock_relocations,
            candidate_relocations,
            candidate_sections,
            candidate_symbols,
            non_branch_relocation_instruction_indices(stock_path),
            non_branch_relocation_instruction_indices(candidate_path),
            stock_instructions_compared == candidate_instructions_compared,
        )
        (
            stock_relocations_compared,
            candidate_relocations_compared,
            anonymous_section_equivalences,
        ) = canonicalize_anonymous_section_offsets(
            stock_relocations_compared,
            candidate_relocations_compared,
            non_branch_relocation_instruction_indices(stock_path),
            non_branch_relocation_instruction_indices(candidate_path),
            stock_instructions_compared == candidate_instructions_compared,
        )
        (
            stock_relocations_compared,
            candidate_relocations_compared,
            dispatch_table_equivalences,
        ) = canonicalize_mapping_symbol_u16_dispatch_tables(
            stock_relocations_compared,
            candidate_relocations_compared,
            stock_sections,
            candidate_sections,
            stock_symbols,
            candidate_symbols,
            stock_relocation_sites,
            candidate_relocation_sites,
            stock_instructions_compared,
            non_branch_relocation_instruction_indices(stock_path),
            non_branch_relocation_instruction_indices(candidate_path),
            stock_instructions_compared == candidate_instructions_compared,
        )
        (
            stock_relocations_compared,
            candidate_relocations_compared,
            relocation_equivalences,
        ) = canonicalize_stripped_lock_keys(
            stock_relocations_compared,
            candidate_relocations_compared,
            stock_instructions_compared
            if stock_instructions_compared == candidate_instructions_compared
            else [],
            non_branch_relocation_instruction_indices(stock_path),
            non_branch_relocation_instruction_indices(candidate_path),
        )
        (
            stock_relocations_compared,
            candidate_relocations_compared,
            mutex_key_equivalences,
        ) = canonicalize_stripped_mutex_keys(
            stock_relocations_compared,
            candidate_relocations_compared,
            stock_instructions_compared
            if stock_instructions_compared == candidate_instructions_compared
            else [],
            non_branch_relocation_instruction_indices(stock_path),
            non_branch_relocation_instruction_indices(candidate_path),
        )
        relocation_equivalences = (
            initialized_unk_string_equivalences
            + anonymous_section_equivalences
            + dispatch_table_equivalences
            + relocation_equivalences
            + mutex_key_equivalences
        )
        (
            stock_relocations_compared,
            candidate_relocations_compared,
            mutex_storage_equivalences,
        ) = canonicalize_stripped_mutex_storage(
            stock_relocations_compared,
            candidate_relocations_compared,
            stock_instructions_compared
            if stock_instructions_compared == candidate_instructions_compared
            else [],
            non_branch_relocation_instruction_indices(stock_path),
            non_branch_relocation_instruction_indices(candidate_path),
        )
        relocation_equivalences += mutex_storage_equivalences
        (
            stock_relocations_compared,
            candidate_relocations_compared,
            postindexed_g_cdev_mutex_equivalences,
        ) = canonicalize_postindexed_g_cdev_mutex_storage(
            stock_relocations_compared,
            candidate_relocations_compared,
            stock_raw_relocations,
            candidate_raw_relocations,
            stock_instructions_compared
            if stock_instructions_compared == candidate_instructions_compared
            else [],
            non_branch_relocation_instruction_indices(stock_path),
            non_branch_relocation_instruction_indices(candidate_path),
        )
        relocation_equivalences += postindexed_g_cdev_mutex_equivalences
        (
            stock_relocations_compared,
            candidate_relocations_compared,
            bss_subfield_equivalences,
        ) = canonicalize_stripped_bss_subfields(
            stock_relocations_compared,
            candidate_relocations_compared,
            non_branch_relocation_instruction_indices(stock_path),
            non_branch_relocation_instruction_indices(candidate_path),
            stock_instructions_compared == candidate_instructions_compared,
        )
        relocation_equivalences += bss_subfield_equivalences
        (
            stock_relocations_compared,
            candidate_relocations_compared,
            same_site_storage_equivalences,
        ) = canonicalize_same_site_storage_targets(
            stock_relocations_compared,
            candidate_relocations_compared,
            non_branch_relocation_instruction_indices(stock_path),
            non_branch_relocation_instruction_indices(candidate_path),
            stock_instructions_compared == candidate_instructions_compared,
        )
        relocation_equivalences += same_site_storage_equivalences
        (
            stock_relocations_compared,
            candidate_relocations_compared,
            repeated_anonymous_bss_equivalences,
        ) = canonicalize_repeated_anonymous_bss_pairs(
            stock_relocations_compared,
            candidate_relocations_compared,
            non_branch_relocation_instruction_indices(stock_path),
            non_branch_relocation_instruction_indices(candidate_path),
            stock_instructions_compared == candidate_instructions_compared,
        )
        relocation_equivalences += repeated_anonymous_bss_equivalences
        (
            stock_relocations_compared,
            candidate_relocations_compared,
            g_cdev_data_base_equivalences,
        ) = canonicalize_stripped_g_cdev_data_base(
            stock_relocations_compared,
            candidate_relocations_compared,
            non_branch_relocation_instruction_indices(stock_path),
            non_branch_relocation_instruction_indices(candidate_path),
            stock_instructions_compared == candidate_instructions_compared,
        )
        relocation_equivalences += g_cdev_data_base_equivalences
        (
            stock_relocations_compared,
            candidate_relocations_compared,
            g_cdev_data_subfield_equivalences,
        ) = canonicalize_stripped_g_cdev_data_subfields(
            stock_relocations_compared,
            candidate_relocations_compared,
            non_branch_relocation_instruction_indices(stock_path),
            non_branch_relocation_instruction_indices(candidate_path),
            stock_instructions_compared == candidate_instructions_compared,
        )
        relocation_equivalences += g_cdev_data_subfield_equivalences
        (
            stock_relocations_compared,
            candidate_relocations_compared,
            g_cdev_data_offset_equivalences,
        ) = canonicalize_stripped_g_cdev_data_offset_accesses(
            stock_relocations_compared,
            candidate_relocations_compared,
            non_branch_relocation_instruction_indices(stock_path),
            non_branch_relocation_instruction_indices(candidate_path),
            stock_instructions_compared == candidate_instructions_compared,
        )
        relocation_equivalences += g_cdev_data_offset_equivalences
        (
            stock_relocations_compared,
            candidate_relocations_compared,
            alloc_tag_equivalences,
        ) = canonicalize_compiler_alloc_tags(
            stock_relocations_compared,
            candidate_relocations_compared,
            non_branch_relocation_instruction_indices(stock_path),
            non_branch_relocation_instruction_indices(candidate_path),
            stock_instructions_compared == candidate_instructions_compared,
        )
        relocation_equivalences += alloc_tag_equivalences
        (
            stock_relocations_compared,
            candidate_relocations_compared,
            stripped_codetag_equivalences,
        ) = canonicalize_stripped_codetag_alloc_tags(
            stock_relocations_compared,
            candidate_relocations_compared,
            non_branch_relocation_instruction_indices(stock_path),
            non_branch_relocation_instruction_indices(candidate_path),
            stock_instructions_compared == candidate_instructions_compared,
        )
        relocation_equivalences += stripped_codetag_equivalences
        checks = {
            "section": stock_record.get("section") == candidate_record.get("section"),
            "symbol_size": stock_record.get("symbol_size") == candidate_record.get("symbol_size"),
            "instructions": (
                stock_instructions_compared == candidate_instructions_compared
            ),
            "relocations": (
                stock_relocations_compared == candidate_relocations_compared
            ),
        }
        passed = all(checks.values())
        if not passed:
            failures.append(
                comparison_label
                + ": "
                + ", ".join(name for name, value in checks.items() if not value)
            )
        results.append(
            {
                "function": candidate_record.get("function"),
                "function_pair": comparison_label,
                "stock_function": stock_record.get("function"),
                "stock_function_id": stock_record.get("function_id"),
                "candidate_function": candidate_record.get("function"),
                "candidate_function_id": candidate_record.get("function_id"),
                "passed": passed,
                "checks": checks,
                "instruction_equivalences": instruction_equivalences,
                "relocation_equivalences": relocation_equivalences,
                "stock": {
                    "path": str(stock_path),
                    "sha256": sha256_file(stock_path),
                    "symbol_size": stock_record.get("symbol_size"),
                    "section": stock_record.get("section"),
                    "instruction_count": len(stock_instructions),
                    "relocations": stock_relocations,
                    "relocations_compared": stock_relocations_compared,
                    "relocations_raw": stock_raw_relocations,
                },
                "candidate": {
                    "path": str(candidate_path),
                    "sha256": sha256_file(candidate_path),
                    "symbol_size": candidate_record.get("symbol_size"),
                    "section": candidate_record.get("section"),
                    "instruction_count": len(candidate_instructions),
                    "relocations": candidate_relocations,
                    "relocations_compared": candidate_relocations_compared,
                    "relocations_raw": candidate_raw_relocations,
                },
            }
        )
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": (
            "aarch64_opcode_relocation_resolved_branch_rodata_pointer_"
            "and_elf_symbol_comparison"
        ),
        "passed": not failures and len(results) == len(comparisons),
        "requested_functions": [item[0] for item in comparisons],
        "checked_functions": len(results),
        "failures": failures,
        "ghidra_semantic_report": (
            {
                "path": str(args.ghidra_semantic_report.resolve()),
                "sha256": semantic_report_sha256,
                "passed": semantic_report.get("passed"),
            }
            if semantic_report is not None
            else None
        ),
        "results": results,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"passed": payload["passed"], "checked": len(results), "failures": len(failures)}))
    return 0 if payload["passed"] else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(2)
