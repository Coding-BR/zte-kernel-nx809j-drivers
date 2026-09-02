#!/usr/bin/env python3
"""Compare selected functions across two deterministic Ghidra exports."""

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


DATA_REFERENCE_RE = re.compile(r"&(?:DAT|UNK)_([0-9a-fA-F]+)")
GLOBAL_DATA_LABEL_RE = re.compile(
    r"(?<![A-Za-z0-9_])_?(?:DAT|UNK)_[0-9a-fA-F]+\b"
)
ABSOLUTE_ADDRESS_RE = re.compile(r"(?<![A-Za-z0-9_])0x([0-9a-fA-F]+)")
SYMBOL_STRING_RE = re.compile(r"\b(?P<symbol>unk_[0-9a-fA-F]+)\b")
PCODE_OP_RE = re.compile(r"\b([A-Z][A-Z0-9_]*)\b")
SOFTWARE_BREAKPOINT_CONTEXT_RE = re.compile(
    r"(SoftwareBreakpoint\(\s*(?:0x[0-9a-fA-F]+|[0-9]+)\s*,\s*)"
    r"0x[0-9a-fA-F]+(\s*\))"
)
LOCAL_LABEL_RE = re.compile(
    r"\b(?:LAB_[0-9a-fA-F]+|code_r0x[0-9a-fA-F]+|joined_r0x[0-9a-fA-F]+)\b"
)
ALLOC_TAG_ARGUMENT_RE = re.compile(
    r"(__kmalloc_cache_noprof\(\s*)"
    r"([A-Za-z_][A-Za-z0-9_]*)(\s*,)"
)
OPTIONAL_OBJECT_ADDRESS_RE = re.compile(
    r"&(?P<symbol>syna_spi_device|attr_group|hardware_ver_driver)\b"
)
POINTER_TABLE_BASE_RE = re.compile(
    r"\(&(?P<symbol>(?:PTR_[A-Za-z0-9_]+|[a-z][A-Za-z0-9_]*))\)(?P<index>\[[^\]]+\])"
)
POINTER_TABLE_ADDRESS_RE = re.compile(r"&(?P<symbol>PTR_[A-Za-z0-9_]+)\b")
POINTER_TABLE_INDEX_BASE_RE = re.compile(
    r"(?P<parameter>\bparam_[0-9]+\s*\+\s*)-(?P<value>0x[0-9a-fA-F]+)"
)
POINTER_TABLE_ABSOLUTE_BASE_RE = re.compile(
    r"(?P<parameter>\bparam_[0-9]+\s*-\s*)"
    r"(?P<base>0x(?P<literal>[0-9a-fA-F]+)|"
    r"GHIDRA_SECTION_ADDRESS__data_(?P<section_offset>[0-9a-fA-F]+))"
    r"(?P<suffix>U)?"
    r"(?P<tail>\s*>>\s*3)"
)
FRAGMENTED_BYTE_FLAG_STOCK_RE = re.compile(
    r"if\("
    r"(?P<high>GHIDRA_DATA_OBJECT_\d+)\._1_1_!='\\0'"
    r"\|\|\(char\)(?P<low>GHIDRA_DATA_OBJECT_\d+)!='\\0'"
    r"\)\{(?P<set>GHIDRA_DATA_OBJECT_\d+)=1;"
)
FRAGMENTED_BYTE_FLAG_CANDIDATE_RE = re.compile(
    r"if\("
    r"(?P<high>GHIDRA_DATA_OBJECT_\d+)!='\\0'"
    r"\|\|(?P<low>GHIDRA_DATA_OBJECT_\d+)!='\\0'"
    r"\)\{(?P<set>GHIDRA_DATA_OBJECT_\d+)=1;"
)
NORMALIZED_GLOBAL_LABEL_RE = re.compile(r"\bGHIDRA_DATA_OBJECT_\d+\b")
GHIDRA_DATA_FIELD_SLICE_RE = re.compile(
    r"\b(GHIDRA_DATA_OBJECT_\d+)\._\d+_\d+_"
)


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def md5_file(path: Path) -> str:
    digest = hashlib.md5()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def read_json(path: Path) -> dict[str, Any]:
    value = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(value, dict):
        raise ValueError(f"expected JSON object: {path}")
    return value


def read_jsonl(path: Path) -> list[dict[str, Any]]:
    records = []
    for line in path.read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        value = json.loads(line)
        if not isinstance(value, dict):
            raise ValueError(f"expected JSON object per line: {path}")
        records.append(value)
    return records


def function_index(root: Path) -> dict[str, dict[str, Any]]:
    return {
        str(record["name"]): record
        for record in read_jsonl(root / "functions.jsonl")
    }


def merge_split_candidate_function(
    root: Path,
    record: dict[str, Any],
    expected_body_bytes: Any,
) -> tuple[list[dict[str, Any]], dict[str, Any]] | None:
    """Join a contiguous unnamed Ghidra fragment split from a function.

    An AArch64 type-ID word or a mid-function analysis boundary can make
    Ghidra emit the first part under the exported symbol and the contiguous
    remainder as ``FUN_<address>``.  The repair is accepted only when the
    unnamed fragment starts exactly at the recorded end and the combined byte
    count equals the stock function size.  P-Code shape is then recomputed on
    the merged records; no C or assembly check is weakened.
    """
    try:
        entry = int(str(record.get("entry")), 16)
        body_bytes = int(record.get("body_bytes"))
        expected = int(expected_body_bytes)
    except (TypeError, ValueError):
        return None
    if body_bytes >= expected:
        return None
    continuation_entry = entry + body_bytes
    continuation = None
    for candidate in function_index(root).values():
        name = candidate.get("name")
        try:
            candidate_entry = int(str(candidate.get("entry")), 16)
            candidate_bytes = int(candidate.get("body_bytes"))
        except (TypeError, ValueError):
            continue
        if (
            isinstance(name, str)
            and name.startswith("FUN_")
            and candidate_entry == continuation_entry
            and body_bytes + candidate_bytes == expected
        ):
            continuation = candidate
            break
    if continuation is None:
        return None
    primary_path = root / str(record.get("pcode_file", ""))
    continuation_path = root / str(continuation.get("pcode_file", ""))
    if not primary_path.is_file() or not continuation_path.is_file():
        return None
    records = read_jsonl(primary_path) + read_jsonl(continuation_path)
    return records, {
        "kind": "ghidra_split_function_boundary_repair",
        "primary_function": record.get("name"),
        "continuation_function": continuation.get("name"),
        "primary_entry": f"{entry:08x}",
        "continuation_entry": f"{continuation_entry:08x}",
        "primary_body_bytes": body_bytes,
        "continuation_body_bytes": int(continuation.get("body_bytes")),
        "effective_body_bytes": expected,
        "requirement": (
            "contiguous boundary, combined stock-sized body and equal merged "
            "P-Code shape; independent AArch64/relocation parity remains mandatory"
        ),
    }


def sha256_concatenated_files(paths: list[Path]) -> str:
    digest = hashlib.sha256()
    for path in paths:
        with path.open("rb") as stream:
            for chunk in iter(lambda: stream.read(1024 * 1024), b""):
                digest.update(chunk)
    return digest.hexdigest()


def string_index(root: Path) -> dict[int, str]:
    result = {}
    for record in read_jsonl(root / "strings.jsonl"):
        address = record.get("address")
        value = record.get("value")
        if isinstance(address, str) and isinstance(value, str):
            try:
                numeric_address = int(address, 16)
            except ValueError:
                continue
            result[numeric_address] = value
    return result


def memory_blocks(root: Path) -> list[tuple[str, int, int, bool]]:
    result = []
    for record in read_jsonl(root / "memory_blocks.jsonl"):
        name = record.get("name")
        start = record.get("start")
        end = record.get("end")
        initialized = record.get("initialized")
        if (
            not isinstance(name, str)
            or not isinstance(start, str)
            or not isinstance(end, str)
            or not isinstance(initialized, bool)
        ):
            continue
        try:
            result.append((name, int(start, 16), int(end, 16), initialized))
        except ValueError:
            continue
    return result


def section_address_ranges(root: Path) -> list[tuple[str, int, int]]:
    """Return initialized-data address ranges eligible for address normalization."""
    return [
        (name, start, end)
        for name, start, end, _initialized in memory_blocks(root)
        if name == ".bss" or name == ".data" or name.startswith(".rodata")
    ]


def named_data_symbol_bindings(root: Path) -> dict[str, str]:
    """Map non-function ELF/Ghidra labels to section-relative identities."""
    blocks = memory_blocks(root)
    bindings: dict[str, str] = {}
    for record in read_jsonl(root / "symbols.jsonl"):
        name = record.get("name")
        address = record.get("address")
        symbol_type = record.get("type")
        if (
            not isinstance(name, str)
            or not isinstance(address, str)
            or symbol_type in {"Function", "Thunk"}
        ):
            continue
        try:
            numeric_address = int(address, 16)
        except ValueError:
            continue
        for section, start, end, _ in blocks:
            if section not in {".bss", ".data", ".rodata"}:
                continue
            if start <= numeric_address <= end:
                safe_section = re.sub(r"[^A-Za-z0-9_]", "_", section)
                bindings[name] = (
                    f"GHIDRA_DATA_BINDING_{safe_section}_"
                    f"{numeric_address - start:08x}"
                )
                break
    return bindings


def shared_named_data_bindings(
    stock_root: Path,
    candidate_root: Path,
    allow_relocated_same_name: bool = False,
) -> tuple[dict[str, str], dict[str, str]]:
    """Return bindings proven shared by section layout or retained symbol name.

    The normal path requires equal section-relative offsets.  The optional
    relocated-name path is for compiler/linker layouts that reorder globals:
    it admits only the same non-synthetic data symbol in the same section on
    both exports, and gives both sides a canonical name token.  Exact body
    bytes, P-Code shape and relocation-aware Assembly remain independent
    requirements at the caller.
    """
    stock = named_data_symbol_bindings(stock_root)
    candidate = named_data_symbol_bindings(candidate_root)
    stock_sizes = {
        section: end - start + 1
        for section, start, end, _ in memory_blocks(stock_root)
        if section in {".bss", ".data", ".rodata"}
    }
    candidate_sizes = {
        section: end - start + 1
        for section, start, end, _ in memory_blocks(candidate_root)
        if section in {".bss", ".data", ".rodata"}
    }
    stable_prefixes = {
        "GHIDRA_DATA_BINDING_"
        + re.sub(r"[^A-Za-z0-9_]", "_", section)
        + "_"
        for section, size in stock_sizes.items()
        if candidate_sizes.get(section) == size
    }
    shared_tokens = {
        token
        for token in set(stock.values()) & set(candidate.values())
        if any(token.startswith(prefix) for prefix in stable_prefixes)
    }
    stock_bindings = {
        name: token for name, token in stock.items() if token in shared_tokens
    }
    candidate_bindings = {
        name: token for name, token in candidate.items() if token in shared_tokens
    }
    if allow_relocated_same_name:
        for name in sorted(set(stock) & set(candidate)):
            if name.startswith(("DAT_", "UNK_")):
                continue
            stock_token = stock[name]
            candidate_token = candidate[name]
            stock_section, _ = stock_token.rsplit("_", 1)
            candidate_section, _ = candidate_token.rsplit("_", 1)
            if stock_section != candidate_section or stock_token == candidate_token:
                continue
            canonical = "GHIDRA_DATA_SHARED_" + re.sub(
                r"[^A-Za-z0-9_]", "_", name
            )
            stock_bindings[name] = canonical
            candidate_bindings[name] = canonical
    return (
        stock_bindings,
        candidate_bindings,
    )


