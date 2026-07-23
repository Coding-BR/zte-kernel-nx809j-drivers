#!/usr/bin/env python3
"""Compile and record the NX809J zte_tpd ABI/layout probe.

This tool is offline-only. It reads the acquired stock ELF, compiles static
assertions against the configured GKI 6.12 tree, and emits hash-bound evidence.
It contains no ADB, fastboot, module-loading, or partition-writing operation.
"""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import re
import shlex
import shutil
import subprocess
from pathlib import Path
from typing import Any


TESTING_ITEMS = {
    "test_0001": (1, 0x0001, "Firmware/Device ID Test", "syna_tcm_testing_build_id"),
    "test_0002": (1, 0x0002, "Configuration ID Test", "syna_tcm_testing_config_id"),
    "test_0100": (2, 0x0100, "TRx Short Test", "syna_tcm_testing_trx_trx_short"),
    "test_0500": (1, 0x0500, "Full Raw Cap Test", "syna_tcm_testing_full_raw"),
    "test_0A00": (1, 0x0A00, "Noise Test", "syna_tcm_testing_noise"),
}


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def run(
    command: list[str], *, timeout: int = 900, capture_limit: int | None = 6000
) -> dict[str, Any]:
    completed = subprocess.run(
        command,
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
        timeout=timeout,
        check=False,
    )
    stdout = completed.stdout if capture_limit is None else completed.stdout[-capture_limit:]
    stderr = completed.stderr if capture_limit is None else completed.stderr[-capture_limit:]
    return {
        "argv": command,
        "returncode": completed.returncode,
        "stdout": stdout,
        "stderr": stderr,
    }


def docker_prefix(args: argparse.Namespace, engineering_root: Path) -> list[str]:
    toolchain_bin = f"/work/toolchains/{args.clang_revision}/bin"
    return [
        "docker",
        "run",
        "--rm",
        "-v",
        f"{args.source_volume}:/work/src:ro",
        "-v",
        f"{args.toolchain_volume}:/work/toolchains:ro",
        "-v",
        f"{engineering_root}:/work/engineering",
        "-e",
        f"PATH={toolchain_bin}:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
        args.image,
    ]


def ephemeral_layout_build_script(work_in_container: str) -> str:
    host_work = shlex.quote(work_in_container)
    return "\n".join(
        [
            "set -eu",
            "build_root=/tmp/zte_tpd_layout_probe",
            'rm -rf "$build_root"',
            f'cp -a {host_work} "$build_root"',
            'find "$build_root" -exec touch -d "@0" {} +',
            'make ARCH=arm64 LLVM=1 LLVM_IAS=1 M="$build_root" clean',
            'make ARCH=arm64 LLVM=1 LLVM_IAS=1 M="$build_root" modules',
            (
                'cp "$build_root/zte_tpd_layout_probe.o" '
                '"$build_root/zte_tpd_layout_probe.ko" '
                f"{host_work}/"
            ),
        ]
    )


def parse_stock_layout(symbols: str, relocations: str) -> dict[str, Any]:
    device_match = re.search(
        r"(?m)^\s*\d+:\s+([0-9a-fA-F]+)\s+(\d+)\s+OBJECT\s+LOCAL\s+DEFAULT\s+\d+\s+syna_spi_device\s*$",
        symbols,
    )
    release_match = re.search(
        r"(?m)^\s*\d+:\s+([0-9a-fA-F]+)\s+(\d+)\s+FUNC\s+LOCAL\s+DEFAULT\s+\d+\s+syna_spi_release\s*$",
        symbols,
    )
    if not device_match or not release_match:
        raise ValueError("stock syna_spi_device or syna_spi_release symbol is missing")

    device_value = int(device_match.group(1), 16)
    device_size = int(device_match.group(2))
    release_value = int(release_match.group(1), 16)
    relocation_matches = re.findall(
        rf"(?m)^\s*([0-9a-fA-F]+)\s+\S+\s+R_AARCH64_ABS64\s+\S+\s+\.text\s+\+\s+{release_value:x}\s*$",
        relocations,
    )
    if not relocation_matches:
        raise ValueError("stock release relocation was not found")
    relocation_offset = int(relocation_matches[0], 16)
    release_field_offset = relocation_offset - device_value
    return {
        "syna_spi_device": {
            "elf_value": f"0x{device_value:x}",
            "elf_size": device_size,
            "expected_size": 0x3F0,
        },
        "syna_spi_release": {
            "elf_value": f"0x{release_value:x}",
            "elf_size": int(release_match.group(2)),
        },
        "release_relocation": {
            "data_offset": f"0x{relocation_offset:x}",
            "field_offset_from_syna_spi_device": f"0x{release_field_offset:x}",
            "expected_field_offset": "0x338",
        },
        "passed": device_size == 0x3F0 and release_field_offset == 0x338,
    }


