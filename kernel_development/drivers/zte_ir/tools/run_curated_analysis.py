#!/usr/bin/env python3
"""Run the complete reproducible zte_ir reverse-engineering validation."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import re
import subprocess
import sys
import time
from pathlib import Path
from typing import Any


EXPECTED_STOCK_SHA256 = "b7a70d47bbdad67e184f968808b2c448172fc1ff16bb22e80b9beaa08d9641a1"
EXPECTED_HEADINGS = [
    "## 1. Mapeamento de Assinaturas (Conformidade GKI 6.12.23)",
    "## 2. Estrutura de Dados Estrita e Offsets (Arquivos .h)",
    "## 3. Prompts de Execução Isolada (Micro-Tarefas)",
]
STOCK_FUNCTIONS = [
    "zte_ir_write",
    "zte_ir_ioctl",
    "zte_ir_open",
    "zte_ir_release",
    "zte_ir_probe",
    "zte_ir_remove",
    "init_module",
    "cleanup_module",
]
PROBE_FUNCTIONS = [
    "kcfi_file_write",
    "kcfi_file_ioctl",
    "kcfi_file_open",
    "kcfi_file_release",
    "kcfi_spi_probe",
    "kcfi_spi_remove",
    "kcfi_module_init",
    "kcfi_module_exit",
]


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def file_record(path: Path, base: Path | None = None) -> dict[str, Any]:
    return {
        "path": str(path.relative_to(base)) if base else str(path),
        "size": path.stat().st_size,
        "sha256": sha256_file(path),
    }


def run_process(arguments: list[str], timeout: int = 120) -> dict[str, Any]:
    started = time.monotonic()
    completed = subprocess.run(
        arguments,
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
        timeout=timeout,
        check=False,
    )
    return {
        "argv": arguments,
        "returncode": completed.returncode,
        "stdout": completed.stdout,
        "stderr": completed.stderr,
        "duration_ms": round((time.monotonic() - started) * 1000),
    }


def require_success(result: dict[str, Any], label: str) -> None:
    if result["returncode"] != 0:
        detail = result["stderr"].strip() or result["stdout"].strip()
        raise RuntimeError(f"{label} failed with rc={result['returncode']}: {detail}")


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
        newline="\n",
    )


def invoke_python(script: Path, arguments: list[str], label: str) -> None:
    result = run_process([sys.executable, str(script), *arguments])
    require_success(result, label)


def discover_vmlinux(workspace_root: Path) -> Path:
    candidates = [path for path in (workspace_root / "artifacts").glob("*/vmlinux") if path.is_file()]
    if not candidates:
        raise ValueError("no artifacts/*/vmlinux candidate was found")
    return max(candidates, key=lambda path: path.stat().st_mtime_ns)


def validate_document(document: Path, headers: list[Path]) -> dict[str, Any]:
    text = document.read_text(encoding="utf-8")
    headings = re.findall(r"^## .+$", text, flags=re.MULTILINE)
    prompt_count = len(re.findall(r"^[0-9]+\. \*\*.+\*\*$", text, flags=re.MULTILINE))
    checks = {
        "exact_three_headings": headings == EXPECTED_HEADINGS,
        "balanced_code_fences": text.count("```") % 2 == 0,
        "ten_atomic_prompts": prompt_count == 10,
        "headers_exist": all(path.is_file() for path in headers),
        "contains_stock_sha256": EXPECTED_STOCK_SHA256 in text,
        "contains_ioctl_contract": "0x40046931" in text,
        "contains_kcfi_normalization_flag": (
            "-fsanitize-cfi-icall-experimental-normalize-integers" in text
        ),
    }
    return {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "passed": all(checks.values()),
        "document": str(document),
        "headings": headings,
        "prompt_count": prompt_count,
        "checks": checks,
    }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--curated-root", type=Path, help="default: parent of this tools directory")
    parser.add_argument("--run-id", default="NX809J-20260711T011653Z")
    parser.add_argument("--vmlinux", type=Path, help="default: newest artifacts/*/vmlinux")
    parser.add_argument("--serial", help="ADB serial; auto-selected when exactly one is connected")
    parser.add_argument("--skip-adb", action="store_true")
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--source-volume", default="nubia_sm8850_kernel_src")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    curated_root = (args.curated_root or Path(__file__).resolve().parents[1]).resolve()
    engineering_root = curated_root.parents[1]
    workspace_root = engineering_root.parent
    tools = curated_root / "tools"
    evidence = curated_root / "evidence"
    reports = curated_root / "reports"
    evidence.mkdir(parents=True, exist_ok=True)
    reports.mkdir(parents=True, exist_ok=True)

    stock_module = (
        engineering_root
        / "runs"
        / args.run_id
        / "01_acquisition"
        / "modules"
        / "zte_ir.ko"
    )
    ghidra_manifest = (
        engineering_root
        / "runs"
        / args.run_id
        / "03_ghidra"
        / "exports"
        / "zte_ir.ko"
        / "manifest.json"
    )
    dts_context = (
        engineering_root
        / "runs"
        / args.run_id
        / "04_documents"
        / "zte_ir.ko"
        / "dts_context.json"
    )
    for required in (stock_module, ghidra_manifest, dts_context):
        if not required.is_file():
            raise ValueError(f"required source evidence is missing: {required}")
    if sha256_file(stock_module) != EXPECTED_STOCK_SHA256:
        raise ValueError("stock zte_ir.ko SHA-256 does not match the curated target")

    vmlinux = (args.vmlinux.resolve() if args.vmlinux else discover_vmlinux(workspace_root))
    if not vmlinux.is_file():
        raise ValueError(f"vmlinux not found: {vmlinux}")

    clang = f"/work/toolchains/{args.clang_revision}/bin/clang"
    probe_build_command = [
        "docker",
        "run",
        "--rm",
        "-v",
        f"{args.toolchain_volume}:/work/toolchains:ro",
        "-v",
        f"{curated_root}:/work/curated",
        "-w",
        "/work/curated",
        args.image,
        clang,
        "--target=aarch64-linux-gnu",
        "-O2",
        "-ffreestanding",
        "-fno-builtin",
        "-fno-stack-protector",
        "-fsanitize=kcfi",
        "-fsanitize-cfi-icall-experimental-normalize-integers",
        "-c",
        "tools/kcfi_probe.c",
        "-o",
        "evidence/kcfi_probe.o",
    ]
    probe_build = run_process(probe_build_command)
    probe_build_report = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "passed": probe_build["returncode"] == 0,
        "clang_revision": args.clang_revision,
        **probe_build,
    }
    write_json(reports / "kcfi_probe_build.json", probe_build_report)
    require_success(probe_build, "KCFI probe compilation")

    stock_kcfi = evidence / "stock_kcfi.json"
    probe_kcfi = evidence / "probe_kcfi.json"
    extract_script = tools / "extract_kcfi.py"
    stock_arguments = [str(stock_module)]
    for function in STOCK_FUNCTIONS:
        stock_arguments.extend(["-f", function])
    stock_arguments.extend(["-o", str(stock_kcfi)])
    invoke_python(extract_script, stock_arguments, "stock KCFI extraction")

    probe_arguments = [str(evidence / "kcfi_probe.o")]
    for function in PROBE_FUNCTIONS:
        probe_arguments.extend(["-f", function])
    probe_arguments.extend(["-o", str(probe_kcfi)])
    invoke_python(extract_script, probe_arguments, "probe KCFI extraction")

    verify_arguments = [str(stock_kcfi), str(probe_kcfi)]
    for stock_function, probe_function in zip(STOCK_FUNCTIONS, PROBE_FUNCTIONS):
        verify_arguments.extend(["--pair", f"{stock_function}={probe_function}"])
    verify_arguments.extend(["--output", str(reports / "kcfi_validation.json")])
    invoke_python(tools / "verify_kcfi.py", verify_arguments, "KCFI verification")

    invoke_python(
        tools / "capture_kernel_layouts.py",
        [
            str(vmlinux),
            "--image",
            args.image,
            "--type",
            "mutex",
            "--type",
            "spinlock",
            "--output",
            str(evidence / "kernel_type_layouts.json"),
        ],
        "kernel layout capture",
    )
    invoke_python(
        tools / "verify_headers.py",
        [
            "--source-volume",
            args.source_volume,
            "--toolchain-volume",
            args.toolchain_volume,
            "--image",
            args.image,
            "--clang-revision",
            args.clang_revision,
            "--curated-root",
            str(curated_root),
            "--output",
            str(reports / "header_validation.json"),
        ],
        "header validation",
    )

    microtask_object = curated_root / "implementation" / "01_spi_get" / "compile_probe.o"
    microtask_report = reports / "microtask_01_spi_get.json"
    invoke_python(
        tools / "verify_microtask.py",
        [
            "--curated-root",
            str(curated_root),
            "--unit",
            "implementation/01_spi_get/compile_probe.c",
            "--implementation",
            "implementation/01_spi_get/zte_ir_spi_get.c",
            "--object",
            "implementation/01_spi_get/compile_probe.o",
            "--function",
            "zte_ir_spi_get",
            "--debug-token",
            "pr_debug",
            "--expected-symbol",
            "get_device",
            "--expected-symbol",
            "_raw_spin_lock_irqsave",
            "--expected-symbol",
            "_raw_spin_unlock_irqrestore",
            "--report",
            str(microtask_report),
            "--image",
            args.image,
            "--source-volume",
            args.source_volume,
            "--toolchain-volume",
            args.toolchain_volume,
            "--clang-revision",
            args.clang_revision,
        ],
        "microtask 01 validation",
    )
    invoke_python(
        extract_script,
        [
            str(microtask_object),
            "-f",
            "zte_ir_spi_get",
            "-o",
            str(curated_root / "implementation" / "01_spi_get" / "kcfi.json"),
        ],
        "microtask 01 KCFI extraction",
    )

    microtask_02_object = (
        curated_root / "implementation" / "02_encode_pulses" / "compile_probe.o"
    )
    microtask_02_report = reports / "microtask_02_encode_pulses.json"
    invoke_python(
        tools / "verify_microtask.py",
        [
            "--curated-root",
            str(curated_root),
            "--unit",
            "implementation/02_encode_pulses/compile_probe.c",
            "--implementation",
            "implementation/02_encode_pulses/zte_ir_encode_pulses.c",
            "--object",
            "implementation/02_encode_pulses/compile_probe.o",
            "--function",
            "zte_ir_encode_pulses",
            "--debug-token",
            "pr_debug",
            "--report",
            str(microtask_02_report),
            "--image",
            args.image,
            "--source-volume",
            args.source_volume,
            "--toolchain-volume",
            args.toolchain_volume,
            "--clang-revision",
            args.clang_revision,
        ],
        "microtask 02 kernel validation",
    )
    invoke_python(
        tools / "verify_host_test.py",
        [
            "--curated-root",
            str(curated_root),
            "--source",
            "implementation/02_encode_pulses/host_test.c",
            "--binary",
            "implementation/02_encode_pulses/host_test",
            "--report",
            str(reports / "microtask_02_host_test.json"),
            "--image",
            args.image,
        ],
        "microtask 02 functional tests",
    )
    invoke_python(
        extract_script,
        [
            str(microtask_02_object),
            "-f",
            "zte_ir_encode_pulses",
            "-o",
            str(curated_root / "implementation" / "02_encode_pulses" / "kcfi.json"),
        ],
        "microtask 02 KCFI extraction",
    )

    microtask_03_object = (
        curated_root / "implementation" / "03_write" / "compile_probe.o"
    )
    microtask_03_report = reports / "microtask_03_write.json"
    invoke_python(
        tools / "verify_microtask.py",
        [
            "--curated-root",
            str(curated_root),
            "--unit",
            "implementation/03_write/compile_probe.c",
            "--implementation",
            "implementation/03_write/zte_ir_write.c",
            "--object",
            "implementation/03_write/compile_probe.o",
            "--function",
            "zte_ir_write",
            "--debug-token",
            "dev_dbg",
            "--expected-symbol",
            "__list_add_valid_or_report",
            "--expected-symbol",
            "__stack_chk_fail",
            "--expected-symbol",
            "_raw_spin_lock_irqsave",
            "--expected-symbol",
            "_raw_spin_unlock_irqrestore",
            "--expected-symbol",
            "get_device",
            "--expected-symbol",
            "kfree",
            "--expected-symbol",
            "memdup_user",
            "--expected-symbol",
            "mutex_lock",
            "--expected-symbol",
            "mutex_unlock",
            "--expected-symbol",
            "put_device",
            "--expected-symbol",
            "spi_sync",
            "--report",
            str(microtask_03_report),
            "--image",
            args.image,
            "--source-volume",
            args.source_volume,
            "--toolchain-volume",
            args.toolchain_volume,
            "--clang-revision",
            args.clang_revision,
        ],
        "microtask 03 kernel validation",
    )
    invoke_python(
        tools / "verify_host_test.py",
        [
            "--curated-root",
            str(curated_root),
            "--source",
            "implementation/03_write/host_test.c",
            "--binary",
            "implementation/03_write/host_test",
            "--report",
            str(reports / "microtask_03_host_test.json"),
            "--image",
            args.image,
        ],
        "microtask 03 functional tests",
    )
    invoke_python(
        extract_script,
        [
            str(microtask_03_object),
            "-f",
            "zte_ir_write",
            "-o",
            str(curated_root / "implementation" / "03_write" / "kcfi.json"),
        ],
        "microtask 03 KCFI extraction",
    )

    microtask_04_object = (
        curated_root / "implementation" / "04_ioctl" / "compile_probe.o"
    )
    microtask_04_report = reports / "microtask_04_ioctl.json"
    invoke_python(
        tools / "verify_microtask.py",
        [
            "--curated-root",
            str(curated_root),
            "--unit",
            "implementation/04_ioctl/compile_probe.c",
            "--implementation",
            "implementation/04_ioctl/zte_ir_ioctl.c",
            "--object",
            "implementation/04_ioctl/compile_probe.o",
            "--function",
            "zte_ir_ioctl",
            "--debug-token",
            "pr_debug",
            "--expected-symbol",
            "mutex_lock",
            "--expected-symbol",
            "mutex_unlock",
            "--report",
            str(microtask_04_report),
            "--image",
            args.image,
            "--source-volume",
            args.source_volume,
            "--toolchain-volume",
            args.toolchain_volume,
            "--clang-revision",
            args.clang_revision,
        ],
        "microtask 04 kernel validation",
    )
    invoke_python(
        tools / "verify_host_test.py",
        [
            "--curated-root",
            str(curated_root),
            "--source",
            "implementation/04_ioctl/host_test.c",
            "--binary",
            "implementation/04_ioctl/host_test",
            "--report",
            str(reports / "microtask_04_host_test.json"),
            "--image",
            args.image,
        ],
        "microtask 04 functional tests",
    )
    invoke_python(
        extract_script,
        [
            str(microtask_04_object),
            "-f",
            "zte_ir_ioctl",
            "-o",
            str(curated_root / "implementation" / "04_ioctl" / "kcfi.json"),
        ],
        "microtask 04 KCFI extraction",
    )

    microtask_05_object = (
        curated_root / "implementation" / "05_open" / "compile_probe.o"
    )
    microtask_05_report = reports / "microtask_05_open.json"
    invoke_python(
        tools / "verify_microtask.py",
        [
            "--curated-root",
            str(curated_root),
            "--unit",
            "implementation/05_open/compile_probe.c",
            "--implementation",
            "implementation/05_open/zte_ir_open.c",
            "--object",
            "implementation/05_open/compile_probe.o",
            "--function",
            "zte_ir_open",
            "--debug-token",
            "pr_debug",
            "--expected-symbol",
            "mutex_lock",
            "--expected-symbol",
            "mutex_unlock",
            "--expected-symbol",
            "nonseekable_open",
            "--report",
            str(microtask_05_report),
            "--image",
            args.image,
            "--source-volume",
            args.source_volume,
            "--toolchain-volume",
            args.toolchain_volume,
            "--clang-revision",
            args.clang_revision,
        ],
        "microtask 05 kernel validation",
    )
    invoke_python(
        extract_script,
        [
            str(microtask_05_object),
            "-f",
            "zte_ir_open",
            "-o",
            str(curated_root / "implementation" / "05_open" / "kcfi.json"),
        ],
        "microtask 05 KCFI extraction",
    )

    microtask_06_object = (
        curated_root / "implementation" / "06_release" / "compile_probe.o"
    )
    microtask_06_report = reports / "microtask_06_release.json"
    invoke_python(
        tools / "verify_microtask.py",
        [
            "--curated-root",
            str(curated_root),
            "--unit",
            "implementation/06_release/compile_probe.c",
            "--implementation",
            "implementation/06_release/zte_ir_release.c",
            "--object",
            "implementation/06_release/compile_probe.o",
            "--function",
            "zte_ir_release",
            "--debug-token",
            "pr_debug",
            "--expected-symbol",
            "kfree",
            "--expected-symbol",
            "mutex_lock",
            "--expected-symbol",
            "mutex_unlock",
            "--report",
            str(microtask_06_report),
            "--image",
            args.image,
            "--source-volume",
            args.source_volume,
            "--toolchain-volume",
            args.toolchain_volume,
            "--clang-revision",
            args.clang_revision,
        ],
        "microtask 06 kernel validation",
    )
    invoke_python(
        extract_script,
        [
            str(microtask_06_object),
            "-f",
            "zte_ir_release",
            "-o",
            str(curated_root / "implementation" / "06_release" / "kcfi.json"),
        ],
        "microtask 06 KCFI extraction",
    )

    microtask_07_object = (
        curated_root / "implementation" / "07_probe" / "compile_probe.o"
    )
    microtask_07_report = reports / "microtask_07_probe.json"
    invoke_python(
        tools / "verify_microtask.py",
        [
            "--curated-root",
            str(curated_root),
            "--unit",
            "implementation/07_probe/compile_probe.c",
            "--implementation",
            "implementation/07_probe/zte_ir_probe.c",
            "--object",
            "implementation/07_probe/compile_probe.o",
            "--function",
            "zte_ir_probe",
            "--debug-token",
            "dev_dbg",
            "--report",
            str(microtask_07_report),
            "--image",
            args.image,
            "--source-volume",
            args.source_volume,
            "--toolchain-volume",
            args.toolchain_volume,
            "--clang-revision",
            args.clang_revision,
        ],
        "microtask 07 kernel validation",
    )
    invoke_python(
        extract_script,
        [
            str(microtask_07_object),
            "-f",
            "zte_ir_probe",
            "-o",
            str(curated_root / "implementation" / "07_probe" / "kcfi.json"),
        ],
        "microtask 07 KCFI extraction",
    )

    microtask_08_object = (
        curated_root / "implementation" / "08_remove" / "compile_probe.o"
    )
    microtask_08_report = reports / "microtask_08_remove.json"
    invoke_python(
        tools / "verify_microtask.py",
        [
            "--curated-root",
            str(curated_root),
            "--unit",
            "implementation/08_remove/compile_probe.c",
            "--implementation",
            "implementation/08_remove/zte_ir_remove.c",
            "--object",
            "implementation/08_remove/compile_probe.o",
            "--function",
            "zte_ir_remove",
            "--debug-token",
            "dev_dbg",
            "--report",
            str(microtask_08_report),
            "--image",
            args.image,
            "--source-volume",
            args.source_volume,
            "--toolchain-volume",
            args.toolchain_volume,
            "--clang-revision",
            args.clang_revision,
        ],
        "microtask 08 kernel validation",
    )
    invoke_python(
        extract_script,
        [
            str(microtask_08_object),
            "-f",
            "zte_ir_remove",
            "-o",
            str(curated_root / "implementation" / "08_remove" / "kcfi.json"),
        ],
        "microtask 08 KCFI extraction",
    )
    invoke_python(
        tools / "verify_host_test.py",
        [
            "--curated-root",
            str(curated_root),
            "--source",
            "implementation/05_08_lifecycle/host_test.c",
            "--binary",
            "implementation/05_08_lifecycle/host_test",
            "--report",
            str(reports / "microtask_05_08_lifecycle_host_test.json"),
            "--image",
            args.image,
        ],
        "microtasks 05-08 lifecycle tests",
    )

    microtask_09_object = (
        curated_root / "implementation" / "09_init" / "compile_probe.o"
    )
    microtask_09_report = reports / "microtask_09_init.json"
    invoke_python(
        tools / "verify_microtask.py",
        [
            "--curated-root",
            str(curated_root),
            "--unit",
            "implementation/09_init/compile_probe.c",
            "--implementation",
            "implementation/09_init/zte_ir_init.c",
            "--object",
            "implementation/09_init/compile_probe.o",
            "--function",
            "zte_ir_init",
            "--debug-token",
            "pr_info",
            "--report",
            str(microtask_09_report),
            "--image",
            args.image,
            "--source-volume",
            args.source_volume,
            "--toolchain-volume",
            args.toolchain_volume,
            "--clang-revision",
            args.clang_revision,
        ],
        "microtask 09 kernel validation",
    )
    invoke_python(
        extract_script,
        [
            str(microtask_09_object),
            "-f",
            "zte_ir_init",
            "-o",
            str(curated_root / "implementation" / "09_init" / "kcfi.json"),
        ],
        "microtask 09 KCFI extraction",
    )

    microtask_10_object = (
        curated_root / "implementation" / "10_exit" / "compile_probe.o"
    )
    microtask_10_report = reports / "microtask_10_exit.json"
    invoke_python(
        tools / "verify_microtask.py",
        [
            "--curated-root",
            str(curated_root),
            "--unit",
            "implementation/10_exit/compile_probe.c",
            "--implementation",
            "implementation/10_exit/zte_ir_exit.c",
            "--object",
            "implementation/10_exit/compile_probe.o",
            "--function",
            "zte_ir_exit",
            "--debug-token",
            "pr_debug",
            "--report",
            str(microtask_10_report),
            "--image",
            args.image,
            "--source-volume",
            args.source_volume,
            "--toolchain-volume",
            args.toolchain_volume,
            "--clang-revision",
            args.clang_revision,
        ],
        "microtask 10 kernel validation",
    )
    invoke_python(
        extract_script,
        [
            str(microtask_10_object),
            "-f",
            "zte_ir_exit",
            "-o",
            str(curated_root / "implementation" / "10_exit" / "kcfi.json"),
        ],
        "microtask 10 KCFI extraction",
    )
    invoke_python(
        tools / "verify_host_test.py",
        [
            "--curated-root",
            str(curated_root),
            "--source",
            "implementation/09_10_module_lifecycle/host_test.c",
            "--binary",
            "implementation/09_10_module_lifecycle/host_test",
            "--report",
            str(reports / "microtask_09_10_host_test.json"),
            "--image",
            args.image,
        ],
        "microtasks 09-10 lifecycle tests",
    )

    integrated_module = (
        curated_root / "implementation" / "final" / "zte_ir_reconstructed.ko"
    )
    invoke_python(
        tools / "build_integrated_module.py",
        [
            "--curated-root",
            str(curated_root),
            "--report",
            str(reports / "integrated_module_build.json"),
            "--image",
            args.image,
            "--source-volume",
            args.source_volume,
            "--toolchain-volume",
            args.toolchain_volume,
            "--clang-revision",
            args.clang_revision,
        ],
        "integrated module build",
    )
    integrated_kcfi = curated_root / "implementation" / "final" / "kcfi.json"
    integrated_functions = [
        "zte_ir_write",
        "zte_ir_ioctl",
        "zte_ir_open",
        "zte_ir_release",
        "zte_ir_probe",
        "zte_ir_remove",
        "init_module",
        "cleanup_module",
    ]
    integrated_kcfi_arguments = [str(integrated_module)]
    for function in integrated_functions:
        integrated_kcfi_arguments.extend(["-f", function])
    integrated_kcfi_arguments.extend(["-o", str(integrated_kcfi)])
    invoke_python(
        extract_script,
        integrated_kcfi_arguments,
        "integrated module KCFI extraction",
    )
    integrated_kcfi_verify_arguments = [str(stock_kcfi), str(integrated_kcfi)]
    for function in integrated_functions:
        integrated_kcfi_verify_arguments.extend(
            ["--pair", f"{function}={function}"]
        )
    integrated_kcfi_verify_arguments.extend(
        ["--output", str(reports / "integrated_kcfi_validation.json")]
    )
    invoke_python(
        tools / "verify_kcfi.py",
        integrated_kcfi_verify_arguments,
        "integrated module KCFI verification",
    )

    runtime_path = evidence / "runtime_adb.json"
    if not args.skip_adb:
        runtime_arguments = ["--module", "zte_ir", "--output", str(runtime_path)]
        if args.serial:
            runtime_arguments.extend(["--serial", args.serial])
        invoke_python(
            tools / "capture_android_runtime.py",
            runtime_arguments,
            "ADB runtime capture",
        )

    document_validation = validate_document(
        curated_root / "DOCUMENTO_TRANSICAO.md",
        [
            curated_root / "headers" / "zte_ir_abi.h",
            curated_root / "headers" / "zte_ir_driver_state.h",
            curated_root / "headers" / "zte_ir_layout.h",
            curated_root / "headers" / "zte_ir_runtime.h",
        ],
    )
    write_json(reports / "document_validation.json", document_validation)
    if not document_validation["passed"]:
        raise RuntimeError("transition document validation failed")

    kcfi_validation = json.loads((reports / "kcfi_validation.json").read_text(encoding="utf-8"))
    header_validation = json.loads((reports / "header_validation.json").read_text(encoding="utf-8"))
    kernel_layouts = json.loads((evidence / "kernel_type_layouts.json").read_text(encoding="utf-8"))
    layout_sizes = {record["type"]: record["size"] for record in kernel_layouts["records"]}
    microtask_validation = json.loads(microtask_report.read_text(encoding="utf-8"))
    microtask_kcfi = json.loads(
        (curated_root / "implementation" / "01_spi_get" / "kcfi.json").read_text(
            encoding="utf-8"
        )
    )
    microtask_dependencies = set(microtask_validation.get("undefined_symbols", []))
    microtask_01_passed = (
        bool(microtask_validation.get("passed"))
        and microtask_dependencies
        == {"get_device", "_raw_spin_lock_irqsave", "_raw_spin_unlock_irqrestore"}
        and not microtask_validation.get("required_module_import_ns")
        and microtask_kcfi["records"][0]["type_id"] == "0x2bc183e0"
    )
    microtask_02_validation = json.loads(
        microtask_02_report.read_text(encoding="utf-8")
    )
    microtask_02_host_test = json.loads(
        (reports / "microtask_02_host_test.json").read_text(encoding="utf-8")
    )
    microtask_02_kcfi = json.loads(
        (curated_root / "implementation" / "02_encode_pulses" / "kcfi.json").read_text(
            encoding="utf-8"
        )
    )
    microtask_02_passed = (
        bool(microtask_02_validation.get("passed"))
        and not microtask_02_validation.get("undefined_symbols")
        and not microtask_02_validation.get("required_module_import_ns")
        and bool(microtask_02_host_test.get("passed"))
        and microtask_02_host_test["execute"]["stdout"].strip()
        == "checks=81 failures=0"
        and microtask_02_kcfi["records"][0]["type_id"] == "0xc0d4c44d"
    )
    microtask_03_validation = json.loads(
        microtask_03_report.read_text(encoding="utf-8")
    )
    microtask_03_kcfi = json.loads(
        (curated_root / "implementation" / "03_write" / "kcfi.json").read_text(
            encoding="utf-8"
        )
    )
    microtask_03_dependencies = set(microtask_03_validation.get("undefined_symbols", []))
    microtask_03_host_test = json.loads(
        (reports / "microtask_03_host_test.json").read_text(encoding="utf-8")
    )
    microtask_03_passed = (
        bool(microtask_03_validation.get("passed"))
        and microtask_03_dependencies
        == {"__list_add_valid_or_report", "__stack_chk_fail", "_raw_spin_lock_irqsave", "_raw_spin_unlock_irqrestore", "get_device", "kfree", "memdup_user", "mutex_lock", "mutex_unlock", "put_device", "spi_sync"}
        and not microtask_03_validation.get("required_module_import_ns")
        and bool(microtask_03_host_test.get("passed"))
        and microtask_03_host_test["execute"]["stdout"].strip()
        == "checks=156 failures=0"
        and microtask_03_kcfi["records"][0]["type_id"] == "0xc3d43b4d"
    )
    microtask_04_validation = json.loads(
        microtask_04_report.read_text(encoding="utf-8")
    )
    microtask_04_kcfi = json.loads(
        (curated_root / "implementation" / "04_ioctl" / "kcfi.json").read_text(
            encoding="utf-8"
        )
    )
    microtask_04_dependencies = set(microtask_04_validation.get("undefined_symbols", []))
    microtask_04_host_test = json.loads(
        (reports / "microtask_04_host_test.json").read_text(encoding="utf-8")
    )
    microtask_04_passed = (
        bool(microtask_04_validation.get("passed"))
        and microtask_04_dependencies
        == {"mutex_lock", "mutex_unlock"}
        and not microtask_04_validation.get("required_module_import_ns")
        and bool(microtask_04_host_test.get("passed"))
        and microtask_04_host_test["execute"]["stdout"].strip()
        == "checks=44 failures=0"
        and microtask_04_kcfi["records"][0]["type_id"] == "0x2af6cdbb"
    )
    lifecycle_host_test = json.loads(
        (reports / "microtask_05_08_lifecycle_host_test.json").read_text(
            encoding="utf-8"
        )
    )
    lifecycle_host_passed = (
        bool(lifecycle_host_test.get("passed"))
        and lifecycle_host_test["execute"]["stdout"].strip()
        == "checks=121 failures=0"
    )
    microtask_05_validation = json.loads(
        microtask_05_report.read_text(encoding="utf-8")
    )
    microtask_05_kcfi = json.loads(
        (curated_root / "implementation" / "05_open" / "kcfi.json").read_text(
            encoding="utf-8"
        )
    )
    microtask_05_dependencies = set(microtask_05_validation.get("undefined_symbols", []))
    microtask_05_passed = (
        bool(microtask_05_validation.get("passed"))
        and microtask_05_dependencies
        == {"mutex_lock", "mutex_unlock", "nonseekable_open"}
        and not microtask_05_validation.get("required_module_import_ns")
        and lifecycle_host_passed
        and microtask_05_kcfi["records"][0]["type_id"] == "0x9829071d"
    )
    microtask_06_validation = json.loads(
        microtask_06_report.read_text(encoding="utf-8")
    )
    microtask_06_kcfi = json.loads(
        (curated_root / "implementation" / "06_release" / "kcfi.json").read_text(
            encoding="utf-8"
        )
    )
    microtask_06_dependencies = set(microtask_06_validation.get("undefined_symbols", []))
    microtask_06_passed = (
        bool(microtask_06_validation.get("passed"))
        and microtask_06_dependencies
        == {"kfree", "mutex_lock", "mutex_unlock"}
        and not microtask_06_validation.get("required_module_import_ns")
        and lifecycle_host_passed
        and microtask_06_kcfi["records"][0]["type_id"] == "0x9829071d"
    )
    microtask_07_validation = json.loads(
        microtask_07_report.read_text(encoding="utf-8")
    )
    microtask_07_kcfi = json.loads(
        (curated_root / "implementation" / "07_probe" / "kcfi.json").read_text(
            encoding="utf-8"
        )
    )
    microtask_07_dependencies = set(microtask_07_validation.get("undefined_symbols", []))
    microtask_07_passed = (
        bool(microtask_07_validation.get("passed"))
        and microtask_07_dependencies
        == {"__kmalloc_large_noprof", "__list_add_valid_or_report", "__mutex_init", "alt_cb_patch_nops", "device_create", "kfree", "mem_alloc_profiling_key", "mutex_lock", "mutex_unlock"}
        and not microtask_07_validation.get("required_module_import_ns")
        and lifecycle_host_passed
        and microtask_07_kcfi["records"][0]["type_id"] == "0xba1082a1"
    )
    microtask_08_validation = json.loads(
        microtask_08_report.read_text(encoding="utf-8")
    )
    microtask_08_kcfi = json.loads(
        (curated_root / "implementation" / "08_remove" / "kcfi.json").read_text(
            encoding="utf-8"
        )
    )
    microtask_08_dependencies = set(microtask_08_validation.get("undefined_symbols", []))
    microtask_08_passed = (
        bool(microtask_08_validation.get("passed"))
        and microtask_08_dependencies
        == {"__list_del_entry_valid_or_report", "_raw_spin_lock_irqsave", "_raw_spin_unlock_irqrestore", "alt_cb_patch_nops", "device_destroy", "kfree", "mutex_lock", "mutex_unlock"}
        and not microtask_08_validation.get("required_module_import_ns")
        and lifecycle_host_passed
        and microtask_08_kcfi["records"][0]["type_id"] == "0x509a2353"
    )
    module_lifecycle_host_test = json.loads(
        (reports / "microtask_09_10_host_test.json").read_text(encoding="utf-8")
    )
    module_lifecycle_host_passed = (
        bool(module_lifecycle_host_test.get("passed"))
        and module_lifecycle_host_test["execute"]["stdout"].strip()
        == "checks=34 failures=0"
    )
    microtask_09_validation = json.loads(
        microtask_09_report.read_text(encoding="utf-8")
    )
    microtask_09_kcfi = json.loads(
        (curated_root / "implementation" / "09_init" / "kcfi.json").read_text(
            encoding="utf-8"
        )
    )
    microtask_09_dependencies = set(microtask_09_validation.get("undefined_symbols", []))
    microtask_09_passed = (
        bool(microtask_09_validation.get("passed"))
        and microtask_09_dependencies
        == {"__register_chrdev", "__spi_register_driver", "__this_module", "__unregister_chrdev", "_printk", "class_create", "class_destroy"}
        and not microtask_09_validation.get("required_module_import_ns")
        and module_lifecycle_host_passed
        and microtask_09_kcfi["records"][0]["type_id"] == "0x6fbb3035"
    )
    microtask_10_validation = json.loads(
        microtask_10_report.read_text(encoding="utf-8")
    )
    microtask_10_kcfi = json.loads(
        (curated_root / "implementation" / "10_exit" / "kcfi.json").read_text(
            encoding="utf-8"
        )
    )
    microtask_10_dependencies = set(microtask_10_validation.get("undefined_symbols", []))
    microtask_10_passed = (
        bool(microtask_10_validation.get("passed"))
        and microtask_10_dependencies
        == {"__this_module", "__unregister_chrdev", "class_destroy", "driver_unregister"}
        and not microtask_10_validation.get("required_module_import_ns")
        and module_lifecycle_host_passed
        and microtask_10_kcfi["records"][0]["type_id"] == "0xe5c47d60"
    )
    integrated_build = json.loads(
        (reports / "integrated_module_build.json").read_text(encoding="utf-8")
    )
    integrated_kcfi_validation = json.loads(
        (reports / "integrated_kcfi_validation.json").read_text(encoding="utf-8")
    )
    integrated_module_passed = (
        bool(integrated_build.get("passed"))
        and bool(integrated_build["reproducibility"].get("passed"))
        and not integrated_build.get("unresolved_symbols")
        and not integrated_build.get("required_module_import_ns")
        and bool(integrated_kcfi_validation.get("passed"))
    )
    runtime_validation: dict[str, Any] | None = None
    if runtime_path.is_file() and not args.skip_adb:
        runtime = json.loads(runtime_path.read_text(encoding="utf-8"))
        runtime_validation = {
            "root_available": runtime["adb"]["root_available"],
            "module_loaded": runtime["module"]["loaded"],
            "bound_spi_devices": [
                device["name"] for device in runtime["module"]["bound_spi_devices"]
            ],
            "compatible": runtime["device_tree"]["properties"]["compatible"].get(
                "strings", []
            ),
        }

    validation_summary = {
        "stock_sha256": True,
        "kcfi": bool(kcfi_validation.get("passed")),
        "headers": bool(header_validation.get("passed")),
        "document": bool(document_validation.get("passed")),
        "mutex_size_48": layout_sizes.get("mutex") == 48,
        "spinlock_size_4": layout_sizes.get("spinlock") == 4,
        "microtask_01_spi_get": microtask_01_passed,
        "microtask_02_encode_pulses": microtask_02_passed,
        "microtask_03_write": microtask_03_passed,
        "microtask_04_ioctl": microtask_04_passed,
        "microtask_05_open": microtask_05_passed,
        "microtask_06_release": microtask_06_passed,
        "microtask_07_probe": microtask_07_passed,
        "microtask_08_remove": microtask_08_passed,
        "microtask_09_init": microtask_09_passed,
        "microtask_10_exit": microtask_10_passed,
        "lifecycle_05_08": lifecycle_host_passed,
        "lifecycle_09_10": module_lifecycle_host_passed,
        "integrated_module": integrated_module_passed,
        "runtime": runtime_validation,
    }
    if runtime_validation is not None:
        validation_summary["runtime_passed"] = (
            runtime_validation["root_available"]
            and runtime_validation["module_loaded"]
            and runtime_validation["bound_spi_devices"] == ["spi15.0"]
            and runtime_validation["compatible"] == ["zte,zte_ir"]
        )
    overall_passed = all(
        value for key, value in validation_summary.items() if key != "runtime" and isinstance(value, bool)
    )

    internal_files = []
    for path in sorted(curated_root.rglob("*")):
        if not path.is_file() or path.name == "MANIFEST.json" or "__pycache__" in path.parts:
            continue
        internal_files.append(file_record(path, curated_root))
    manifest = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "module": "zte_ir.ko",
        "run_id": args.run_id,
        "overall_passed": overall_passed,
        "toolchain": {
            "docker_image": args.image,
            "clang_revision": args.clang_revision,
            "kcfi_flags": [
                "-fsanitize=kcfi",
                "-fsanitize-cfi-icall-experimental-normalize-integers",
            ],
        },
        "external_sources": [
            file_record(stock_module),
            file_record(ghidra_manifest),
            file_record(dts_context),
            file_record(vmlinux),
        ],
        "validations": validation_summary,
        "files": internal_files,
    }
    write_json(curated_root / "MANIFEST.json", manifest)
    print(
        json.dumps(
            {
                "curated_root": str(curated_root),
                "manifest": str(curated_root / "MANIFEST.json"),
                "overall_passed": overall_passed,
                "validated_files": len(internal_files),
            },
            sort_keys=True,
        )
    )
    return 0 if overall_passed else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, RuntimeError, ValueError, subprocess.SubprocessError) as exc:
        print(f"error: {exc}", file=sys.stderr)
        raise SystemExit(2)