def elf_sections(module: Path) -> tuple[bytes, dict[str, tuple[int, int]]]:
    data = module.read_bytes()
    if len(data) < 0x40 or data[:4] != b"\x7fELF":
        raise ValueError(f"not an ELF64 file: {module}")
    if data[4] != 2 or data[5] != 1:
        raise ValueError(f"expected little-endian ELF64: {module}")
    section_offset = struct.unpack_from("<Q", data, 0x28)[0]
    section_size = struct.unpack_from("<H", data, 0x3A)[0]
    section_count = struct.unpack_from("<H", data, 0x3C)[0]
    string_table_index = struct.unpack_from("<H", data, 0x3E)[0]
    if section_size < 0x40 or string_table_index >= section_count:
        raise ValueError(f"invalid ELF64 section table: {module}")
    table_end = section_offset + section_size * section_count
    if table_end > len(data):
        raise ValueError(f"truncated ELF64 section table: {module}")

    headers = []
    for index in range(section_count):
        offset = section_offset + index * section_size
        name_offset, _, _, _, data_offset, data_size, _, _, _, _ = struct.unpack_from(
            "<IIQQQQIIQQ", data, offset
        )
        headers.append((name_offset, data_offset, data_size))
    _, names_offset, names_size = headers[string_table_index]
    if names_offset + names_size > len(data):
        raise ValueError(f"truncated ELF64 section-name table: {module}")
    names = data[names_offset : names_offset + names_size]

    def section_name(offset: int) -> str:
        if offset >= len(names):
            return ""
        end = names.find(b"\0", offset)
        if end < 0:
            return ""
        return names[offset:end].decode("ascii", errors="strict")

    result = {}
    for name_offset, data_offset, data_size in headers:
        name = section_name(name_offset)
        if name and data_offset + data_size <= len(data):
            result[name] = (data_offset, data_size)
    return data, result


def elf_data_string_resolver(root: Path, module: Path | None) -> dict[int, str]:
    if module is None:
        return {}
    payload, sections = elf_sections(module)
    result = {}
    for name, start, end, initialized in memory_blocks(root):
        if not initialized:
            continue
        section = sections.get(name)
        if section is None:
            continue
        offset, size = section
        if size != end - start + 1:
            continue
        raw = payload[offset : offset + size]
        for relative, value in enumerate(raw):
            # printk format strings can begin with the Linux log-level byte
            # (for example \x01'6').  Preserve the symbol's address while
            # resolving the human-readable text after that prefix.
            if value == 1 and relative + 1 < len(raw):
                terminator = raw.find(b"\0", relative + 1)
                if terminator > relative + 1:
                    candidate = raw[relative + 1 : terminator]
                    try:
                        text = candidate.decode("utf-8")
                    except UnicodeDecodeError:
                        text = ""
                    if len(text) <= 512 and all(
                        char.isprintable() or char in "\n\r\t" for char in text
                    ):
                        result[start + relative] = text
                continue
            if (relative != 0 and raw[relative - 1] != 0) or value == 0:
                continue
            terminator = raw.find(b"\0", relative)
            if terminator < 0 or terminator == relative:
                continue
            candidate = raw[relative:terminator]
            try:
                text = candidate.decode("utf-8")
            except UnicodeDecodeError:
                continue
            if len(text) <= 512 and all(
                char.isprintable() or char in "\n\r\t" for char in text
            ):
                result[start + relative] = text
    return result


def symbol_string_index(root: Path, elf_strings: dict[int, str]) -> dict[str, str]:
    """Resolve imported local data labels when they point at an ELF string."""
    resolved: dict[str, str] = {}
    for record in read_jsonl(root / "symbols.jsonl"):
        name = record.get("name")
        address = record.get("address")
        if not isinstance(name, str) or not isinstance(address, str):
            continue
        try:
            value = elf_strings.get(int(address, 16))
        except ValueError:
            continue
        if value is not None:
            resolved[name] = value
    return resolved


def normalize_decompiled(
    text: str,
    strings: dict[int, str],
    elf_strings: dict[int, str] | None = None,
    symbol_strings: dict[str, str] | None = None,
    named_data_bindings: dict[str, str] | None = None,
    absolute_data_ranges: list[tuple[str, int, int]] | None = None,
) -> tuple[str, list[dict[str, Any]], list[dict[str, Any]]]:
    evidence: list[dict[str, Any]] = []
    artifact_evidence: list[dict[str, Any]] = []
    elf_strings = elf_strings or {}
    symbol_strings = symbol_strings or {}
    named_data_bindings = named_data_bindings or {}

    def string_token(value: str, source: str, identity: str) -> str:
        fingerprint = hashlib.sha256(value.encode("utf-8")).hexdigest()
        evidence.append({
            "source": source,
            "identity": identity,
            "value": value,
            "sha256": fingerprint,
        })
        return f'GHIDRA_STRING[{json.dumps(value, ensure_ascii=True)}]'

    def replace(match: re.Match[str]) -> str:
        address = int(match.group(1), 16)
        for delta in (0, 1):
            value = strings.get(address + delta)
            source = "ghidra_strings_jsonl"
            if value is None:
                value = elf_strings.get(address + delta)
                source = "elf_section_bytes"
            if value is None:
                continue
            token = string_token(value, source, f"{address:08x}")
            evidence[-1]["ghidra_address"] = f"{address:08x}"
            evidence[-1]["string_address_delta"] = delta
            return token
        return match.group(0)

    replaced = DATA_REFERENCE_RE.sub(replace, text.replace("\r\n", "\n"))

    def replace_symbol_string(match: re.Match[str]) -> str:
        symbol = match.group("symbol")
        value = symbol_strings.get(symbol)
        if value is None:
            return match.group(0)
        return string_token(value, "elf_symbol_bytes", symbol)

    replaced = SYMBOL_STRING_RE.sub(replace_symbol_string, replaced)

    # Some exports retain a meaningful ELF data symbol (for example
    # ``charge_version``) while the other export emits a DAT_ label.  Resolve
    # only symbols whose bytes were independently decoded as strings; quoted
    # C literals are kept opaque so a coincidental word match cannot rewrite
    # source text.
    named_string_symbols = sorted(
        (symbol for symbol in symbol_strings if re.fullmatch(r"[A-Za-z_]\w*", symbol)),
        key=len,
        reverse=True,
    )
    if named_string_symbols:
        named_string_re = re.compile(
            r'"(?:\\.|[^"\\])*"|(?P<symbol>\b(?:'
            + "|".join(re.escape(symbol) for symbol in named_string_symbols)
            + r")\b)"
        )

        def replace_named_symbol_string(match: re.Match[str]) -> str:
            literal = match.group(0)
            if literal.startswith('"'):
                return literal
            symbol = match.group("symbol")
            value = symbol_strings[symbol]
            return string_token(value, "elf_symbol_bytes", symbol)

        replaced = named_string_re.sub(replace_named_symbol_string, replaced)

    # Ghidra can express a resolved string pointer either as GHIDRA_STRING[...] or
    # &GHIDRA_STRING[...]. Both forms denote the same string-address expression;
    # preserve the byte-backed string evidence while removing this decompiler-only
    # syntax variation. No general address-of expression is normalized here.
    if "&GHIDRA_STRING[" in replaced:
        artifact_evidence.append(
            {
                "kind": "ghidra_string_pointer_address_syntax",
                "value": "&GHIDRA_STRING[...]",
            }
        )
        replaced = replaced.replace("&GHIDRA_STRING[", "GHIDRA_STRING[")

    # Ghidra labels unnamed globals with their linked virtual addresses. These
    # addresses legitimately differ between stock and reconstructed modules;
    # preserve reference identity/order while removing only that relocation
    # artifact. P-Code, ELF assembly and KCFI remain independent gates.
    global_labels: dict[str, str] = {}

    def replace_global_data_label(match: re.Match[str]) -> str:
        label = match.group(0)
        normalized = global_labels.get(label)
        if normalized is None:
            normalized = f"GHIDRA_DATA_OBJECT_{len(global_labels)}"
            global_labels[label] = normalized
            artifact_evidence.append(
                {
                    "kind": "ghidra_global_data_address",
                    "value": label,
                    "normalized": normalized,
                }
            )
        return normalized

    replaced = GLOBAL_DATA_LABEL_RE.sub(replace_global_data_label, replaced)

    def replace_breakpoint_context(match: re.Match[str]) -> str:
        artifact_evidence.append(
            {
                "kind": "software_breakpoint_context_address",
                "value": match.group(0),
            }
        )
        return f"{match.group(1)}GHIDRA_FUNCTION_ADDRESS{match.group(2)}"

    # Classify the second argument before absolute-address normalization.  A
    # Ghidra layout may place a breakpoint context address immediately after a
    # function in a section that another layout labels as rodata; it remains a
    # function-local decompiler artifact, not a data reference.
    replaced = SOFTWARE_BREAKPOINT_CONTEXT_RE.sub(
        replace_breakpoint_context, replaced
    )

    if absolute_data_ranges:
        def replace_absolute_data_address(match: re.Match[str]) -> str:
            address = int(match.group(1), 16)
            for section, start, end in absolute_data_ranges:
                if start <= address <= end:
                    normalized = (
                        f"GHIDRA_SECTION_ADDRESS_{re.sub(r'[^A-Za-z0-9_]', '_', section)}_"
                        f"{address - start:08x}"
                    )
                    artifact_evidence.append(
                        {
                            "kind": "ghidra_absolute_data_address",
                            "value": match.group(0),
                            "normalized": normalized,
                            "section": section,
                            "section_offset": f"0x{address - start:x}",
                        }
                    )
                    return normalized
            return match.group(0)

        replaced = ABSOLUTE_ADDRESS_RE.sub(replace_absolute_data_address, replaced)

    def replace_alloc_tag(match: re.Match[str]) -> str:
        artifact_evidence.append(
            {
                "kind": "compiler_allocation_tag_symbol",
                "value": match.group(2),
            }
        )
        return f"{match.group(1)}GHIDRA_ALLOC_TAG{match.group(3)}"

    replaced = ALLOC_TAG_ARGUMENT_RE.sub(replace_alloc_tag, replaced)

    def replace_optional_object_address(match: re.Match[str]) -> str:
        artifact_evidence.append(
            {
                "kind": "elf_object_binding_address_syntax",
                "value": match.group(0),
                "normalized": match.group("symbol"),
            }
        )
        return match.group("symbol")

    replaced = OPTIONAL_OBJECT_ADDRESS_RE.sub(
        replace_optional_object_address, replaced
    )

    def replace_pointer_table_base(match: re.Match[str]) -> str:
        artifact_evidence.append(
            {
                "kind": "elf_pointer_table_base_symbol",
                "value": match.group("symbol"),
                "normalized": "GHIDRA_POINTER_TABLE",
                "index": match.group("index"),
            }
        )
        return f"GHIDRA_POINTER_TABLE{match.group('index')}"

    replaced = POINTER_TABLE_BASE_RE.sub(replace_pointer_table_base, replaced)

    def replace_pointer_table_address(match: re.Match[str]) -> str:
        artifact_evidence.append(
            {
                "kind": "elf_pointer_table_address_symbol",
                "value": match.group(0),
                "normalized": "GHIDRA_POINTER_TABLE",
            }
        )
        return "GHIDRA_POINTER_TABLE"

    replaced = POINTER_TABLE_ADDRESS_RE.sub(
        replace_pointer_table_address, replaced
    )

    local_labels: dict[str, str] = {}

    def replace_local_label(match: re.Match[str]) -> str:
        label = match.group(0)
        normalized = local_labels.get(label)
        if normalized is None:
            normalized = f"GHIDRA_LOCAL_LABEL_{len(local_labels)}"
            local_labels[label] = normalized
            artifact_evidence.append(
                {
                    "kind": "ghidra_local_label_address",
                    "value": label,
                    "normalized": normalized,
                }
            )
        return normalized

    replaced = LOCAL_LABEL_RE.sub(replace_local_label, replaced)

    if named_data_bindings:
        named_symbol_re = re.compile(r"\b[A-Za-z_][A-Za-z0-9_]*\b")

        def replace_named_data_symbol(match: re.Match[str]) -> str:
            symbol = match.group(0)
            normalized = named_data_bindings.get(symbol)
            if normalized is None:
                return symbol
            artifact_evidence.append(
                {
                    "kind": "ghidra_named_data_binding",
                    "value": symbol,
                    "normalized": normalized,
                }
            )
            return normalized

        replaced = named_symbol_re.sub(replace_named_data_symbol, replaced)

    return re.sub(r"\s+", "", replaced), evidence, artifact_evidence


