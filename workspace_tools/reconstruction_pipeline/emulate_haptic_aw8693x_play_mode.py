#!/usr/bin/env python3
"""Relationally emulate the finite u8 input domain of aw8693x_play_mode."""

from __future__ import annotations

import argparse
import hashlib
import json
import struct
from dataclasses import dataclass
from importlib.metadata import PackageNotFoundError, version
from pathlib import Path
from typing import Any

from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection
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
    UC_ARM64_REG_X8,
    UC_ARM64_REG_X9,
    UC_ARM64_REG_X10,
    UC_ARM64_REG_X11,
    UC_ARM64_REG_X12,
    UC_ARM64_REG_X13,
    UC_ARM64_REG_X14,
    UC_ARM64_REG_X15,
    UC_ARM64_REG_X16,
    UC_ARM64_REG_X17,
    UC_ARM64_REG_X18,
)

PAGE = 0x1000
CODE_BASE = 0x01000000
STACK_BASE = 0x02000000
HAPTIC = 0x03000000
RETURN_SENTINEL = 0x05000000
INITIAL_BYTE = 0xA5
PACIASP = 0xD503233F
AUTIASP = 0xD50323BF
NOP = 0xD503201F
R_AARCH64_CALL26 = 283

CALLER_SAVED = (
    UC_ARM64_REG_X0,
    UC_ARM64_REG_X1,
    UC_ARM64_REG_X2,
    UC_ARM64_REG_X3,
    UC_ARM64_REG_X4,
    UC_ARM64_REG_X5,
    UC_ARM64_REG_X6,
    UC_ARM64_REG_X7,
    UC_ARM64_REG_X8,
    UC_ARM64_REG_X9,
    UC_ARM64_REG_X10,
    UC_ARM64_REG_X11,
    UC_ARM64_REG_X12,
    UC_ARM64_REG_X13,
    UC_ARM64_REG_X14,
    UC_ARM64_REG_X15,
    UC_ARM64_REG_X16,
    UC_ARM64_REG_X17,
    UC_ARM64_REG_X18,
)


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def signed32(value: int) -> int:
    value &= 0xFFFFFFFF
    return value - 0x100000000 if value & 0x80000000 else value


@dataclass(frozen=True)
class FunctionImage:
    path: Path
    symbol: str
    section: str
    virtual_address: int
    size: int
    data: bytes
    call_sites: dict[int, str]
    non_call_relocation_count: int


def load_function(path: Path, symbol_name: str) -> FunctionImage:
    with path.open("rb") as stream:
        elf = ELFFile(stream)
        if elf["e_machine"] != "EM_AARCH64":
            raise ValueError(f"{path} is not AArch64")
        symtab = elf.get_section_by_name(".symtab")
        if symtab is None:
            raise ValueError(f"{path} has no .symtab")
        matches = [
            symbol
            for symbol in symtab.iter_symbols()
            if symbol.name == symbol_name and symbol["st_size"]
        ]
        if len(matches) != 1:
            raise ValueError(
                f"{path}: expected one non-empty {symbol_name} symbol, "
                f"found {len(matches)}"
            )

        symbol = matches[0]
        section = elf.get_section(symbol["st_shndx"])
        if section is None:
            raise ValueError(f"{path}: {symbol_name} has no section")
        start = int(symbol["st_value"])
        size = int(symbol["st_size"])
        section_offset = start - int(section["sh_addr"])
        data = section.data()[section_offset : section_offset + size]
        if len(data) != size:
            raise ValueError(f"{path}: truncated function bytes for {symbol_name}")

        call_sites: dict[int, str] = {}
        non_call_relocations = 0
        for relocation_section in elf.iter_sections():
            if not isinstance(relocation_section, RelocationSection):
                continue
            if int(relocation_section["sh_info"]) != int(symbol["st_shndx"]):
                continue
            relocation_symbols = elf.get_section(relocation_section["sh_link"])
            for relocation in relocation_section.iter_relocations():
                relocation_offset = int(relocation["r_offset"])
                if not start <= relocation_offset < start + size:
                    continue
                if int(relocation["r_info_type"]) != R_AARCH64_CALL26:
                    non_call_relocations += 1
                    continue
                name = relocation_symbols.get_symbol(
                    int(relocation["r_info_sym"])
                ).name
                offset = relocation_offset - start
                if name not in {"_printk", "i2c_w_bits"}:
                    raise ValueError(
                        f"{path}: unsupported external call {name} at +0x{offset:x}"
                    )
                if offset in call_sites:
                    raise ValueError(f"{path}: duplicate call relocation at +0x{offset:x}")
                call_sites[offset] = name

        if not call_sites:
            raise ValueError(f"{path}: no external call relocations for {symbol_name}")
        return FunctionImage(
            path=path,
            symbol=symbol_name,
            section=section.name,
            virtual_address=start,
            size=size,
            data=data,
            call_sites=call_sites,
            non_call_relocation_count=non_call_relocations,
        )


