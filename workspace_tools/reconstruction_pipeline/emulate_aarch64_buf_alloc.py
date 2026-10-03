#!/usr/bin/env python3
"""Relationally emulate syna_tcm_buf_alloc from two AArch64 module ELFs."""

from __future__ import annotations

import argparse
import hashlib
import json
import struct
from dataclasses import dataclass, replace
from pathlib import Path
from typing import Any

from elftools.elf.elffile import ELFFile
from unicorn import Uc, UcError, UC_ARCH_ARM64, UC_HOOK_CODE, UC_MODE_ARM
from unicorn.arm64_const import (
    UC_ARM64_REG_LR,
    UC_ARM64_REG_PC,
    UC_ARM64_REG_SP,
    UC_ARM64_REG_X0,
    UC_ARM64_REG_X1,
    UC_ARM64_REG_X2,
)


PAGE = 0x1000
CODE_BASE = 0x01000000
STACK_BASE = 0x02000000
STRUCT = 0x03000000
OLD_BUF = 0x03100000
NEW_BUF = 0x03200000
RETURN_SENTINEL = 0x05000000
NOP = 0xD503201F
PACIASP = 0xD503233F
AUTIASP = 0xD50323BF


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def sha256_bytes(value: bytes) -> str:
    return hashlib.sha256(value).hexdigest()


@dataclass(frozen=True)
class FunctionBytes:
    path: Path
    symbol: str
    section: str
    virtual_address: int
    size: int
    data: bytes
    symbol_index: int


def load_function(path: Path, symbol: str, occurrence: int = 0) -> FunctionBytes:
    with path.open("rb") as stream:
        elf = ELFFile(stream)
        if elf["e_machine"] != "EM_AARCH64":
            raise ValueError(f"{path} is not AArch64")
        symtab = elf.get_section_by_name(".symtab")
        if symtab is None:
            raise ValueError(f"{path} has no .symtab")
        matches = [
            (index, item)
            for index, item in enumerate(symtab.iter_symbols())
            if item.name == symbol and item["st_size"]
        ]
        if len(matches) <= occurrence:
            raise ValueError(
                f"{path}: {symbol} occurrence {occurrence} is absent; "
                f"found {len(matches)}"
            )
        index, item = matches[occurrence]
        section = elf.get_section(item["st_shndx"])
        if section is None:
            raise ValueError(f"{path}: {symbol} has no section")
        section_offset = item["st_value"] - section["sh_addr"]
        data = section.data()[section_offset : section_offset + item["st_size"]]
        if len(data) != item["st_size"]:
            raise ValueError(f"{path}: truncated bytes for {symbol}")
        return FunctionBytes(
            path=path,
            symbol=symbol,
            section=section.name,
            virtual_address=item["st_value"],
            size=item["st_size"],
            data=data,
            symbol_index=index,
        )


def page_range(start: int, size: int) -> tuple[int, int]:
    base = start & ~(PAGE - 1)
    end = (start + size + PAGE - 1) & ~(PAGE - 1)
    return base, end - base


def prepare_code(raw: bytes) -> tuple[bytes, list[int]]:
    code = bytearray(raw)
    patched: list[int] = []
    for offset in range(0, len(code) - 3, 4):
        word = struct.unpack_from("<I", code, offset)[0]
        if word in {PACIASP, AUTIASP}:
            struct.pack_into("<I", code, offset, NOP)
            patched.append(offset)
    return bytes(code), patched


def read_reg(uc: Uc, register: int) -> int:
    return int(uc.reg_read(register))


@dataclass(frozen=True)
class Case:
    name: str
    old_ptr: int
    old_size: int
    requested_size: int
    device_returns: tuple[int, ...]
    kmalloc_returns: tuple[int, ...]


def cases() -> tuple[Case, ...]:
    return (
        Case("reuse_existing_buffer", OLD_BUF, 32, 16, (), ()),
        Case("initial_allocation", 0, 0, 32, (0x1000,), (NEW_BUF,)),
        Case("grow_existing_buffer", OLD_BUF, 8, 32, (0x1000, 0x1000), (NEW_BUF,)),
        Case("device_missing_on_initial_alloc", 0, 0, 32, (0,), ()),
        Case("device_missing_on_free", OLD_BUF, 8, 32, (0, 0), ()),
        Case("allocation_failure", 0, 0, 32, (0x1000,), (0,)),
        Case("zero_length_request", 0, 0, 0, (), ()),
        Case("same_size_reuse", OLD_BUF, 32, 32, (), ()),
    )


