#!/usr/bin/env python3
"""Relationally emulate syna_spi_alloc_mem from two AArch64 module ELFs."""

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
from unicorn.arm64_const import UC_ARM64_REG_LR, UC_ARM64_REG_PC, UC_ARM64_REG_SP, UC_ARM64_REG_X0, UC_ARM64_REG_X1, UC_ARM64_REG_X2

PAGE = 0x1000
CODE_BASE = 0x01000000
STACK_BASE = 0x02000000
GLOBAL_BASE = 0x06000000
XFER0 = 0x07000000
XFER1 = 0x07100000
RX0 = 0x07200000
RX1 = 0x07300000
TX0 = 0x07400000
TX1 = 0x07500000
PDEV = 0x07600000
RETURN_SENTINEL = 0x08000000
NOP = 0xD503201F
PACIASP = 0xD503233F
AUTIASP = 0xD50323BF

G_XFER_COUNT = GLOBAL_BASE + 0x00
G_XFER = GLOBAL_BASE + 0x08
G_P_DEVICE = GLOBAL_BASE + 0x10
G_BUF_SIZE = GLOBAL_BASE + 0x18
G_RX_BUF = GLOBAL_BASE + 0x20
G_TX_BUF = GLOBAL_BASE + 0x28


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
        matches = [(i, s) for i, s in enumerate(symtab.iter_symbols()) if s.name == symbol and s["st_size"]]
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
    global_adrps = {0x18: 0, 0x1C: 8, 0x38: 16, 0xAC: 24, 0xBC: 32, 0xC0: 16, 0xE4: 40}
    for offset in global_adrps:
        word = struct.unpack_from("<I", code, offset)[0]
        struct.pack_into("<I", code, offset, patch_adrp(word, CODE_BASE + offset, GLOBAL_BASE))
        patched.append(offset)
    accesses = {
        0x24: (0, 2), 0x28: (8, 3), 0x3C: (16, 3), 0x58: (16, 3), 0x88: (8, 3),
        0x90: (0, 2), 0xAC + 4: (24, 2), 0xCC: (16, 3), 0xC4: (32, 3),
        0xE0: (32, 3), 0xE8: (40, 3), 0xF0: (16, 3),
        0x104: (40, 3), 0x108: (16, 3), 0x130: (32, 3), 0x138: (16, 3),
        0x154: (40, 3), 0x160: (24, 2), 0x184: (16, 3), 0x1B8: (40, 3),
        0x20C: (8, 3), 0x224: (0, 2), 0x240: (32, 3), 0x258: (24, 2),
    }
    for offset, (global_offset, scale) in accesses.items():
        word = struct.unpack_from("<I", code, offset)[0]
        struct.pack_into("<I", code, offset, patch_mem_offset(word, global_offset, scale))
        patched.append(offset)
    return bytes(code), sorted(set(patched))


def read_reg(uc: Uc, register: int) -> int:
    return int(uc.reg_read(register))


@dataclass(frozen=True)
class Case:
    name: str
    a1: int
    a2: int
    xfer_count: int
    xfer: int
    buf_size: int
    rx_buf: int
    tx_buf: int
    p_device: int
    kmalloc_returns: tuple[int, ...]


def cases() -> tuple[Case, ...]:
    return (
        Case("reuse_all_buffers", 2, 16, 4, XFER0, 32, RX0, TX0, PDEV, ()),
        Case("grow_xfer_only", 3, 16, 1, XFER0, 32, RX0, TX0, PDEV, (XFER1,)),
        Case("initial_xfer_rx_tx_allocation", 2, 16, 0, 0, 0, 0, 0, PDEV, (XFER1, RX1, TX1)),
        Case("xfer_allocation_failure", 2, 16, 0, 0, 0, 0, 0, PDEV, (0,)),
        Case("rx_allocation_failure", 2, 16, 2, XFER0, 0, 0, 0, PDEV, (0,)),
        Case("tx_allocation_failure", 2, 16, 2, XFER0, 0, 0, 0, PDEV, (RX1, 0)),
        Case("missing_managed_device", 2, 16, 0, 0, 0, 0, 0, 0, ()),
        Case("zero_transfer_count", 0, 16, 0, 0, 0, 0, 0, PDEV, ()),
        Case("zero_buffer_size", 2, 0, 2, XFER0, 0, 0, 0, PDEV, ()),
        Case("free_existing_buffers_without_device", 2, 16, 2, XFER0, 0, RX0, TX0, 0, ()),
    )