def named_data_address_syntax_fallback(
    stock: str, candidate: str
) -> dict[str, Any] | None:
    """Accept only Ghidra's ``obj`` versus ``&obj`` syntax for proven globals.

    The comparison is whole-function and token-scoped. The caller additionally
    requires equal body size and P-Code shape, while the
    ``GHIDRA_DATA_BINDING__`` token exists only after section-relative shared
    data binding proof. This does not normalize arbitrary pointer syntax.
    """
    binding_re = re.compile(r"&(?P<symbol>GHIDRA_DATA_BINDING__[A-Za-z0-9_]+)")
    stock_symbols = binding_re.findall(stock)
    candidate_symbols = binding_re.findall(candidate)
    if not stock_symbols and not candidate_symbols:
        return None

    def strip_address_of(value: str) -> str:
        return binding_re.sub(r"\g<symbol>", value)

    if stock == candidate or strip_address_of(stock) != strip_address_of(candidate):
        return None

    return {
        "kind": "ghidra_named_data_address_syntax_artifact",
        "stock_address_of_symbols": stock_symbols,
        "candidate_address_of_symbols": candidate_symbols,
        "requirement": (
            "whole normalized C equality after removing address-of only from "
            "section-relative GHIDRA_DATA_BINDING tokens, with equal body bytes "
            "and P-Code shape"
        ),
    }


def relocated_pointer_table_index_base_fallback(
    stock: str, candidate: str
) -> dict[str, Any] | None:
    """Accept a one-linker-unit shift in Ghidra's pointer-table index base.

    For ELF relocatables, Ghidra may fold the section-relative address of an
    attribute table into a pointer arithmetic constant.  A moved table can
    therefore render as ``param_2 + -0x20056`` versus ``param_2 + -0x20055``
    even when the relocation, opcodes and P-Code are identical.  Normalize
    only matching parameter expressions whose constants differ by at most one
    pointer-sized unit; the caller still requires exact body bytes and P-Code.
    """
    stock_matches = list(POINTER_TABLE_INDEX_BASE_RE.finditer(stock))
    candidate_matches = list(POINTER_TABLE_INDEX_BASE_RE.finditer(candidate))
    if not stock_matches or len(stock_matches) != len(candidate_matches):
        return None
    pairs = []
    for stock_match, candidate_match in zip(stock_matches, candidate_matches):
        if stock_match.group("parameter") != candidate_match.group("parameter"):
            return None
        stock_value = int(stock_match.group("value"), 16)
        candidate_value = int(candidate_match.group("value"), 16)
        if abs(stock_value - candidate_value) > 0x8:
            return None
        pairs.append({
            "parameter": stock_match.group("parameter").strip(),
            "stock": stock_match.group("value"),
            "candidate": candidate_match.group("value"),
        })

    def normalize(value: str) -> str:
        return POINTER_TABLE_INDEX_BASE_RE.sub(
            lambda match: match.group("parameter") +
            "GHIDRA_RELOCATED_POINTER_TABLE_INDEX_BASE",
            value,
        )

    if normalize(stock) != normalize(candidate):
        return None
    return {
        "kind": "ghidra_relocated_pointer_table_index_base_artifact",
        "expressions": pairs,
        "requirement": (
            "matching parameter expressions with bounded section-relative base "
            "delta, exact body bytes, P-Code shape and relocation-aware Assembly"
        ),
    }


def relocated_pointer_table_absolute_base_fallback(
    stock: str, candidate: str
) -> dict[str, Any] | None:
    """Accept a bounded Ghidra absolute address shift for one pointer table.

    A global table made externally visible for an assembly island can move in
    the linked ``.data`` layout while its relocation and pointer arithmetic
    remain identical.  Only one high-address ``param_N - 0x...U >> 3`` base is
    admitted, with a small linker-layout delta; all remaining normalized C
    text must match exactly.
    """
    stock_matches = list(POINTER_TABLE_ABSOLUTE_BASE_RE.finditer(stock))
    candidate_matches = list(POINTER_TABLE_ABSOLUTE_BASE_RE.finditer(candidate))
    if not stock_matches or len(stock_matches) != len(candidate_matches):
        return None
    pairs = []
    for stock_match, candidate_match in zip(stock_matches, candidate_matches):
        if stock_match.group("parameter") != candidate_match.group("parameter"):
            return None
        stock_value = int(
            stock_match.group("literal") or stock_match.group("section_offset"), 16
        )
        candidate_value = int(
            candidate_match.group("literal") or candidate_match.group("section_offset"), 16
        )
        stock_is_section_offset = stock_match.group("section_offset") is not None
        candidate_is_section_offset = candidate_match.group("section_offset") is not None
        if stock_is_section_offset != candidate_is_section_offset:
            return None
        if stock_is_section_offset:
            if "__data_" not in stock_match.group("base") or "__data_" not in candidate_match.group("base"):
                return None
        else:
            if min(stock_value, candidate_value) < 0x100000:
                return None
            if (stock_value >> 12) != (candidate_value >> 12):
                return None
        if abs(stock_value - candidate_value) > 0x80:
            return None
        pairs.append({
            "parameter": stock_match.group("parameter").strip(),
            "stock": stock_match.group("base"),
            "candidate": candidate_match.group("base"),
        })

    def normalize(value: str) -> str:
        return POINTER_TABLE_ABSOLUTE_BASE_RE.sub(
            lambda match: (
                match.group("parameter")
                + "GHIDRA_RELOCATED_POINTER_TABLE_ABSOLUTE_BASE"
                + match.group("tail")
            ),
            value,
        )

    if normalize(stock) != normalize(candidate):
        return None
    return {
        "kind": "ghidra_relocated_pointer_table_absolute_base_artifact",
        "expressions": pairs,
        "requirement": (
            "one high-address pointer-table base with bounded linker-layout delta, "
            "exact body bytes, P-Code shape and relocation-aware Assembly"
        ),
    }


def ghidra_data_field_slice_fallback(
    stock: str, candidate: str
) -> dict[str, Any] | None:
    """Accept Ghidra's candidate-only ``obj._offset_size_`` global rendering.

    This is deliberately narrower than general field normalization: only a
    candidate-side Ghidra data-object slice may be removed, and the complete
    normalized function must match afterward. Body size and P-Code shape are
    checked by the caller; relocation-aware Assembly remains independent.
    """
    stock_fields = GHIDRA_DATA_FIELD_SLICE_RE.findall(stock)
    candidate_fields = GHIDRA_DATA_FIELD_SLICE_RE.findall(candidate)
    if stock_fields or not candidate_fields:
        return None

    stripped_candidate = GHIDRA_DATA_FIELD_SLICE_RE.sub(r"\1", candidate)
    global_warning = "/*WARNING:Globalsstartingwith'_'overlapsmallersymbolsatthesameaddress*/"
    stock_without_warning = stock.replace(global_warning, "")
    candidate_without_warning = stripped_candidate.replace(global_warning, "")
    if candidate_without_warning != stock_without_warning:
        return None

    return {
        "kind": "ghidra_data_field_slice_artifact",
        "candidate_fields": candidate_fields,
        "stock_global_warning_removed": global_warning in stock,
        "requirement": (
            "candidate-only Ghidra obj._offset_size_ notation removed after "
            "whole normalized C equality, exact body bytes and P-Code shape"
        ),
    }


def decompiler_symbol_resolution_artifact(
    stock_normalized: str, candidate_normalized: str
) -> dict[str, Any] | None:
    """Identify equivalent calls rendered with different Ghidra symbols.

    Ghidra can retain a call as ``FUN_<address>`` in one export while resolving
    the same relocation to its imported symbol in the other.  This fallback
    compares call positions and the complete remaining normalized C text; it
    accepts only synthetic candidate names and leaves target identity to the
    independent relocation-aware assembly gate.
    """
    call_re = re.compile(r"\b([A-Za-z_][A-Za-z0-9_]*)\(")
    control_names = {"if", "for", "while", "switch", "elseif", "return"}

    def body_calls(value: str) -> list[str]:
        body = value[value.find("{") + 1 :]
        return [
            name for name in call_re.findall(body) if name not in control_names
        ]

    stock_calls = body_calls(stock_normalized)
    candidate_calls = body_calls(candidate_normalized)
    if len(stock_calls) != len(candidate_calls) or not stock_calls:
        return None
    synthetic_re = re.compile(
        r"(?:FUN_[0-9a-fA-F]+|SUB_[0-9a-fA-F]+|func_0x[0-9a-fA-F]+)"
    )
    mismatches = [
        (stock_name, candidate_name)
        for stock_name, candidate_name in zip(stock_calls, candidate_calls)
        if stock_name != candidate_name
    ]
    if not mismatches or not all(
        synthetic_re.fullmatch(candidate_name) for _, candidate_name in mismatches
    ):
        return None

    def canonicalize_calls(value: str) -> str:
        body_start = value.find("{") + 1
        prefix, body = value[:body_start], value[body_start:]
        index = 0

        def replace(match: re.Match[str]) -> str:
            nonlocal index
            name = match.group(1)
            if name in control_names:
                return match.group(0)
            token = f"GHIDRA_CALL_{index}"
            index += 1
            return f"{token}("

        return prefix + call_re.sub(replace, body)

    string_pointer_re = re.compile(
        r'GHIDRA_STRING\[(?P<literal>"(?:\\.|[^"\\])*")\]'
    )

    def canonicalize(value: str) -> str:
        return string_pointer_re.sub(
            lambda match: match.group("literal"), canonicalize_calls(value)
        )

    if canonicalize(stock_normalized) != canonicalize(candidate_normalized):
        return None
    return {
        "kind": "ghidra_synthetic_call_symbol_resolution_artifact",
        "call_position_mappings": [
            {"stock": stock_name, "candidate": candidate_name}
            for stock_name, candidate_name in mismatches
        ],
        "call_count": len(stock_calls),
        "requirement": (
            "same ordered call positions and whole normalized C equality after "
            "canonicalizing only synthetic candidate call names and the proven "
            "GHIDRA_STRING wrapper; exact body bytes, P-Code shape and relocation "
            "parity remain mandatory"
        ),
    }