CALL_OFFSETS = {
    0x34: "syna_request_managed_device",
    0x40: "devm_kfree",
    0x44: "syna_request_managed_device",
    0x58: "devm_kmalloc",
    0x70: "memset",
    0xA0: "_printk",
    0xA4: "syna_request_managed_device",
    0xBC: "_printk",
    0xD8: "_printk",
}


def run_case(function: FunctionBytes, case: Case) -> dict[str, Any]:
    code, patched_offsets = prepare_code(function.data)
    uc = Uc(UC_ARCH_ARM64, UC_MODE_ARM)
    for start, size in (
        (CODE_BASE, len(code)),
        (STACK_BASE, PAGE * 16),
        (STRUCT, PAGE),
        (OLD_BUF, PAGE),
        (NEW_BUF, PAGE),
        (RETURN_SENTINEL, PAGE),
    ):
        base, mapped_size = page_range(start, size)
        uc.mem_map(base, mapped_size)
    uc.mem_write(CODE_BASE, code)
    uc.mem_write(STRUCT, struct.pack("<QII", case.old_ptr, case.old_size, 0xA5A5A5A5))
    uc.mem_write(OLD_BUF, bytes((0xA0 + i) & 0xFF for i in range(PAGE)))
    uc.mem_write(NEW_BUF, bytes((0x5A + i) & 0xFF for i in range(PAGE)))

    device_index = 0
    kmalloc_index = 0
    calls: list[dict[str, Any]] = []
    error: str | None = None

    def next_value(values: tuple[int, ...], index: int, default: int = 0) -> int:
        return values[index] if index < len(values) else default

    def hook_code(machine: Uc, address: int, _size: int, _user: Any) -> None:
        nonlocal device_index, kmalloc_index
        if address == RETURN_SENTINEL:
            machine.emu_stop()
            return
        offset = address - CODE_BASE
        word = struct.unpack("<I", machine.mem_read(address, 4))[0]
        if (word & 0xFC000000) != 0x94000000 or (word & 0x03FFFFFF) != 0:
            return
        name = CALL_OFFSETS.get(offset)
        if name is None:
            raise ValueError(f"unexpected external BL at +0x{offset:x}")
        event = {
            "offset": f"0x{offset:x}",
            "function": name,
            "x0": read_reg(machine, UC_ARM64_REG_X0),
            "x1": read_reg(machine, UC_ARM64_REG_X1),
            "x2": read_reg(machine, UC_ARM64_REG_X2),
        }
        calls.append(event)
        if name == "syna_request_managed_device":
            value = next_value(case.device_returns, device_index)
            device_index += 1
            machine.reg_write(UC_ARM64_REG_X0, value)
        elif name == "devm_kmalloc":
            value = next_value(case.kmalloc_returns, kmalloc_index)
            kmalloc_index += 1
            machine.reg_write(UC_ARM64_REG_X0, value)
        elif name == "memset":
            ptr = read_reg(machine, UC_ARM64_REG_X0)
            length = read_reg(machine, UC_ARM64_REG_X2)
            if length:
                machine.mem_write(ptr, b"\0" * length)
            machine.reg_write(UC_ARM64_REG_X0, ptr)
        machine.reg_write(UC_ARM64_REG_PC, address + 4)

    uc.hook_add(UC_HOOK_CODE, hook_code)
    uc.reg_write(UC_ARM64_REG_SP, STACK_BASE + PAGE * 8)
    uc.reg_write(UC_ARM64_REG_LR, RETURN_SENTINEL)
    uc.reg_write(UC_ARM64_REG_X0, STRUCT)
    uc.reg_write(UC_ARM64_REG_X1, case.requested_size)
    try:
        uc.emu_start(CODE_BASE, 0, timeout=1_000_000, count=100_000)
    except (UcError, ValueError) as exc:
        error = str(exc)

    struct_bytes = bytes(uc.mem_read(STRUCT, 16))
    return {
        "return_u64": read_reg(uc, UC_ARM64_REG_X0),
        "return_s32": struct.unpack("<i", struct.pack("<I", read_reg(uc, UC_ARM64_REG_X0) & 0xFFFFFFFF))[0],
        "struct_hex": struct_bytes.hex(),
        "old_buffer_sha256": sha256_bytes(bytes(uc.mem_read(OLD_BUF, 64))),
        "new_buffer_sha256": sha256_bytes(bytes(uc.mem_read(NEW_BUF, 64))),
        "calls": calls,
        "patched_pac_offsets": patched_offsets,
        "error": error,
    }


