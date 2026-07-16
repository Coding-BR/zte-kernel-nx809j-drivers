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


def normalized_relocation(relocation_type: str, target: str, sections: dict[str, bytes]) -> str:
    match = RODATA_TARGET_RE.match(target)
    if not match:
        return f"{relocation_type} {target}"

    section_name = match.group("section")
    section = sections.get(section_name)
    if section is None:
        return f"{relocation_type} {target}"
    offset = int(match.group("offset") or "0", 16)
    if offset >= len(section):
        return f"{relocation_type} {target}"

    end = section.find(b"\0", offset, min(len(section), offset + 4096))
    if end < 0:
        return f"{relocation_type} {target}"
    value = section[offset:end]
    if not value:
        return f"{relocation_type} {target}"
    if ".str" not in section_name and any(
        byte < 0x20 and byte not in b"\t\n\r" for byte in value
    ):
        return f"{relocation_type} {target}"
    text = value.decode("utf-8", errors="backslashreplace")
    return f"{relocation_type} {section_name}:string={json.dumps(text, ensure_ascii=True)}"


def normalized_assembly(
    path: Path, sections: dict[str, bytes]
) -> tuple[list[str], list[str], list[str]]:
    instructions: list[str] = []
    raw_relocations: list[str] = []
    normalized_relocations: list[str] = []
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
            if mnemonic in {"b", "bl"} and target:
                instructions.append(f"{mnemonic} <{target.group(1)}>")
            else:
                instructions.append(opcode)
        relocation = RELOCATION_RE.search(line)
        if relocation:
            relocation_type = relocation.group(1)
            target = relocation.group(2)
            raw_relocations.append(relocation.group(0))
            normalized_relocations.append(
                normalized_relocation(relocation_type, target, sections)
            )
    if not instructions:
        raise ValueError(f"no AArch64 opcodes found: {path}")
    return instructions, raw_relocations, normalized_relocations


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--stock-dir", type=Path, required=True)
    parser.add_argument("--candidate-dir", type=Path, required=True)
    parser.add_argument("--function", action="append", dest="functions")
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
    stock_sections = elf_sections(stock_source)
    candidate_sections = elf_sections(candidate_source)
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
            stock_path, stock_sections
        )
        candidate_instructions, candidate_raw_relocations, candidate_relocations = (
            normalized_assembly(candidate_path, candidate_sections)
        )
        checks = {
            "section": stock_record.get("section") == candidate_record.get("section"),
            "symbol_size": stock_record.get("symbol_size") == candidate_record.get("symbol_size"),
            "instructions": stock_instructions == candidate_instructions,
            "relocations": stock_relocations == candidate_relocations,
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
                "stock": {
                    "path": str(stock_path),
                    "sha256": sha256_file(stock_path),
                    "symbol_size": stock_record.get("symbol_size"),
                    "section": stock_record.get("section"),
                    "instruction_count": len(stock_instructions),
                    "relocations": stock_relocations,
                    "relocations_raw": stock_raw_relocations,
                },
                "candidate": {
                    "path": str(candidate_path),
                    "sha256": sha256_file(candidate_path),
                    "symbol_size": candidate_record.get("symbol_size"),
                    "section": candidate_record.get("section"),
                    "instruction_count": len(candidate_instructions),
                    "relocations": candidate_relocations,
                    "relocations_raw": candidate_raw_relocations,
                },
            }
        )
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "aarch64_opcode_relocation_resolved_branch_and_rodata_string_comparison",
        "passed": not failures and len(results) == len(functions),
        "requested_functions": functions,
        "checked_functions": len(results),
        "failures": failures,
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