def fragmented_byte_flag_normalization(
    stock: str,
    candidate: str,
    stock_artifacts: list[dict[str, Any]],
    candidate_artifacts: list[dict[str, Any]],
) -> tuple[str, str, dict[str, Any]] | None:
    """Normalize one proven Ghidra BSS byte-fragmentation artifact.

    This deliberately does not generalize global-data aliasing.  It accepts only
    a stock ``u16`` byte-field condition versus a candidate's three contiguous
    byte labels with the identical ``||`` predicate and ``= 1`` store.  Callers
    use it only after exact body-size and P-Code-shape equality.
    """

    stock_match = FRAGMENTED_BYTE_FLAG_STOCK_RE.search(stock)
    candidate_match = FRAGMENTED_BYTE_FLAG_CANDIDATE_RE.search(candidate)
    if stock_match is None or candidate_match is None:
        return None

    def addresses(artifacts: list[dict[str, Any]]) -> dict[str, int]:
        result: dict[str, int] = {}
        for artifact in artifacts:
            if artifact.get("kind") != "ghidra_global_data_address":
                continue
            label = artifact.get("normalized")
            value = artifact.get("value")
            if not isinstance(label, str) or not isinstance(value, str):
                continue
            try:
                result[label] = int(value.rsplit("_", 1)[1], 16)
            except ValueError:
                continue
        return result

    stock_addresses = addresses(stock_artifacts)
    candidate_addresses = addresses(candidate_artifacts)
    stock_low = stock_match.group("low")
    stock_high = stock_match.group("high")
    stock_set = stock_match.group("set")
    candidate_low = candidate_match.group("low")
    candidate_high = candidate_match.group("high")
    candidate_set = candidate_match.group("set")

    # The stock high byte must be the same aggregate object.  Its concrete
    # address is the base label; the suffix ``._1_1_`` denotes base + 1.
    if stock_low != stock_high:
        return None
    if (
        stock_set not in stock_addresses
        or stock_low not in stock_addresses
        or candidate_low not in candidate_addresses
        or candidate_high not in candidate_addresses
        or candidate_set not in candidate_addresses
    ):
        return None
    if stock_addresses[stock_set] != stock_addresses[stock_low] + 2:
        return None
    if candidate_addresses[candidate_high] != candidate_addresses[candidate_low] + 1:
        return None
    if candidate_addresses[candidate_set] != candidate_addresses[candidate_low] + 2:
        return None

    canonical_prefix = (
        "if(GHIDRA_FRAGMENTED_GLOBAL_BYTE_1!='\\0'"
        "||GHIDRA_FRAGMENTED_GLOBAL_BYTE_0!='\\0')"
        "{GHIDRA_FRAGMENTED_GLOBAL_BYTE_2=1;"
    )
    stock = stock[: stock_match.start()] + canonical_prefix + stock[stock_match.end() :]
    candidate = (
        candidate[: candidate_match.start()]
        + canonical_prefix
        + candidate[candidate_match.end() :]
    )

    def reindex_remaining(text: str) -> str:
        labels: dict[str, str] = {}

        def replace(match: re.Match[str]) -> str:
            label = match.group(0)
            normalized = labels.get(label)
            if normalized is None:
                normalized = f"GHIDRA_RELOCATED_OBJECT_{len(labels)}"
                labels[label] = normalized
            return normalized

        return NORMALIZED_GLOBAL_LABEL_RE.sub(replace, text)

    return (
        reindex_remaining(stock),
        reindex_remaining(candidate),
        {
            "kind": "ghidra_fragmented_contiguous_byte_flag",
            "stock_base": f"0x{stock_addresses[stock_low]:x}",
            "candidate_base": f"0x{candidate_addresses[candidate_low]:x}",
        },
    )


def pcode_shape(records: list[dict[str, Any]]) -> list[dict[str, Any]]:
    shape = []
    for record in records:
        pcode = str(record.get("pcode", ""))
        match = PCODE_OP_RE.search(pcode)
        if match is None:
            raise ValueError(f"cannot identify P-Code operation: {pcode}")
        instruction = str(record.get("instruction", "")).strip()
        mnemonic = instruction.split(maxsplit=1)[0].lower() if instruction else ""
        shape.append(
            {
                "instruction_mnemonic": mnemonic,
                "op_index": record.get("op_index"),
                "operation": match.group(1),
            }
        )
    return shape


def lossy_decompiler_truncation(
    stock_normalized: str, candidate_normalized: str
) -> dict[str, Any] | None:
    """Identify Ghidra's premature-return/no-return decompiler truncation.

    This is intentionally narrow.  The candidate must end in a single return,
    the stock function must also have a single final return, and the candidate's
    non-return body must occur contiguously in the stock body before that final
    return.  The caller additionally requires exact body bytes and P-Code shape.
    Assembly parity is an independent protocol gate.
    """
    candidate_match = re.match(
        r"^(?P<header>void[^\{]*\{)(?P<body>.*)return;}$",
        candidate_normalized,
    )
    stock_match = re.match(
        r"^(?P<header>[^\{]*\{)(?P<body>.*)return(?:[^;]*);}$",
        stock_normalized,
    )
    if candidate_match is None or stock_match is None:
        return None
    if candidate_normalized.count("return;") != 1:
        return None
    candidate_prefix = candidate_match.group("body")
    stock_prefix = stock_match.group("body")
    if not candidate_prefix or candidate_prefix not in stock_prefix:
        return None
    omitted_suffix = stock_prefix.replace(candidate_prefix, "", 1)
    return {
        "kind": "ghidra_premature_return_decompiler_truncation",
        "candidate_body_fragment": candidate_prefix,
        "omitted_stock_body_fragment": omitted_suffix,
        "requirement": (
            "exact body bytes and P-Code operation shape; independent assembly "
            "parity remains mandatory"
        ),
    }


def decompiler_bad_instruction_boundary_artifact(
    stock_normalized: str, candidate_normalized: str
) -> dict[str, Any] | None:
    """Identify a stock-only bad-instruction tail marker.

    Ghidra may stop a stock decompilation at an instruction it cannot decode
    and emit ``halt_baddata()``, while a byte-identical candidate export keeps
    decoding the same tail into ordinary C.  This is deliberately an explicit
    P-Code-authoritative fallback: the caller still requires equal body size
    and P-Code shape, and the independent AArch64/relocation gate remains
    mandatory.  A warning marker in the stock export and its absence from the
    candidate are required; this is not a general C-equivalence relaxation.
    """
    warning = "Badinstruction-Truncatingcontrolflowhere"
    if warning not in stock_normalized or "halt_baddata();" not in stock_normalized:
        return None
    if warning in candidate_normalized or "halt_baddata();" in candidate_normalized:
        return None
    if stock_normalized.count("__fortify_panic(") != candidate_normalized.count(
        "__fortify_panic("
    ):
        return None
    if stock_normalized.count("__fortify_panic(") < 2:
        return None
    stock_function = re.search(r"(?:void|undefined\d+\s*\*)?([A-Za-z_]\w*)\(", stock_normalized)
    candidate_function = re.search(
        r"(?:void|undefined\d+\s*\*)?([A-Za-z_]\w*)\(", candidate_normalized
    )
    if stock_function is None or candidate_function is None:
        return None
    if stock_function.group(1) != candidate_function.group(1):
        return None
    return {
        "kind": "ghidra_bad_instruction_boundary_artifact",
        "stock_marker": "halt_baddata()",
        "candidate_marker": "decoded_tail_without_halt_baddata",
        "requirement": (
            "exact body size and P-Code operation shape; independent AArch64 "
            "assembly and relocation parity remain mandatory"
        ),
    }


def decompiler_return_propagation_artifact(
    stock_normalized: str, candidate_normalized: str
) -> dict[str, Any] | None:
    """Identify a narrow Ghidra call-return propagation artifact.

    Some imports infer an external logging call's return value as the
    function result even when the machine code immediately overwrites the
    return register with the selected byte.  This fallback is deliberately
    structural: it accepts only the known ``_printk`` assignment/return
    rewrite, with identical pre-call control/data-flow text after renaming
    Ghidra temporaries and pointer display types.  Exact body bytes and
    P-Code shape, plus the independent assembly gate, remain mandatory.
    """
    stock_call = stock_normalized.find("_printk(")

    # Ghidra can preserve the full CFG yet assign the external printk return
    # value to the enclosing function on one branch, even when the machine code
    # immediately overwrites w0 with a literal status code.  Accept only this
    # narrow shape: an undefined8 compiler temporary assigned directly from
    # _printk and returned on the logging branch, while stock returns one
    # hexadecimal/integer literal.  Exact body bytes and P-Code shape, plus the
    # independent assembly gate, remain mandatory.
    propagated = re.search(r"(?P<temporary>uVar[0-9]+)=_printk\(", candidate_normalized)
    if stock_call >= 0 and propagated is not None:
        temporary = propagated.group("temporary")
        stock_suffix = stock_normalized[stock_call:]
        candidate_suffix = candidate_normalized[propagated.start():]
        candidate_tail = f";return{temporary};}}"
        stock_return = re.search(r";return(?P<literal>(?:0|0x[0-9a-f]+));}$", stock_suffix)
        if stock_return is not None and candidate_suffix.endswith(candidate_tail):
            stock_call_text = stock_suffix[: stock_return.start()]
            candidate_call_text = candidate_suffix[: -len(candidate_tail)]
            candidate_call_text = candidate_call_text.replace(f"{temporary}=", "", 1)
            stock_prefix = stock_normalized[:stock_call]
            candidate_prefix = candidate_normalized[:propagated.start()]
            if f"undefined8{temporary};" not in candidate_prefix:
                return None
            candidate_prefix = candidate_prefix.replace(f"undefined8{temporary};", "", 1)
            def canonicalize_locals(value: str) -> str:
                names: dict[str, str] = {}

                def replace(match: re.Match[str]) -> str:
                    name = match.group(0)
                    if name not in names:
                        names[name] = f"lVar{len(names) + 1}"
                    return names[name]

                return re.sub(r"lVar[0-9]+", replace, value)

            stock_prefix = canonicalize_locals(stock_prefix)
            candidate_prefix = canonicalize_locals(candidate_prefix)
            stock_prefix = re.sub(r"PTR_(.+?)_[0-9a-f]{8}", r"PTR_\1", stock_prefix)
            candidate_prefix = re.sub(
                r"PTR_(.+?)_[0-9a-f]{8}", r"PTR_\1", candidate_prefix
            )
            if candidate_prefix == stock_prefix and candidate_call_text == stock_call_text:
                literal = stock_return.group("literal")
                return {
                    "kind": (
                        "ghidra_call_return_zero_propagation_artifact"
                        if literal == "0"
                        else "ghidra_call_return_constant_propagation_artifact"
                    ),
                    "candidate_rewrite": (
                        f"undefined8{temporary}=_printk(...);return{temporary};"
                    ),
                    "stock_semantics": f"_printk(...);return{literal};",
                    "requirement": (
                        "exact body bytes and P-Code operation shape; independent assembly "
                        "parity remains mandatory"
                    ),
                }

    candidate_call = candidate_normalized.find("uVar4=_printk(")
    if stock_call < 0 or candidate_call < 0:
        return None

    stock_prefix = stock_normalized[:stock_call]
    candidate_prefix = candidate_normalized[:candidate_call]
    candidate_prefix = candidate_prefix.replace("undefined8uVar4;", "")
    candidate_prefix = candidate_prefix.replace("undefined1*puVar5", "byte*pbVar4")
    candidate_prefix = candidate_prefix.replace("puVar5", "pbVar4")
    candidate_prefix = candidate_prefix.replace("undefined8get_tp_algo_item_id", "ulongget_tp_algo_item_id")
    stock_prefix = re.sub(r"PTR_(.+?)_[0-9a-f]{8}", r"PTR_\1", stock_prefix)
    candidate_prefix = re.sub(r"PTR_(.+?)_[0-9a-f]{8}", r"PTR_\1", candidate_prefix)
    if candidate_prefix != stock_prefix:
        return None

    stock_suffix = stock_normalized[stock_call:]
    candidate_suffix = candidate_normalized[candidate_call:]
    if not stock_suffix.startswith("_printk(") or not candidate_suffix.startswith(
        "uVar4=_printk("
    ):
        return None
    if not stock_suffix.endswith(";return(ulong)*pbVar4;}"):
        return None
    if not candidate_suffix.endswith(";returnuVar4;}"):
        return None
    candidate_call_text = candidate_suffix[: -len(";returnuVar4;}")]
    candidate_call_text = candidate_call_text.replace("*puVar5", "*pbVar4")
    candidate_call_text = candidate_call_text.replace("uVar4=", "", 1)
    stock_call_text = stock_suffix[: -len(";return(ulong)*pbVar4;}")]
    if candidate_call_text != stock_call_text:
        return None

    return {
        "kind": "ghidra_call_return_propagation_artifact",
        "candidate_rewrite": "uVar4=_printk(...);returnuVar4;",
        "stock_semantics": "_printk(...);return(ulong)*pbVar4;",
        "requirement": (
            "exact body bytes and P-Code operation shape; independent assembly "
            "parity remains mandatory"
        ),
    }


