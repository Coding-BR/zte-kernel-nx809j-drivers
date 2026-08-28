#!/usr/bin/env python3
"""Relationally emulate syna_testing_check_dev_id_show from two AArch64 ELFs."""

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
    UC_ARM64_REG_X4,
    UC_ARM64_REG_X5,
)


PAGE = 0x1000
CODE_BASE = 0x01000000
STACK_BASE = 0x02000000
KOBJ = 0x03000000
PARENT = 0x03100000
GRANDPARENT = 0x03200000
TCM = 0x03300000
ITEM = 0x03400000
OUTPUT = 0x03500000
BUILD_DATA = 0x03600000
DEVICE_DATA = 0x03700000
CALLBACK_PAGE = 0x03800000
CALLBACK = CALLBACK_PAGE + 4
RETURN_SENTINEL = 0x05000000
NOP = 0xD503201F
PACIASP = 0xD503233F
AUTIASP = 0xD50323BF
MRS_SP_EL0 = 0xD5384108
MOV_X8_SP = 0x910003E8
KCFI_TYPE_ID = 0x81C04A92


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
        matches = [
            (index, item)
            for index, item in enumerate(symtab.iter_symbols())
            if item.name == symbol and item["st_size"]
        ]
        if not matches:
            raise ValueError(f"{path}: {symbol} is absent")
        index, item = matches[0]
        section = elf.get_section(item["st_shndx"])
        if section is None:
            raise ValueError(f"{path}: {symbol} has no section")
        section_offset = item["st_value"] - section["sh_addr"]
        data = section.data()[section_offset : section_offset + item["st_size"]]
        if len(data) != item["st_size"]:
            raise ValueError(f"{path}: truncated bytes for {symbol}")
        return FunctionBytes(path, symbol, section.name, item["st_value"], item["st_size"], data, index)


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
        elif word == MRS_SP_EL0:
            struct.pack_into("<I", code, offset, MOV_X8_SP)
            patched.append(offset)
    return bytes(code), patched


def reg(uc: Uc, register: int) -> int:
    return int(uc.reg_read(register))


@dataclass(frozen=True)
class Case:
    name: str
    connected: int
    item_present: int
    callback_return: int
    item_result: int
    build_data: int
    device_data: int
    build_length: int
    device_length: int
    build_busy: int
    device_busy: int
    managed_device_returns: tuple[int, ...]


def cases() -> tuple[Case, ...]:
    return (
        Case("device_disconnected", 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, ()),
        Case("missing_testing_item", 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ()),
        Case("run_pass_with_both_ids", 1, 1, 0, 1, 0x12345678, 0, 4, 4, 0, 0, (0x1000, 0x1000)),
        Case("run_callback_failure", 1, 1, 0xFFFFFFFF, 1, 0, 0, 0, 0, 0, 0, (0x1000, 0x1000)),
        Case("run_reports_failed_result", 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, (0x1000, 0x1000)),
        Case("build_buffer_busy_cleanup", 1, 1, 0, 1, 0, 0, 0, 0, 2, 0, (0x1000, 0x1000)),
        Case("device_buffer_busy_cleanup", 1, 1, 0, 1, 0, 0, 0, 0, 0, 3, (0x1000, 0x1000)),
        Case("managed_device_missing_cleanup", 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, (0, 0)),
    )


CALL_OFFSETS = {
    0x68: "syna_tcm_get_testing_0001",
    0x9C: "__mutex_init",
    0xBC: "__mutex_init",
    0x144: "scnprintf",
    0x174: "scnprintf",
    0x1A0: "scnprintf",
    0x1B4: "syna_request_managed_device",
    0x1C4: "devm_kfree",
    0x1DC: "syna_request_managed_device",
    0x1EC: "devm_kfree",
    0x208: "scnprintf",
    0x224: "scnprintf",
    0x274: "_printk",
    0x294: "_printk",
    0x2AC: "_printk",
    0x2C4: "_printk",
    0x2DC: "_printk",
    0x2E4: "__stack_chk_fail",
}