def prepare_code(raw: bytes) -> tuple[bytes, list[int]]:
    code = bytearray(raw)
    patched: list[int] = []
    for offset in range(0, len(code) - 3, 4):
        word = struct.unpack_from("<I", code, offset)[0]
        if word in {PACIASP, AUTIASP}:
            struct.pack_into("<I", code, offset, NOP)
            patched.append(offset)
    return bytes(code), patched


def emulate(
    image: FunctionImage,
    mode: int,
    i2c_return: int,
    mutation: tuple[int, int] | None = None,
) -> dict[str, Any]:
    code, patched_offsets = prepare_code(image.data)
    if mutation is not None:
        offset, replacement = mutation
        if offset < 0 or offset + 4 > len(code):
            raise ValueError("mutation offset is outside the function")
        code = bytearray(code)
        struct.pack_into("<I", code, offset, replacement)
        code = bytes(code)

    uc = Uc(UC_ARCH_ARM64, UC_MODE_ARM)
    for address, size in (
        (CODE_BASE, PAGE),
        (STACK_BASE, PAGE * 2),
        (HAPTIC, PAGE),
        (RETURN_SENTINEL, PAGE),
    ):
        uc.mem_map(address, size)
    uc.mem_write(CODE_BASE, code)
    initial = bytes([INITIAL_BYTE]) * 0x100
    uc.mem_write(HAPTIC, initial)

    events: list[dict[str, int | str]] = []
    hook_error: str | None = None

    def hook_code(machine: Uc, address: int, _size: int, _user: Any) -> None:
        nonlocal hook_error
        if address == RETURN_SENTINEL:
            machine.emu_stop()
            return
        offset = address - CODE_BASE
        target = image.call_sites.get(offset)
        if target is None:
            return

        word = struct.unpack("<I", machine.mem_read(address, 4))[0]
        if (word & 0xFC000000) != 0x94000000:
            hook_error = (
                f"call relocation at +0x{offset:x} is not BL: 0x{word:08x}"
            )
            machine.emu_stop()
            return

        if target == "_printk":
            event: dict[str, int | str] = {
                "target": target,
                "line": int(machine.reg_read(UC_ARM64_REG_X2)) & 0xFFFFFFFF,
            }
            return_value = 0
        else:
            event = {
                "target": target,
                "reg": int(machine.reg_read(UC_ARM64_REG_X1)) & 0xFF,
                "mask": int(machine.reg_read(UC_ARM64_REG_X2)) & 0xFFFFFFFF,
                "value": int(machine.reg_read(UC_ARM64_REG_X3)) & 0xFF,
            }
            return_value = i2c_return & 0xFFFFFFFF
        events.append(event)

        # Model an AAPCS64 call boundary: preserve x19-x29 and SP, clobber
        # caller-saved registers, set LR, and return the configured result.
        for index, register in enumerate(CALLER_SAVED):
            machine.reg_write(register, 0xD00D000000000000 | index)
        machine.reg_write(UC_ARM64_REG_X0, return_value)
        machine.reg_write(UC_ARM64_REG_LR, address + 4)
        machine.reg_write(UC_ARM64_REG_PC, address + 4)

    uc.hook_add(UC_HOOK_CODE, hook_code)
    stack_pointer = STACK_BASE + 0x1800
    uc.reg_write(UC_ARM64_REG_SP, stack_pointer)
    uc.reg_write(UC_ARM64_REG_LR, RETURN_SENTINEL)
    uc.reg_write(UC_ARM64_REG_X0, HAPTIC)
    uc.reg_write(UC_ARM64_REG_X1, mode & 0xFF)

    error: str | None = None
    try:
        uc.emu_start(CODE_BASE, 0, timeout=1_000_000, count=20_000)
    except UcError as exc:
        error = str(exc)
    if hook_error:
        error = hook_error

    final = bytes(uc.mem_read(HAPTIC, len(initial)))
    changed = [
        {"offset": index, "before": initial[index], "after": final[index]}
        for index in range(len(initial))
        if initial[index] != final[index]
    ]
    return {
        "mode": mode,
        "i2c_return_s32": signed32(i2c_return),
        "state_byte": final[0x17],
        "changed_bytes": changed,
        "events": events,
        "patched_pac_offsets": patched_offsets,
        "error": error,
    }