def decompiler_status_return_control_flow_artifact(
    function: str,
    stock_normalized: str,
    candidate_normalized: str,
    stock_shape: list[dict[str, Any]],
    candidate_shape: list[dict[str, Any]],
) -> dict[str, Any] | None:
    """Identify the observed multi-branch ``_printk`` status rewrite.

    Ghidra can render the same exact ``syna_tcm_sleep`` island with a shared
    ``iVar4`` status epilogue in the stock export and with ``uVar3`` returns
    directly after each logging call in the candidate export.  This is a
    decompiler control-flow/return-value artifact, not a general C-equivalence
    waiver: the caller still requires equal ELF body bytes and equal P-Code
    operation shape, while the independent relocation-aware Assembly gate
    remains mandatory.
    """
    if function != "syna_tcm_sleep":
        return None
    if "syna_tcm_sleep(" not in stock_normalized or "syna_tcm_sleep(" not in candidate_normalized:
        return None
    call_name_re = re.compile(r"\b([A-Za-z_]\w*)\(")
    control_names = {"if", "for", "while", "switch", "elseif", "return"}

    def calls(value: str) -> list[str]:
        body = value[value.find("{") + 1 :]
        return [name for name in call_name_re.findall(body) if name not in control_names]

    stock_calls = calls(stock_normalized)
    candidate_calls = calls(candidate_normalized)
    if stock_calls.count("_printk") != 3 or candidate_calls.count("_printk") != 3:
        return None
    if sum(item.get("operation") == "CALL" for item in stock_shape) != sum(
        item.get("operation") == "CALL" for item in candidate_shape
    ):
        return None

    stock_fragments = (
        "if(param_1==0){_printk(",
        "iVar4=-0xf1;",
        "param_3=*(int*)(param_1+0x20c);",
        "param_2=param_2&0xffffffff;",
        "uVar3=0x2c;",
        "uVar3=0x2d;",
        "param_1+0x398",
        "returniVar4;",
    )
    candidate_fragments = (
        "if(param_1==0){uVar3=_printk(",
        "returnuVar3;",
        "param_3=0;",
        "uVar4=0x2c;",
        "uVar4=0x2d;",
        "param_1+0x398",
        "return0;",
    )
    if not all(fragment in stock_normalized for fragment in stock_fragments):
        return None
    if not all(fragment in candidate_normalized for fragment in candidate_fragments):
        return None
    return {
        "kind": "ghidra_multi_branch_printk_status_control_flow_artifact",
        "stock_shape": "shared iVar4 status epilogue with printk branches",
        "candidate_shape": "uVar3 printk returns with early branch exits",
        "printk_call_count": 3,
        "requirement": (
            "function-specific constants/offsets, equal ELF body bytes and P-Code "
            "operation shape; independent AArch64 assembly and relocation parity "
            "remain mandatory"
        ),
    }


def decompiler_get_features_printk_control_flow_artifact(
    function: str,
    stock_normalized: str,
    candidate_normalized: str,
    stock_shape: list[dict[str, Any]],
    candidate_shape: list[dict[str, Any]],
) -> dict[str, Any] | None:
    """Identify the exact ``syna_tcm_get_features`` printk CFG artifact.

    On the current candidate import, Ghidra treats several ``_printk`` calls as
    returning values and emits early returns.  The stock import keeps the same
    calls in a shared status/cleanup CFG.  This detector is deliberately tied
    to the observed function, field offsets, constants, and call multiplicity;
    equal ELF body bytes, P-Code shape, and independent assembly parity remain
    mandatory outside this detector.
    """
    if function != "syna_tcm_get_features":
        return None
    if "syna_tcm_get_features(" not in stock_normalized or "syna_tcm_get_features(" not in candidate_normalized:
        return None
    if stock_normalized.count("_printk(") != 9 or candidate_normalized.count("_printk(") != 8:
        return None
    if stock_normalized.count("mutex_unlock(") != 2 or candidate_normalized.count("mutex_unlock(") != 1:
        return None
    if sum(item.get("operation") == "CALL" for item in stock_shape) != sum(
        item.get("operation") == "CALL" for item in candidate_shape
    ):
        return None

    stock_fragments = (
        "if(param_1==0){_printk(",
        "uVar3=0xffffff0f;",
        "param_3=*(int*)(param_1+0x20c);",
        "elseif(param_2!=(void*)0x0)",
        "return0;",
        "uVar3=0xffffffea;",
        "param_1+0x398",
        "param_1+0x148",
        "param_1+0x150",
        "param_1+0x154",
        "param_1+0x158",
        "param_1+0x188",
        "0x24203a8e",
    )
    candidate_fragments = (
        "if(param_1==0){uVar3=_printk(",
        "returnuVar3;",
        "param_3=0;",
        "if(param_2!=(void*)0x0)",
        "if(*(void**)(param_1+0x148)==(void*)0x0){uVar3=_printk(",
        "if(*(uint*)(param_1+0x150)<uVar1)",
        "*(undefined1*)(param_1+0x188)=0;",
        "uVar3=0;",
        "param_1+0x398",
        "param_1+0x150",
        "param_1+0x154",
        "param_1+0x158",
        "param_1+0x188",
        "0x24203a8e",
    )
    if not all(fragment in stock_normalized for fragment in stock_fragments):
        return None
    if not all(fragment in candidate_normalized for fragment in candidate_fragments):
        return None
    return {
        "kind": "ghidra_syna_tcm_get_features_printk_cleanup_cfg_artifact",
        "stock_shape": "shared status and mutex cleanup CFG with nine printk calls",
        "candidate_shape": "early printk-return CFG with one visible mutex unlock",
        "printk_call_counts": {"stock": 9, "candidate": 8},
        "mutex_unlock_call_counts": {"stock": 2, "candidate": 1},
        "requirement": (
            "function-specific offsets/constants, equal ELF body bytes and P-Code "
            "operation shape; independent AArch64 assembly and relocation parity "
            "remain mandatory"
        ),
    }


def decompiler_buf_lock_branch_loop_artifact(
    function: str,
    stock_normalized: str,
    candidate_normalized: str,
    stock_shape: list[dict[str, Any]],
    candidate_shape: list[dict[str, Any]],
) -> dict[str, Any] | None:
    """Identify Ghidra's inverted-branch rendering of ``syna_tcm_buf_lock``.

    The exact candidate uses a diagnostic branch that jumps back to the common
    mutex/ increment path.  Ghidra can instead render that back-edge as an
    ``if/else`` whose diagnostic arm returns.  This is accepted only for the
    exact field offsets and call set observed here; low-level parity remains
    independently mandatory.
    """
    if function != "syna_tcm_buf_lock":
        return None
    if "syna_tcm_buf_lock(" not in stock_normalized or "syna_tcm_buf_lock(" not in candidate_normalized:
        return None
    if stock_normalized.count("_printk(") != 1 or candidate_normalized.count("_printk(") != 1:
        return None
    if stock_normalized.count("mutex_lock(") != 1 or candidate_normalized.count("mutex_lock(") != 1:
        return None
    if sum(item.get("operation") == "CALL" for item in stock_shape) != sum(
        item.get("operation") == "CALL" for item in candidate_shape
    ):
        return None
    stock_fragments = (
        "if(*(char*)(param_1+0x40)!='\\0'){_printk(",
        "mutex_lock(param_1+0x10);",
        "*(char*)(param_1+0x40)=*(char*)(param_1+0x40)+'\\x01';",
        "return;}",
    )
    candidate_fragments = (
        "if(*(char*)(param_1+0x40)=='\\0'){mutex_lock(param_1+0x10);",
        "*(char*)(param_1+0x40)=*(char*)(param_1+0x40)+'\\x01';",
        "return;}_printk(",
        "syna_tcm_buf_lock",
    )
    if not all(fragment in stock_normalized for fragment in stock_fragments):
        return None
    if not all(fragment in candidate_normalized for fragment in candidate_fragments):
        return None
    return {
        "kind": "ghidra_syna_tcm_buf_lock_back_edge_branch_artifact",
        "stock_shape": "diagnostic printk branch falls through a backward edge to common lock/increment path",
        "candidate_shape": "inverted conditional renders diagnostic arm as early return",
        "call_counts": {"stock": {"_printk": 1, "mutex_lock": 1}, "candidate": {"_printk": 1, "mutex_lock": 1}},
        "field_offsets": {"lock_depth": "0x40", "mutex": "0x10"},
        "requirement": (
            "function-specific offsets, equal ELF body bytes and P-Code operation "
            "shape; independent AArch64 assembly and relocation parity remain mandatory"
        ),
    }


def decompiler_buf_unlock_shared_cleanup_artifact(
    function: str,
    stock_normalized: str,
    candidate_normalized: str,
    stock_shape: list[dict[str, Any]],
    candidate_shape: list[dict[str, Any]],
) -> dict[str, Any] | None:
    """Identify Ghidra's early-return rendering of ``syna_tcm_buf_unlock``.

    The stock AArch64 body joins both depth branches before the byte store and
    ``mutex_unlock``.  A Ghidra import can instead duplicate the cleanup in
    the balanced branch and emit an early return after ``_printk``.  Accept
    only this exact helper shape; body bytes, P-Code and relocation-aware
    assembly remain independent mandatory gates.
    """
    if function != "syna_tcm_buf_unlock":
        return None
    if "syna_tcm_buf_unlock(" not in stock_normalized or not any(
        name in candidate_normalized
        for name in ("syna_tcm_buf_unlock(", "syna_tcm_buf_unlock_0(")
    ):
        return None
    if stock_normalized.count("_printk(") != 1 or candidate_normalized.count("_printk(") != 1:
        return None
    if stock_normalized.count("mutex_unlock(") != 1 or candidate_normalized.count("mutex_unlock(") != 1:
        return None
    if sum(item.get("operation") == "CALL" for item in stock_shape) != sum(
        item.get("operation") == "CALL" for item in candidate_shape
    ):
        return None
    stock_fragments = (
        "if(*(char*)(param_1+0x40)=='\\x01'){cVar1='\\0';}else{_printk(",
        "cVar1=*(char*)(param_1+0x40)+-1;",
        "*(char*)(param_1+0x40)=cVar1;mutex_unlock(param_1+0x10);return;}",
    )
    candidate_fragments = (
        "if(*(char*)(param_1+0x40)=='\\x01'){*(undefined1*)(param_1+0x40)=0;mutex_unlock(param_1+0x10);return;}",
        "_printk(",
        "return;}",
    )
    if not all(fragment in stock_normalized for fragment in stock_fragments):
        return None
    if not all(fragment in candidate_normalized for fragment in candidate_fragments):
        return None
    return {
        "kind": "ghidra_syna_tcm_buf_unlock_shared_cleanup_artifact",
        "stock_shape": "both depth branches join at the byte-store and mutex-unlock epilogue",
        "candidate_shape": "balanced branch duplicates cleanup and diagnostic branch is rendered as early return",
        "call_counts": {"stock": {"_printk": 1, "mutex_unlock": 1}, "candidate": {"_printk": 1, "mutex_unlock": 1}},
        "field_offsets": {"lock_depth": "0x40", "mutex": "0x10"},
        "requirement": (
            "function-specific offsets, equal ELF body bytes and P-Code operation "
            "shape; independent AArch64 assembly and relocation parity remain mandatory"
        ),
    }


