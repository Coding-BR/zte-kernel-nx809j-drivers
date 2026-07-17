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
import shutil
import subprocess
from pathlib import Path
from typing import Any


STOCK_SHA256 = "a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342"
CANDIDATE_SHA256 = "190fffc9ee04abb2ae198b1ed833704a3890345747a4d593a971e7a03d36eb2d"
RUN_ID = "NX809J-20260711T011653Z"


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


def parse_args() -> argparse.Namespace:
    script = Path(__file__).resolve()
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--engineering-root", type=Path, default=script.parents[1])
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--source-volume", default="nubia_sm8850_kernel_src")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    root = args.engineering_root.resolve()
    curated = root / "curated" / "zte_tpd"
    validation = root / "validation" / "zte_tpd"
    work = root / "validation" / "work" / "zte_tpd_layout_probe"
    stock = root / "runs" / RUN_ID / "01_acquisition" / "modules" / "zte_tpd.ko"
    candidate = curated / "zte_tpd.ko"
    probe_source = curated / "probes" / "layout_probe.c"
    overlay_header = curated / "zte_tpd_tcm_layout.h"
    document = curated / "DOCUMENTO_TRANSICAO.md"
    required = (stock, candidate, probe_source, overlay_header, document)
    missing = [str(path) for path in required if not path.is_file()]
    if missing:
        raise FileNotFoundError("missing required files: " + ", ".join(missing))
    if sha256_file(stock) != STOCK_SHA256:
        raise ValueError("stock SHA-256 differs from the acquired source of truth")
    if sha256_file(candidate) != CANDIDATE_SHA256:
        raise ValueError("candidate SHA-256 differs from the promoted canonical module")

    if work.exists():
        shutil.rmtree(work)
    work.mkdir(parents=True)
    shutil.copy2(probe_source, work / "zte_tpd_layout_probe.c")
    shutil.copy2(overlay_header, work / "zte_tpd_tcm_layout.h")
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
            "make",
            "ARCH=arm64",
            "LLVM=1",
            "LLVM_IAS=1",
            "M=/work/engineering/validation/work/zte_tpd_layout_probe",
            "modules",
        ]
    )
    compiler = run([*prefix, "clang", "--version"])
    stock_symbols = run(
        [
            *prefix,
            "llvm-readelf",
            "-sW",
            f"/work/engineering/runs/{RUN_ID}/01_acquisition/modules/zte_tpd.ko",
        ],
        capture_limit=None,
    )
    stock_relocations = run(
        [
            *prefix,
            "llvm-readelf",
            "-rW",
            f"/work/engineering/runs/{RUN_ID}/01_acquisition/modules/zte_tpd.ko",
        ],
        capture_limit=None,
    )
    commands = (clean, build, compiler, stock_symbols, stock_relocations)
    if any(item["returncode"] != 0 for item in commands):
        raise RuntimeError("layout validation command failed")

    stock_layout = parse_stock_layout(stock_symbols["stdout"], stock_relocations["stdout"])
    module = work / "zte_tpd_layout_probe.ko"
    obj = work / "zte_tpd_layout_probe.o"
    passed = build["returncode"] == 0 and module.is_file() and obj.is_file() and stock_layout["passed"]
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
        "stock": {"sha256": STOCK_SHA256, "layout_evidence": stock_layout},
        "assertions": {
            "aarch64_pointer_size": 8,
            "platform_device_size": "0x3f0",
            "platform_device_dev_offset": "0x10",
            "device_release_offset": "0x328",
            "platform_device_release_offset": "0x338",
            "tcm_transport_flags_offset": "0x14",
            "tcm_transport_overlay_size": "0x15",
            "tcm_dev_size": "0x3a0",
            "tcm_dev_firmware_mode_offset": "0x09",
            "tcm_dev_transport_offset": "0x48",
            "tcm_dev_command_delay_ms_offset": "0x20c",
            "tcm_dev_write_message_offset": "0x398",
        },
        "artifacts": {
            "object_sha256": sha256_file(obj) if obj.is_file() else None,
            "module_sha256": sha256_file(module) if module.is_file() else None,
        },
        "commands": {"clean": clean, "build": build},
        "limitations": [
            "Compilation proves header and overlay layout consistency, not device behavior.",
            "The partial TCM overlay contains only offsets tied to local stock evidence.",
            "No module was loaded and no smartphone operation was performed.",
        ],
    }
    header_path = validation / "header_layout_probe.json"
    header_path.write_text(json.dumps(header_report, indent=2) + "\n", encoding="utf-8")

    abi_report = {
        "schema_version": "1.0",
        "status": "PASS" if passed else "FAIL",
        "driver": "zte_tpd",
        "stock_sha256": STOCK_SHA256,
        "candidate_sha256": CANDIDATE_SHA256,
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
        ],
        "evidence": [
            "reverse_engineering/validation/reconstructed/zte_tpd/header_layout_probe.json",
            "kernel_development/drivers/reconstructed/zte_tpd/zte_tpd_tcm_layout.h",
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