def normalize(result: dict[str, Any]) -> dict[str, Any]:
    return {
        "state_byte": result["state_byte"],
        "changed_bytes": result["changed_bytes"],
        "events": result["events"],
        "error": result["error"],
    }


def project_registers(events: list[dict[str, int | str]]) -> dict[str, Any]:
    registers: dict[int, int] = {}
    trace: list[dict[str, int]] = []
    for event in events:
        if event["target"] != "i2c_w_bits":
            continue
        register = int(event["reg"])
        mask = int(event["mask"]) & 0xFF
        value = int(event["value"]) & 0xFF
        before = registers.get(register, INITIAL_BYTE)
        after = (before & mask) | (value & (~mask & 0xFF))
        registers[register] = after
        trace.append(
            {
                "reg": register,
                "before": before,
                "mask": mask,
                "value": value,
                "after": after,
            }
        )
    return {
        "assumption": "each i2c_w_bits read/write succeeds; repeated writes read the preceding projected byte",
        "register_trace": trace,
        "final_registers": {
            f"0x{register:02x}": value
            for register, value in sorted(registers.items())
        },
    }


def find_mutation(image: FunctionImage) -> tuple[int, int, int]:
    # In the mode-2 path the first I2C call sets register 0x08 low bits to 1.
    for call_offset, target in sorted(image.call_sites.items()):
        if target != "i2c_w_bits" or call_offset < 8:
            continue
        word_offset = call_offset - 8
        word = struct.unpack_from("<I", image.data, word_offset)[0]
        if word == 0x52800023:  # mov w3, #1
            return word_offset, word, 0x2A1F03E3  # mov w3, wzr
    raise ValueError("could not locate the mode-2 register-value instruction")


def package_version(name: str) -> str:
    try:
        return version(name)
    except PackageNotFoundError:
        return "unknown"


