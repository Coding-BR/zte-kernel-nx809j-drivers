#!/usr/bin/env python3
"""Run the offline ASAN/UBSAN harness for syna_ioctl."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path


EXPECTED_TESTS = 10


def sha256_file(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    script_root = Path(__file__).resolve().parents[2]
    parser.add_argument(
        "--engineering-root",
        type=Path,
        default=script_root.parent / "kernel-docker-workspace" / "engenharia",
    )
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    parser.add_argument("--repetitions", type=int, default=2)
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()
    if args.repetitions < 1:
        parser.error("--repetitions must be at least 1")

    root = args.engineering_root.resolve()
    harness_dir = root / "validation" / "zte_tpd" / "harness"
    harness_source = harness_dir / "next17_ioctl_harness.c"
    driver_source = root / "curated" / "zte_tpd" / "syna_ioctl.c"
    inputs = [harness_source, driver_source]
    missing = [str(path) for path in inputs if not path.is_file()]
    if missing:
        raise FileNotFoundError("missing harness inputs: " + ", ".join(missing))

    output = (
        args.output
        or root / "validation" / "zte_tpd" / "next17_ioctl_harness_report.json"
    ).resolve()
    build_dir = harness_dir / "build"
    build_dir.mkdir(parents=True, exist_ok=True)
    container_root = "/work/workspace"
    container_harness = f"{container_root}/{harness_dir.relative_to(root).as_posix()}"
    clang = f"/work/toolchains/{args.clang_revision}/bin/clang"
    shell_command = (
        f"{clang} -std=gnu11 -O1 -Wall -Wextra -Werror "
        "-fsanitize=address,undefined -fno-omit-frame-pointer "
        "next17_ioctl_harness.c -o build/next17_ioctl_harness "
        "&& ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 "
        "UBSAN_OPTIONS=halt_on_error=1 ./build/next17_ioctl_harness"
    )
    command = [
        "docker", "run", "--rm",
        "-v", f"{root}:{container_root}",
        "-v", f"{args.toolchain_volume}:/work/toolchains:ro",
        "-w", container_harness,
        args.image, "sh", "-lc", shell_command,
    ]

    executions = []
    for index in range(args.repetitions):
        completed = subprocess.run(command, text=True, capture_output=True, check=False)
        passed_lines = [
            line[5:] for line in completed.stdout.splitlines()
            if line.startswith("PASS ")
        ]
        failed_lines = [
            line[5:] for line in completed.stdout.splitlines()
            if line.startswith("FAIL ")
        ]
        summaries = [
            line for line in completed.stdout.splitlines()
            if line.startswith("SUMMARY ")
        ]
        execution_passed = (
            completed.returncode == 0
            and len(passed_lines) == EXPECTED_TESTS
            and not failed_lines
            and bool(summaries)
        )
        executions.append({
            "index": index + 1,
            "passed": execution_passed,
            "returncode": completed.returncode,
            "stdout": completed.stdout,
            "stderr": completed.stderr,
            "tests_passed": passed_lines,
            "tests_failed": failed_lines,
            "summary": summaries[-1] if summaries else None,
        })

    passed = all(execution["passed"] for execution in executions)
    report = {
        "schema_version": "1.0",
        "mode": "offline_direct_source_next17_ioctl_asan_ubsan",
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "passed": passed,
        "command": command,
        "repetitions": args.repetitions,
        "executions": executions,
        "tests": {
            "expected": EXPECTED_TESTS,
            "passed": executions[0]["tests_passed"],
            "failed": executions[0]["tests_failed"],
            "summary": executions[0]["summary"],
        },
        "coverage": {
            "direct_source_functions": 1,
            "exact_file_operations_type": True,
            "unknown_command": True,
            "disabled_and_ready_wait_paths": True,
            "prepare_wake_interrupt_and_schedule_paths": True,
            "signal_and_report_rate_copy_paths": True,
            "copy_failure_and_unlock": True,
            "offsets_0x20_0x438_0x448_0x468_0x470_0x5e0": True,
            "asan_ubsan": True,
            "hardware_paths_exercised": False,
        },
        "inputs": [
            {
                "path": str(path),
                "size": path.stat().st_size,
                "sha256": sha256_file(path),
            }
            for path in inputs
        ],
        "limitations": [
            "The harness stubs mutex, waitqueue, scheduler and copy_to_user primitives.",
            "It proves the recovered ioctl dispatch and state-transition contract, not kernel scheduler integration.",
            "Assembly, relocations, KCFI, Ghidra P-Code and full-module integration remain independent gates.",
            "No smartphone, ADB, fastboot, module loading, IRQ, MMIO or flash write is performed.",
        ],
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(
        json.dumps(report, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    print(json.dumps({
        "output": str(output),
        "passed": passed,
        "repetitions": args.repetitions,
        "tests": EXPECTED_TESTS,
    }))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
