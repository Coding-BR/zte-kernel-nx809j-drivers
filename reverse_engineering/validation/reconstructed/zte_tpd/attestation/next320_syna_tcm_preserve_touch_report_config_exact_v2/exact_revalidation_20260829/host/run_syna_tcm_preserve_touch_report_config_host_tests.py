#!/usr/bin/env python3
"""Run the preserve_touch_report_config contract twice with ASan and UBSan."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path


ROOT = Path(__file__).resolve().parents[5]
HOST_SOURCE = Path(
    "kernel_development/drivers/validation/zte_tpd/host/"
    "syna_tcm_preserve_touch_report_config_host_test.c"
)
DRIVER_SOURCE = Path(
    "kernel_development/drivers/reconstructed/zte_tpd/"
    "syna_tcm_preserve_touch_report_config.c"
)
IMAGE = "nubia-sm8850-kernel-builder:latest"
TOOLCHAIN_VOLUME = "nubia_sm8850_kernel_toolchains"
CLANG = "/toolchains/clang-r536225/bin/clang"
EXPECTED = "PASS: syna_tcm_preserve_touch_report_config host contract\n"


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def run(command: list[str]) -> subprocess.CompletedProcess[str]:
    return subprocess.run(command, check=False, text=True, capture_output=True)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--build-root", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()

    source = ROOT / HOST_SOURCE
    driver = ROOT / DRIVER_SOURCE
    args.build_root.mkdir(parents=True, exist_ok=True)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    cycles: list[dict[str, object]] = []

    for cycle in range(1, 3):
        cycle_root = args.build_root / f"cycle{cycle}"
        cycle_root.mkdir(parents=True, exist_ok=True)
        binary = "/output/host_test_asan_ubsan"
        compile_command = [
            "docker", "run", "--rm",
            "-v", f"{ROOT / 'kernel_development/drivers'}:/drivers:ro",
            "-v", f"{cycle_root}:/output",
            "-v", f"{TOOLCHAIN_VOLUME}:/toolchains:ro", IMAGE, CLANG,
            "-std=gnu11", "-O1", "-g", "-Wall", "-Wextra", "-Werror",
            "-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
            "-frandom-seed=zte-tpd-next320-preserve-touch-report-config",
            "-ffile-prefix-map=/drivers=<drivers>",
            "-fsanitize=address,undefined", "-Wl,--build-id=none",
            f"/drivers/{HOST_SOURCE.relative_to('kernel_development/drivers').as_posix()}",
            "-o", binary,
        ]
        compiled = run(compile_command)
        run_command = [
            "docker", "run", "--rm", "-v", f"{cycle_root}:/output:ro",
            IMAGE, binary,
        ]
        executed = run(run_command) if compiled.returncode == 0 else None
        binary_path = cycle_root / "host_test_asan_ubsan"
        passed = (
            compiled.returncode == 0
            and executed is not None
            and executed.returncode == 0
            and executed.stdout == EXPECTED
            and not executed.stderr
            and binary_path.is_file()
        )
        cycles.append({
            "cycle": cycle,
            "compile_command": compile_command,
            "compile_returncode": compiled.returncode,
            "compile_stdout": compiled.stdout,
            "compile_stderr": compiled.stderr,
            "run_command": run_command,
            "run_returncode": None if executed is None else executed.returncode,
            "run_stdout": "" if executed is None else executed.stdout,
            "run_stderr": "" if executed is None else executed.stderr,
            "binary_sha256": sha256(binary_path) if binary_path.is_file() else None,
            "passed": passed,
        })

    passed = all(bool(cycle["passed"]) for cycle in cycles)
    report = {
        "schema_version": 1,
        "generated_at_utc": datetime.now(timezone.utc).isoformat(),
        "mode": "offline_direct_source_next320_preserve_touch_report_config_asan_ubsan",
        "driver": "zte_tpd",
        "target": "syna_tcm_preserve_touch_report_config",
        "covered_functions": ["syna_tcm_preserve_touch_report_config"],
        "source": str(source),
        "source_sha256": sha256(source),
        "driver_source": str(driver),
        "driver_source_sha256": sha256(driver),
        "inputs": [
            {"path": DRIVER_SOURCE.as_posix(), "sha256": sha256(driver)},
            {"path": HOST_SOURCE.as_posix(), "sha256": sha256(source)},
        ],
        "compiler": CLANG,
        "container_image": IMAGE,
        "toolchain_volume": TOOLCHAIN_VOLUME,
        "sanitizers": ["address", "undefined"],
        "expected_cases": 16,
        "repetitions": 2,
        "cycles": cycles,
        "reproducible": len({cycle["binary_sha256"] for cycle in cycles}) == 1,
        "passed": passed,
        "status": "PASS" if passed else "FAIL",
        "limitations": [
            "The harness covers validation, command dispatch, delay selection, reuse, allocation, copy bounds, lock cleanup and format-state decoding.",
            "No smartphone, touchscreen hardware or firmware interaction is used.",
        ],
    }
    args.output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{'PASS' if passed else 'FAIL'}: {args.output}")
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
