#!/usr/bin/env python3
"""Compile and execute a hash-bound host harness for syna_ghost_check_reset."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path


SOURCE_FILE = "syna_ghost_check_reset.c"
HARNESS_FILE = "syna_ghost_check_reset_harness.c"
GENERATED_FILE = "syna_ghost_check_reset_under_test.c"
EXPECTED_TESTS = 8
SOURCE_PRELUDE = '#include "defs.h"\n'


def sha256_file(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    root = Path(__file__).resolve().parents[2]
    parser.add_argument("--workspace", type=Path, default=root)
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    parser.add_argument("--repetitions", type=int, default=2)
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()
    if args.repetitions < 1:
        parser.error("--repetitions must be at least 1")

    workspace = args.workspace.resolve()
    source = workspace / "kernel_development/drivers/reconstructed/zte_tpd" / SOURCE_FILE
    harness_dir = workspace / "reverse_engineering/validation/reconstructed/zte_tpd/harness"
    harness = harness_dir / HARNESS_FILE
    if not source.is_file() or not harness.is_file():
        raise FileNotFoundError("missing syna_ghost_check_reset harness input")
    text = source.read_text(encoding="utf-8")
    if not text.startswith(SOURCE_PRELUDE):
        raise ValueError("unexpected syna_ghost_check_reset transformation boundary")
    generated = harness_dir / "build" / GENERATED_FILE
    generated.parent.mkdir(parents=True, exist_ok=True)
    generated.write_text(text.removeprefix(SOURCE_PRELUDE), encoding="utf-8", newline="\n")

    output = (args.output or harness_dir.parent / "syna_ghost_check_reset_harness_report.json").resolve()
    container_root = "/work/workspace"
    container_harness = f"{container_root}/{harness_dir.relative_to(workspace).as_posix()}"
    clang = f"/work/toolchains/{args.clang_revision}/bin/clang"
    command = ["docker", "run", "--rm", "-v", f"{workspace}:{container_root}", "-v", f"{args.toolchain_volume}:/work/toolchains:ro", "-w", container_harness, args.image, "sh", "-lc", f"{clang} -std=gnu11 -O1 -Wall -Wextra -Werror -fsanitize=address,undefined -fno-omit-frame-pointer {HARNESS_FILE} -o build/syna_ghost_check_reset_harness && ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 UBSAN_OPTIONS=halt_on_error=1 ./build/syna_ghost_check_reset_harness"]
    executions = []
    for index in range(args.repetitions):
        completed = subprocess.run(command, text=True, capture_output=True, check=False)
        passed_tests = [line[5:] for line in completed.stdout.splitlines() if line.startswith("PASS ")]
        failed_tests = [line[5:] for line in completed.stdout.splitlines() if line.startswith("FAIL ")]
        summary = next((line for line in reversed(completed.stdout.splitlines()) if line.startswith("SUMMARY ")), None)
        executions.append({"index": index + 1, "passed": completed.returncode == 0 and len(passed_tests) == EXPECTED_TESTS and not failed_tests and summary is not None, "returncode": completed.returncode, "stdout": completed.stdout, "stderr": completed.stderr, "tests_passed": passed_tests, "tests_failed": failed_tests, "summary": summary})
    passed = all(item["passed"] for item in executions)
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps({"schema_version": "1.0", "mode": "offline_hash_bound_syna_ghost_check_reset_asan_ubsan", "generated_utc": datetime.now(timezone.utc).isoformat(), "passed": passed, "command": command, "repetitions": args.repetitions, "executions": executions, "tests": {"expected": EXPECTED_TESTS, "passed": executions[0]["tests_passed"], "failed": executions[0]["tests_failed"], "summary": executions[0]["summary"]}, "coverage": {"four_stock_calls": True, "cdev_tcm_offset_0xdb8": True, "tcm_hw_if_offset_0x270": True, "hardware_paths_exercised": False}, "transformation": {"removed_prelude": SOURCE_PRELUDE.rstrip(), "path": str(generated), "sha256": sha256_file(generated), "size": generated.stat().st_size}, "inputs": [{"path": str(path), "size": path.stat().st_size, "sha256": sha256_file(path)} for path in (source, harness)], "limitations": ["The harness uses deterministic host stubs for driver-internal calls and printk.", "No smartphone, module loading, SPI, IRQ, MMIO, firmware transport or physical hardware is exercised."]}, indent=2, sort_keys=True) + "\n", encoding="utf-8", newline="\n")
    print(json.dumps({"output": str(output), "passed": passed, "tests": EXPECTED_TESTS}))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
