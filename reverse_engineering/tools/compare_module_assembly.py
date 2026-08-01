#!/usr/bin/env python3
"""Compare per-function module assembly with hash-backed semantic evidence."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import re
import struct
from collections import Counter
from pathlib import Path
from typing import Any


ELF_HEADER = struct.Struct("<16sHHIQQQIHHHHHH")
SECTION_HEADER = struct.Struct("<IIQQQQIIQQ")
SYMBOL = struct.Struct("<IBBHQQ")
SHT_SYMTAB = 2
SHN_UNDEF = 0

INSTRUCTION_RE = re.compile(
    r"^\s*([0-9a-fA-F]+):\s+([0-9a-fA-F]{8})\s+(.+?)\s*$"
)
RELOCATION_RE = re.compile(
    r"^\s*[0-9a-fA-F]+:\s+(R_AARCH64_\S+)\s+(.+?)\s*$"
)
RELOCATION_ADDRESS_RE = re.compile(
    r"^\s*([0-9a-fA-F]+):\s+(R_AARCH64_\S+)\s+(.+?)\s*$"
)
SECTION_RE = re.compile(r"^Disassembly of section (\S+):$")
BRANCH_TARGET_RE = re.compile(r"\b0x([0-9a-fA-F]+)\b")
CMP_IMMEDIATE_RE = re.compile(r"^cmp\s+(w\d+),\s*#0x([0-9a-fA-F]+)$")
PRINTK_CALL_RE = re.compile(r"^R_AARCH64_CALL26\s+_printk$")
RODATA_RELOCATION_RE = re.compile(
    r"^R_AARCH64_ADR_PREL_PG_HI21\s+(\.rodata\.str[^+]*)(?:\+0x([0-9a-fA-F]+))?$"
)
INSTRUCTION_REGISTER_RE = re.compile(
    r"^\s*[0-9a-fA-F]+:\s+[0-9a-fA-F]{8}\s+\S+\s+(x\d+)(?:,|\s)"
)


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def c_string(data: bytes, offset: int) -> str | None:
    if offset < 0 or offset >= len(data):
        return None
    end = data.find(b"\0", offset)
    if end < 0:
        return None
    value = data[offset:end]
    if not value:
        return ""
    return value.decode("utf-8", errors="backslashreplace")


class ElfEvidence:
    def __init__(self, path: Path) -> None:
        self.path = path.resolve()
        self.data = self.path.read_bytes()
        self.sections: list[dict[str, Any]] = []
        self.sections_by_name: dict[str, dict[str, Any]] = {}
        self.symbols_by_section: dict[int, list[dict[str, Any]]] = {}
        self._parse()

    def _parse(self) -> None:
        if len(self.data) < ELF_HEADER.size:
            raise ValueError(f"{self.path}: truncated ELF header")
        header = ELF_HEADER.unpack_from(self.data)
        ident = header[0]
        if ident[:4] != b"\x7fELF" or ident[4] != 2 or ident[5] != 1:
            raise ValueError(f"{self.path}: expected ELF64 little-endian")

        section_offset = header[6]
        section_entry_size = header[11]
        section_count = header[12]
        section_names_index = header[13]
        raw_sections = []
        for index in range(section_count):
            offset = section_offset + index * section_entry_size
            if offset + SECTION_HEADER.size > len(self.data):
                raise ValueError(f"{self.path}: section table exceeds file size")
            raw_sections.append(SECTION_HEADER.unpack_from(self.data, offset))

        def section_data(index: int) -> bytes:
            section = raw_sections[index]
            offset, size = section[4], section[5]
            if offset + size > len(self.data):
                raise ValueError(f"{self.path}: section {index} exceeds file size")
            return self.data[offset:offset + size]

        section_names = section_data(section_names_index)

        def read_name(table: bytes, offset: int) -> str:
            if offset >= len(table):
                return ""
            end = table.find(b"\0", offset)
            if end < 0:
                end = len(table)
            return table[offset:end].decode("utf-8", errors="replace")

        for index, raw in enumerate(raw_sections):
            section = {
                "index": index,
                "name": read_name(section_names, raw[0]),
                "type": raw[1],
                "offset": raw[4],
                "size": raw[5],
                "link": raw[6],
                "entry_size": raw[9],
                "data": section_data(index),
            }
            self.sections.append(section)
            if section["name"]:
                self.sections_by_name[section["name"]] = section

        for section in self.sections:
            if section["type"] != SHT_SYMTAB:
                continue
            entry_size = section["entry_size"]
            if entry_size < SYMBOL.size or section["size"] % entry_size:
                raise ValueError(f"{self.path}: invalid symbol table")
            strings = self.sections[section["link"]]["data"]
            raw = section["data"]
            for offset in range(0, len(raw), entry_size):
                name_offset, info, other, shndx, value, size = SYMBOL.unpack_from(
                    raw, offset
                )
                if shndx == SHN_UNDEF or shndx >= len(self.sections):
                    continue
                name = read_name(strings, name_offset)
                if not name:
                    continue
                self.symbols_by_section.setdefault(shndx, []).append(
                    {
                        "name": name,
                        "bind": info >> 4,
                        "type": info & 0x0F,
                        "other": other,
                        "value": value,
                        "size": size,
                    }
                )

        for symbols in self.symbols_by_section.values():
            symbols.sort(
                key=lambda item: (
                    item["value"],
                    0 if item["size"] else 1,
                    0 if not item["name"].startswith(".") else 1,
                    item["name"],
                )
            )

    def resolve_target(self, target: str) -> str:
        base, addend = split_target(target)
        section = self.sections_by_name.get(base)
        if section is None:
            return target

        if base.startswith(".rodata.str"):
            text = c_string(section["data"], addend)
            if text is not None:
                return f"{base}:string={json.dumps(text, ensure_ascii=True)}"

        symbols = self.symbols_by_section.get(section["index"], [])
        exact = [
            symbol
            for symbol in symbols
            if symbol["value"] == addend and not symbol["name"].startswith("$")
        ]
        if exact:
            return exact[0]["name"]

        containing = [
            symbol
            for symbol in symbols
            if symbol["size"]
            and symbol["value"] <= addend < symbol["value"] + symbol["size"]
            and not symbol["name"].startswith("$")
        ]
        if containing:
            symbol = max(containing, key=lambda item: item["value"])
            delta = addend - symbol["value"]
            return symbol["name"] if not delta else f"{symbol['name']}+0x{delta:x}"

        return base if not addend else f"{base}+0x{addend:x}"


def split_target(target: str) -> tuple[str, int]:
    match = re.match(r"^(.+?)(?:\+0x([0-9a-fA-F]+))?$", target)
    if not match:
        return target, 0
    return match.group(1), int(match.group(2) or "0", 16)


def normalize_disassembly(value: str) -> str:
    value = value.split("//", 1)[0].strip()
    value = re.sub(r"\s+", " ", value)
    return value


def parse_assembly(path: Path, elf: ElfEvidence) -> dict[str, Any]:
    section = None
    instructions: list[dict[str, Any]] = []
    relocations_raw: list[str] = []
    relocations: list[str] = []
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        if match := SECTION_RE.match(line):
            section = match.group(1)
            continue
        if match := RELOCATION_RE.match(line):
            relocation_type, target = match.groups()
            relocations_raw.append(f"{relocation_type}\t{target}")
            relocations.append(f"{relocation_type} {elf.resolve_target(target)}")
            continue
        if match := INSTRUCTION_RE.match(line):
            address, opcode, disassembly = match.groups()
            instructions.append(
                {
                    "address": int(address, 16),
                    "opcode": opcode.lower(),
                    "disassembly": normalize_disassembly(disassembly),
                }
            )
    return {
        "path": str(path.resolve()),
        "sha256": sha256_file(path),
        "section": section,
        "instruction_count": len(instructions),
        "instructions": instructions,
        "opcodes": [item["opcode"] for item in instructions],
        "relocations_raw": relocations_raw,
        "relocations": relocations,
    }


def rodata_string(elf: ElfEvidence, section_name: str, offset: int) -> str | None:
    section = elf.sections_by_name.get(section_name)
    if section is None:
        return None
    return c_string(section["data"], offset)


def branch_target(disassembly: str) -> int | None:
    match = BRANCH_TARGET_RE.search(disassembly)
    return int(match.group(1), 16) if match else None


def control_predecessors(
    instructions: list[dict[str, Any]],
) -> dict[int, set[int]]:
    """Build the intra-function predecessor map needed for format provenance."""
    by_address = {item["address"]: index for index, item in enumerate(instructions)}
    predecessors = {index: set() for index in range(len(instructions))}
    for index, item in enumerate(instructions):
        mnemonic = item["disassembly"].split(" ", 1)[0]
        target = branch_target(item["disassembly"])
        successors: list[int] = []
        if mnemonic == "b":
            if target in by_address:
                successors.append(by_address[target])
        elif mnemonic.startswith("b.") or mnemonic in {"cbz", "cbnz", "tbz", "tbnz"}:
            if target in by_address:
                successors.append(by_address[target])
            if index + 1 < len(instructions):
                successors.append(index + 1)
        elif mnemonic not in {"br", "ret"} and index + 1 < len(instructions):
            successors.append(index + 1)
        for successor in successors:
            predecessors[successor].add(index)
    return predecessors


def register_definition(
    disassembly: str, register: str,
    rodata: str | None,
) -> tuple[str, str | None]:
    """Classify one predecessor instruction for backwards pointer provenance."""
    pieces = disassembly.split(" ", 1)
    if len(pieces) != 2:
        return "preserve", None
    mnemonic, operands = pieces
    values = [value.strip() for value in operands.split(",")]
    if not values or values[0] != register:
        return "preserve", None
    if mnemonic == "adrp":
        return ("static", rodata) if rodata is not None else ("unknown", None)
    if mnemonic == "add" and len(values) >= 2 and values[1] == register:
        return "preserve", None
    if mnemonic == "mov" and len(values) == 2 and re.fullmatch(r"x\d+", values[1]):
        return "alias", values[1]
    return "unknown", None


def printk_format_candidates(
    instructions: list[dict[str, Any]],
    predecessors: dict[int, set[int]],
    rodata_by_address: dict[int, str],
    call_index: int,
) -> tuple[list[str], bool]:
    """Recover all statically reachable x0 formats for one `_printk` call.

    A linear backwards scan is unsound when conditional branches merge immediately
    before the call.  This bounded backwards walk preserves control-flow joins and
    follows only `ADRP`, self-`ADD`, and register `MOV` pointer setup.  Any other
    x0 definition remains an explicit unresolved evidence path.
    """
    formats: set[str] = set()
    unresolved = False
    pending = [(predecessor, "x0") for predecessor in predecessors[call_index]]
    visited: set[tuple[int, str]] = set()
    while pending:
        index, register = pending.pop()
        state = (index, register)
        if state in visited:
            continue
        visited.add(state)
        item = instructions[index]
        action, value = register_definition(
            item["disassembly"], register, rodata_by_address.get(item["address"])
        )
        if action == "static":
            formats.add(value)
            continue
        if action == "unknown":
            unresolved = True
            continue
        next_register = value if action == "alias" else register
        if not predecessors[index]:
            unresolved = True
            continue
        for predecessor in predecessors[index]:
            pending.append((predecessor, next_register))
    return sorted(formats), unresolved


def parse_printk_calls(path: Path, elf: ElfEvidence) -> list[dict[str, Any]]:
    """Recover static `_printk` formats with branch-aware AArch64 provenance."""
    instructions: list[dict[str, Any]] = []
    rodata_by_address: dict[int, str] = {}
    printk_addresses: list[int] = []
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        if instruction := INSTRUCTION_RE.match(line):
            address, opcode, disassembly = instruction.groups()
            instructions.append(
                {
                    "address": int(address, 16),
                    "opcode": opcode.lower(),
                    "disassembly": normalize_disassembly(disassembly),
                }
            )
            continue
        relocation = RELOCATION_ADDRESS_RE.match(line)
        if not relocation:
            continue
        address_text, relocation_type, target = relocation.groups()
        address = int(address_text, 16)
        if PRINTK_CALL_RE.fullmatch(f"{relocation_type}\t{target}"):
            printk_addresses.append(address)
            continue
        rodata = RODATA_RELOCATION_RE.fullmatch(f"{relocation_type}\t{target}")
        if rodata:
            value = rodata_string(elf, rodata.group(1), int(rodata.group(2) or "0", 16))
            if value is not None:
                rodata_by_address[address] = value

    by_address = {item["address"]: index for index, item in enumerate(instructions)}
    predecessors = control_predecessors(instructions)
    calls: list[dict[str, Any]] = []
    for address in printk_addresses:
        call_index = by_address.get(address)
        if call_index is None:
            calls.append(
                {
                    "address": f"0x{address:x}",
                    "format": None,
                    "format_candidates": [],
                    "format_resolution": "unresolved",
                }
            )
            continue
        candidates, unresolved = printk_format_candidates(
            instructions, predecessors, rodata_by_address, call_index
        )
        if len(candidates) == 1 and not unresolved:
            resolution = "static"
            format_string: str | None = candidates[0]
        elif candidates and not unresolved:
            resolution = "ambiguous_static"
            format_string = None
        elif candidates:
            resolution = "partial_static"
            format_string = None
        else:
            resolution = "unresolved"
            format_string = None
        calls.append(
            {
                "address": f"0x{address:x}",
                "format": format_string,
                "format_candidates": candidates,
                "format_resolution": resolution,
            }
        )
    return calls


def format_differences(
    stock_calls: list[dict[str, Any]], candidate_calls: list[dict[str, Any]]
) -> list[dict[str, Any]]:
    def signature(call: dict[str, Any]) -> tuple[str, ...] | None:
        candidates = call.get("format_candidates")
        if isinstance(candidates, list) and candidates:
            return tuple(str(value) for value in candidates)
        value = call.get("format")
        return (str(value),) if value is not None else None

    stock_formats = Counter(
        signature(call) for call in stock_calls if signature(call) is not None
    )
    candidate_formats = Counter(
        signature(call) for call in candidate_calls if signature(call) is not None
    )
    return [
        {
            "format": list(value),
            "stock_count": stock_formats[value],
            "candidate_count": candidate_formats[value],
        }
        for value in sorted(set(stock_formats) | set(candidate_formats))
        if stock_formats[value] != candidate_formats[value]
    ]


def read_manifest(path: Path) -> dict[str, dict[str, Any]]:
    data = json.loads(path.read_text(encoding="utf-8"))
    records = data.get("records")
    if not isinstance(records, list):
        raise ValueError(f"{path}: missing records")
    result = {}
    for record in records:
        if isinstance(record, dict) and isinstance(record.get("function"), str):
            result[record["function"]] = record
    return result


def branch_relative_target(
    instructions: list[dict[str, Any]], index: int
) -> int | None:
    if index < 0 or index >= len(instructions):
        return None
    match = BRANCH_TARGET_RE.search(instructions[index]["disassembly"])
    if not match or not instructions:
        return None
    return int(match.group(1), 16) - instructions[0]["address"]


def validate_dominated_bounds_guard(
    stock: dict[str, Any],
    candidate: dict[str, Any],
    exception: dict[str, Any],
) -> tuple[bool, list[str]]:
    errors: list[str] = []
    index = int(exception["instruction_index"])
    dominator = int(exception["dominator_index"])
    stock_instructions = stock["instructions"]
    candidate_instructions = candidate["instructions"]

    mismatch_indices = [
        item
        for item, (left, right) in enumerate(
            zip(stock["opcodes"], candidate["opcodes"], strict=False)
        )
        if left != right
    ]
    if mismatch_indices != [index, index + 1]:
        errors.append(f"unexpected opcode mismatches: {mismatch_indices}")

    for label, instructions in (
        ("stock", stock_instructions),
        ("candidate", candidate_instructions),
    ):
        if dominator + 3 >= len(instructions):
            errors.append(f"{label}: dominator range is outside the function")
            continue
        expected = (
            instructions[dominator]["disassembly"].startswith("mov w")
            and "#0x8" in instructions[dominator]["disassembly"]
            and instructions[dominator + 1]["disassembly"].startswith("bfi x")
            and (
                "#0x4, #0x20" in instructions[dominator + 1]["disassembly"]
                or "#4, #32" in instructions[dominator + 1]["disassembly"]
            )
            and instructions[dominator + 2]["disassembly"].startswith("cmp x")
            and "#0x100" in instructions[dominator + 2]["disassembly"]
            and instructions[dominator + 3]["disassembly"].startswith("b.hi ")
        )
        if not expected:
            errors.append(f"{label}: unsigned dominating object-size guard not found")

    stock_cmp = CMP_IMMEDIATE_RE.match(stock_instructions[index]["disassembly"])
    candidate_cmp = CMP_IMMEDIATE_RE.match(
        candidate_instructions[index]["disassembly"]
    )
    if not stock_cmp or stock_cmp.groups() != ("w27", "10"):
        errors.append("stock: expected cmp w27, #0x10")
    if not candidate_cmp or candidate_cmp.groups() != ("w27", "f"):
        errors.append("candidate: expected cmp w27, #0xf")
    if stock_instructions[index + 1]["disassembly"].split()[0] != "b.eq":
        errors.append("stock: expected b.eq")
    if candidate_instructions[index + 1]["disassembly"].split()[0] != "b.hi":
        errors.append("candidate: expected b.hi")

    targets = {
        branch_relative_target(stock_instructions, dominator + 3),
        branch_relative_target(candidate_instructions, dominator + 3),
        branch_relative_target(stock_instructions, index + 1),
        branch_relative_target(candidate_instructions, index + 1),
    }
    if None in targets or len(targets) != 1:
        errors.append(f"bounds guards do not share one trap target: {sorted(targets)}")

    if stock["relocations"] != candidate["relocations"]:
        errors.append("relocations differ")
    if len(stock_instructions) != len(candidate_instructions):
        errors.append("instruction counts differ")

    return not errors, errors


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--stock-dir", type=Path, required=True)
    parser.add_argument("--candidate-dir", type=Path, required=True)
    parser.add_argument("--stock-module", type=Path, required=True)
    parser.add_argument("--candidate-module", type=Path, required=True)
    parser.add_argument("--exceptions", type=Path)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--markdown", type=Path)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    stock_dir = args.stock_dir.resolve()
    candidate_dir = args.candidate_dir.resolve()
    stock_manifest = read_manifest(stock_dir / "manifest.json")
    candidate_manifest = read_manifest(candidate_dir / "manifest.json")
    stock_elf = ElfEvidence(args.stock_module)
    candidate_elf = ElfEvidence(args.candidate_module)

    exception_records: dict[str, dict[str, Any]] = {}
    if args.exceptions:
        raw = json.loads(args.exceptions.read_text(encoding="utf-8"))
        for exception in raw.get("exceptions", []):
            if isinstance(exception, dict) and isinstance(
                exception.get("function"), str
            ):
                exception_records[exception["function"]] = exception

    functions = sorted(set(stock_manifest) & set(candidate_manifest))
    results: list[dict[str, Any]] = []
    strict_count = 0
    semantic_count = 0
    failures: list[str] = []

    for function in functions:
        stock_record = stock_manifest[function]
        candidate_record = candidate_manifest[function]
        stock = parse_assembly(stock_dir / stock_record["file"], stock_elf)
        candidate = parse_assembly(
            candidate_dir / candidate_record["file"], candidate_elf
        )
        stock_printk_calls = parse_printk_calls(
            stock_dir / stock_record["file"], stock_elf
        )
        candidate_printk_calls = parse_printk_calls(
            candidate_dir / candidate_record["file"], candidate_elf
        )
        printk_differences = format_differences(
            stock_printk_calls, candidate_printk_calls
        )
        stock["symbol_size"] = stock_record.get("symbol_size")
        candidate["symbol_size"] = candidate_record.get("symbol_size")

        printk_complete = all(
            call["format_resolution"] in {"static", "ambiguous_static"}
            for call in stock_printk_calls + candidate_printk_calls
        )
        checks = {
            "instructions": stock["opcodes"] == candidate["opcodes"],
            "relocations": stock["relocations"] == candidate["relocations"],
            "section": stock["section"] == candidate["section"],
            "symbol_size": stock["symbol_size"] == candidate["symbol_size"],
            "printk_formats": printk_complete and not printk_differences,
        }
        strict_match = all(checks.values())
        semantic_match = strict_match
        exception_result = None

        if strict_match:
            strict_count += 1
        elif function in exception_records:
            exception = exception_records[function]
            if exception.get("kind") == "dominated_unsigned_bounds_guard":
                accepted, errors = validate_dominated_bounds_guard(
                    stock, candidate, exception
                )
                exception_result = {
                    "kind": exception["kind"],
                    "accepted": accepted,
                    "errors": errors,
                    "rationale": exception.get("rationale"),
                }
                semantic_match = (
                    accepted and checks["section"] and checks["symbol_size"]
                )

        if semantic_match:
            semantic_count += 1
        else:
            failed_checks = [name for name, passed in checks.items() if not passed]
            failures.append(f"{function}: {', '.join(failed_checks)}")

        results.append(
            {
                "function": function,
                "strict_match": strict_match,
                "semantic_match": semantic_match,
                "checks": checks,
                "exception": exception_result,
                "printk": {
                    "stock_call_count": len(stock_printk_calls),
                    "candidate_call_count": len(candidate_printk_calls),
                    "stock_unresolved_count": sum(
                        call["format_resolution"] not in {"static", "ambiguous_static"}
                        for call in stock_printk_calls
                    ),
                    "candidate_unresolved_count": sum(
                        call["format_resolution"] not in {"static", "ambiguous_static"}
                        for call in candidate_printk_calls
                    ),
                    "format_differences": printk_differences,
                    "stock_calls": stock_printk_calls,
                    "candidate_calls": candidate_printk_calls,
                },
                "stock": {
                    key: value
                    for key, value in stock.items()
                    if key not in {"instructions", "opcodes"}
                },
                "candidate": {
                    key: value
                    for key, value in candidate.items()
                    if key not in {"instructions", "opcodes"}
                },
                "opcode_mismatches": [
                    {
                        "index": index,
                        "stock": stock["instructions"][index],
                        "candidate": candidate["instructions"][index],
                    }
                    for index, (left, right) in enumerate(
                        zip(stock["opcodes"], candidate["opcodes"], strict=False)
                    )
                    if left != right
                ],
            }
        )

    report = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "aarch64_opcode_relocation_and_validated_semantic_comparison",
        "stock_module": {
            "path": str(args.stock_module.resolve()),
            "sha256": sha256_file(args.stock_module),
        },
        "candidate_module": {
            "path": str(args.candidate_module.resolve()),
            "sha256": sha256_file(args.candidate_module),
        },
        "checked_functions": len(functions),
        "strict_matches": strict_count,
        "semantic_matches": semantic_count,
        "strict_passed": strict_count == len(functions),
        "passed": semantic_count == len(functions),
        "failures": failures,
        "results": results,
    }

    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(
        json.dumps(report, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )

    if args.markdown:
        lines = [
            "# Module Assembly Comparison",
            "",
            f"- Checked functions: `{len(functions)}`",
            f"- Opcode-exact functions: `{strict_count}/{len(functions)}`",
            f"- Semantically accepted functions: `{semantic_count}/{len(functions)}`",
            f"- Strict binary-shape verdict: `{'PASS' if report['strict_passed'] else 'FAIL'}`",
            f"- Validated semantic verdict: `{'PASS' if report['passed'] else 'FAIL'}`",
            "",
            "| Function | Opcode exact | Relocations | printk formats | Semantic verdict |",
            "|---|---:|---:|---:|---:|",
        ]
        for result in results:
            lines.append(
                "| `{}` | {} | {} | {} | {} |".format(
                    result["function"],
                    "PASS" if result["checks"]["instructions"] else "FAIL",
                    "PASS" if result["checks"]["relocations"] else "FAIL",
                    "PASS" if result["checks"]["printk_formats"] else "FAIL",
                    "PASS" if result["semantic_match"] else "FAIL",
                )
            )
        printk_failures = [
            result for result in results if result["printk"]["format_differences"]
        ]
        if printk_failures:
            lines.extend(["", "## printk Format Differences", ""])
            for result in printk_failures:
                lines.append(f"### `{result['function']}`")
                lines.append("")
                lines.append(
                    f"- Static callsites: stock `{result['printk']['stock_call_count']}`, "
                    f"candidate `{result['printk']['candidate_call_count']}`."
                )
                for difference in result["printk"]["format_differences"]:
                    lines.append(
                        "- `{}`: stock `{}`, candidate `{}`.".format(
                            json.dumps(difference["format"], ensure_ascii=True),
                            difference["stock_count"],
                            difference["candidate_count"],
                        )
                    )
        exceptions = [
            result for result in results if result.get("exception") is not None
        ]
        if exceptions:
            lines.extend(["", "## Validated Exceptions", ""])
            for result in exceptions:
                exception = result["exception"]
                lines.append(
                    f"- `{result['function']}`: `{exception['kind']}` - "
                    f"{'accepted' if exception['accepted'] else 'rejected'}."
                )
                if exception.get("rationale"):
                    lines.append(f"  Rationale: {exception['rationale']}")
                for error in exception.get("errors", []):
                    lines.append(f"  Error: {error}")
        args.markdown.parent.mkdir(parents=True, exist_ok=True)
        args.markdown.write_text("\n".join(lines) + "\n", encoding="utf-8")

    print(
        json.dumps(
            {
                "output": str(args.output.resolve()),
                "strict_matches": strict_count,
                "semantic_matches": semantic_count,
                "passed": report["passed"],
            },
            ensure_ascii=False,
        )
    )
    return 0 if report["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
