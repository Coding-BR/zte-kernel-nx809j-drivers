#!/usr/bin/env python3
"""Relationally emulate syna_tcm_testing_check_frame_data from two AArch64 ELFs."""

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
    UC_ARM64_REG_X6,
    UC_ARM64_REG_X7,
)


PAGE = 0x1000
CODE_BASE = 0x01000000
STACK_BASE = 0x02000000
DATA1 = 0x03000000
DATA2 = 0x03100000
CALLBACK_PAGE = 0x04000000
CALLBACK = CALLBACK_PAGE + 4
RETURN_SENTINEL = 0x05000000
KCFI_TYPE_ID = 0xA33285F2
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


def load_function(path: Path, symbol: str, symbol_index: int = 0) -> FunctionBytes:
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
        if len(matches) <= symbol_index:
            raise ValueError(
                f"{path}: {symbol} occurrence {symbol_index} is absent; "
                f"found {len(matches)}"
            )
        index, item = matches[symbol_index]
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
    """Patch only PACI/AUTI instructions, which Unicorn cannot execute here."""
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
    a1: int
    a2: int
    a3: int
    a4: int
    a5: int
    a6: int
    a7: int
    callback_returns: tuple[int, ...]


def cases() -> tuple[Case, ...]:
    return (
        Case("valid_full_shift", DATA1, 12, 2, 3, CALLBACK, DATA2, 12, (1, 1, 1, 1, 1, 1)),
        Case("valid_second_buffer_zero_offset", DATA1, 12, 2, 3, CALLBACK, DATA2, 4, (1, 1, 1, 1, 1, 1)),
        Case("callback_failure_is_accumulated", DATA1, 12, 2, 3, CALLBACK, DATA2, 12, (1, 0, 1, 1, 1, 1)),
        Case("invalid_null_callback", DATA1, 12, 2, 3, 0, DATA2, 12, ()),
        Case("invalid_null_first_buffer", 0, 12, 2, 3, CALLBACK, DATA2, 12, ()),
        Case("invalid_small_size", DATA1, 11, 2, 3, CALLBACK, DATA2, 12, ()),
        Case("zero_rows", DATA1, 0, 0, 3, CALLBACK, DATA2, 0, ()),
        Case("zero_columns", DATA1, 0, 2, 0, CALLBACK, DATA2, 0, ()),
    )


def run_case(function: FunctionBytes, case: Case) -> dict[str, Any]:
    code, patched_offsets = prepare_code(function.data)
    uc = Uc(UC_ARCH_ARM64, UC_MODE_ARM)
    for start, size in (
        (CODE_BASE, len(code)),
        (STACK_BASE, PAGE * 16),
        (DATA1, PAGE),
        (DATA2, PAGE),
        (CALLBACK_PAGE, PAGE),
        (RETURN_SENTINEL, PAGE),
    ):
        base, mapped_size = page_range(start, size)
        uc.mem_map(base, mapped_size)
    uc.mem_write(CODE_BASE, code)
    uc.mem_write(CALLBACK_PAGE, struct.pack("<I", KCFI_TYPE_ID))
    uc.mem_write(CALLBACK, struct.pack("<II", 0x52800020, 0xD65F03C0))
    uc.mem_write(DATA1, bytes(range(64)))
    uc.mem_write(DATA2, bytes(range(64, 128)))

    callback_calls: list[dict[str, int]] = []
    printk_calls: list[dict[str, int]] = []
    callback_index = 0

    def hook_code(machine: Uc, address: int, size: int, _user: Any) -> None:
        nonlocal callback_index
        word = struct.unpack("<I", machine.mem_read(address, 4))[0]
        if address == RETURN_SENTINEL:
            machine.emu_stop()
            return
        if address == CALLBACK:
            callback_calls.append({
                "x0": read_reg(machine, UC_ARM64_REG_X0),
                "x1": read_reg(machine, UC_ARM64_REG_X1),
                "x2": read_reg(machine, UC_ARM64_REG_X2),
                "x3": read_reg(machine, UC_ARM64_REG_X3),
            })
            result = (
                case.callback_returns[callback_index]
                if callback_index < len(case.callback_returns)
                else 1
            )
            callback_index += 1
            machine.reg_write(UC_ARM64_REG_X0, result)
            machine.reg_write(UC_ARM64_REG_PC, CALLBACK + 4)
            return
        if (word & 0xFC000000) == 0x94000000 and (word & 0x03FFFFFF) == 0:
            printk_calls.append({
                "x0": read_reg(machine, UC_ARM64_REG_X0),
                "x1": read_reg(machine, UC_ARM64_REG_X1),
                "x2": read_reg(machine, UC_ARM64_REG_X2),
                "x3": read_reg(machine, UC_ARM64_REG_X3),
            })
            machine.reg_write(UC_ARM64_REG_PC, address + 4)

    uc.hook_add(UC_HOOK_CODE, hook_code)
    uc.reg_write(UC_ARM64_REG_SP, STACK_BASE + PAGE * 8)
    uc.reg_write(UC_ARM64_REG_LR, RETURN_SENTINEL)
    for register, value in (
        (UC_ARM64_REG_X0, case.a1),
        (UC_ARM64_REG_X1, case.a2),
        (UC_ARM64_REG_X2, case.a3 & 0xFFFFFFFFFFFFFFFF),
        (UC_ARM64_REG_X3, case.a4 & 0xFFFFFFFFFFFFFFFF),
        (UC_ARM64_REG_X4, case.a5),
        (UC_ARM64_REG_X5, case.a6),
        (UC_ARM64_REG_X6, case.a7),
        (UC_ARM64_REG_X7, 0),
    ):
        uc.reg_write(register, value)
    error: str | None = None
    try:
        uc.emu_start(CODE_BASE, 0, timeout=1_000_000, count=100_000)
    except UcError as exc:
        error = str(exc)
    return {
        "return": read_reg(uc, UC_ARM64_REG_X0) & 1,
        "callback_calls": callback_calls,
        "printk_calls": printk_calls,
        "patched_pac_offsets": patched_offsets,
        "error": error,
    }