def run_case(function: FunctionBytes, case: Case) -> dict[str, Any]:
    code, patched_offsets = prepare_code(function.data)
    uc = Uc(UC_ARCH_ARM64, UC_MODE_ARM)
    for start, size in (
        (CODE_BASE, len(code)),
        (STACK_BASE, PAGE * 16),
        (KOBJ, PAGE), (PARENT, PAGE), (GRANDPARENT, PAGE), (TCM, PAGE),
        (ITEM, PAGE), (OUTPUT, PAGE * 2), (BUILD_DATA, PAGE), (DEVICE_DATA, PAGE),
        (CALLBACK_PAGE, PAGE), (RETURN_SENTINEL, PAGE),
    ):
        base, mapped_size = page_range(start, size)
        uc.mem_map(base, mapped_size)
    uc.mem_write(CODE_BASE, code)
    uc.mem_write(STACK_BASE + 0x710, struct.pack("<Q", 0xC0DEC0DEC0DEC0DE))
    uc.mem_write(KOBJ + 0x18, struct.pack("<Q", PARENT))
    uc.mem_write(PARENT + 0x18, struct.pack("<Q", GRANDPARENT))
    uc.mem_write(GRANDPARENT + 0x98, struct.pack("<Q", TCM))
    uc.mem_write(TCM, struct.pack("<Q", 0x09990000))
    uc.mem_write(TCM + 0x582, bytes([case.connected]))
    uc.mem_write(ITEM, bytes(PAGE))
    uc.mem_write(ITEM, struct.pack("<Q", 0x09990001))
    uc.mem_write(ITEM + 0x8, struct.pack("<Q", 0x09990002))
    uc.mem_write(ITEM + 0x10, struct.pack("<I", case.item_result))
    uc.mem_write(ITEM + 0x18, struct.pack("<Q", CALLBACK))
    uc.mem_write(CALLBACK_PAGE, struct.pack("<I", KCFI_TYPE_ID))
    uc.mem_write(OUTPUT, bytes([0xCC]) * (PAGE * 2))
    uc.mem_write(BUILD_DATA, struct.pack("<I", case.build_data))
    uc.mem_write(DEVICE_DATA, b"3908\0")

    call_index = 0
    callback_calls: list[dict[str, int]] = []
    calls: list[dict[str, Any]] = []
    error: str | None = None

    def next_device() -> int:
        nonlocal call_index
        value = case.managed_device_returns[call_index] if call_index < len(case.managed_device_returns) else 0x1000
        call_index += 1
        return value

    def write_output(machine: Uc, offset: int) -> int:
        if offset == 0x208:
            value = b"Device is NOT connected\n"
        elif offset == 0x144:
            value = b"\nTesting (version.4): Pass\n\n"
        elif offset == 0x174:
            value = b"Build ID: 305419896\n"
        elif offset == 0x1A0:
            value = b"Device ID: 3908\n"
        else:
            value = b"Invalid testing item id:1\n"
        ptr = reg(machine, UC_ARM64_REG_X0)
        machine.mem_write(ptr, value)
        return len(value)

    def hook_code(machine: Uc, address: int, _size: int, _user: Any) -> None:
        nonlocal call_index
        if address == RETURN_SENTINEL:
            machine.emu_stop()
            return
        if address == CALLBACK:
            callback_calls.append({"x0": reg(machine, UC_ARM64_REG_X0), "x1": reg(machine, UC_ARM64_REG_X1), "x2": reg(machine, UC_ARM64_REG_X2)})
            sp = reg(machine, UC_ARM64_REG_SP)
            machine.mem_write(sp + 0x18, struct.pack("<Q", BUILD_DATA if case.build_data else 0))
            machine.mem_write(sp + 0x24, struct.pack("<I", case.build_length))
            machine.mem_write(sp + 0x58, bytes([case.build_busy]))
            machine.mem_write(sp + 0x60, struct.pack("<Q", DEVICE_DATA if case.device_data or case.device_length else 0))
            machine.mem_write(sp + 0x6C, struct.pack("<I", case.device_length))
            machine.mem_write(sp + 0xA0, bytes([case.device_busy]))
            machine.reg_write(UC_ARM64_REG_X0, case.callback_return & 0xFFFFFFFFFFFFFFFF)
            machine.reg_write(UC_ARM64_REG_PC, reg(machine, UC_ARM64_REG_LR))
            return
        offset = address - CODE_BASE
        word = struct.unpack("<I", machine.mem_read(address, 4))[0]
        if (word & 0xFC000000) != 0x94000000 or (word & 0x03FFFFFF) != 0:
            return
        name = CALL_OFFSETS.get(offset)
        if name is None:
            raise ValueError(f"unexpected external BL at +0x{offset:x}")
        event: dict[str, Any] = {"offset": f"0x{offset:x}", "function": name}
        for label, register in (("x0", UC_ARM64_REG_X0), ("x1", UC_ARM64_REG_X1), ("x2", UC_ARM64_REG_X2), ("x3", UC_ARM64_REG_X3), ("x4", UC_ARM64_REG_X4), ("x5", UC_ARM64_REG_X5)):
            event[label] = reg(machine, register)
        calls.append(event)
        if name == "syna_tcm_get_testing_0001":
            machine.reg_write(UC_ARM64_REG_X0, ITEM if case.item_present else 0)
        elif name == "syna_request_managed_device":
            machine.reg_write(UC_ARM64_REG_X0, next_device())
        elif name == "scnprintf":
            machine.reg_write(UC_ARM64_REG_X0, write_output(machine, offset))
        elif name == "__stack_chk_fail":
            machine.emu_stop()
        machine.reg_write(UC_ARM64_REG_PC, address + 4)

    uc.hook_add(UC_HOOK_CODE, hook_code)
    sp = STACK_BASE + 0x800
    uc.reg_write(UC_ARM64_REG_SP, sp)
    uc.reg_write(UC_ARM64_REG_LR, RETURN_SENTINEL)
    uc.reg_write(UC_ARM64_REG_X0, KOBJ)
    uc.reg_write(UC_ARM64_REG_X1, 0x09990010)
    uc.reg_write(UC_ARM64_REG_X2, OUTPUT)
    try:
        uc.emu_start(CODE_BASE, 0, timeout=2_000_000, count=250_000)
    except (UcError, ValueError) as exc:
        error = str(exc)
    return {
        "return_u64": reg(uc, UC_ARM64_REG_X0),
        "return_s32": struct.unpack("<i", struct.pack("<I", reg(uc, UC_ARM64_REG_X0) & 0xFFFFFFFF))[0],
        "calls": calls,
        "callback_calls": callback_calls,
        "output_sha256": sha256_bytes(bytes(uc.mem_read(OUTPUT, 256))),
        "build_stack_hex": bytes(uc.mem_read(sp + 0x18, 0x58)).hex(),
        "device_stack_hex": bytes(uc.mem_read(sp + 0x60, 0x48)).hex(),
        "patched_offsets": patched_offsets,
        "error": error,
    }


