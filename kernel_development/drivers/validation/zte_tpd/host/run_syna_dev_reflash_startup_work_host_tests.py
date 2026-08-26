#!/usr/bin/env python3
"""Build and run the syna_dev_reflash_startup_work host harness twice in Docker."""

from __future__ import annotations

import argparse
import hashlib
import json
import pathlib
import subprocess
from datetime import datetime, timezone


EXPECTED_STDOUT = (
    "PASS disabled_waits_250_ticks\n"
    "PASS disabled_returns_before_power_wakeup\n"
    "PASS reflash_failure_stops_pipeline\n"
    "PASS reflash_failure_balances_wakeup\n"
    "PASS reflash_uses_recovered_tcm_offset\n"
    "PASS app_fw_failure_stops_before_input\n"
    "PASS app_fw_failure_logs_and_relaxes\n"
    "PASS input_failure_reaches_input_stage\n"
    "PASS input_failure_skips_post_setup\n"
    "PASS success_runs_full_pipeline\n"
    "PASS success_uses_mode_rate_and_balances_wakeup\n"
    "SUMMARY tests=11 failures=0\n"
)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--build-root", required=True)
    parser.add_argument("--output", required=True)
    args = parser.parse_args()
    root = pathlib.Path(__file__).resolve().parents[5]
    source = root / "kernel_development" / "drivers" / "validation" / "zte_tpd" / "host" / "syna_dev_reflash_startup_work_host_test.c"
    build_root = pathlib.Path(args.build_root).resolve()
    output = pathlib.Path(args.output).resolve()
    if build_root.exists():
        raise SystemExit(f"build root already exists: {build_root}")
    build_root.mkdir(parents=True)
    cycles = []
    for cycle in (1, 2):
        cycle_root = build_root / f"cycle{cycle}"
        cycle_root.mkdir()
        compile_command = [
            "docker", "run", "--rm",
            "-v", f"{root}:/repo:ro",
            "-v", f"{cycle_root}:/output",
            "-v", "nubia_sm8850_kernel_toolchains:/toolchains:ro",
            "nubia-sm8850-kernel-builder:latest",
            "/toolchains/clang-r536225/bin/clang",
            "-std=gnu11", "-O1", "-g", "-Wall", "-Wextra", "-Werror",
            "-Wno-int-conversion", "-Wno-unused-variable", "-fno-omit-frame-pointer",
            "-fno-pie", "-no-pie", "-frandom-seed=zte-tpd-next169-reflash-startup-work",
            "-ffile-prefix-map=/repo=<repo>", "-fsanitize=address,undefined",
            "-Wl,--build-id=none",
            "/repo/kernel_development/drivers/validation/zte_tpd/host/syna_dev_reflash_startup_work_host_test.c",
            "-o", "/output/host_test_asan_ubsan",
        ]
        compiled = subprocess.run(compile_command, capture_output=True, text=True)
        run_command = [
            "docker", "run", "--rm", "-v", f"{cycle_root}:/output:ro",
            "nubia-sm8850-kernel-builder:latest", "/output/host_test_asan_ubsan",
        ]
        ran = subprocess.run(run_command, capture_output=True, text=True) if compiled.returncode == 0 else None
        binary = cycle_root / "host_test_asan_ubsan"
        passed = compiled.returncode == 0 and ran is not None and ran.returncode == 0 and ran.stdout == EXPECTED_STDOUT and not ran.stderr
        cycles.append({
            "cycle": cycle,
            "compile_command": compile_command,
            "compile_returncode": compiled.returncode,
            "compile_stdout": compiled.stdout,
            "compile_stderr": compiled.stderr,
            "run_command": run_command,
            "run_returncode": None if ran is None else ran.returncode,
            "run_stdout": None if ran is None else ran.stdout,
            "run_stderr": None if ran is None else ran.stderr,
            "binary_sha256": hashlib.sha256(binary.read_bytes()).hexdigest() if binary.exists() else None,
            "passed": passed,
        })
    report = {
        "schema_version": 1,
        "generated_at_utc": datetime.now(timezone.utc).isoformat(),
        "mode": "offline_direct_source_syna_dev_reflash_startup_work_asan_ubsan",
        "driver": "zte_tpd",
        "target": "syna_dev_reflash_startup_work",
        "covered_functions": ["syna_dev_reflash_startup_work"],
        "source": str(source),
        "source_sha256": hashlib.sha256(source.read_bytes()).hexdigest(),
        "compiler": "/toolchains/clang-r536225/bin/clang",
        "container_image": "nubia-sm8850-kernel-builder:latest",
        "toolchain_volume": "nubia_sm8850_kernel_toolchains",
        "sanitizers": ["address", "undefined"],
        "expected_cases": 11,
        "repetitions": 2,
        "cycles": cycles,
        "reproducible": all(c["passed"] for c in cycles) and cycles[0]["binary_sha256"] == cycles[1]["binary_sha256"],
        "reproducible_binary": cycles[0]["binary_sha256"] == cycles[1]["binary_sha256"],
        "passed": all(c["passed"] for c in cycles),
        "status": "PASS" if all(c["passed"] for c in cycles) else "FAIL",
        "limitations": [
            "The harness covers inactive flag, reflash failure, app firmware failure, input-device failure and success paths.",
            "Module assembly, KCFI, Ghidra and Joern remain independent gates.",
            "No smartphone, PM core or Synaptics hardware interaction is used.",
        ],
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"output": str(output), "passed": report["passed"], "reproducible": report["reproducible"]}))
    return 0 if report["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