CALL_OFFSETS = {
    0x54: "devm_kfree", 0x84: "devm_kmalloc", 0xA8: "memset", 0xDC: "devm_kfree", 0x100: "devm_kfree",
    0x12C: "devm_kmalloc", 0x150: "devm_kmalloc", 0x180: "_printk", 0x1B4: "_printk", 0x1D8: "_printk",
    0x1F0: "_printk", 0x208: "_printk", 0x220: "_printk", 0x23C: "_printk", 0x254: "_printk",
}


def run_case(function: FunctionBytes, case: Case) -> dict[str, Any]:
    code, patched_offsets = prepare_code(function.data)
    uc = Uc(UC_ARCH_ARM64, UC_MODE_ARM)
    for start, size in ((CODE_BASE, len(code)), (STACK_BASE, PAGE * 4), (GLOBAL_BASE, PAGE), (XFER0, PAGE), (XFER1, PAGE), (RX0, PAGE), (RX1, PAGE), (TX0, PAGE), (TX1, PAGE), (PDEV, PAGE), (RETURN_SENTINEL, PAGE)):
        uc.mem_map(start & ~(PAGE - 1), ((size + PAGE - 1) // PAGE) * PAGE)
    uc.mem_write(CODE_BASE, code)
    uc.mem_write(PDEV + 0x70, struct.pack("<Q", 0x07770000))
    def put64(addr: int, value: int) -> None:
        uc.mem_write(addr, struct.pack("<Q", value))
    def put32(addr: int, value: int) -> None:
        uc.mem_write(addr, struct.pack("<I", value))
    put32(G_XFER_COUNT, case.xfer_count); put64(G_XFER, case.xfer); put64(G_P_DEVICE, case.p_device)
    put32(G_BUF_SIZE, case.buf_size); put64(G_RX_BUF, case.rx_buf); put64(G_TX_BUF, case.tx_buf)
    for addr in (XFER0, XFER1, RX0, RX1, TX0, TX1):
        uc.mem_write(addr, bytes([0xA5]) * PAGE)
    kmalloc_index = 0
    calls: list[dict[str, Any]] = []
    errors: list[str] = []
    def hook_code(machine: Uc, address: int, _size: int, _user: Any) -> None:
        nonlocal kmalloc_index
        if address == RETURN_SENTINEL:
            machine.emu_stop(); return
        offset = address - CODE_BASE
        word = struct.unpack("<I", machine.mem_read(address, 4))[0]
        if (word & 0xFC000000) != 0x94000000 or (word & 0x03FFFFFF) != 0:
            return
        name = CALL_OFFSETS.get(offset)
        if name is None:
            errors.append(f"unexpected external BL at +0x{offset:x}"); machine.emu_stop(); return
        event = {"offset": f"0x{offset:x}", "function": name, "x0": read_reg(machine, UC_ARM64_REG_X0), "x1": read_reg(machine, UC_ARM64_REG_X1), "x2": read_reg(machine, UC_ARM64_REG_X2)}
        calls.append(event)
        if name == "devm_kmalloc":
            value = case.kmalloc_returns[kmalloc_index] if kmalloc_index < len(case.kmalloc_returns) else 0
            kmalloc_index += 1; machine.reg_write(UC_ARM64_REG_X0, value)
        elif name == "memset":
            ptr, length = read_reg(machine, UC_ARM64_REG_X0), read_reg(machine, UC_ARM64_REG_X2)
            if length: machine.mem_write(ptr, b"\0" * length)
            machine.reg_write(UC_ARM64_REG_X0, ptr)
        machine.reg_write(UC_ARM64_REG_PC, address + 4)
    uc.hook_add(UC_HOOK_CODE, hook_code)
    uc.reg_write(UC_ARM64_REG_SP, STACK_BASE + PAGE * 2); uc.reg_write(UC_ARM64_REG_LR, RETURN_SENTINEL)
    uc.reg_write(UC_ARM64_REG_X0, case.a1); uc.reg_write(UC_ARM64_REG_X1, case.a2); uc.reg_write(UC_ARM64_REG_X2, 0x09990000)
    error: str | None = None
    try:
        uc.emu_start(CODE_BASE, 0, timeout=2_000_000, count=200_000)
    except (UcError, ValueError) as exc:
        error = str(exc)
    globals_hex = bytes(uc.mem_read(GLOBAL_BASE, 0x30)).hex()
    return {"return_u64": read_reg(uc, UC_ARM64_REG_X0), "return_s32": struct.unpack("<i", struct.pack("<I", read_reg(uc, UC_ARM64_REG_X0) & 0xFFFFFFFF))[0], "globals_hex": globals_hex, "xfer_sha256": sha256_bytes(bytes(uc.mem_read(XFER0, 128))), "xfer1_sha256": sha256_bytes(bytes(uc.mem_read(XFER1, 128))), "rx1_sha256": sha256_bytes(bytes(uc.mem_read(RX1, 64))), "tx1_sha256": sha256_bytes(bytes(uc.mem_read(TX1, 64))), "calls": calls, "patched_offsets": patched_offsets, "error": error or (errors[0] if errors else None)}


def compare_case(stock: dict[str, Any], candidate: dict[str, Any]) -> dict[str, Any]:
    keys = ("return_u64", "return_s32", "globals_hex", "xfer_sha256", "xfer1_sha256", "rx1_sha256", "tx1_sha256", "calls")
    differences = {key: {"stock": stock[key], "candidate": candidate[key]} for key in keys if stock[key] != candidate[key]}
    if stock.get("error") or candidate.get("error"):
        differences["emulation_error"] = {"stock": stock.get("error"), "candidate": candidate.get("error")}
    return {"passed": not differences, "differences": differences}


def mutation_check(stock: FunctionBytes, candidate: FunctionBytes) -> dict[str, Any]:
    original, mutated_word = 0x54000322, 0x54000323
    offsets = [o for o in range(0, len(candidate.data) - 3, 4) if struct.unpack_from("<I", candidate.data, o)[0] == original]
    if len(offsets) != 1: raise ValueError(f"expected one xfer reuse branch, found {len(offsets)}")
    offset = offsets[0]; data = bytearray(candidate.data); struct.pack_into("<I", data, offset, mutated_word); mutated = replace(candidate, data=bytes(data))
    differences = []
    for test_case in cases():
        comparison = compare_case(run_case(stock, test_case), run_case(mutated, test_case))
        if not comparison["passed"]: differences.append({"name": test_case.name, "differences": comparison["differences"]})
    return {"detected": bool(differences), "offset": offset, "original_word": hex(original), "mutated_word": hex(mutated_word), "differences": differences}


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__); parser.add_argument("--stock", type=Path, required=True); parser.add_argument("--candidate", type=Path, required=True); parser.add_argument("--output", type=Path, required=True); parser.add_argument("--mutation-check", action="store_true"); parser.add_argument("--source-file", type=Path, required=True); args = parser.parse_args()
    stock = load_function(args.stock.resolve(), "syna_spi_alloc_mem"); candidate = load_function(args.candidate.resolve(), "syna_spi_alloc_mem"); source_file = args.source_file.resolve()
    if not source_file.is_file(): raise ValueError(f"source file is missing: {source_file}")
    if stock.size != candidate.size: raise ValueError(f"function sizes differ: stock={stock.size}, candidate={candidate.size}")
    result_cases = []
    for test_case in cases():
        stock_result, candidate_result = run_case(stock, test_case), run_case(candidate, test_case)
        result_cases.append({"name": test_case.name, "stock": stock_result, "candidate": candidate_result, **compare_case(stock_result, candidate_result)})
    mutation = mutation_check(stock, candidate) if args.mutation_check else None; normal_passed = all(x["passed"] for x in result_cases); passed = normal_passed and (mutation is None or mutation["detected"])
    payload = {"schema_version": "1.0", "driver": "zte_tpd", "function": "syna_spi_alloc_mem", "identity": "syna_spi_alloc_mem@0011a0e4", "status": "PASS" if passed else "FAIL", "source_file": str(source_file), "driver_source_sha256": sha256_file(source_file), "mode": "relational_aarch64_unicorn", "passed": passed, "stock": {"path": str(stock.path), "sha256": sha256_file(stock.path), "section": stock.section, "virtual_address": hex(stock.virtual_address), "symbol_size": stock.size, "raw_function_sha256": sha256_bytes(stock.data), "symbol_index": stock.symbol_index}, "candidate": {"path": str(candidate.path), "sha256": sha256_file(candidate.path), "section": candidate.section, "virtual_address": hex(candidate.virtual_address), "symbol_size": candidate.size, "raw_function_sha256": sha256_bytes(candidate.data), "symbol_index": candidate.symbol_index}, "emulation_shim": {"tool": "Unicorn 2.x", "patched_instructions": ["PACIASP", "AUTIASP", "global ADRP/LDST relocations materialized in harness memory"], "external_bl_zero": "instrumented by function offset", "hardware": "not executed"}, "cases": result_cases, "mutation_check": mutation, "inputs": [{"path": str(source_file), "sha256": sha256_file(source_file)}]}
    args.output.parent.mkdir(parents=True, exist_ok=True); args.output.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8"); print(json.dumps({"passed": passed, "cases": len(result_cases), "output": str(args.output)})); return 0 if passed else 1


if __name__ == "__main__": raise SystemExit(main())
