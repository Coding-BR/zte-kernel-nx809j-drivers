#!/usr/bin/env python3
"""Run the dedicated offline ASAN/UBSAN harness for zte_tpd microtask 014."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path


HARNESS_NAME = "next014_reset_fw_data_pos_and_size_harness.c"
EXPECTED_TESTS = 4


def sha256_file(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def parse_output(stdout: str) -> tuple[list[str], list[str], str | None]:
    passed = [line[5:] for line in stdout.splitlines() if line.startswith("PASS ")]
    failed = [line[5:] for line in stdout.splitlines() if line.startswith("FAIL ")]
    summaries = [line for line in stdout.splitlines() if line.startswith("SUMMARY ")]
    return passed, failed, summaries[-1] if summaries else None


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--engineering-root", type=Path, required=True)
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    parser.add_argument("--repetitions", type=int, default=2)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    if args.repetitions < 1:
        parser.error("--repetitions must be at least 1")

    root = args.engineering_root.resolve()
    source_dir = root / "kernel_development" / "drivers" / "reconstructed" / "zte_tpd"
    harness_dir = root / "reverse_engineering" / "validation" / "reconstructed" / "zte_tpd" / "harness"
    harness = harness_dir / HARNESS_NAME
    source = source_dir / "tpd_reset_fw_data_pos_and_size.c"
    missing = [str(path) for path in (harness, source) if not path.is_file()]
    if missing:
        raise FileNotFoundError("missing harness inputs: " + ", ".join(missing))

    clang = f"/work/toolchains/{args.clang_revision}/bin/clang"
    container_source = f"/work/workspace/{source_dir.relative_to(root).as_posix()}"
    command = [
        "docker", "run", "--rm", "-v", f"{root}:/work/workspace",
        "-v", f"{args.toolchain_volume}:/work/toolchains:ro",
        "-w", f"/work/workspace/{harness_dir.relative_to(root).as_posix()}",
        args.image, "sh", "-lc",
        f"{clang} -std=gnu11 -O1 -Wall -Wextra -Werror -fsanitize=address,undefined "
        f"-fno-omit-frame-pointer -I{container_source} {HARNESS_NAME} "
        f"-o build/{HARNESS_NAME[:-2]} && "
        "ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 "
        "UBSAN_OPTIONS=halt_on_error=1 "
        f"./build/{HARNESS_NAME[:-2]}",
    ]

    executions = []
    for index in range(args.repetitions):
        result = subprocess.run(command, text=True, capture_output=True, check=False)
        passed, failed, summary = parse_output(result.stdout)
        execution_passed = (
            result.returncode == 0
            and len(passed) == EXPECTED_TESTS
            and not failed
            and summary == "SUMMARY 4/4 passed"
        )
        executions.append({
            "index": index + 1,
            "passed": execution_passed,
            "returncode": result.returncode,
            "stdout": result.stdout,
            "stderr": result.stderr,
            "tests_passed": passed,
            "tests_failed": failed,
            "summary": summary,
        })

    report = {
        "schema_version": "1.0",
        "mode": "offline_direct_source_reset_host_harness_asan_ubsan",
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "driver": "zte_tpd",
        "microtask_id": "014_tpd_reset_fw_data_pos_and_size",
        "function": "tpd_reset_fw_data_pos_and_size",
        "passed": all(item["passed"] for item in executions),
        "repetitions": args.repetitions,
        "expected_tests": EXPECTED_TESTS,
        "coverage": {
            "direct_source_function": "tpd_reset_fw_data_pos_and_size",
            "position_written_to_firmware_size": True,
            "position_cleared": True,
            "zero_position": True,
            "uint32_max_position": True,
            "repeated_reset": True,
            "hardware_paths_exercised": False,
        },
        "command": command,
        "inputs": [
            {"path": str(harness), "sha256": sha256_file(harness), "size": harness.stat().st_size},
            {"path": str(source), "sha256": sha256_file(source), "size": source.stat().st_size},
        ],
        "executions": executions,
        "limitations": [
            "The harness models the cdev memory layout and firmware-size slot in user space.",
            "No physical NX809J, Android service, SPI, IRQ or MMIO path is exercised.",
        ],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"output": str(args.output), "passed": report["passed"], "repetitions": args.repetitions, "tests": EXPECTED_TESTS}))
    return 0 if report["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