def compare_case(stock: dict[str, Any], candidate: dict[str, Any]) -> dict[str, Any]:
    keys = ("return", "callback_calls", "printk_calls")
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
    """Ensure the oracle detects the accumulator defect in the candidate bytes."""
    original = 0x0A1C001C  # and w28, w0, w28
    mutated_word = 0x2A1C001C  # orr w28, w0, w28
    offsets = [
        offset
        for offset in range(0, len(candidate.data) - 3, 4)
        if struct.unpack_from("<I", candidate.data, offset)[0] == original
    ]
    if len(offsets) != 1:
        raise ValueError(f"expected one accumulator instruction, found {len(offsets)}")
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
            differences.append({
                "name": test_case.name,
                "differences": comparison["differences"],
            })
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
    parser.add_argument(
        "--mutation-check",
        action="store_true",
        help="mutate the accumulator instruction and require the oracle to detect it",
    )
    parser.add_argument("--source-file", type=Path, required=True)
    args = parser.parse_args()
    stock = load_function(args.stock.resolve(), "syna_tcm_testing_check_frame_data", 0)
    candidate = load_function(args.candidate.resolve(), "syna_tcm_testing_check_frame_data", 0)
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
        result_cases.append({
            "name": test_case.name,
            "stock": stock_result,
            "candidate": candidate_result,
            **comparison,
        })
    mutation = mutation_check(stock, candidate) if args.mutation_check else None
    normal_passed = all(item["passed"] for item in result_cases)
    payload = {
        "schema_version": "1.0",
        "driver": "zte_tpd",
        "function": "syna_tcm_testing_check_frame_data",
        "identity": "syna_tcm_testing_check_frame_data@0011d0ec",
        "status": "PASS" if normal_passed and (mutation is None or mutation["detected"]) else "FAIL",
        "source_file": str(source_file),
        "driver_source_sha256": sha256_file(source_file),
        "mode": "relational_aarch64_unicorn",
        "passed": normal_passed and (mutation is None or mutation["detected"]),
        "stock": {
            "path": str(stock.path),
            "sha256": sha256_file(stock.path),
            "section": stock.section,
            "symbol_size": stock.size,
            "raw_function_sha256": sha256_bytes(stock.data),
            "symbol_index": stock.symbol_index,
        },
        "candidate": {
            "path": str(candidate.path),
            "sha256": sha256_file(candidate.path),
            "section": candidate.section,
            "symbol_size": candidate.size,
            "raw_function_sha256": sha256_bytes(candidate.data),
            "symbol_index": candidate.symbol_index,
        },
        "emulation_shim": {
            "tool": "Unicorn 2.x",
            "patched_instructions": ["PACIASP", "AUTIASP"],
            "external_bl_zero": "intercepted as printk and skipped",
            "kcfi_type_id": hex(KCFI_TYPE_ID),
            "hardware": "not executed",
        },
        "cases": result_cases,
        "mutation_check": mutation,
        "inputs": [
            {
                "path": str(source_file),
                "sha256": sha256_file(source_file),
            }
        ],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({
        "passed": payload["passed"],
        "cases": len(result_cases),
        "output": str(args.output),
    }))
    return 0 if payload["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
