#!/usr/bin/env python3
"""Compile and execute a hash-bound host harness for point_report_reset."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path


SOURCE_FILE = "point_report_reset.c"
HARNESS_FILE = "point_report_reset_harness.c"
GENERATED_FILE = "point_report_reset_under_test.c"
EXPECTED_TESTS = 11
SOURCE_PRELUDE = '#include "defs.h"\n'
TARGET_BREAK = 'asm volatile("brk #1");'


def sha256_file(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def prepare_host_source(source: Path, output: Path) -> dict[str, object]:
    text = source.read_text(encoding="utf-8")
    if not text.startswith(SOURCE_PRELUDE) or text.count(TARGET_BREAK) != 1:
        raise ValueError("unexpected point_report_reset transformation boundary")
    transformed = text.removeprefix(SOURCE_PRELUDE).replace(TARGET_BREAK, "__builtin_trap();")
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(transformed, encoding="utf-8", newline="\n")
    return {
        "removed_prelude": SOURCE_PRELUDE.rstrip(),
        "replaced_instruction": TARGET_BREAK,
        "replacement": "__builtin_trap();",
        "path": str(output),
        "sha256": sha256_file(output),
        "size": output.stat().st_size,
    }


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
        raise FileNotFoundError("missing point_report_reset harness input")
    generated = harness_dir / "build" / GENERATED_FILE
    transformation = prepare_host_source(source, generated)
    output = (args.output or harness_dir.parent / "point_report_reset_harness_report.json").resolve()
    container_root = "/work/workspace"
    container_harness = f"{container_root}/{harness_dir.relative_to(workspace).as_posix()}"
    clang = f"/work/toolchains/{args.clang_revision}/bin/clang"
    command = ["docker", "run", "--rm", "-v", f"{workspace}:{container_root}", "-v", f"{args.toolchain_volume}:/work/toolchains:ro", "-w", container_harness, args.image, "sh", "-lc", f"{clang} -std=gnu11 -O1 -Wall -Wextra -Werror -fsanitize=address,undefined -fno-omit-frame-pointer {HARNESS_FILE} -o build/point_report_reset_harness && ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 UBSAN_OPTIONS=halt_on_error=1 ./build/point_report_reset_harness"]
    executions = []
    for index in range(args.repetitions):
        completed = subprocess.run(command, text=True, capture_output=True, check=False)
        passed_tests = [line[5:] for line in completed.stdout.splitlines() if line.startswith("PASS ")]
        failed_tests = [line[5:] for line in completed.stdout.splitlines() if line.startswith("FAIL ")]
        summary = next((line for line in reversed(completed.stdout.splitlines()) if line.startswith("SUMMARY ")), None)
        executions.append({"index": index + 1, "passed": completed.returncode == 0 and len(passed_tests) == EXPECTED_TESTS and not failed_tests and summary is not None, "returncode": completed.returncode, "stdout": completed.stdout, "stderr": completed.stderr, "tests_passed": passed_tests, "tests_failed": failed_tests, "summary": summary})
    passed = all(item["passed"] for item in executions)
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps({"schema_version": "1.0", "mode": "offline_hash_bound_point_report_reset_asan_ubsan", "generated_utc": datetime.now(timezone.utc).isoformat(), "passed": passed, "command": command, "repetitions": args.repetitions, "executions": executions, "tests": {"expected": EXPECTED_TESTS, "passed": executions[0]["tests_passed"], "failed": executions[0]["tests_failed"], "summary": executions[0]["summary"]}, "coverage": {"active_slot_path": True, "inactive_slot_path": True, "invalid_id_brk_path_executed": False, "hardware_paths_exercised": False}, "transformation": transformation, "inputs": [{"path": str(path), "size": path.stat().st_size, "sha256": sha256_file(path)} for path in (source, harness)], "limitations": ["The invalid-ID BRK path is proven by assembly/P-Code and represented as a host trap, but is not executed.", "The harness uses deterministic stubs; no smartphone, module load, input subsystem, SPI, IRQ, MMIO or physical hardware is exercised."]}, indent=2, sort_keys=True) + "\n", encoding="utf-8", newline="\n")
    print(json.dumps({"output": str(output), "passed": passed, "tests": EXPECTED_TESTS}))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