def parse_symbol_table(text: str) -> dict[str, dict[str, Any]]:
    records: dict[str, dict[str, Any]] = {}
    pattern = re.compile(
        r"^\s*\d+:\s+([0-9a-fA-F]+)\s+(\d+)\s+(\S+)\s+"
        r"(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s*$"
    )
    for line in text.splitlines():
        match = pattern.match(line)
        if not match:
            continue
        value, size, kind, binding, visibility, section, name = match.groups()
        records[name] = {
            "value": int(value, 16),
            "size": int(size),
            "type": kind,
            "binding": binding,
            "visibility": visibility,
            "section": section,
        }
    return records


def parse_abs64_relocations(text: str, section: str = ".rela.data") -> dict[int, dict[str, Any]]:
    records: dict[int, dict[str, Any]] = {}
    current_section: str | None = None
    header = re.compile(r"^Relocation section '([^']+)'")
    relocation = re.compile(
        r"^\s*([0-9a-fA-F]+)\s+\S+\s+R_AARCH64_ABS64\s+"
        r"[0-9a-fA-F]+\s+(\S+)(?:\s+\+\s+([0-9a-fA-F]+))?\s*$"
    )
    for line in text.splitlines():
        section_match = header.match(line)
        if section_match:
            current_section = section_match.group(1)
            continue
        if current_section != section:
            continue
        match = relocation.match(line)
        if not match:
            continue
        offset, symbol, addend = match.groups()
        records[int(offset, 16)] = {
            "symbol": symbol,
            "addend": int(addend, 16) if addend else 0,
        }
    return records


def read_c_string(blob: bytes, offset: int) -> str:
    if offset < 0 or offset >= len(blob):
        raise ValueError(f"string offset is outside section: 0x{offset:x}")
    end = blob.find(b"\0", offset)
    if end < 0:
        raise ValueError(f"string at 0x{offset:x} has no terminator")
    return blob[offset:end].decode("utf-8")


def validate_testing_items(
    symbols_text: str,
    relocations_text: str,
    data: bytes,
    strings: bytes,
) -> dict[str, Any]:
    symbols = parse_symbol_table(symbols_text)
    relocations = parse_abs64_relocations(relocations_text)
    items: dict[str, Any] = {}
    for object_name, specification in TESTING_ITEMS.items():
        expected_version, expected_id, expected_name, callback_name = specification
        obj = symbols.get(object_name)
        callback = symbols.get(callback_name)
        if obj is None or obj["type"] != "OBJECT":
            raise ValueError(f"missing testing object symbol: {object_name}")
        if callback is None or callback["type"] != "FUNC":
            raise ValueError(f"missing testing callback symbol: {callback_name}")
        base = obj["value"]
        if base + 0x178 > len(data):
            raise ValueError(f"testing object is outside .data: {object_name}")
        raw = data[base : base + 0x178]
        version = int.from_bytes(raw[0:4], "little")
        item_id = int.from_bytes(raw[4:8], "little")
        name_relocation = relocations.get(base + 0x08)
        callback_relocation = relocations.get(base + 0x18)
        if name_relocation is None or name_relocation["symbol"] != ".rodata.str1.1":
            raise ValueError(f"invalid name relocation for {object_name}")
        if callback_relocation is None:
            raise ValueError(f"missing callback relocation for {object_name}")
        name = read_c_string(strings, name_relocation["addend"])
        callback_target_matches = (
            callback_relocation["symbol"] == callback_name
            and callback_relocation["addend"] == 0
        ) or (
            callback_relocation["symbol"] == ".text"
            and callback_relocation["addend"] == callback["value"]
        )
        checks = {
            "size": obj["size"] == 0x178,
            "version": version == expected_version,
            "id": item_id == expected_id,
            "name": name == expected_name,
            "name_relocation_offset": name_relocation is not None,
            "callback_relocation_offset": callback_relocation is not None,
            "callback_target": callback_target_matches,
        }
        items[object_name] = {
            "symbol_value": f"0x{base:x}",
            "symbol_size": obj["size"],
            "raw_sha256": hashlib.sha256(raw).hexdigest(),
            "version": version,
            "id": f"0x{item_id:04x}",
            "name": name,
            "name_relocation": f"0x{base + 0x08:x}",
            "callback": callback_name,
            "callback_relocation": f"0x{base + 0x18:x}",
            "checks": checks,
            "passed": all(checks.values()),
        }
    return {
        "expected_count": len(TESTING_ITEMS),
        "validated_count": sum(item["passed"] for item in items.values()),
        "items": items,
        "passed": all(item["passed"] for item in items.values()),
    }


