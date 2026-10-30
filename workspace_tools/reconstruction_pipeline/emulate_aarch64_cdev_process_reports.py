#!/usr/bin/env python3
"""Relationally emulate the argument and allocation-error paths of syna_cdev_process_reports."""

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
    UC_ARM64_REG_X3,
)

PAGE = 0x1000
CODE_BASE = 0x01000000
STACK_BASE = 0x02000000
GLOBAL_BASE = 0x06000000
CONTEXT = 0x07000000
PAYLOAD = 0x07100000
FIRST_BUFFER = 0x07200000
RETURN_SENTINEL = 0x08000000
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


def load_function(path: Path, symbol: str) -> FunctionBytes:
    with path.open("rb") as stream:
        elf = ELFFile(stream)
        if elf["e_machine"] != "EM_AARCH64":
            raise ValueError(f"{path} is not AArch64")
        symtab = elf.get_section_by_name(".symtab")
        if symtab is None:
            raise ValueError(f"{path} has no .symtab")
        matches = [(i, item) for i, item in enumerate(symtab.iter_symbols()) if item.name == symbol and item["st_size"]]
        if not matches:
            raise ValueError(f"{path}: {symbol} is absent")
        index, item = matches[0]
        section = elf.get_section(item["st_shndx"])
        if section is None:
            raise ValueError(f"{path}: {symbol} has no section")
        start = item["st_value"] - section["sh_addr"]
        data = section.data()[start : start + item["st_size"]]
        if len(data) != item["st_size"]:
            raise ValueError(f"{path}: truncated bytes for {symbol}")
        return FunctionBytes(path, symbol, section.name, item["st_value"], item["st_size"], data, index)


def patch_adrp(word: int, pc: int, target: int) -> int:
    delta = (target & ~0xFFF) - (pc & ~0xFFF)
    if delta % 0x1000:
        raise ValueError("ADRP target is not page aligned")
    imm = delta >> 12
    if not -(1 << 20) <= imm < (1 << 20):
        raise ValueError("ADRP target is out of range")
    return (word & 0x9F00001F) | ((imm & 3) << 29) | (((imm >> 2) & 0x7FFFF) << 5)


def patch_mem_offset(word: int, offset: int, scale: int) -> int:
    if offset % (1 << scale) or offset // (1 << scale) >= 0x1000:
        raise ValueError(f"invalid unsigned load/store offset {offset}")
    return (word & ~(0xFFF << 10)) | ((offset >> scale) << 10)


def prepare_code(raw: bytes) -> tuple[bytes, list[int]]:
    code = bytearray(raw)
    patched: list[int] = []
    for offset in range(0, len(code) - 3, 4):
        word = struct.unpack_from("<I", code, offset)[0]
        if word in {PACIASP, AUTIASP}:
            struct.pack_into("<I", code, offset, NOP)
            patched.append(offset)
        rd = word & 0x1F
        if (word & 0x9F00001F) == 0x90000000 and rd == 28:
            struct.pack_into("<I", code, offset, patch_adrp(word, CODE_BASE + offset, GLOBAL_BASE))
            patched.append(offset)
        rn = (word >> 5) & 0x1F
        if rn == 28 and (word & 0xFFC00000) == 0xB9400000:
            struct.pack_into("<I", code, offset, patch_mem_offset(word, 0, 2))
            patched.append(offset)
    return bytes(code), sorted(set(patched))


@dataclass(frozen=True)
class Case:
    name: str
    payload: int
    context: int
    length: int
    global_remaining: int
    managed_returns: tuple[int, ...]
    kmalloc_returns: tuple[int, ...]


def cases() -> tuple[Case, ...]:
    return (
        Case("null_context", PAYLOAD, 0, 8, 0, (), ()),
        Case("null_payload", 0, CONTEXT, 8, 0, (), ()),
        Case("managed_device_missing", PAYLOAD, CONTEXT, 8, 0, (0,), ()),
        Case("initial_allocation_failure", PAYLOAD, CONTEXT, 8, 0, (0x07300000,), (0,)),
    )


