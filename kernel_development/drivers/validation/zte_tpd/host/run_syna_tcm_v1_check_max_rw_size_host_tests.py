#!/usr/bin/env python3
"""Run the reconstructed max read/write size check in Docker twice."""

from __future__ import annotations

import argparse
import hashlib
import json
import pathlib
import subprocess
from datetime import datetime, timezone


IMAGE = "nubia-sm8850-kernel-builder:latest"
TOOLCHAIN_VOLUME = "nubia_sm8850_kernel_toolchains"
CLANG = "/toolchains/clang-r536225/bin/clang"
HOST_SOURCE = pathlib.Path(
    "kernel_development/drivers/validation/zte_tpd/host/"
    "syna_tcm_v1_check_max_rw_size_host_test.c"
)
DRIVER_SOURCE = pathlib.Path(
    "kernel_development/drivers/reconstructed/zte_tpd/"
    "syna_tcm_v1_check_max_rw_size.c"
)
EXPECTED = "PASS syna_tcm_v1_check_max_rw_size direct host tests (9 cases)\n"


def sha256(path: pathlib.Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def run(command: list[str]) -> subprocess.CompletedProcess[str]:
    return subprocess.run(command, check=False, text=True, capture_output=True)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--build-root", required=True, type=pathlib.Path)
    parser.add_argument("--output", required=True, type=pathlib.Path)
    args = parser.parse_args()

    runner = pathlib.Path(__file__).resolve()
    repo_root = runner.parents[5]
    source = repo_root / HOST_SOURCE
    driver_source = repo_root / DRIVER_SOURCE
    args.build_root.mkdir(parents=True, exist_ok=True)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    cycles: list[dict[str, object]] = []

    for cycle in (1, 2):
        cycle_root = args.build_root / f"cycle{cycle}"
        cycle_root.mkdir(parents=True, exist_ok=True)
        binary = "/output/check_max_rw_size_host_test"
        compile_command = [
            "docker", "run", "--rm",
            "-v", f"{repo_root / 'kernel_development/drivers'}:/drivers:ro",
            "-v", f"{cycle_root}:/output",
            "-v", f"{TOOLCHAIN_VOLUME}:/toolchains:ro",
            IMAGE, CLANG, "-std=gnu11", "-O1", "-g", "-Wall", "-Wextra", "-Werror",
            "-Wno-unused-function", "-Wno-unused-variable", "-fno-omit-frame-pointer",
            "-fno-pie", "-no-pie", "-frandom-seed=zte-tpd-check-max-rw-size",
            "-ffile-prefix-map=/drivers=<drivers>", "-fsanitize=address,undefined",
            "-Wl,--build-id=none",
            f"/drivers/{HOST_SOURCE.relative_to('kernel_development/drivers').as_posix()}",
            "-o", binary,
        ]
        compiled = run(compile_command)
        run_command = [
            "docker", "run", "--rm", "-v", f"{cycle_root}:/output:ro",
            IMAGE, binary,
        ]
        executed = run(run_command) if compiled.returncode == 0 else None
        binary_path = cycle_root / "check_max_rw_size_host_test"
        passed = (
            compiled.returncode == 0 and executed is not None
            and executed.returncode == 0 and executed.stdout == EXPECTED
            and not executed.stderr and binary_path.is_file()
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

    hashes = [cycle["binary_sha256"] for cycle in cycles]
    reproducible = len(hashes) == 2 and hashes[0] is not None and hashes[0] == hashes[1]
    passed = all(bool(cycle["passed"]) for cycle in cycles) and reproducible
    report = {
        "schema_version": 1,
        "generated_at_utc": datetime.now(timezone.utc).isoformat(),
        "mode": "offline_direct_source_syna_tcm_v1_check_max_rw_size_asan_ubsan",
        "driver": "zte_tpd",
        "target": "syna_tcm_v1_check_max_rw_size",
        "covered_functions": ["syna_tcm_v1_check_max_rw_size"],
        "expected_cases": 9,
        "repetitions": 2,
        "source": str(source),
        "source_sha256": sha256(source),
        "driver_source": str(driver_source),
        "driver_source_sha256": sha256(driver_source),
        "compiler": CLANG,
        "container_image": IMAGE,
        "toolchain_volume": TOOLCHAIN_VOLUME,
        "sanitizers": ["address", "undefined"],
        "cycles": cycles,
        "reproducible": reproducible,
        "reproducible_binary": reproducible,
        "passed": passed,
        "status": "PASS" if passed else "FAIL",
        "limitations": [
            "The harness compiles the reconstructed C directly with a minimal layout-compatible tcm_dev overlay.",
            "Exact AArch64, KCFI, Ghidra, Joern, Android and hardware gates remain independent.",
        ],
    }
    args.output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {args.output}")
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