def compare_case(stock: dict[str, Any], candidate: dict[str, Any]) -> dict[str, Any]:
    keys = ("return_u64", "return_s32", "calls", "callback_calls", "output_sha256", "build_stack_hex", "device_stack_hex")
    differences = {key: {"stock": stock[key], "candidate": candidate[key]} for key in keys if stock[key] != candidate[key]}
    if stock.get("error") or candidate.get("error"):
        differences["emulation_error"] = {"stock": stock.get("error"), "candidate": candidate.get("error")}
    return {"passed": not differences, "differences": differences}


def mutation_check(stock: FunctionBytes, candidate: FunctionBytes) -> dict[str, Any]:
    original = 0x36000CA8  # tbz connected,#0,disconnected
    mutated_word = 0x37000CA8  # tbnz: deliberately invert the connection predicate
    offsets = [offset for offset in range(0, len(candidate.data) - 3, 4) if struct.unpack_from("<I", candidate.data, offset)[0] == original]
    if len(offsets) != 1:
        raise ValueError(f"expected one connection branch, found {len(offsets)}")
    offset = offsets[0]
    data = bytearray(candidate.data)
    struct.pack_into("<I", data, offset, mutated_word)
    mutated = replace(candidate, data=bytes(data))
    differences = []
    for test_case in cases():
        comparison = compare_case(run_case(stock, test_case), run_case(mutated, test_case))
        if not comparison["passed"]:
            differences.append({"name": test_case.name, "differences": comparison["differences"]})
    return {"detected": bool(differences), "offset": offset, "original_word": hex(original), "mutated_word": hex(mutated_word), "differences": differences}


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--stock", type=Path, required=True)
    parser.add_argument("--candidate", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--mutation-check", action="store_true")
    parser.add_argument("--source-file", type=Path, required=True)
    args = parser.parse_args()
    stock = load_function(args.stock.resolve(), "syna_testing_check_dev_id_show")
    candidate = load_function(args.candidate.resolve(), "syna_testing_check_dev_id_show")
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
        "schema_version": "1.0", "driver": "zte_tpd", "function": "syna_testing_check_dev_id_show",
        "identity": "syna_testing_check_dev_id_show@0011bf08", "status": "PASS" if passed else "FAIL",
        "source_file": str(source_file), "driver_source_sha256": sha256_file(source_file),
        "mode": "relational_aarch64_unicorn", "passed": passed,
        "stock": {"path": str(stock.path), "sha256": sha256_file(stock.path), "section": stock.section, "virtual_address": hex(stock.virtual_address), "symbol_size": stock.size, "raw_function_sha256": sha256_bytes(stock.data), "symbol_index": stock.symbol_index},
        "candidate": {"path": str(candidate.path), "sha256": sha256_file(candidate.path), "section": candidate.section, "virtual_address": hex(candidate.virtual_address), "symbol_size": candidate.size, "raw_function_sha256": sha256_bytes(candidate.data), "symbol_index": candidate.symbol_index},
        "emulation_shim": {"tool": "Unicorn 2.x", "patched_instructions": ["PACIASP", "AUTIASP", "MRS SP_EL0 -> ADD X8,SP,#0"], "kcfi_type_id": hex(KCFI_TYPE_ID), "external_bl_zero": "instrumented by function offset", "hardware": "not executed"},
        "cases": result_cases, "mutation_check": mutation,
        "inputs": [{"path": str(source_file), "sha256": sha256_file(source_file)}],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"passed": passed, "cases": len(result_cases), "output": str(args.output)}))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
