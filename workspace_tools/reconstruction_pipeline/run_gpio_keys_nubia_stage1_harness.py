#!/usr/bin/env python3
"""Compile and execute the offline gpio_keys_nubia stage-one harness."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path


COVERED_FUNCTIONS = (
    "init_module",
    "cleanup_module",
    "gpio_keys_show_keys",
    "gpio_keys_show_switches",
    "gpio_keys_show_disabled_keys",
    "gpio_keys_store_disabled_keys",
    "gpio_keys_show_disabled_switches",
    "gpio_keys_store_disabled_switches",
)
EXPECTED_TESTS = 11


def sha256_file(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def default_repository() -> Path:
    return Path(__file__).resolve().parents[2]


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repository", type=Path, default=default_repository())
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()

    repository = args.repository.resolve()
    evidence_dir = (
        repository
        / "reverse_engineering"
        / "validation"
        / "reconstructed"
        / "gpio_keys_nubia"
    )
    harness_dir = evidence_dir / "harness"
    source = harness_dir / "stage1_harness.c"
    candidate_source = (
        repository
        / "kernel_development"
        / "drivers"
        / "reconstructed"
        / "gpio_keys_nubia"
        / "gpio_keys_nubia.c"
    )
    output = (args.output or evidence_dir / "stage1_harness_report.json").resolve()
    for required in (source, candidate_source):
        if not required.is_file():
            raise FileNotFoundError(required)

    container_root = "/work/workspace"
    container_harness = f"{container_root}/{harness_dir.relative_to(repository).as_posix()}"
    clang = f"/work/toolchains/{args.clang_revision}/bin/clang"
    shell_command = (
        f"{clang} -std=gnu11 -Wall -Wextra -Werror "
        "stage1_harness.c -o stage1_harness && ./stage1_harness"
    )
    command = [
        "docker", "run", "--rm",
        "-v", f"{repository}:{container_root}:ro",
        "-v", f"{args.toolchain_volume}:/work/toolchains:ro",
        "-w", "/tmp",
        args.image, "sh", "-lc",
        f"cp {container_harness}/stage1_harness.c . && {shell_command}",
    ]
    completed = subprocess.run(command, text=True, capture_output=True, check=False)
    pass_lines = [line[5:] for line in completed.stdout.splitlines() if line.startswith("PASS ")]
    fail_lines = [line[5:] for line in completed.stdout.splitlines() if line.startswith("FAIL ")]
    summaries = [line for line in completed.stdout.splitlines() if line.startswith("SUMMARY ")]
    passed = (
        completed.returncode == 0
        and len(pass_lines) == EXPECTED_TESTS
        and not fail_lines
        and summaries == [f"SUMMARY {EXPECTED_TESTS}/{EXPECTED_TESTS}"]
    )

    report = {
        "schema_version": "1.0",
        "mode": "offline_isolated_semantic_harness",
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "passed": passed,
        "covered_functions": list(COVERED_FUNCTIONS),
        "command": command,
        "returncode": completed.returncode,
        "stdout": completed.stdout,
        "stderr": completed.stderr,
        "tests": {
            "expected": EXPECTED_TESTS,
            "passed": pass_lines,
            "failed": fail_lines,
            "summary": summaries[-1] if summaries else None,
        },
        "inputs": [
            {"path": str(path), "size": path.stat().st_size, "sha256": sha256_file(path)}
            for path in (source, candidate_source)
        ],
        "limitations": [
            "The harness models only the eight stage-one lifecycle and sysfs wrappers.",
            "The actual candidate object is validated separately by KCFI and AArch64 assembly comparison.",
            "No ADB, fastboot, insmod, rmmod, GPIO, IRQ, timer, MMIO, or smartphone operation is performed.",
            "This report is not evidence of complete module or hardware parity.",
        ],
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"output": str(output), "passed": passed, "tests": len(pass_lines)}))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