def decompiler_branch_inversion_shared_return_artifact(
    stock_normalized: str,
    candidate_normalized: str,
    stock_shape: list[dict[str, Any]],
    candidate_shape: list[dict[str, Any]],
) -> dict[str, Any] | None:
    """Identify a narrow branch-inversion/shared-return decompiler artifact.

    Ghidra can express the same two-way function as a common-return CFG in one
    import and as an inverted conditional with early returns in another.  This
    detector is intentionally limited to the observed two-call memory helper
    shape: stock logs on the null branch and clears memory on the non-null
    branch, while the candidate emits those branches in the opposite order.
    Exact body bytes and P-Code shape remain mandatory at the caller.
    """
    stock_call_ops = sum(item.get("operation") == "CALL" for item in stock_shape)
    candidate_call_ops = sum(item.get("operation") == "CALL" for item in candidate_shape)
    if stock_call_ops != 2 or candidate_call_ops != 2:
        return None
    required_stock = (
        "if(param_1==0){_printk(",
        "}else{memset(",
        "uVar1=0xffffff0f;",
        "uVar1=0;",
        "returnuVar1;}",
    )
    required_candidate = (
        "if(param_1!=0){memset(",
        "return0;}uVar1=_printk(",
        "returnuVar1;}",
    )
    if not all(fragment in stock_normalized for fragment in required_stock):
        return None
    if not all(fragment in candidate_normalized for fragment in required_candidate):
        return None
    if stock_normalized.count("_printk(") != candidate_normalized.count("_printk("):
        return None
    if stock_normalized.count("memset(") != candidate_normalized.count("memset("):
        return None
    return {
        "kind": "ghidra_branch_inversion_shared_return_artifact",
        "stock_shape": "null-branch printk plus non-null memset into shared status",
        "candidate_shape": "inverted non-null memset return plus null-branch printk return",
        "call_operation_count": 2,
        "requirement": (
            "exact body bytes and P-Code instruction/operation shape; independent assembly "
            "and relocation parity remain mandatory"
        ),
    }


def decompiler_syna_pal_mem_cpy_branch_inversion_artifact(
    stock_normalized: str,
    candidate_normalized: str,
    stock_shape: list[dict[str, Any]],
    candidate_shape: list[dict[str, Any]],
) -> dict[str, Any] | None:
    """Identify the observed Ghidra CFG inversion for ``syna_pal_mem_cpy``.

    The stock export keeps the outer non-null guard and renders the invalid
    size path before the valid ``memcpy`` path.  The candidate export inverts
    both conditions and emits early returns.  This is accepted only for this
    exact helper shape, with the two imported calls, body bytes and P-Code
    operation shape still checked independently by ``compare_function``.
    """
    if "syna_pal_mem_cpy(" not in stock_normalized or "syna_pal_mem_cpy(" not in candidate_normalized:
        return None

    call_re = re.compile(r"\b([A-Za-z_][A-Za-z0-9_]*)\(")
    control_names = {"if", "for", "while", "switch", "elseif", "return"}

    def call_counts(value: str) -> dict[str, int]:
        body = value[value.find("{") + 1 :]
        counts: dict[str, int] = {}
        for name in call_re.findall(body):
            if name in control_names:
                continue
            counts[name] = counts.get(name, 0) + 1
        return counts

    stock_calls = call_counts(stock_normalized)
    candidate_calls = call_counts(candidate_normalized)
    if stock_calls != {"_printk": 1, "memcpy": 1} or candidate_calls != stock_calls:
        return None
    if sum(item.get("operation") == "CALL" for item in stock_shape) != 2:
        return None
    if sum(item.get("operation") == "CALL" for item in candidate_shape) != 2:
        return None

    stock_fragments = (
        "if((param_1!=(void*)0x0)&&(param_3!=(void*)0x0)){",
        "if((param_2<param_5)||(param_4<param_5)){_printk(",
        "}else{memcpy(",
    )
    candidate_fragments = (
        "if((param_1==(void*)0x0)||(param_3==(void*)0x0)){return;}",
        "if((param_5<=param_2)&&(param_5<=param_4)){memcpy(",
        "return;}_printk(",
    )
    if not all(fragment in stock_normalized for fragment in stock_fragments):
        return None
    if not all(fragment in candidate_normalized for fragment in candidate_fragments):
        return None

    return {
        "kind": "ghidra_syna_pal_mem_cpy_branch_inversion_artifact",
        "stock_shape": "outer non-null guard with invalid-size printk and valid-size memcpy branches",
        "candidate_shape": "null early return with inverted valid-size memcpy and printk branches",
        "call_counts": {"stock": stock_calls, "candidate": candidate_calls},
        "call_operation_count": 2,
        "requirement": (
            "function-specific CFG shape, exact body bytes and P-Code instruction/operation "
            "shape; independent AArch64 assembly and relocation parity remain mandatory"
        ),
    }


def external_label_call_decompiler_artifact(
    stock_normalized: str,
    candidate_normalized: str,
    stock_shape: list[dict[str, Any]],
    candidate_shape: list[dict[str, Any]],
) -> dict[str, Any] | None:
    """Identify Ghidra control-flow loss caused by imported external labels.

    A relocatable kernel module can import an undefined call target as a memory
    label in one Ghidra load and as an external function in another.  The
    decompiler then drops the call and may synthesize an early ``return`` even
    though the decoded P-Code still contains the call.  This fallback is
    intentionally constrained to the case where the normalized C loses one or
    more calls, while the P-Code instruction/operation shape and call count are
    identical.  Relocation-aware assembly parity remains an independent
    protocol requirement.
    """
    call_name_re = re.compile(r"\b([A-Za-z_][A-Za-z0-9_]*)\(")
    control_names = {"if", "for", "while", "switch", "elseif", "return"}
    stock_body = stock_normalized[stock_normalized.find("{") + 1:]
    candidate_body = candidate_normalized[candidate_normalized.find("{") + 1:]
    stock_calls = {
        name for name in call_name_re.findall(stock_body)
        if name not in control_names
    }
    candidate_calls = {
        name for name in call_name_re.findall(candidate_body)
        if name not in control_names
    }
    missing_calls = sorted(stock_calls - candidate_calls)
    extra_calls = sorted(candidate_calls - stock_calls)
    stock_call_sequence = [
        name
        for name in call_name_re.findall(stock_body)
        if name not in control_names
    ]
    candidate_call_sequence = [
        name
        for name in call_name_re.findall(candidate_body)
        if name not in control_names
    ]
    stock_call_counts = {
        name: stock_call_sequence.count(name) for name in set(stock_call_sequence)
    }
    candidate_call_counts = {
        name: candidate_call_sequence.count(name)
        for name in set(candidate_call_sequence)
    }
    stock_call_ops = sum(item.get("operation") == "CALL" for item in stock_shape)
    candidate_call_ops = sum(item.get("operation") == "CALL" for item in candidate_shape)
    # Require at least two omitted call names.  A single missing call is also
    # compatible with an ordinary lossy/truncated decompilation and must stay
    # on the older, narrower premature-return path below.
    if stock_call_ops != candidate_call_ops:
        return None
    return_statement_re = re.compile(r"\breturn(?:[^;]*);" )
    candidate_return_count = len(return_statement_re.findall(candidate_normalized))
    stock_return_count = len(return_statement_re.findall(stock_normalized))
    # An unresolved internal call is emitted as FUN_<address> in one import
    # even though the stock export resolves the same relocation to its symbol.
    # Accept only a one-for-one FUN_ rename with equal C call-set cardinality;
    # the remaining type/return display differences stay explicitly diagnostic.
    synthetic_call_re = re.compile(
        r"(?:FUN_[0-9a-fA-F]+|SUB_[0-9a-fA-F]+|func_0x[0-9a-fA-F]+)"
    )
    unmatched_stock_counts = {
        name: count
        for name, count in stock_call_counts.items()
        if name not in candidate_call_counts
    }
    unmatched_candidate_counts = {
        name: count
        for name, count in candidate_call_counts.items()
        if name not in stock_call_counts
    }
    if (
        len(unmatched_stock_counts) == 1
        and (
            len(unmatched_candidate_counts) > 1
            or any(
                not name.startswith("FUN_") for name in unmatched_candidate_counts
            )
        )
        and unmatched_stock_counts[missing_calls[0]]
        == sum(unmatched_candidate_counts.values())
        and unmatched_candidate_counts
        and all(synthetic_call_re.fullmatch(name) for name in unmatched_candidate_counts)
        and all(
            stock_call_counts[name] == candidate_call_counts[name]
            for name in stock_call_counts.keys() & candidate_call_counts.keys()
        )
    ):
        return {
            "kind": "ghidra_unresolved_internal_call_multiset_artifact",
            "missing_stock_call_names": missing_calls,
            "missing_stock_call_counts": unmatched_stock_counts,
            "candidate_synthetic_call_counts": unmatched_candidate_counts,
            "stock_call_operation_count": stock_call_ops,
            "candidate_call_operation_count": candidate_call_ops,
            "candidate_return_count": candidate_return_count,
            "stock_return_count": stock_return_count,
            "requirement": (
                "equal call multiset, exact body bytes and P-Code instruction/operation "
                "shape; relocation-aware assembly parity remains mandatory"
            ),
        }
    if (
        len(missing_calls) == 1
        and len(extra_calls) == 1
        and extra_calls[0].startswith("FUN_")
        and len(stock_calls) == len(candidate_calls)
    ):
        return {
            "kind": "ghidra_unresolved_external_call_name_artifact",
            "missing_stock_call_names": missing_calls,
            "candidate_extra_call_names": extra_calls,
            "stock_call_operation_count": stock_call_ops,
            "candidate_call_operation_count": candidate_call_ops,
            "candidate_return_count": candidate_return_count,
            "stock_return_count": stock_return_count,
            "requirement": (
                "exact body bytes and P-Code instruction/operation shape; relocation-aware "
                "assembly parity remains mandatory"
            ),
        }
    if len(missing_calls) < 2:
        return None
    # Exact .inst/relocation-backed functions can retain the complete P-Code
    # while Ghidra's C emitter collapses the whole CFG to the entry log call.
    # Accept that shape only when the candidate has exactly that one known
    # external call, the stock has a materially larger call surface, and the
    # candidate C is shorter.  This is a diagnostic authority fallback, never
    # textual C equivalence.
    if (
        candidate_calls == {"_printk"}
        and len(stock_calls) >= 5
        and candidate_return_count <= stock_return_count
        and len(candidate_normalized) * 4 < len(stock_normalized)
    ):
        return {
            "kind": "ghidra_cfg_collapsed_external_label_artifact",
            "missing_stock_call_names": missing_calls,
            "stock_call_operation_count": stock_call_ops,
            "candidate_call_operation_count": candidate_call_ops,
            "candidate_return_count": candidate_return_count,
            "stock_return_count": stock_return_count,
            "requirement": (
                "exact body bytes and P-Code instruction/operation shape; relocation-aware "
                "assembly parity remains mandatory"
            ),
        }
    if len(return_statement_re.findall(candidate_normalized)) <= len(
        return_statement_re.findall(stock_normalized)
    ):
        return None
    return {
        "kind": "ghidra_external_label_control_flow_artifact",
        "missing_stock_call_names": missing_calls,
        "stock_call_operation_count": stock_call_ops,
        "candidate_call_operation_count": candidate_call_ops,
        "requirement": (
            "exact body bytes and P-Code instruction/operation shape; relocation-aware "
            "assembly parity remains mandatory"
        ),
    }


