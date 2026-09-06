#!/usr/bin/env python3
"""Run the offline cleanup_module contract and AArch64 object gates."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path


SOURCE = "kernel_development/drivers/reconstructed/zte_tpd/cleanup_module.c"
HOST_HARNESS = "kernel_development/drivers/validation/zte_tpd/host/cleanup_module_contract_test.c"
SOURCE_INCLUDE = '#include "defs.h"\n'
TRANSFORMED_PRELUDE = (
    "#define __int64 long long\n"
    "#define __exit\n"
    "struct platform_driver { unsigned long marker; };\n"
    "extern struct platform_driver zte_touch_device_driver;\n"
    "extern void platform_driver_unregister(struct platform_driver *);\n"
)
EXPECTED_OUTPUT = "PASS cleanup_module host tests (1 case)"


def sha256_file(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def run(command: list[str]) -> subprocess.CompletedProcess[str]:
    return subprocess.run(command, text=True, capture_output=True, check=False)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    root = Path(__file__).resolve().parents[2]
    parser.add_argument("--workspace", type=Path, default=root)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    parser.add_argument("--repetitions", type=int, default=2)
    args = parser.parse_args()
    if args.repetitions < 1:
        parser.error("--repetitions must be at least 1")

    workspace = args.workspace.resolve()
    output = args.output.resolve()
    output.mkdir(parents=True, exist_ok=True)
    source = workspace / SOURCE
    host_harness = workspace / HOST_HARNESS
    if not source.is_file() or not host_harness.is_file():
        raise FileNotFoundError("missing cleanup_module harness input")
    source_text = source.read_text(encoding="utf-8")
    if not source_text.startswith(SOURCE_INCLUDE):
        raise ValueError("unexpected cleanup_module transformation boundary")
    transformed = output / "cleanup_module_under_test.c"
    transformed.write_text(
        TRANSFORMED_PRELUDE + source_text.removeprefix(SOURCE_INCLUDE),
        encoding="utf-8",
        newline="\n",
    )

    container_root = "/work/workspace"
    clang = f"/toolchains/{args.clang_revision}/bin/clang"
    container_harness = f"{container_root}/{HOST_HARNESS}"
    container_source = "/work/output/cleanup_module_under_test.c"
    host_executable = "/work/output/cleanup_module_host_test"
    host_command = [
        "docker", "run", "--rm", "-v", f"{workspace}:{container_root}",
        "-v", f"{output}:/work/output", "-v",
        f"{args.toolchain_volume}:/toolchains:ro", args.image, "sh", "-lc",
        f"{clang} -std=gnu11 -O1 -g -Wall -Wextra -Werror "
        f"-fno-omit-frame-pointer -fno-pie -no-pie "
        f"-fsanitize=address,undefined -Wl,--build-id=none "
        f"{container_harness} {container_source} -o {host_executable} && "
        f"ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 "
        f"UBSAN_OPTIONS=halt_on_error=1 {host_executable}",
    ]
    executions = []
    for index in range(args.repetitions):
        completed = run(host_command)
        executions.append({
            "cycle": index + 1,
            "returncode": completed.returncode,
            "passed": completed.returncode == 0 and EXPECTED_OUTPUT in completed.stdout,
            "stdout": completed.stdout,
            "stderr": completed.stderr,
        })
    host_passed = all(item["passed"] for item in executions)

    aarch64_dir = output / "aarch64"
    aarch64_dir.mkdir(parents=True, exist_ok=True)
    object_path = aarch64_dir / "cleanup_module.o"
    container_object = "/work/output/aarch64/cleanup_module.o"
    aarch64_command = [
        "docker", "run", "--rm", "-v", f"{workspace}:{container_root}",
        "-v", f"{output}:/work/output", "-v",
        f"{args.toolchain_volume}:/toolchains:ro", args.image, "sh", "-lc",
        f"{clang} -target aarch64-linux-gnu -std=gnu11 -O2 -ffreestanding "
        f"-fno-builtin -Wall -Wextra -Werror -c {container_source} -o {container_object}",
    ]
    aarch64_compile = run(aarch64_command)
    objdump_command = [
        "docker", "run", "--rm", "--entrypoint",
        f"/toolchains/{args.clang_revision}/bin/llvm-objdump", "-v",
        f"{output}:/work/output:ro", "-v",
        f"{args.toolchain_volume}:/toolchains:ro", args.image, "-dr",
        "/work/output/aarch64/cleanup_module.o",
    ]
    objdump = run(objdump_command) if aarch64_compile.returncode == 0 else None
    objdump_path = aarch64_dir / "cleanup_module_objdump.asm"
    if objdump is not None:
        objdump_path.write_text(objdump.stdout, encoding="utf-8", newline="\n")
    aarch64_passed = (
        aarch64_compile.returncode == 0
        and objdump is not None
        and objdump.returncode == 0
        and "cleanup_module" in objdump.stdout
    )

    report = {
        "schema_version": "1.0",
        "mode": "offline_cleanup_module_contract_and_aarch64_asan_ubsan",
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "driver": "zte_tpd",
        "function": "cleanup_module",
        "passed": host_passed and aarch64_passed,
        "host": {"passed": host_passed, "repetitions": args.repetitions, "executions": executions, "command": host_command},
        "aarch64": {
            "passed": aarch64_passed,
            "compile_command": aarch64_command,
            "compile_returncode": aarch64_compile.returncode,
            "compile_stdout": aarch64_compile.stdout,
            "compile_stderr": aarch64_compile.stderr,
            "objdump_command": objdump_command,
            "objdump_returncode": objdump.returncode if objdump else None,
            "objdump_stdout": objdump.stdout if objdump else "",
            "objdump_stderr": objdump.stderr if objdump else "",
            "object": {"path": str(object_path), "exists": object_path.is_file(), "sha256": sha256_file(object_path) if object_path.is_file() else None},
        },
        "transformation": {"removed_prelude": SOURCE_INCLUDE.rstrip(), "added_prelude": TRANSFORMED_PRELUDE, "path": str(transformed), "sha256": sha256_file(transformed), "size": transformed.stat().st_size},
        "inputs": [{"path": str(path), "size": path.stat().st_size, "sha256": sha256_file(path)} for path in (source, host_harness)],
        "coverage": {"module_exit_first": True, "touch_deinit_second": True, "zero_arguments": True, "driver_unregister_last": True, "hardware_paths_exercised": False},
        "limitations": ["The host gate uses deterministic stubs for teardown calls.", "The AArch64 gate verifies compilation and relocations only; it does not execute ARM64 code.", "No smartphone, module unloading, SPI, IRQ, MMIO, firmware transport or hardware is exercised."],
    }
    report_path = output / "cleanup_module_harness_report.json"
    report_path.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8", newline="\n")
    print(json.dumps({"output": str(report_path), "passed": report["passed"]}, sort_keys=True))
    return 0 if report["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