def build_report(stock_path: Path, candidate_path: Path) -> dict[str, Any]:
    stock = load_function(stock_path, "aw8693x_play_mode")
    candidate = load_function(candidate_path, "aw8693x_play_mode")
    if stock.size != candidate.size:
        raise ValueError(f"function size mismatch: stock={stock.size}, candidate={candidate.size}")
    if stock.call_sites != candidate.call_sites:
        raise ValueError("stock and candidate external call maps differ")

    cases: list[dict[str, Any]] = []
    failures: list[dict[str, Any]] = []
    return_error_insensitive = 0
    for mode in range(256):
        stock_result = emulate(stock, mode, 0)
        candidate_result = emulate(candidate, mode, 0)
        candidate_error_result = emulate(candidate, mode, -5)
        expected_match = normalize(stock_result) == normalize(candidate_result)
        error_ignored = normalize(candidate_result) == normalize(candidate_error_result)
        if stock_result["error"] or candidate_result["error"] or candidate_error_result["error"]:
            failures.append(
                {
                    "mode": mode,
                    "errors": [
                        stock_result["error"],
                        candidate_result["error"],
                        candidate_error_result["error"],
                    ],
                }
            )
        if not expected_match:
            failures.append(
                {
                    "mode": mode,
                    "stock": normalize(stock_result),
                    "candidate": normalize(candidate_result),
                }
            )
        if not error_ignored:
            failures.append(
                {
                    "mode": mode,
                    "i2c_error_return_changed_behavior": {
                        "success": normalize(candidate_result),
                        "error": normalize(candidate_error_result),
                    },
                }
            )
        else:
            return_error_insensitive += 1
        cases.append(
            {
                "mode": mode,
                "stock_candidate_match": expected_match,
                "i2c_return_ignored": error_ignored,
                "state_byte": candidate_result["state_byte"],
                "changed_bytes": candidate_result["changed_bytes"],
                "events": candidate_result["events"],
            }
        )

    mutation_offset, original_word, mutated_word = find_mutation(candidate)
    mutated_result = emulate(
        candidate,
        2,
        0,
        mutation=(mutation_offset, mutated_word),
    )
    stock_mode_two = emulate(stock, 2, 0)
    mutation_detected = normalize(mutated_result) != normalize(stock_mode_two)
    if not mutation_detected:
        failures.append({"mutation_check": "semantic change was not detected"})

    ledger: list[dict[str, Any]] = []
    for mode in range(6):
        case = cases[mode]
        ledger.append(
            {
                "input_mode": mode,
                "classification": [
                    "standby",
                    "ram",
                    "rtp",
                    "trig",
                    "continuous",
                    "ram_loop",
                ][mode],
                "play_mode_field_offset": 0x17,
                "play_mode_field_after": case["state_byte"],
                "changed_bytes": case["changed_bytes"],
                "ordered_external_effects": case["events"],
                "projected_register_effects": project_registers(case["events"]),
            }
        )
    invalid_summary = {
        "inputs": "6..255",
        "play_mode_field_after": cases[6]["state_byte"],
        "changed_bytes": cases[6]["changed_bytes"],
        "ordered_external_effects": cases[6]["events"],
    }

    return {
        "schema_version": "1.0",
        "driver": "haptic_86938",
        "function": "aw8693x_play_mode",
        "stock_entry": "00104798",
        "model": "relational_aarch64_unicorn_finite_u8_domain",
        "status": "PASS" if not failures else "FAIL",
        "passed": not failures,
        "summary": {
            "input_values_exhausted": 256,
            "stock_candidate_matches": sum(c["stock_candidate_match"] for c in cases),
            "i2c_error_return_invariant_cases": return_error_insensitive,
            "mutation_detected": mutation_detected,
            "failure_count": len(failures),
        },
        "execution_shim": {
            "unicorn_version": package_version("unicorn"),
            "pyelftools_version": package_version("pyelftools"),
            "external_calls": {
                "_printk": "record only the line number from x2; return zero",
                "i2c_w_bits": "record reg/mask/value; return 0 or -5",
            },
            "caller_saved_registers": "clobbered per AAPCS64 at each stubbed call; x19-x29 and SP preserved",
            "patched_instructions": "PACIASP/AUTIASP replaced with NOP for emulator compatibility",
            "unresolved_rodata_relocations": {
                "count_per_function": stock.non_call_relocation_count,
                "reason_not_materialized": "addresses are passed only to the printk stub and are not dereferenced; comparisons use call order and line number",
            },
            "hardware": "not executed",
        },
        "inputs": {
            "stock_module": {
                "path": str(stock_path),
                "sha256": sha256_file(stock_path),
                "function_section": stock.section,
                "function_address": hex(stock.virtual_address),
                "function_size": stock.size,
                "raw_function_sha256": hashlib.sha256(stock.data).hexdigest(),
                "call_sites": {
                    f"0x{offset:x}": target
                    for offset, target in sorted(stock.call_sites.items())
                },
            },
            "candidate_module": {
                "path": str(candidate_path),
                "sha256": sha256_file(candidate_path),
                "function_section": candidate.section,
                "function_address": hex(candidate.virtual_address),
                "function_size": candidate.size,
                "raw_function_sha256": hashlib.sha256(candidate.data).hexdigest(),
            },
        },
        "valid_mode_state_effect_ledger": ledger,
        "invalid_mode_summary": invalid_summary,
        "cases": cases,
        "mutation_check": {
            "input_mode": 2,
            "instruction_offset": mutation_offset,
            "original_instruction_word": f"0x{original_word:08x}",
            "mutated_instruction_word": f"0x{mutated_word:08x}",
            "purpose": "change the mode-2 register value from 1 to 0 in memory only",
            "detected": mutation_detected,
            "mutated_effects": mutated_result["events"],
        },
        "failures": failures,
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--stock", type=Path, required=True)
    parser.add_argument("--candidate", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    report = build_report(args.stock.resolve(), args.candidate.resolve())
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(
        json.dumps(report, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    print(
        json.dumps(
            {
                "status": report["status"],
                "summary": report["summary"],
                "output": str(args.output.resolve()),
            },
            sort_keys=True,
        )
    )
    return 0 if report["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
