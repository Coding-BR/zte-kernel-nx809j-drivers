#!/usr/bin/env python3
"""Compile and execute the offline nubia_hw_version Stage 2 harness."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path


COVERED_FUNCTIONS = (
    "nubia_get_pcb_table_item_by_gpio",
    "nubia_get_hw_id",
    "nubia_get_hw_pcb_version",
    "charger_100W",
    "charger_80W",
    "nubia_get_rf_band_by_gpio",
    "debug_value_show",
    "debug_value_store",
    "nubia_hw_rf_band_show",
    "nubia_charge_version_show",
    "hml_config_version_show",
)
EXPECTED_TESTS = 26


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
        / "nubia_hw_version"
    )
    source = evidence_dir / "harness" / "stage2_semantic_harness.c"
    candidate_source = (
        repository
        / "kernel_development"
        / "drivers"
        / "reconstructed"
        / "nubia_hw_version"
        / "nubia_hw_version.c"
    )
    output = (args.output or evidence_dir / "stage2_semantic_harness_report.json").resolve()
    for required in (source, candidate_source):
        if not required.is_file():
            raise FileNotFoundError(required)

    container_root = "/work/workspace"
    container_source = f"{container_root}/{source.relative_to(repository).as_posix()}"
    clang = f"/work/toolchains/{args.clang_revision}/bin/clang"
    compile_and_run = (
        f"cp {container_source} . && "
        f"{clang} -std=gnu11 -Wall -Wextra -Werror "
        "stage2_semantic_harness.c -o stage2_semantic_harness && "
        "./stage2_semantic_harness"
    )
    command = [
        "docker", "run", "--rm",
        "-v", f"{repository}:{container_root}:ro",
        "-v", f"{args.toolchain_volume}:/work/toolchains:ro",
        "-w", "/tmp",
        args.image, "sh", "-lc", compile_and_run,
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
            "The harness models deterministic table, version and formatting logic only.",
            "It does not link or execute the kernel module object.",
            "GPIO, pinctrl, platform probe, sysfs registration and teardown remain untested.",
            "No ADB, fastboot, insmod, rmmod, MMIO or smartphone operation is performed.",
            "A passing report is not evidence of complete module or hardware parity.",
        ],
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"output": str(output), "passed": passed, "tests": len(pass_lines)}))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
