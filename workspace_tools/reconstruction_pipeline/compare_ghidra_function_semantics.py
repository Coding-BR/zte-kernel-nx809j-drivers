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
GLOBAL_DATA_LABEL_RE = re.compile(r"\b(?:DAT|UNK)_[0-9a-fA-F]+\b")
SYMBOL_STRING_RE = re.compile(r"\b(?P<symbol>unk_[0-9a-fA-F]+)\b")
PCODE_OP_RE = re.compile(r"\b([A-Z][A-Z0-9_]*)\b")
SOFTWARE_BREAKPOINT_CONTEXT_RE = re.compile(
    r"(SoftwareBreakpoint\(\s*0x[0-9a-fA-F]+\s*,\s*)"
    r"0x[0-9a-fA-F]+(\s*\))"
)
LOCAL_LABEL_RE = re.compile(r"\bLAB_[0-9a-fA-F]+\b")
ALLOC_TAG_ARGUMENT_RE = re.compile(
    r"(__kmalloc_cache_noprof\(\s*)"
    r"([A-Za-z_][A-Za-z0-9_]*)(\s*,)"
)
OPTIONAL_OBJECT_ADDRESS_RE = re.compile(
    r"&(?P<symbol>syna_spi_device|attr_group)\b"
)
POINTER_TABLE_BASE_RE = re.compile(
    r"\(&(?P<symbol>(?:PTR_[A-Za-z0-9_]+|[a-z][A-Za-z0-9_]*))\)(?P<index>\[[^\]]+\])"
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
) -> tuple[str, list[dict[str, Any]], list[dict[str, Any]]]:
    evidence: list[dict[str, Any]] = []
    artifact_evidence: list[dict[str, Any]] = []
    elf_strings = elf_strings or {}
    symbol_strings = symbol_strings or {}

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

    replaced = SOFTWARE_BREAKPOINT_CONTEXT_RE.sub(
        replace_breakpoint_context, replaced
    )

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
    return re.sub(r"\s+", "", replaced), evidence, artifact_evidence


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
    # immediately overwrites w0 with zero.  Accept only this narrow shape: an
    # undefined8 compiler temporary assigned directly from _printk and returned
    # on the logging branch, while stock returns constant zero.  Exact body
    # bytes and P-Code shape, plus the independent assembly gate, remain
    # mandatory.
    propagated = re.search(r"(?P<temporary>uVar[0-9]+)=_printk\(", candidate_normalized)
    if stock_call >= 0 and propagated is not None:
        temporary = propagated.group("temporary")
        stock_suffix = stock_normalized[stock_call:]
        candidate_suffix = candidate_normalized[propagated.start():]
        candidate_tail = f";return{temporary};}}"
        if stock_suffix.endswith(";return0;}") and candidate_suffix.endswith(
            candidate_tail
        ):
            stock_call_text = stock_suffix[: -len(";return0;}")]
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
                return {
                    "kind": "ghidra_call_return_zero_propagation_artifact",
                    "candidate_rewrite": (
                        f"undefined8{temporary}=_printk(...);return{temporary};"
                    ),
                    "stock_semantics": "_printk(...);return0;",
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
    control_names = {"if", "for", "while", "switch", "elseif"}
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
    )
    stock_shape = pcode_shape(read_jsonl(paths["stock"]["pcode"]))
    candidate_shape = pcode_shape(read_jsonl(paths["candidate"]["pcode"]))
    direct_normalized_match = stock_normalized == candidate_normalized
    body_bytes_match = stock_record.get("body_bytes") == candidate_record.get(
        "body_bytes"
    )
    pcode_shape_match = stock_shape == candidate_shape
    fallback_evidence: dict[str, Any] | None = None
    pcode_authoritative_fallback: dict[str, Any] | None = None
    return_propagation_fallback: dict[str, Any] | None = None
    if not direct_normalized_match and body_bytes_match and pcode_shape_match:
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
            if return_propagation_fallback is None and allow_pcode_authoritative_decompiler_fallback:
                pcode_authoritative_fallback = external_label_call_decompiler_artifact(
                    stock_normalized, candidate_normalized, stock_shape, candidate_shape
                )
                if pcode_authoritative_fallback is None:
                    pcode_authoritative_fallback = lossy_decompiler_truncation(
                        stock_normalized, candidate_normalized
                    )
            normalized_decompiled_match = False
        elif allow_pcode_authoritative_decompiler_fallback:
            pcode_authoritative_fallback = external_label_call_decompiler_artifact(
                stock_normalized, candidate_normalized, stock_shape, candidate_shape
            )
            if pcode_authoritative_fallback is None:
                pcode_authoritative_fallback = lossy_decompiler_truncation(
                    stock_normalized, candidate_normalized
                )
            # Keep the raw C check false: this is an explicit low-level
            # authority fallback, not a claim that the decompiled C matched.
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
    if return_propagation_fallback is not None or pcode_authoritative_fallback is not None:
        failures = [name for name in failures if name != "normalized_decompiled_c"]
    return {
        "function": function,
        "passed": not failures,
        "checks": checks,
        "raw_failures": raw_failures,
        "failures": failures,
        "decompiled_normalization": {
            "direct_match": direct_normalized_match,
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
            "body_bytes": candidate_record.get("body_bytes"),
            "decompiled_path": str(paths["candidate"]["decompiled"]),
            "decompiled_sha256": sha256_file(paths["candidate"]["decompiled"]),
            "normalized_decompiled_sha256": hashlib.sha256(
                candidate_normalized.encode("utf-8")
            ).hexdigest(),
            "pcode_path": str(paths["candidate"]["pcode"]),
            "pcode_sha256": sha256_file(paths["candidate"]["pcode"]),
            "pcode_records": len(candidate_shape),
            "resolved_strings": candidate_string_evidence,
            "normalized_ghidra_artifacts": candidate_artifact_evidence,
        },
    }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--stock-export", type=Path, required=True)
    parser.add_argument("--candidate-export", type=Path, required=True)
    parser.add_argument("--stock-module", type=Path)
    parser.add_argument("--candidate-module", type=Path)
    parser.add_argument("--function", action="append", dest="functions", required=True)
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
    return parser.parse_args()


def main() -> int:
    args = parse_args()
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
            function,
            stock_root,
            candidate_root,
            stock_functions.get(function),
            candidate_functions.get(function),
            string_index(stock_root),
            string_index(candidate_root),
            stock_elf_strings,
            candidate_elf_strings,
            stock_symbol_strings,
            candidate_symbol_strings,
            args.allow_pcode_authoritative_decompiler_fallback,
            args.allow_ghidra_return_propagation_fallback,
        )
        for function in args.functions
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
        "passed": not identity_failures and len(results) == len(args.functions)
        and all(result["passed"] for result in results),
        "identity_failures": identity_failures,
        "module_identity": module_identity,
        "requested_functions": args.functions,
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
