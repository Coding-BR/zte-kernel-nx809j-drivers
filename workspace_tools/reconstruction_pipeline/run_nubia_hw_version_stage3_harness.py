#!/usr/bin/env python3
"""Run the complete offline harness set for nubia_hw_version."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path


STAGE2_FUNCTIONS = (
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
STAGE3_FUNCTIONS = (
    "nubia_gpio_ctrl1",
    "nubia_gpio_ctrl",
    "nubia_hw_ver_probe",
    "nubia_hw_ver_remove",
    "nubia_get_gpio_status",
    "nubia_hw_pcb_version_show",
    "init_module",
    "cleanup_module",
)
HARNESSES = (
    ("stage2_semantic_harness.c", 26, STAGE2_FUNCTIONS),
    ("stage3_control_flow_harness.c", 24, STAGE3_FUNCTIONS),
)


def sha256_file(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def default_repository() -> Path:
    return Path(__file__).resolve().parents[2]


def parse_harness_output(completed: subprocess.CompletedProcess[str], expected: int) -> dict:
    passed = [
        line[5:] for line in completed.stdout.splitlines() if line.startswith("PASS ")
    ]
    failed = [
        line[5:] for line in completed.stdout.splitlines() if line.startswith("FAIL ")
    ]
    summaries = [
        line for line in completed.stdout.splitlines() if line.startswith("SUMMARY ")
    ]
    expected_summary = f"SUMMARY {expected}/{expected}"
    return {
        "passed": (
            completed.returncode == 0
            and len(passed) == expected
            and not failed
            and summaries == [expected_summary]
        ),
        "returncode": completed.returncode,
        "stdout": completed.stdout,
        "stderr": completed.stderr,
        "tests": {
            "expected": expected,
            "passed": passed,
            "failed": failed,
            "summary": summaries[-1] if summaries else None,
        },
    }


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
    harness_dir = evidence_dir / "harness"
    candidate_source = (
        repository
        / "kernel_development"
        / "drivers"
        / "reconstructed"
        / "nubia_hw_version"
        / "nubia_hw_version.c"
    )
    output = (
        args.output or evidence_dir / "stage3_complete_harness_report.json"
    ).resolve()
    if not candidate_source.is_file():
        raise FileNotFoundError(candidate_source)

    container_root = "/work/workspace"
    clang = f"/work/toolchains/{args.clang_revision}/bin/clang"
    harness_reports = []
    input_paths = [candidate_source]
    for filename, expected_tests, functions in HARNESSES:
        source = harness_dir / filename
        if not source.is_file():
            raise FileNotFoundError(source)
        input_paths.append(source)
        container_source = (
            f"{container_root}/{source.relative_to(repository).as_posix()}"
        )
        executable = source.stem
        command_text = (
            f"cp {container_source} . && "
            f"{clang} -std=gnu11 -Wall -Wextra -Werror "
            "-fsanitize=address,undefined -fno-omit-frame-pointer "
            f"{filename} -o {executable} && ./{executable}"
        )
        command = [
            "docker",
            "run",
            "--rm",
            "-v",
            f"{repository}:{container_root}:ro",
            "-v",
            f"{args.toolchain_volume}:/work/toolchains:ro",
            "-w",
            "/tmp",
            args.image,
            "sh",
            "-lc",
            command_text,
        ]
        completed = subprocess.run(
            command, text=True, capture_output=True, check=False
        )
        report = parse_harness_output(completed, expected_tests)
        report.update(
            {
                "harness": filename,
                "covered_functions": list(functions),
                "command": command,
            }
        )
        harness_reports.append(report)

    covered_functions = sorted(
        {
            function
            for report in harness_reports
            for function in report["covered_functions"]
        }
    )
    expected_functions = sorted((*STAGE2_FUNCTIONS, *STAGE3_FUNCTIONS))
    passed = (
        all(report["passed"] for report in harness_reports)
        and covered_functions == expected_functions
    )
    payload = {
        "schema_version": "1.0",
        "mode": "offline_isolated_complete_function_harness",
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "passed": passed,
        "driver": "nubia_hw_version",
        "covered_functions": covered_functions,
        "function_count": len(covered_functions),
        "total_tests": sum(
            report["tests"]["expected"] for report in harness_reports
        ),
        "harnesses": harness_reports,
        "inputs": [
            {
                "path": str(path),
                "size": path.stat().st_size,
                "sha256": sha256_file(path),
            }
            for path in input_paths
        ],
        "limitations": [
            "The harnesses model source-level behavior with deterministic host mocks.",
            "ASan and UBSan validate the host models, not the kernel module runtime.",
            "They do not link or execute the kernel module object.",
            "No GPIO controller, pinctrl provider, sysfs kernel object or MMIO is exercised.",
            "No ADB, fastboot, insmod, rmmod or smartphone operation is performed.",
            "A passing report closes host harness coverage, not hardware parity.",
        ],
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8"
    )
    print(
        json.dumps(
            {
                "output": str(output),
                "passed": passed,
                "functions": len(covered_functions),
                "tests": payload["total_tests"],
            }
        )
    )
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