def compare_case(stock: dict[str, Any], candidate: dict[str, Any]) -> dict[str, Any]:
    keys = ("return_u64", "return_s32", "struct_hex", "old_buffer_sha256", "new_buffer_sha256", "calls")
    differences = {
        key: {"stock": stock[key], "candidate": candidate[key]}
        for key in keys
        if stock[key] != candidate[key]
    }
    if stock.get("error") or candidate.get("error"):
        differences["emulation_error"] = {
            "stock": stock.get("error"),
            "candidate": candidate.get("error"),
        }
    return {"passed": not differences, "differences": differences}


def mutation_check(stock: FunctionBytes, candidate: FunctionBytes) -> dict[str, Any]:
    original = 0x54000222  # b.hs +0x44: reuse when old_size >= requested_size
    mutated_word = 0x54000223  # b.lo: deliberately invert the reuse predicate
    offsets = [
        offset
        for offset in range(0, len(candidate.data) - 3, 4)
        if struct.unpack_from("<I", candidate.data, offset)[0] == original
    ]
    if len(offsets) != 1:
        raise ValueError(f"expected one reuse branch, found {len(offsets)}")
    offset = offsets[0]
    mutated_data = bytearray(candidate.data)
    struct.pack_into("<I", mutated_data, offset, mutated_word)
    mutated = replace(candidate, data=bytes(mutated_data))
    differences: list[dict[str, Any]] = []
    for test_case in cases():
        stock_result = run_case(stock, test_case)
        mutated_result = run_case(mutated, test_case)
        comparison = compare_case(stock_result, mutated_result)
        if not comparison["passed"]:
            differences.append({"name": test_case.name, "differences": comparison["differences"]})
    return {
        "detected": bool(differences),
        "offset": offset,
        "original_word": hex(original),
        "mutated_word": hex(mutated_word),
        "differences": differences,
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--stock", type=Path, required=True)
    parser.add_argument("--candidate", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--mutation-check", action="store_true")
    parser.add_argument("--source-file", type=Path, required=True)
    args = parser.parse_args()
    stock = load_function(args.stock.resolve(), "syna_tcm_buf_alloc", 0)
    candidate = load_function(args.candidate.resolve(), "syna_tcm_buf_alloc", 0)
    source_file = args.source_file.resolve()
    if not source_file.is_file():
        raise ValueError(f"source file is missing: {source_file}")
    if stock.size != candidate.size:
        raise ValueError(f"function sizes differ: stock={stock.size}, candidate={candidate.size}")
    result_cases: list[dict[str, Any]] = []
    for test_case in cases():
        stock_result = run_case(stock, test_case)
        candidate_result = run_case(candidate, test_case)
        comparison = compare_case(stock_result, candidate_result)
        result_cases.append({"name": test_case.name, "stock": stock_result, "candidate": candidate_result, **comparison})
    mutation = mutation_check(stock, candidate) if args.mutation_check else None
    normal_passed = all(item["passed"] for item in result_cases)
    passed = normal_passed and (mutation is None or mutation["detected"])
    payload = {
        "schema_version": "1.0",
        "driver": "zte_tpd",
        "function": "syna_tcm_buf_alloc",
        "identity": "syna_tcm_buf_alloc@0011d594",
        "status": "PASS" if passed else "FAIL",
        "source_file": str(source_file),
        "driver_source_sha256": sha256_file(source_file),
        "mode": "relational_aarch64_unicorn",
        "passed": passed,
        "stock": {
            "path": str(stock.path), "sha256": sha256_file(stock.path), "section": stock.section,
            "virtual_address": hex(stock.virtual_address), "symbol_size": stock.size,
            "raw_function_sha256": sha256_bytes(stock.data), "symbol_index": stock.symbol_index,
        },
        "candidate": {
            "path": str(candidate.path), "sha256": sha256_file(candidate.path), "section": candidate.section,
            "virtual_address": hex(candidate.virtual_address), "symbol_size": candidate.size,
            "raw_function_sha256": sha256_bytes(candidate.data), "symbol_index": candidate.symbol_index,
        },
        "emulation_shim": {
            "tool": "Unicorn 2.x", "patched_instructions": ["PACIASP", "AUTIASP"],
            "external_bl_zero": "instrumented by function offset", "hardware": "not executed",
        },
        "cases": result_cases,
        "mutation_check": mutation,
        "inputs": [{"path": str(source_file), "sha256": sha256_file(source_file)}],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"passed": passed, "cases": len(result_cases), "output": str(args.output)}))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
