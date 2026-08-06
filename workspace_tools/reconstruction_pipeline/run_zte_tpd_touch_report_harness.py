#!/usr/bin/env python3
"""Compile and execute the direct-source zte_tpd touch-report harness."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path


SOURCE_FILE = "tpd_touch_report.c"
HARNESS_FILE = "touch_report_harness.c"
EXPECTED_TESTS = 16


def sha256_file(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    script_root = Path(__file__).resolve().parents[2]
    parser.add_argument("--workspace", type=Path, default=script_root)
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    parser.add_argument("--repetitions", type=int, default=2)
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()
    if args.repetitions < 1:
        parser.error("--repetitions must be at least 1")

    root = args.workspace.resolve()
    source = root / "kernel_development" / "drivers" / "reconstructed" / "zte_tpd" / SOURCE_FILE
    harness_dir = root / "reverse_engineering" / "validation" / "reconstructed" / "zte_tpd" / "harness"
    harness = harness_dir / HARNESS_FILE
    inputs = [source, harness]
    missing = [str(path) for path in inputs if not path.is_file()]
    if missing:
        raise FileNotFoundError("missing harness inputs: " + ", ".join(missing))

    output = (args.output or harness_dir.parent / "touch_report_harness_report.json").resolve()
    build_dir = harness_dir / "build"
    build_dir.mkdir(parents=True, exist_ok=True)
    container_root = "/work/workspace"
    container_harness = f"{container_root}/{harness_dir.relative_to(root).as_posix()}"
    clang = f"/work/toolchains/{args.clang_revision}/bin/clang"
    shell_command = (
        f"{clang} -std=gnu11 -O1 -Wall -Wextra -Werror "
        "-fsanitize=address,undefined -fno-omit-frame-pointer "
        f"{HARNESS_FILE} -o build/touch_report_harness "
        "&& ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 "
        "UBSAN_OPTIONS=halt_on_error=1 ./build/touch_report_harness"
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
        passed = [line[5:] for line in completed.stdout.splitlines() if line.startswith("PASS ")]
        failed = [line[5:] for line in completed.stdout.splitlines() if line.startswith("FAIL ")]
        summaries = [line for line in completed.stdout.splitlines() if line.startswith("SUMMARY ")]
        executions.append({
            "index": index + 1,
            "passed": completed.returncode == 0 and len(passed) == EXPECTED_TESTS and not failed and bool(summaries),
            "returncode": completed.returncode,
            "stdout": completed.stdout,
            "stderr": completed.stderr,
            "tests_passed": passed,
            "tests_failed": failed,
            "summary": summaries[-1] if summaries else None,
        })

    passed = all(execution["passed"] for execution in executions)
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps({
        "schema_version": "1.0",
        "mode": "offline_direct_source_touch_report_asan_ubsan",
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "passed": passed,
        "command": command,
        "repetitions": args.repetitions,
        "executions": executions,
        "tests": {"expected": EXPECTED_TESTS, "passed": executions[0]["tests_passed"], "failed": executions[0]["tests_failed"], "summary": executions[0]["summary"]},
        "coverage": {"direct_source_functions": 1, "mutex_offset_0xc90": True, "full_optional_event_path": True, "zero_optional_event_path": True, "hardware_paths_exercised": False},
        "inputs": [{"path": str(path), "size": path.stat().st_size, "sha256": sha256_file(path)} for path in inputs],
        "limitations": ["The harness uses deterministic host stubs for kernel input and mutex APIs.", "No smartphone, module loading, SPI, IRQ, MMIO, firmware transport or physical hardware is exercised."],
    }, indent=2, sort_keys=True) + "\n", encoding="utf-8", newline="\n")
    print(json.dumps({"output": str(output), "passed": passed, "tests": EXPECTED_TESTS}))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
