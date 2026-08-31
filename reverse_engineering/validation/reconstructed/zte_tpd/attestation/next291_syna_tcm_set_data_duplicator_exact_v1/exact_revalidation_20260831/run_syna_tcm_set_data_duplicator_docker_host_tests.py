#!/usr/bin/env python3
"""Build and run the set-data-duplicator host oracle twice in Docker."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import pathlib
import subprocess

IMAGE = "nubia-sm8850-kernel-builder:latest"
TOOLS = "nubia_sm8850_kernel_toolchains"
CLANG = "/toolchains/clang-r536225/bin/clang"
EXPECTED = "PASS syna_tcm_set_data_duplicator host tests (2 cases)\n"


def sha256(path: pathlib.Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def run(command: list[str]) -> subprocess.CompletedProcess[str]:
    return subprocess.run(command, text=True, capture_output=True, check=False)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--build-root", type=pathlib.Path, required=True)
    parser.add_argument("--output", type=pathlib.Path, required=True)
    args = parser.parse_args()
    source = pathlib.Path(__file__).resolve()
    drivers = source.parents[3]
    test_source = source.with_name("syna_tcm_set_data_duplicator_host_test.c")
    driver_source = drivers / "reconstructed" / "zte_tpd" / "syna_tcm_set_data_duplicator.c"
    build_root = args.build_root.resolve()
    if build_root.exists():
        parser.error(f"build root already exists: {build_root}")
    build_root.mkdir(parents=True)
    cycles = []
    for number in (1, 2):
        cycle = build_root / f"cycle{number}"
        cycle.mkdir()
        binary = cycle / "host_test_asan_ubsan"
        compile_command = [
            "docker", "run", "--rm", "-v", f"{drivers}:/drivers:ro",
            "-v", f"{cycle}:/output", "-v", f"{TOOLS}:/toolchains:ro",
            IMAGE, CLANG, "-std=c11", "-O1", "-g", "-Wall", "-Wextra", "-Werror",
            "-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
            "-fsanitize=address,undefined", "-Wl,--build-id=none",
            "-ffile-prefix-map=/drivers=<drivers>",
            "/drivers/validation/zte_tpd/host/syna_tcm_set_data_duplicator_host_test.c",
            "-o", f"/output/{binary.name}",
        ]
        compiled = run(compile_command)
        executed = run([
            "docker", "run", "--rm", "-e", "ASAN_OPTIONS=detect_leaks=1:halt_on_error=1",
            "-e", "UBSAN_OPTIONS=halt_on_error=1:print_stacktrace=1",
            "-v", f"{cycle}:/output:ro", IMAGE, f"/output/{binary.name}",
        ]) if compiled.returncode == 0 else None
        passed = bool(
            executed and executed.returncode == 0 and
            executed.stdout == EXPECTED and executed.stderr == ""
        )
        cycles.append({
            "cycle": number,
            "compile_command": compile_command,
            "compile_returncode": compiled.returncode,
            "compile_stderr": compiled.stderr,
            "run_returncode": executed.returncode if executed else None,
            "run_stdout": executed.stdout if executed else "",
            "run_stderr": executed.stderr if executed else "",
            "binary_sha256": sha256(binary) if binary.is_file() else None,
            "passed": passed,
        })
    hashes = [item["binary_sha256"] for item in cycles]
    reproducible = hashes[0] is not None and len(set(hashes)) == 1
    passed = reproducible and all(item["passed"] for item in cycles)
    report = {
        "schema_version": 1,
        "generated_at_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "offline_direct_source_syna_tcm_set_data_duplicator_docker_asan_ubsan",
        "driver": "zte_tpd",
        "target": "syna_tcm_set_data_duplicator",
        "source": str(test_source),
        "source_sha256": sha256(test_source),
        "driver_source": str(driver_source),
        "driver_source_sha256": sha256(driver_source),
        "expected_cases": 2,
        "repetitions": 2,
        "sanitizers": ["address", "undefined"],
        "cycles": cycles,
        "reproducible": reproducible,
        "reproducible_binary": reproducible,
        "passed": passed,
        "status": "PASS" if passed else "FAIL",
        "limitations": [
            "The harness stubs printk and validates indexed callback/context stores.",
            "It does not exercise transport, IRQ, MMIO, flash hardware or module loading.",
        ],
    }
    output = args.output.resolve()
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {output}")
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
