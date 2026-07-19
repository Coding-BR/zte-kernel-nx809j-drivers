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


def _register_allocation_mask(word: int) -> tuple[int, str] | None:
    """Return mutable AArch64 register fields for a guarded instruction class."""
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


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--stock-dir", type=Path, required=True)
    parser.add_argument("--candidate-dir", type=Path, required=True)
    parser.add_argument("--function", action="append", dest="functions")
    parser.add_argument("--ghidra-semantic-report", type=Path)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()

    stock_root = args.stock_dir.resolve()
    candidate_root = args.candidate_dir.resolve()
    stock_manifest = load_manifest(stock_root)
    candidate_manifest = load_manifest(candidate_root)
    stock_records = records_by_function(stock_manifest, stock_root)
    candidate_records = records_by_function(candidate_manifest, candidate_root)
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
    functions = args.functions or sorted(set(stock_records) & set(candidate_records))
    results = []
    failures = []
    for function in functions:
        stock_record = stock_records.get(function)
        candidate_record = candidate_records.get(function)
        if stock_record is None or candidate_record is None:
            failures.append(function + ": missing manifest record")
            continue
        stock_path = stock_root / str(stock_record.get("file", ""))
        candidate_path = candidate_root / str(candidate_record.get("file", ""))
        if not stock_path.is_file() or not candidate_path.is_file():
            failures.append(function + ": missing assembly file")
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
            boolean_reordering_evidence,
        ) = canonicalize_boolean_count_pair_reordering(
            stock_instructions,
            candidate_instructions,
        )
        (
            stock_instructions_compared,
            candidate_instructions_compared,
            commutative_evidence,
        ) = canonicalize_commutative_instruction_pairs(
            stock_instructions_compared,
            candidate_instructions_compared,
        )
        instruction_equivalences = (
            boolean_reordering_evidence + commutative_evidence
        )
        (
            stock_instructions_compared,
            candidate_instructions_compared,
            register_allocation_evidence,
        ) = canonicalize_register_allocation_differences(
            stock_instructions_compared,
            candidate_instructions_compared,
            semantic_proofs.get(function),
            semantic_report_sha256,
        )
        instruction_equivalences += register_allocation_evidence
        (
            stock_relocations_compared,
            candidate_relocations_compared,
            relocation_equivalences,
        ) = canonicalize_stripped_lock_keys(
            stock_relocations,
            candidate_relocations,
            stock_instructions_compared
            if stock_instructions_compared == candidate_instructions_compared
            else [],
            non_branch_relocation_instruction_indices(stock_path),
            non_branch_relocation_instruction_indices(candidate_path),
        )
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
                function + ": " + ", ".join(name for name, value in checks.items() if not value)
            )
        results.append(
            {
                "function": function,
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
        "passed": not failures and len(results) == len(functions),
        "requested_functions": functions,
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
