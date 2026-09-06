#!/usr/bin/env python3
"""Run the syna_sysfs_get_delta_show contract under Docker clang ASan/UBSan."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parents[5]
SOURCE = Path("kernel_development/drivers/validation/zte_tpd/host/syna_sysfs_get_delta_show_host_test.c")
DRIVER = Path("kernel_development/drivers/reconstructed/zte_tpd/syna_sysfs_get_delta_show.c")
EXACT_SOURCE = Path("kernel_development/drivers/reconstructed/zte_tpd/syna_sysfs_get_delta_show_exact.S")
IMAGE = "nubia-sm8850-kernel-builder:latest"
TOOLCHAIN = "nubia_sm8850_kernel_toolchains"
CLANG = "/toolchains/clang-r536225/bin/clang"
EXPECTED = "PASS syna_sysfs_get_delta_show host tests (3 cases)\n"


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--build-root", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    args.build_root.mkdir(parents=True, exist_ok=True)
    source = ROOT / SOURCE
    driver = ROOT / DRIVER
    exact_source = ROOT / EXACT_SOURCE
    cycles = []
    for number in (1, 2):
        cycle = args.build_root / f"cycle{number}"
        cycle.mkdir(parents=True, exist_ok=True)
        binary = "/output/host_test_asan_ubsan"
        compile_command = [
            "docker", "run", "--rm",
            "-v", f"{ROOT / 'kernel_development/drivers'}:/drivers:ro",
            "-v", f"{cycle.resolve()}:/output",
            "-v", f"{TOOLCHAIN}:/toolchains:ro",
            IMAGE, CLANG, "-std=gnu11", "-O1", "-g", "-Wall", "-Wextra", "-Werror",
            "-Wno-unused-function", "-Wno-sign-compare", "-Wno-unused-variable",
            "-Wno-unused-but-set-variable", "-Wno-uninitialized", "-Wno-error=uninitialized",
            "-Wno-incompatible-pointer-types-discards-qualifiers",
            "-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
            "-frandom-seed=zte-tpd-target213-delta", "-ffile-prefix-map=/drivers=<drivers>",
            "-fsanitize=address,undefined", "-Wl,--build-id=none",
            "-fno-sanitize=function",
            f"/drivers/{SOURCE.relative_to('kernel_development/drivers').as_posix()}", "-o", binary,
        ]
        compiled = subprocess.run(compile_command, text=True, capture_output=True, check=False)
        run_command = ["docker", "run", "--rm", "-e", "ASAN_OPTIONS=detect_leaks=0",
                       "-v", f"{cycle.resolve()}:/output:ro", IMAGE, binary]
        executed = subprocess.run(run_command, text=True, capture_output=True, check=False) if compiled.returncode == 0 else None
        binary_path = cycle / "host_test_asan_ubsan"
        passed = bool(compiled.returncode == 0 and executed and executed.returncode == 0
                      and executed.stdout == EXPECTED and not executed.stderr and binary_path.is_file())
        cycles.append({
            "cycle": number, "compile_command": compile_command,
            "compile_returncode": compiled.returncode, "compile_stdout": compiled.stdout,
            "compile_stderr": compiled.stderr, "run_command": run_command,
            "run_returncode": executed.returncode if executed else None,
            "run_stdout": executed.stdout if executed else "",
            "run_stderr": executed.stderr if executed else "",
            "binary_sha256": sha256(binary_path) if binary_path.is_file() else None,
            "passed": passed,
        })
    hashes = [c["binary_sha256"] for c in cycles]
    reproducible = len(set(hashes)) == 1 and hashes[0] is not None
    passed = all(c["passed"] for c in cycles) and reproducible
    report = {
        "schema_version": 1, "generated_at_utc": datetime.now(timezone.utc).isoformat(),
        "mode": "offline_direct_source_syna_sysfs_get_delta_show_asan_ubsan_docker",
        "driver": "zte_tpd", "target": "syna_sysfs_get_delta_show", "source": str(source),
        "source_sha256": sha256(source), "sanitizers": ["address", "undefined"],
        "expected_cases": 3, "repetitions": 2, "cycles": cycles,
        "reproducible": reproducible, "reproducible_binary": reproducible,
        "passed": passed, "status": "PASS" if passed else "FAIL",
        "driver_source": str(exact_source),
        "driver_source_sha256": sha256(exact_source),
        "inputs": [{"path": str(p), "size": p.stat().st_size, "sha256": sha256(p)} for p in (source, driver, exact_source)],
        "limitations": [
            "The harness models kobject, tcm_buffer, report callbacks and managed allocation while hardware remains stubbed.",
            "It covers report-enable failure, one delta report, cleanup, IRQ callbacks and unavailable managed-device paths.",
            "Assembly, relocation, KCFI, Joern and Ghidra equivalence are independent gates; hardware remains deferred.",
        ],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {args.output}")
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