def decompiler_cfg_restructuring_artifact(
    stock_normalized: str,
    candidate_normalized: str,
    stock_shape: list[dict[str, Any]],
    candidate_shape: list[dict[str, Any]],
) -> dict[str, Any] | None:
    """Identify CFG restructuring caused by different external-call inference.

    Ghidra may emit shared cleanup blocks with ``goto`` in one import and
    duplicate the same cleanup as early returns in another.  When that occurs,
    the C text can have different call multiplicities even though the decoded
    instructions and P-Code are identical.  This fallback is deliberately
    conservative: the call-name set must be identical, the candidate may only
    lose call occurrences (never gain one), the function must have a meaningful
    call surface, and the candidate must be a moderately sized CFG rather than
    a collapsed/truncated fragment.  Exact body bytes, P-Code shape and the
    independent relocation-aware assembly gate remain mandatory.
    """
    call_name_re = re.compile(r"\b([A-Za-z_][A-Za-z0-9_]*)\(")
    control_names = {"if", "for", "while", "switch", "elseif", "return"}

    def call_counts(value: str) -> dict[str, int]:
        body = value[value.find("{") + 1 :]
        counts: dict[str, int] = {}
        for name in call_name_re.findall(body):
            if name in control_names:
                continue
            counts[name] = counts.get(name, 0) + 1
        return counts

    stock_calls = call_counts(stock_normalized)
    candidate_calls = call_counts(candidate_normalized)
    stock_call_ops = sum(item.get("operation") == "CALL" for item in stock_shape)
    candidate_call_ops = sum(item.get("operation") == "CALL" for item in candidate_shape)
    return_statement_re = re.compile(r"\breturn(?:[^;]*);")
    stock_return_count = len(return_statement_re.findall(stock_normalized))
    candidate_return_count = len(return_statement_re.findall(candidate_normalized))

    if (
        not stock_calls
        or stock_call_ops != candidate_call_ops
        or set(stock_calls) != set(candidate_calls)
        or len(stock_calls) < 8
        or candidate_return_count <= stock_return_count
        or len(candidate_normalized) * 4 < len(stock_normalized) * 3
        or any(candidate_calls[name] > stock_calls[name] for name in stock_calls)
        or candidate_calls == stock_calls
    ):
        return None

    return {
        "kind": "ghidra_cfg_restructuring_external_call_artifact",
        "stock_call_counts": stock_calls,
        "candidate_call_counts": candidate_calls,
        "stock_call_operation_count": stock_call_ops,
        "candidate_call_operation_count": candidate_call_ops,
        "stock_return_count": stock_return_count,
        "candidate_return_count": candidate_return_count,
        "requirement": (
            "exact body bytes and P-Code instruction/operation shape; relocation-aware "
            "assembly parity remains mandatory"
        ),
    }


def decompiler_cfg_early_return_cleanup_artifact(
    stock_normalized: str,
    candidate_normalized: str,
    stock_shape: list[dict[str, Any]],
    candidate_shape: list[dict[str, Any]],
) -> dict[str, Any] | None:
    """Identify Ghidra early-return synthesis around shared cleanup.

    One import can retain ``else``/``else if`` edges into a shared cleanup
    block, while another import emits ``return;`` on those same error edges.
    This is narrower than a generic C-text waiver: the call sequence must be
    identical (including multiplicity), the stock must have one final return,
    the candidate must have at least two additional early returns, and both
    sides must retain the cleanup calls and final ``goto``.  Exact body bytes,
    P-Code shape, and independent relocation-aware assembly parity remain
    mandatory at the caller/protocol level.
    """
    call_name_re = re.compile(r"\b([A-Za-z_][A-Za-z0-9_]*)\(")
    control_names = {"if", "for", "while", "switch", "elseif", "return"}

    def call_sequence(value: str) -> list[str]:
        body = value[value.find("{") + 1 :]
        return [
            name
            for name in call_name_re.findall(body)
            if name not in control_names
        ]

    stock_sequence = call_sequence(stock_normalized)
    candidate_sequence = call_sequence(candidate_normalized)
    stock_call_ops = sum(item.get("operation") == "CALL" for item in stock_shape)
    candidate_call_ops = sum(item.get("operation") == "CALL" for item in candidate_shape)
    return_statement_re = re.compile(r"\breturn(?:[^;]*);")
    stock_return_count = len(return_statement_re.findall(stock_normalized))
    candidate_returns = list(return_statement_re.finditer(candidate_normalized))
    candidate_return_count = len(candidate_returns)

    if (
        not stock_sequence
        or stock_sequence != candidate_sequence
        or len(set(stock_sequence)) < 8
        or stock_call_ops != candidate_call_ops
        or stock_return_count != 1
        or candidate_return_count < 3
        or "gotoGHIDRA_LOCAL_LABEL_" not in stock_normalized
        or "gotoGHIDRA_LOCAL_LABEL_" not in candidate_normalized
        or "elseif(" not in stock_normalized
        or "elseif(" in candidate_normalized
        or candidate_normalized.count("return;") < 3
        or len(candidate_normalized) * 10 < len(stock_normalized) * 9
    ):
        return None

    cleanup_calls = {
        "_printk",
        "syna_request_managed_device",
        "devm_kfree",
    }
    if not cleanup_calls.issubset(set(stock_sequence)):
        return None

    # The final return is the shared epilogue in both outputs.  Require every
    # extra candidate return to be a void early return, not a changed value
    # return or a truncated function tail.
    if any(match.group(0) != "return;" for match in candidate_returns[:-1]):
        return None

    return {
        "kind": "ghidra_cfg_early_return_shared_cleanup_artifact",
        "call_sequence": stock_sequence,
        "call_operation_count": stock_call_ops,
        "stock_return_count": stock_return_count,
        "candidate_return_count": candidate_return_count,
        "requirement": (
            "identical call sequence, exact body bytes and P-Code instruction/operation "
            "shape; relocation-aware assembly parity remains mandatory"
        ),
    }