CALL_OFFSETS = {
    0x54: "syna_request_managed_device",
    0x6C: "devm_kmalloc",
    0x84: "syna_request_managed_device",
    0x94: "devm_kmalloc",
    0xA0: "syna_request_managed_device",
    0xB8: "_printk",
    0x118: "memcpy",
    0x1A4: "memcpy",
    0x1B4: "mutex_lock",
    0x218: "kfree",
    0x220: "kfree",
    0x254: "__kmalloc_cache_noprof",
    0x26C: "__kmalloc_noprof",
    0x284: "memcpy",
    0x28C: "ktime_get_real_ts64",
    0x314: "mutex_unlock",
    0x328: "__wake_up",
    0x338: "syna_request_managed_device",
    0x348: "devm_kfree",
    0x34C: "syna_request_managed_device",
    0x358: "devm_kfree",
    0x378: "_printk",
    0x394: "_printk",
    0x3BC: "_printk",
    0x3D8: "_printk",
    0x3F0: "_printk",
    0x3F4: "syna_request_managed_device",
    0x400: "devm_kfree",
    0x418: "_printk",
    0x43C: "_printk",
}


def read_reg(uc: Uc, register: int) -> int:
    return int(uc.reg_read(register))


def run_case(function: FunctionBytes, case: Case) -> dict[str, Any]:
    code, patched_offsets = prepare_code(function.data)
    uc = Uc(UC_ARCH_ARM64, UC_MODE_ARM)
    for start, size in (
        (CODE_BASE, 0x4000),
        (STACK_BASE, PAGE * 4),
        (GLOBAL_BASE, PAGE),
        (CONTEXT, PAGE),
        (PAYLOAD, PAGE),
        (FIRST_BUFFER, PAGE),
        (0x07300000, PAGE),
        (RETURN_SENTINEL, PAGE),
    ):
        uc.mem_map(start, ((size + PAGE - 1) // PAGE) * PAGE)
    uc.mem_write(CODE_BASE, code)
    uc.mem_write(CONTEXT, struct.pack("<Q", 0))
    uc.mem_write(PAYLOAD, bytes(range(64)))
    uc.mem_write(FIRST_BUFFER, bytes([0xA5]) * PAGE)
    uc.mem_write(GLOBAL_BASE, struct.pack("<I", case.global_remaining))
    managed_index = 0
    kmalloc_index = 0
    calls: list[dict[str, Any]] = []
    errors: list[str] = []

    def hook_code(machine: Uc, address: int, _size: int, _user: Any) -> None:
        nonlocal managed_index, kmalloc_index
        if address == RETURN_SENTINEL:
            machine.emu_stop()
            return
        offset = address - CODE_BASE
        word = struct.unpack("<I", machine.mem_read(address, 4))[0]
        if (word & 0xFC000000) != 0x94000000 or (word & 0x03FFFFFF) != 0:
            return
        name = CALL_OFFSETS.get(offset)
        if name is None:
            errors.append(f"unexpected external BL at +0x{offset:x}")
            machine.emu_stop()
            return
        event = {
            "offset": f"0x{offset:x}",
            "function": name,
            "x0": read_reg(machine, UC_ARM64_REG_X0),
            "x1": read_reg(machine, UC_ARM64_REG_X1),
            "x2": read_reg(machine, UC_ARM64_REG_X2),
            "x3": read_reg(machine, UC_ARM64_REG_X3),
        }
        calls.append(event)
        if name == "syna_request_managed_device":
            value = case.managed_returns[managed_index] if managed_index < len(case.managed_returns) else 0
            managed_index += 1
            machine.reg_write(UC_ARM64_REG_X0, value)
        elif name == "devm_kmalloc":
            value = case.kmalloc_returns[kmalloc_index] if kmalloc_index < len(case.kmalloc_returns) else 0
            kmalloc_index += 1
            machine.reg_write(UC_ARM64_REG_X0, value)
        elif name == "memcpy":
            destination = read_reg(machine, UC_ARM64_REG_X0)
            source = read_reg(machine, UC_ARM64_REG_X1)
            length = read_reg(machine, UC_ARM64_REG_X2)
            if length:
                machine.mem_write(destination, bytes(machine.mem_read(source, length)))
            machine.reg_write(UC_ARM64_REG_X0, destination)
        machine.reg_write(UC_ARM64_REG_PC, address + 4)

    uc.hook_add(UC_HOOK_CODE, hook_code)
    uc.reg_write(UC_ARM64_REG_SP, STACK_BASE + PAGE * 2)
    uc.reg_write(UC_ARM64_REG_LR, RETURN_SENTINEL)
    uc.reg_write(UC_ARM64_REG_X0, 1)
    uc.reg_write(UC_ARM64_REG_X1, case.payload)
    uc.reg_write(UC_ARM64_REG_X2, case.length)
    uc.reg_write(UC_ARM64_REG_X3, case.context)
    error: str | None = None
    try:
        uc.emu_start(CODE_BASE, 0, timeout=2_000_000, count=300_000)
    except (UcError, ValueError) as exc:
        error = str(exc)
    result = {
        "return_u64": read_reg(uc, UC_ARM64_REG_X0),
        "return_s32": struct.unpack("<i", struct.pack("<I", read_reg(uc, UC_ARM64_REG_X0) & 0xFFFFFFFF))[0],
        "calls": calls,
        "patched_offsets": [f"0x{offset:x}" for offset in patched_offsets],
        "error": error or (errors[0] if errors else None),
    }
    return result


def compare_case(stock: dict[str, Any], candidate: dict[str, Any]) -> dict[str, Any]:
    keys = ("return_u64", "return_s32", "calls")
    differences = {key: {"stock": stock[key], "candidate": candidate[key]} for key in keys if stock[key] != candidate[key]}
    if stock.get("error") or candidate.get("error"):
        differences["emulation_error"] = {"stock": stock.get("error"), "candidate": candidate.get("error")}
    return {"passed": not differences, "differences": differences}


def mutation_check(stock: FunctionBytes, candidate: FunctionBytes) -> dict[str, Any]:
    original = 0xB4001A03
    mutated_word = 0xB5001A03
    offsets = [offset for offset in range(0, len(candidate.data) - 3, 4) if struct.unpack_from("<I", candidate.data, offset)[0] == original]
    if len(offsets) != 1:
        raise ValueError(f"expected one null-context branch, found {len(offsets)}")
    offset = offsets[0]
    data = bytearray(candidate.data)
    struct.pack_into("<I", data, offset, mutated_word)
    mutated = replace(candidate, data=bytes(data))
    differences = []
    for test_case in cases():
        comparison = compare_case(run_case(stock, test_case), run_case(mutated, test_case))
        if not comparison["passed"]:
            differences.append({"name": test_case.name, "differences": comparison["differences"]})
    return {
        "detected": bool(differences),
        "offset": f"0x{offset:x}",
        "original_word": hex(original),
        "mutated_word": hex(mutated_word),
        "differences": differences,
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--stock", type=Path, required=True)
    parser.add_argument("--candidate", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--source-file", type=Path, required=True)
    parser.add_argument("--mutation-check", action="store_true")
    args = parser.parse_args()
    stock = load_function(args.stock.resolve(), "syna_cdev_process_reports")
    candidate = load_function(args.candidate.resolve(), "syna_cdev_process_reports")
    source_file = args.source_file.resolve()
    if not source_file.is_file():
        raise ValueError(f"source file is missing: {source_file}")
    if stock.size != candidate.size:
        raise ValueError(f"function sizes differ: stock={stock.size}, candidate={candidate.size}")
    result_cases = []
    for test_case in cases():
        stock_result = run_case(stock, test_case)
        candidate_result = run_case(candidate, test_case)
        result_cases.append({"name": test_case.name, "stock": stock_result, "candidate": candidate_result, **compare_case(stock_result, candidate_result)})
    mutation = mutation_check(stock, candidate) if args.mutation_check else None
    normal_passed = all(item["passed"] for item in result_cases)
    passed = normal_passed and (mutation is None or mutation["detected"])
    payload = {
        "schema_version": "1.0",
        "driver": "zte_tpd",
        "function": "syna_cdev_process_reports",
        "identity": "syna_cdev_process_reports@00117c90",
        "status": "PASS" if passed else "FAIL",
        "source_file": str(source_file),
        "driver_source_sha256": sha256_file(source_file),
        "mode": "relational_aarch64_unicorn",
        "coverage_scope": "early_argument_and_allocation_error_paths",
        "passed": passed,
        "stock": {"path": str(stock.path), "sha256": sha256_file(stock.path), "section": stock.section, "virtual_address": hex(stock.virtual_address), "symbol_size": stock.size, "raw_function_sha256": sha256_bytes(stock.data), "symbol_index": stock.symbol_index},
        "candidate": {"path": str(candidate.path), "sha256": sha256_file(candidate.path), "section": candidate.section, "virtual_address": hex(candidate.virtual_address), "symbol_size": candidate.size, "raw_function_sha256": sha256_bytes(candidate.data), "symbol_index": candidate.symbol_index},
        "emulation_shim": {"tool": "Unicorn 2.x", "patched_instructions": ["PACIASP", "AUTIASP", "g_cdev_data+0xb4 ADRP/LDST relocation materialized in harness memory"], "external_bl_zero": "instrumented by function offset", "hardware": "not executed"},
        "limitations": ["Secondary-frame allocation cleanup, FIFO linked-list insertion, queue payload, ktime, and indirect hardware callback paths are covered by the auxiliary host contract report and remain outside this focused emulator."],
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