def default_engineering_root(script: Path = Path(__file__)) -> Path:
    repository = script.resolve().parents[2]
    return repository.parent / "kernel-docker-workspace" / "engenharia"


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--engineering-root",
        type=Path,
        default=default_engineering_root(),
    )
    parser.add_argument(
        "--run-root",
        type=Path,
        help="acquisition run containing 01_acquisition/modules/zte_tpd.ko",
    )
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--source-volume", default="nubia_sm8850_kernel_src")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    return parser.parse_args()


def find_run(engineering_root: Path, requested: Path | None) -> Path:
    if requested is not None:
        run_root = requested.expanduser().resolve()
        stock = run_root / "01_acquisition" / "modules" / "zte_tpd.ko"
        if not stock.is_file():
            raise FileNotFoundError(f"requested run has no zte_tpd.ko: {run_root}")
        return run_root
    candidates = sorted(
        (path for path in (engineering_root / "runs").iterdir() if path.is_dir()),
        key=lambda path: path.stat().st_mtime,
        reverse=True,
    )
    for run_root in candidates:
        if (run_root / "01_acquisition" / "modules" / "zte_tpd.ko").is_file():
            return run_root
    raise FileNotFoundError("no acquisition run contains zte_tpd.ko")


def main() -> int:
    args = parse_args()
    root = args.engineering_root.resolve()
    curated = root / "curated" / "zte_tpd"
    validation = root / "validation" / "zte_tpd"
    work = root / "validation" / "work" / "zte_tpd_layout_probe"
    run_root = find_run(root, args.run_root)
    stock = run_root / "01_acquisition" / "modules" / "zte_tpd.ko"
    candidate = curated / "zte_tpd.ko"
    probe_source = curated / "probes" / "layout_probe.c"
    overlay_header = curated / "zte_tpd_tcm_layout.h"
    syna_overlay_header = curated / "zte_tpd_syna_layout.h"
    testing_overlay_header = curated / "zte_tpd_testing_layout.h"
    document = curated / "DOCUMENTO_TRANSICAO.md"
    required = (
        stock,
        candidate,
        probe_source,
        overlay_header,
        syna_overlay_header,
        testing_overlay_header,
        document,
    )
    missing = [str(path) for path in required if not path.is_file()]
    if missing:
        raise FileNotFoundError("missing required files: " + ", ".join(missing))
    stock_sha256 = sha256_file(stock)
    candidate_sha256 = sha256_file(candidate)
    work_in_container = "/work/engineering/" + work.relative_to(root).as_posix()

    if work.exists():
        shutil.rmtree(work)
    work.mkdir(parents=True)
    shutil.copy2(probe_source, work / "zte_tpd_layout_probe.c")
    shutil.copy2(overlay_header, work / "zte_tpd_tcm_layout.h")
    shutil.copy2(syna_overlay_header, work / "zte_tpd_syna_layout.h")
    shutil.copy2(testing_overlay_header, work / "zte_tpd_testing_layout.h")
    stock_in_container = f"{work_in_container}/stock.input.ko"
    candidate_in_container = f"{work_in_container}/candidate.input.ko"
    (work / "Makefile").write_text(
        "# SPDX-License-Identifier: GPL-2.0-only\n"
        "obj-m += zte_tpd_layout_probe.o\n",
        encoding="ascii",
        newline="\n",
    )

    prefix = docker_prefix(args, root)
    common = [
        *prefix[:-1],
        "-w",
        "/work/src/kernel/kernel_platform/common",
        prefix[-1],
    ]
    clean = run(
        [
            *common,
            "make",
            "ARCH=arm64",
            "LLVM=1",
            "LLVM_IAS=1",
            "M=/work/engineering/validation/work/zte_tpd_layout_probe",
            "clean",
        ]
    )
    build = run(
        [
            *common,
            "sh",
            "-c",
            ephemeral_layout_build_script(work_in_container),
        ]
    )
    shutil.copy2(stock, work / "stock.input.ko")
    shutil.copy2(candidate, work / "candidate.input.ko")
    compiler = run([*prefix, "clang", "--version"])
    stock_symbols = run(
        [
            *prefix,
            "llvm-readelf",
            "-sW",
            stock_in_container,
        ],
        capture_limit=None,
    )
    stock_relocations = run(
        [
            *prefix,
            "llvm-readelf",
            "-rW",
            stock_in_container,
        ],
        capture_limit=None,
    )
    candidate_symbols = run(
        [*prefix, "llvm-readelf", "-sW", candidate_in_container],
        capture_limit=None,
    )
    candidate_relocations = run(
        [*prefix, "llvm-readelf", "-rW", candidate_in_container],
        capture_limit=None,
    )
    section_dumps = {
        "stock_data": run(
            [
                *prefix,
                "llvm-objcopy",
                f"--dump-section=.data={work_in_container}/stock.data",
                stock_in_container,
                f"{work_in_container}/stock.data.output.ko",
            ]
        ),
        "stock_strings": run(
            [
                *prefix,
                "llvm-objcopy",
                f"--dump-section=.rodata.str1.1={work_in_container}/stock.rodata.str1.1",
                stock_in_container,
                f"{work_in_container}/stock.strings.output.ko",
            ]
        ),
        "candidate_data": run(
            [
                *prefix,
                "llvm-objcopy",
                f"--dump-section=.data={work_in_container}/candidate.data",
                candidate_in_container,
                f"{work_in_container}/candidate.data.output.ko",
            ]
        ),
        "candidate_strings": run(
            [
                *prefix,
                "llvm-objcopy",
                f"--dump-section=.rodata.str1.1={work_in_container}/candidate.rodata.str1.1",
                candidate_in_container,
                f"{work_in_container}/candidate.strings.output.ko",
            ]
        ),
    }
    commands = {
        "clean": clean,
        "build": build,
        "compiler": compiler,
        "stock_symbols": stock_symbols,
        "stock_relocations": stock_relocations,
        "candidate_symbols": candidate_symbols,
        "candidate_relocations": candidate_relocations,
        **section_dumps,
    }
    failed = {
        name: {
            "returncode": result["returncode"],
            "argv": result["argv"],
            "stdout": result["stdout"],
            "stderr": result["stderr"],
        }
        for name, result in commands.items()
        if result["returncode"] != 0
    }
    if failed:
        raise RuntimeError(
            "layout validation commands failed:\n"
            + json.dumps(failed, indent=2)
        )

    stock_layout = parse_stock_layout(stock_symbols["stdout"], stock_relocations["stdout"])
    stock_testing_items = validate_testing_items(
        stock_symbols["stdout"],
        stock_relocations["stdout"],
        (work / "stock.data").read_bytes(),
        (work / "stock.rodata.str1.1").read_bytes(),
    )
    candidate_testing_items = validate_testing_items(
        candidate_symbols["stdout"],
        candidate_relocations["stdout"],
        (work / "candidate.data").read_bytes(),
        (work / "candidate.rodata.str1.1").read_bytes(),
    )
    testing_item_payloads_match = all(
        stock_testing_items["items"][name]["raw_sha256"]
        == candidate_testing_items["items"][name]["raw_sha256"]
        for name in TESTING_ITEMS
    )
    source_hashes_unchanged = (
        sha256_file(stock) == stock_sha256
        and sha256_file(candidate) == candidate_sha256
    )
    module = work / "zte_tpd_layout_probe.ko"
    obj = work / "zte_tpd_layout_probe.o"
    passed = (
        build["returncode"] == 0
        and clean["stderr"] == ""
        and build["stderr"] == ""
        and module.is_file()
        and obj.is_file()
        and stock_layout["passed"]
        and stock_testing_items["passed"]
        and candidate_testing_items["passed"]
        and testing_item_payloads_match
        and source_hashes_unchanged
    )
    validation.mkdir(parents=True, exist_ok=True)
    header_report = {
        "schema_version": "1.0",
        "status": "PASS" if passed else "FAIL",
        "driver": "zte_tpd",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "offline_compile_time_probe",
        "compiler": compiler["stdout"].splitlines()[0] if compiler["stdout"] else None,
        "kernel": "Android 16 / GKI 6.12.23 / AArch64",
        "source": {
            "path": "curated/zte_tpd/probes/layout_probe.c",
            "sha256": sha256_file(probe_source),
        },
        "overlay_header": {
            "path": "curated/zte_tpd/zte_tpd_tcm_layout.h",
            "sha256": sha256_file(overlay_header),
        },
        "syna_overlay_header": {
            "path": "curated/zte_tpd/zte_tpd_syna_layout.h",
            "sha256": sha256_file(syna_overlay_header),
        },
        "testing_overlay_header": {
            "path": "curated/zte_tpd/zte_tpd_testing_layout.h",
            "sha256": sha256_file(testing_overlay_header),
        },
        "stock": {
            "path": stock.relative_to(root).as_posix(),
            "sha256": stock_sha256,
            "layout_evidence": stock_layout,
        },
        "testing_items": {
            "stock": stock_testing_items,
            "candidate": candidate_testing_items,
            "raw_payloads_match": testing_item_payloads_match,
            "passed": (
                stock_testing_items["passed"]
                and candidate_testing_items["passed"]
                and testing_item_payloads_match
            ),
        },
        "source_hashes_unchanged": source_hashes_unchanged,
        "assertions": {
            "aarch64_pointer_size": 8,
            "platform_device_size": "0x3f0",
            "platform_device_dev_offset": "0x10",
            "device_release_offset": "0x328",
            "platform_device_release_offset": "0x338",
            "tcm_transport_flags_offset": "0x14",
            "tcm_transport_overlay_size": "0x15",
            "tcm_dev_size": "0x23e8",
            "tcm_dev_detection_state_offset": "0x08",
            "tcm_dev_firmware_mode_offset": "0x09",
            "tcm_dev_transport_offset": "0x48",
            "tcm_dev_command_delay_ms_offset": "0x20c",
            "tcm_dev_message_buf_offset": "0x240",
            "tcm_dev_message_buf_size_offset": "0x248",
            "tcm_dev_message_buf_length_offset": "0x24c",
            "tcm_dev_message_buf_mutex_offset": "0x250",
            "tcm_dev_message_buf_lock_depth_offset": "0x280",
            "tcm_dev_read_message_offset": "0x390",
            "tcm_dev_write_message_offset": "0x398",
            "syna_hw_interface_size": "0x190",
            "syna_hw_interface_irq_gpio_offset": "0xa8",
            "syna_hw_interface_reset_gpio_offset": "0xf0",
            "syna_hw_interface_reset_active_ms_offset": "0xfc",
            "syna_hw_interface_hw_reset_offset": "0x188",
            "syna_tcm_size": "0x580",
            "syna_tcm_hw_if_offset": "0x270",
            "syna_tcm_event_data_offset": "0x2a8",
            "syna_tcm_sysfs_dir_offset": "0x398",
            "syna_tcm_frame_wait_offset": "0x448",
            "syna_tcm_frame_available_offset": "0x468",
            "syna_tcm_pm_resume_completion_offset": "0x558",
            "syna_tcm_pm_resume_wait_enabled_offset": "0x578",
            "syna_tcm_pm_resume_wait_bypass_offset": "0x57c",
            "ufp_tp_ops_size": "0xa8",
            "ufp_tp_ops_single_tap_work_offset": "0x10",
            "ufp_tp_ops_delayed_work_wq_offset": "0x78",
            "ufp_tp_ops_gesture_completion_offset": "0x80",
            "ufp_tp_ops_field_a0_offset": "0xa0",
            "testing_item_size": "0x178",
            "testing_item_version_offset": "0x00",
            "testing_item_id_offset": "0x04",
            "testing_item_name_offset": "0x08",
            "testing_item_result_offset": "0x10",
            "testing_item_run_offset": "0x18",
            "testing_item_limit_primary_offset": "0x38",
            "testing_item_limit_secondary_offset": "0x40",
            "testing_item_result_data_offset": "0xd8",
            "testing_item_result_aux_offset": "0xe0",
        },
        "artifacts": {
            "object_sha256": sha256_file(obj) if obj.is_file() else None,
            "module_sha256": sha256_file(module) if module.is_file() else None,
        },
        "commands": {"clean": clean, "build": build},
        "limitations": [
            "Compilation proves header and overlay layout consistency, not device behavior.",
            "The probe is built in an ephemeral Linux filesystem with normalized mtimes; any stderr rejects the gate.",
            "The partial TCM overlay contains only offsets tied to local stock evidence.",
            "The partial Synaptics overlay contains only offsets tied to local stock ELF and disassembly evidence.",
            "The testing-item overlay names only fields whose offsets are tied to local stock ELF evidence.",
            "No module was loaded and no smartphone operation was performed.",
        ],
    }
    header_path = validation / "header_layout_probe.json"
    header_path.write_text(json.dumps(header_report, indent=2) + "\n", encoding="utf-8")

    abi_report = {
        "schema_version": "1.0",
        "status": "PASS" if passed else "FAIL",
        "driver": "zte_tpd",
        "stock_sha256": stock_sha256,
        "candidate_sha256": candidate_sha256,
        "document": "kernel_development/drivers/reconstructed/zte_tpd/DOCUMENTO_TRANSICAO.md",
        "header_probe": "reverse_engineering/validation/reconstructed/zte_tpd/header_layout_probe.json",
        "local_document": "curated/zte_tpd/DOCUMENTO_TRANSICAO.md",
        "local_header_probe": "validation/zte_tpd/header_layout_probe.json",
        "checks": [
            "compile-time AArch64 layout assertions passed with clang-r536225 against the configured GKI tree",
            "stock syna_spi_device ELF size is 0x3f0",
            "stock release relocation is at syna_spi_device + 0x338",
            "platform_device.dev and device.release offsets reproduce the stock +0x338 access",
            "partial Synaptics TCM overlay offsets compile without implicit packing",
            "testing_item size and ten recovered field offsets compile without implicit packing",
        ],
        "evidence": [
            "reverse_engineering/validation/reconstructed/zte_tpd/header_layout_probe.json",
            "kernel_development/drivers/reconstructed/zte_tpd/zte_tpd_tcm_layout.h",
            "kernel_development/drivers/reconstructed/zte_tpd/zte_tpd_testing_layout.h",
            "reverse_engineering/validation/reconstructed/zte_tpd/kcfi_direct_surface_final_comparison.json",
            "reverse_engineering/validation/reconstructed/zte_tpd/driver_audit_static_final.json",
        ],
        "semantic_equivalence": "UNPROVEN",
        "independent_review": "NOT_PERFORMED",
        "hardware_status": "DEFERRED",
        "hardware_blocker": "Controlled NX809J validation is intentionally outside this offline cycle",
    }
    abi_path = validation / "abi_validation.json"
    abi_path.write_text(json.dumps(abi_report, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"status": header_report["status"], "header_probe": str(header_path), "abi": str(abi_path)}))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