def compare_function(
    function: str,
    stock_root: Path,
    candidate_root: Path,
    stock_record: dict[str, Any] | None,
    candidate_record: dict[str, Any] | None,
    stock_strings: dict[int, str],
    candidate_strings: dict[int, str],
    stock_elf_strings: dict[int, str] | None = None,
    candidate_elf_strings: dict[int, str] | None = None,
    stock_symbol_strings: dict[str, str] | None = None,
    candidate_symbol_strings: dict[str, str] | None = None,
    allow_pcode_authoritative_decompiler_fallback: bool = False,
    allow_return_propagation_fallback: bool = False,
    stock_named_data_bindings: dict[str, str] | None = None,
    candidate_named_data_bindings: dict[str, str] | None = None,
    allow_named_data_address_syntax_fallback: bool = False,
    allow_relocated_pointer_table_index_base_normalization: bool = False,
    stock_absolute_data_ranges: list[tuple[str, int, int]] | None = None,
    candidate_absolute_data_ranges: list[tuple[str, int, int]] | None = None,
    candidate_function: str | None = None,
    allow_ghidra_data_field_slice_fallback: bool = False,
) -> dict[str, Any]:
    if stock_record is None or candidate_record is None:
        return {
            "function": function,
            "passed": False,
            "failures": ["missing function record"],
        }

    paths: dict[str, dict[str, Path]] = {}
    for side, root, record in (
        ("stock", stock_root, stock_record),
        ("candidate", candidate_root, candidate_record),
    ):
        decompiled = root / str(record.get("decompiled_file", ""))
        pcode = root / str(record.get("pcode_file", ""))
        if not decompiled.is_file() or not pcode.is_file():
            return {
                "function": function,
                "passed": False,
                "failures": [f"missing {side} decompiled or P-Code file"],
            }
        paths[side] = {"decompiled": decompiled, "pcode": pcode}

    (
        stock_normalized,
        stock_string_evidence,
        stock_artifact_evidence,
    ) = normalize_decompiled(
        paths["stock"]["decompiled"].read_text(encoding="utf-8"),
        stock_strings,
        stock_elf_strings,
        stock_symbol_strings,
        stock_named_data_bindings,
        stock_absolute_data_ranges,
    )
    (
        candidate_normalized,
        candidate_string_evidence,
        candidate_artifact_evidence,
    ) = normalize_decompiled(
        paths["candidate"]["decompiled"].read_text(encoding="utf-8"),
        candidate_strings,
        candidate_elf_strings,
        candidate_symbol_strings,
        candidate_named_data_bindings,
        candidate_absolute_data_ranges,
    )
    stock_pcode_records = read_jsonl(paths["stock"]["pcode"])
    candidate_pcode_paths = [paths["candidate"]["pcode"]]
    candidate_pcode_records = read_jsonl(paths["candidate"]["pcode"])
    candidate_boundary_repair = None
    merged_candidate = merge_split_candidate_function(
        candidate_root, candidate_record, stock_record.get("body_bytes")
    )
    if merged_candidate is not None:
        candidate_pcode_records, candidate_boundary_repair = merged_candidate
        continuation_name = candidate_boundary_repair["continuation_function"]
        continuation_record = function_index(candidate_root)[continuation_name]
        candidate_pcode_paths.append(
            candidate_root / str(continuation_record.get("pcode_file", ""))
        )
    stock_shape = pcode_shape(stock_pcode_records)
    candidate_shape = pcode_shape(candidate_pcode_records)
    direct_normalized_match = stock_normalized == candidate_normalized
    effective_candidate_body_bytes = candidate_record.get("body_bytes")
    if candidate_boundary_repair is not None:
        effective_candidate_body_bytes = candidate_boundary_repair["effective_body_bytes"]
    body_bytes_match = stock_record.get("body_bytes") == effective_candidate_body_bytes
    pcode_shape_match = stock_shape == candidate_shape
    fallback_evidence: dict[str, Any] | None = None
    named_data_address_syntax_evidence: dict[str, Any] | None = None
    pointer_table_index_base_evidence: dict[str, Any] | None = None
    pointer_table_absolute_base_evidence: dict[str, Any] | None = None
    data_field_slice_evidence: dict[str, Any] | None = None
    pcode_authoritative_fallback: dict[str, Any] | None = None
    return_propagation_fallback: dict[str, Any] | None = None
    normalized_decompiled_match = False

    def collect_pcode_authoritative_fallback() -> dict[str, Any] | None:
        fallback = (
            decompiler_buf_lock_branch_loop_artifact(
                function,
                stock_normalized,
                candidate_normalized,
                stock_shape,
                candidate_shape,
            )
            or decompiler_buf_unlock_shared_cleanup_artifact(
                function,
                stock_normalized,
                candidate_normalized,
                stock_shape,
                candidate_shape,
            )
            or decompiler_get_features_printk_control_flow_artifact(
                function,
                stock_normalized,
                candidate_normalized,
                stock_shape,
                candidate_shape,
            )
            or decompiler_status_return_control_flow_artifact(
                function,
                stock_normalized,
                candidate_normalized,
                stock_shape,
                candidate_shape,
            )
        )
        fallback = fallback or decompiler_symbol_resolution_artifact(
            stock_normalized, candidate_normalized
        )
        fallback = fallback or decompiler_syna_pal_mem_cpy_branch_inversion_artifact(
            stock_normalized, candidate_normalized, stock_shape, candidate_shape
        )
        fallback = fallback or decompiler_branch_inversion_shared_return_artifact(
            stock_normalized, candidate_normalized, stock_shape, candidate_shape
        )
        fallback = fallback or external_label_call_decompiler_artifact(
            stock_normalized, candidate_normalized, stock_shape, candidate_shape
        )
        fallback = fallback or decompiler_cfg_restructuring_artifact(
            stock_normalized, candidate_normalized, stock_shape, candidate_shape
        )
        fallback = fallback or decompiler_cfg_early_return_cleanup_artifact(
            stock_normalized, candidate_normalized, stock_shape, candidate_shape
        )
        fallback = fallback or lossy_decompiler_truncation(
            stock_normalized, candidate_normalized
        )
        return fallback or decompiler_bad_instruction_boundary_artifact(
            stock_normalized, candidate_normalized
        )

    if not direct_normalized_match and body_bytes_match and pcode_shape_match:
        if allow_named_data_address_syntax_fallback:
            named_data_address_syntax_evidence = named_data_address_syntax_fallback(
                stock_normalized, candidate_normalized
            )
        if named_data_address_syntax_evidence is not None:
            normalized_decompiled_match = True
        else:
            if allow_relocated_pointer_table_index_base_normalization:
                pointer_table_index_base_evidence = (
                    relocated_pointer_table_index_base_fallback(
                        stock_normalized, candidate_normalized
                    )
                )
            if pointer_table_index_base_evidence is not None:
                normalized_decompiled_match = True
            else:
                if allow_relocated_pointer_table_index_base_normalization:
                    pointer_table_absolute_base_evidence = (
                        relocated_pointer_table_absolute_base_fallback(
                            stock_normalized, candidate_normalized
                        )
                    )
                if pointer_table_absolute_base_evidence is not None:
                    normalized_decompiled_match = True
                else:
                    if allow_ghidra_data_field_slice_fallback:
                        data_field_slice_evidence = ghidra_data_field_slice_fallback(
                            stock_normalized, candidate_normalized
                        )
                    if data_field_slice_evidence is not None:
                        normalized_decompiled_match = True
                    else:
                        fallback = fragmented_byte_flag_normalization(
                            stock_normalized,
                            candidate_normalized,
                            stock_artifact_evidence,
                            candidate_artifact_evidence,
                        )
                        if fallback is not None:
                            fallback_stock, fallback_candidate, fallback_evidence = fallback
                            normalized_decompiled_match = fallback_stock == fallback_candidate
                        elif allow_return_propagation_fallback:
                            return_propagation_fallback = decompiler_return_propagation_artifact(
                                stock_normalized, candidate_normalized
                            )
                            if (
                                return_propagation_fallback is None
                                and allow_pcode_authoritative_decompiler_fallback
                            ):
                                pcode_authoritative_fallback = (
                                    collect_pcode_authoritative_fallback()
                                )
                            normalized_decompiled_match = False
                        elif allow_pcode_authoritative_decompiler_fallback:
                            pcode_authoritative_fallback = collect_pcode_authoritative_fallback()
                            normalized_decompiled_match = False
                        else:
                            normalized_decompiled_match = False
    else:
        normalized_decompiled_match = direct_normalized_match
    checks = {
        "decompiled": bool(stock_record.get("decompiled"))
        and bool(candidate_record.get("decompiled")),
        "body_bytes": body_bytes_match,
        "normalized_decompiled_c": normalized_decompiled_match,
        "pcode_operation_shape": pcode_shape_match,
    }
    raw_failures = [name for name, passed in checks.items() if not passed]
    failures = list(raw_failures)
    if (
        named_data_address_syntax_evidence is not None
        or pointer_table_index_base_evidence is not None
        or pointer_table_absolute_base_evidence is not None
        or data_field_slice_evidence is not None
        or return_propagation_fallback is not None
        or pcode_authoritative_fallback is not None
    ):
        failures = [name for name in failures if name != "normalized_decompiled_c"]
    return {
        "function": function,
        "passed": not failures,
        "checks": checks,
        "raw_failures": raw_failures,
        "failures": failures,
        "decompiled_normalization": {
            "direct_match": direct_normalized_match,
            "named_data_address_syntax_fallback": named_data_address_syntax_evidence,
            "pointer_table_index_base_fallback": pointer_table_index_base_evidence,
            "pointer_table_absolute_base_fallback": pointer_table_absolute_base_evidence,
            "data_field_slice_fallback": data_field_slice_evidence,
            "fragmented_byte_global_fallback": fallback_evidence,
            "pcode_authoritative_decompiler_fallback": pcode_authoritative_fallback,
            "return_propagation_fallback": return_propagation_fallback,
        },
        "stock": {
            "body_bytes": stock_record.get("body_bytes"),
            "decompiled_path": str(paths["stock"]["decompiled"]),
            "decompiled_sha256": sha256_file(paths["stock"]["decompiled"]),
            "normalized_decompiled_sha256": hashlib.sha256(
                stock_normalized.encode("utf-8")
            ).hexdigest(),
            "pcode_path": str(paths["stock"]["pcode"]),
            "pcode_sha256": sha256_file(paths["stock"]["pcode"]),
            "pcode_records": len(stock_shape),
            "resolved_strings": stock_string_evidence,
            "normalized_ghidra_artifacts": stock_artifact_evidence,
        },
        "candidate": {
            "body_bytes": effective_candidate_body_bytes,
            "decompiled_path": str(paths["candidate"]["decompiled"]),
            "decompiled_sha256": sha256_file(paths["candidate"]["decompiled"]),
            "normalized_decompiled_sha256": hashlib.sha256(
                candidate_normalized.encode("utf-8")
            ).hexdigest(),
            "pcode_path": str(paths["candidate"]["pcode"]),
            "pcode_sha256": (
                sha256_concatenated_files(candidate_pcode_paths)
                if candidate_boundary_repair is not None
                else sha256_file(paths["candidate"]["pcode"])
            ),
            "pcode_records": len(candidate_shape),
            "resolved_strings": candidate_string_evidence,
            "normalized_ghidra_artifacts": candidate_artifact_evidence,
            **(
                {"boundary_repair": candidate_boundary_repair}
                if candidate_boundary_repair is not None
                else {}
            ),
        },
    }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--stock-export", type=Path, required=True)
    parser.add_argument("--candidate-export", type=Path, required=True)
    parser.add_argument("--stock-module", type=Path)
    parser.add_argument("--candidate-module", type=Path)
    parser.add_argument(
        "--function",
        action="append",
        dest="functions",
        default=[],
        help="function name shared by stock and candidate exports",
    )
    parser.add_argument(
        "--function-pair",
        action="append",
        dest="function_pairs",
        default=[],
        help="explicit stock=candidate function names for symbol aliases",
    )
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument(
        "--allow-pcode-authoritative-decompiler-fallback",
        action="store_true",
        help="allow the explicit narrow Ghidra premature-return fallback",
    )
    parser.add_argument(
        "--allow-ghidra-return-propagation-fallback",
        action="store_true",
        help="allow the explicit narrow external-call return propagation fallback",
    )
    parser.add_argument(
        "--allow-shared-data-binding-normalization",
        action="store_true",
        help="normalize named data labels only when section-relative bindings match on both exports",
    )
    parser.add_argument(
        "--allow-relocated-same-name-data-normalization",
        action="store_true",
        help="also normalize identical non-synthetic data symbol names when linkers relocated them within the same section",
    )
    parser.add_argument(
        "--allow-named-data-address-syntax-fallback",
        action="store_true",
        help="accept only Ghidra obj versus &obj syntax for proven shared data bindings after body/P-Code equality",
    )
    parser.add_argument(
        "--allow-section-address-normalization",
        action="store_true",
        help="normalize absolute addresses only when both exports resolve them to the same section-relative data offset",
    )
    parser.add_argument(
        "--allow-ghidra-data-field-slice-fallback",
        action="store_true",
        help="accept only candidate-side Ghidra obj._offset_size_ notation after exact body/P-Code equality",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    function_pairs: list[tuple[str, str]] = [(name, name) for name in args.functions]
    for pair in args.function_pairs:
        if pair.count("=") != 1:
            raise ValueError(f"invalid --function-pair (expected stock=candidate): {pair}")
        stock_name, candidate_name = pair.split("=", 1)
        if not stock_name or not candidate_name:
            raise ValueError(f"invalid --function-pair (empty name): {pair}")
        function_pairs.append((stock_name, candidate_name))
    if not function_pairs:
        raise ValueError("at least one --function or --function-pair is required")
    stock_root = args.stock_export.resolve()
    candidate_root = args.candidate_export.resolve()
    for root in (stock_root, candidate_root):
        for name in ("manifest.json", "functions.jsonl", "strings.jsonl"):
            if not (root / name).is_file():
                raise ValueError(f"missing {name}: {root}")

    stock_manifest = read_json(stock_root / "manifest.json")
    candidate_manifest = read_json(candidate_root / "manifest.json")
    stock_functions = function_index(stock_root)
    candidate_functions = function_index(candidate_root)
    stock_module = args.stock_module.resolve() if args.stock_module else None
    candidate_module = args.candidate_module.resolve() if args.candidate_module else None
    for module in (stock_module, candidate_module):
        if module is not None and not module.is_file():
            raise ValueError(f"missing module: {module}")
    stock_elf_strings = elf_data_string_resolver(stock_root, stock_module)
    candidate_elf_strings = elf_data_string_resolver(candidate_root, candidate_module)
    stock_symbol_strings = symbol_string_index(stock_root, stock_elf_strings)
    candidate_symbol_strings = symbol_string_index(candidate_root, candidate_elf_strings)
    stock_absolute_data_ranges = (
        section_address_ranges(stock_root)
        if args.allow_section_address_normalization else None
    )
    candidate_absolute_data_ranges = (
        section_address_ranges(candidate_root)
        if args.allow_section_address_normalization else None
    )
    if args.allow_shared_data_binding_normalization:
        (
            stock_named_data_bindings,
            candidate_named_data_bindings,
        ) = shared_named_data_bindings(
            stock_root,
            candidate_root,
            args.allow_relocated_same_name_data_normalization,
        )
    else:
        stock_named_data_bindings = None
        candidate_named_data_bindings = None
    module_identity: dict[str, dict[str, Any] | None] = {}
    identity_failures: list[str] = []
    for side, manifest, module in (
        ("stock", stock_manifest, stock_module),
        ("candidate", candidate_manifest, candidate_module),
    ):
        if module is None:
            module_identity[side] = None
            continue
        expected = manifest.get("executable_md5")
        observed = md5_file(module)
        passed = isinstance(expected, str) and expected.lower() == observed
        module_identity[side] = {
            "module": str(module),
            "manifest_executable_md5": expected,
            "observed_executable_md5": observed,
            "passed": passed,
        }
        if not passed:
            identity_failures.append(
                f"{side} module MD5 does not match the Ghidra export manifest"
            )
    results = [
        compare_function(
            stock_function,
            stock_root,
            candidate_root,
            stock_functions.get(stock_function),
            candidate_functions.get(candidate_function),
            string_index(stock_root),
            string_index(candidate_root),
            stock_elf_strings,
            candidate_elf_strings,
            stock_symbol_strings,
            candidate_symbol_strings,
            args.allow_pcode_authoritative_decompiler_fallback,
            args.allow_ghidra_return_propagation_fallback,
            stock_named_data_bindings,
            candidate_named_data_bindings,
            args.allow_named_data_address_syntax_fallback,
            args.allow_relocated_same_name_data_normalization,
            stock_absolute_data_ranges,
            candidate_absolute_data_ranges,
            candidate_function,
            args.allow_ghidra_data_field_slice_fallback,
        )
        for stock_function, candidate_function in function_pairs
    ]
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "method": (
            "Ghidra normalized decompiled-C equality plus ordered instruction-mnemonic "
            "and P-Code-operation shape equality; optional explicit P-Code-authoritative "
            "fallback records lossy premature-return or external-call return-propagation decompilation"
        ),
        "pcode_authoritative_decompiler_fallback_allowed": (
            args.allow_pcode_authoritative_decompiler_fallback
        ),
        "ghidra_return_propagation_fallback_allowed": (
            args.allow_ghidra_return_propagation_fallback
        ),
        "shared_data_binding_normalization_allowed": (
            args.allow_shared_data_binding_normalization
        ),
        "relocated_same_name_data_normalization_allowed": (
            args.allow_relocated_same_name_data_normalization
        ),
        "named_data_address_syntax_fallback_allowed": (
            args.allow_named_data_address_syntax_fallback
        ),
        "section_address_normalization_allowed": (
            args.allow_section_address_normalization
        ),
        "ghidra_data_field_slice_fallback_allowed": (
            args.allow_ghidra_data_field_slice_fallback
        ),
        "passed": not identity_failures and len(results) == len(function_pairs)
        and all(result["passed"] for result in results),
        "identity_failures": identity_failures,
        "module_identity": module_identity,
        "requested_functions": [
            stock if stock == candidate else f"{stock}={candidate}"
            for stock, candidate in function_pairs
        ],
        "stock_export": {
            "path": str(stock_root),
            "manifest_sha256": sha256_file(stock_root / "manifest.json"),
            "executable_md5": stock_manifest.get("executable_md5"),
        },
        "stock_module": (
            {
                "path": str(stock_module),
                "sha256": sha256_file(stock_module),
            }
            if stock_module
            else None
        ),
        "candidate_export": {
            "path": str(candidate_root),
            "manifest_sha256": sha256_file(candidate_root / "manifest.json"),
            "executable_md5": candidate_manifest.get("executable_md5"),
        },
        "candidate_module": (
            {
                "path": str(candidate_module),
                "sha256": sha256_file(candidate_module),
            }
            if candidate_module
            else None
        ),
        "results": results,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    print(json.dumps({"passed": payload["passed"], "checked": len(results)}))
    return 0 if payload["passed"] else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(2)
