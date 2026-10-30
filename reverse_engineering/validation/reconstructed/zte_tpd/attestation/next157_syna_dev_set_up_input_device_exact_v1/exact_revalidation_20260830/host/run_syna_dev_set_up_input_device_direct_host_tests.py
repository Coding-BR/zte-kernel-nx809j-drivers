#!/usr/bin/env python3
"""Build and run the direct-source input-device setup harness twice in Docker."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import pathlib
import subprocess

IMAGE = "nubia-sm8850-kernel-builder:latest"
TOOLCHAIN_VOLUME = "nubia_sm8850_kernel_toolchains"
CLANG = "/toolchains/clang-r536225/bin/clang"
EXPECTED_STDOUT = """PASS mode_disabled_returns_without_side_effects
PASS zero_dimensions_stop_before_lock
PASS cached_parameters_skip_reallocation
PASS managed_device_failure_unlocks
PASS allocation_failure_returns_enodev
PASS registration_failure_is_preserved
PASS dispatcher_failure_keeps_registered_input
PASS success_configures_input_and_caches_parameters
PASS replacement_unregisters_previous_input
PASS slot_count_change_reallocates
SUMMARY tests=10 failures=0
"""


def sha256(path: pathlib.Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def execute(command: list[str]) -> subprocess.CompletedProcess[str]:
    return subprocess.run(command, check=False, text=True,
                          stdout=subprocess.PIPE, stderr=subprocess.PIPE)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--source", type=pathlib.Path,
                        default=pathlib.Path(__file__).with_name(
                            "syna_dev_set_up_input_device_direct_host_test.c"))
    parser.add_argument("--build-root", type=pathlib.Path, required=True)
    parser.add_argument("--output", type=pathlib.Path, required=True)
    args = parser.parse_args()
    source = args.source.resolve()
    drivers = source.parents[3]
    driver_source = drivers / "reconstructed" / "zte_tpd" / "syna_dev_set_up_input_device.c"
    build_root = args.build_root.resolve()
    output = args.output.resolve()
    if not source.is_file():
        parser.error(f"source not found: {source}")
    if not driver_source.is_file():
        parser.error(f"driver source not found: {driver_source}")
    if build_root.exists():
        parser.error(f"build root already exists: {build_root}")
    version = execute(["docker", "run", "--rm", "-v", f"{TOOLCHAIN_VOLUME}:/toolchains:ro",
                       IMAGE, CLANG, "--version"])
    if version.returncode:
        raise SystemExit(version.stderr.strip())
    build_root.mkdir(parents=True)
    cycles = []
    for cycle in (1, 2):
        cycle_root = build_root / f"cycle{cycle}"
        cycle_root.mkdir()
        binary_name = "host_test_asan_ubsan"
        binary = cycle_root / binary_name
        command = ["docker", "run", "--rm", "-v", f"{drivers}:/drivers:ro", "-v",
                   f"{cycle_root}:/output", "-v", f"{TOOLCHAIN_VOLUME}:/toolchains:ro",
                   IMAGE, CLANG, "-std=gnu11", "-O1", "-g", "-Wall", "-Wextra", "-Werror",
                   "-Wno-sign-compare",
                   "-Wno-unused-variable",
                   "-Wno-unused-parameter", "-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
                   "-D", "ZTE_TPD_HOST_TEST", "-frandom-seed=zte-tpd-target167-direct-input",
                   "-ffile-prefix-map=/drivers=<drivers>", "-fsanitize=address,undefined",
                   "-Wl,--build-id=none",
                   "/drivers/validation/zte_tpd/host/syna_dev_set_up_input_device_direct_host_test.c",
                   "-o", f"/output/{binary_name}"]
        compiled = execute(command)
        run = execute(["docker", "run", "--rm", "-v", f"{cycle_root}:/output:ro",
                       IMAGE, f"/output/{binary_name}"]) if compiled.returncode == 0 else None
        passed = bool(run and run.returncode == 0 and run.stdout == EXPECTED_STDOUT
                      and run.stderr == "")
        cycles.append({"cycle": cycle, "compile_returncode": compiled.returncode,
                       "compile_stderr": compiled.stderr,
                       "run_returncode": run.returncode if run else None,
                       "run_stdout": run.stdout if run else "",
                       "run_stderr": run.stderr if run else "",
                       "binary_sha256": sha256(binary) if binary.is_file() else None,
                       "passed": passed})
    hashes = [cycle["binary_sha256"] for cycle in cycles]
    reproducible = len(set(hashes)) == 1 and hashes[0] is not None
    passed = all(cycle["passed"] for cycle in cycles) and reproducible
    report = {
        "schema_version": 1,
        "generated_at_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "offline_direct_source_syna_dev_set_up_input_device_asan_ubsan",
        "driver": "zte_tpd",
        "target": "syna_dev_set_up_input_device",
        "covered_functions": ["syna_dev_set_up_input_device"],
        "source": str(source),
        "source_sha256": sha256(source),
        "driver_source": str(driver_source),
        "driver_source_sha256": sha256(driver_source),
        "expected_cases": 10,
        "repetitions": 2,
        "cycles": cycles,
        "reproducible": reproducible,
        "reproducible_binary": reproducible,
        "passed": passed,
        "status": "PASS" if passed else "FAIL",
        "limitations": [
            "The reconstructed source is included directly; kernel input-core, managed-device and dispatcher APIs are deterministic stubs.",
            "The harness covers setup, replacement and error contracts, not Android integration, concurrent callers or physical hardware.",
            "AArch64 exact opcode/relocation identity, KCFI, canonical whole-module build and hardware remain separate gates."
        ],
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {output}")
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
