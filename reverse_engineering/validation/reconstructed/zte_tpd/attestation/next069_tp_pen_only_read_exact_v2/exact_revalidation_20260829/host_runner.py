#!/usr/bin/env python3
"""Build and run the tp_pen_only_read contract twice in Docker."""

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
EXPECTED_STDOUT = "PASS tp_pen_only_read: 4 cases\n"


def sha256(path: pathlib.Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def run(command: list[str]) -> subprocess.CompletedProcess[str]:
    return subprocess.run(command, check=False, text=True,
                          stdout=subprocess.PIPE, stderr=subprocess.PIPE)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--source", type=pathlib.Path,
        default=pathlib.Path(__file__).with_name("tp_pen_only_read_host_test.c"),
    )
    parser.add_argument(
        "--driver-source", type=pathlib.Path,
        default=pathlib.Path(__file__).parents[3]
        / "reconstructed" / "zte_tpd" / "tp_pen_only_read.c",
    )
    parser.add_argument("--build-root", type=pathlib.Path, required=True)
    parser.add_argument("--output", type=pathlib.Path, required=True)
    args = parser.parse_args()

    source = args.source.resolve()
    driver_source = args.driver_source.resolve()
    drivers = source.parents[3]
    build_root = args.build_root.resolve()
    output = args.output.resolve()
    if not source.is_file() or not driver_source.is_file():
        parser.error("host contract or driver source is missing")
    if build_root.exists():
        parser.error(f"build root already exists: {build_root}")

    version = run(["docker", "run", "--rm", "-v",
                   f"{TOOLCHAIN_VOLUME}:/toolchains:ro", IMAGE, CLANG,
                   "--version"])
    if version.returncode:
        raise SystemExit(version.stderr.strip())

    build_root.mkdir(parents=True)
    cycles = []
    for cycle in (1, 2):
        cycle_root = build_root / f"cycle{cycle}"
        cycle_root.mkdir()
        binary_name = "tp_pen_only_read_host_asan_ubsan"
        binary = cycle_root / binary_name
        compile_command = [
            "docker", "run", "--rm", "-v", f"{drivers}:/drivers:ro", "-v",
            f"{cycle_root}:/output", "-v", f"{TOOLCHAIN_VOLUME}:/toolchains:ro",
            IMAGE, CLANG, "-std=gnu11", "-O1", "-g", "-Wall", "-Wextra",
            "-Werror", "-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
            "-D", "ZTE_TPD_HOST_TEST", "-fsanitize=address,undefined",
            "-Wl,--build-id=none", "-frandom-seed=zte-tpd-pen-only-read",
            "-ffile-prefix-map=/drivers=<drivers>",
            "/drivers/validation/zte_tpd/host/tp_pen_only_read_host_test.c",
            "-o", f"/output/{binary_name}",
        ]
        compiled = run(compile_command)
        executed = run(["docker", "run", "--rm", "-v",
                        f"{cycle_root}:/output:ro", IMAGE,
                        f"/output/{binary_name}"]) if compiled.returncode == 0 else None
        passed = bool(
            executed and executed.returncode == 0
            and executed.stdout == EXPECTED_STDOUT and executed.stderr == ""
        )
        cycles.append({
            "cycle": cycle,
            "compile_command": compile_command,
            "compile_returncode": compiled.returncode,
            "compile_stderr": compiled.stderr,
            "run_returncode": executed.returncode if executed else None,
            "run_stdout": executed.stdout if executed else "",
            "run_stderr": executed.stderr if executed else "",
            "binary_sha256": sha256(binary) if binary.is_file() else None,
            "passed": passed,
        })

    hashes = [cycle["binary_sha256"] for cycle in cycles]
    reproducible = len(set(hashes)) == 1 and hashes[0] is not None
    passed = all(cycle["passed"] for cycle in cycles) and reproducible
    report = {
        "schema_version": 1,
        "generated_at_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "offline_direct_source_tp_pen_only_read_asan_ubsan",
        "driver": "zte_tpd",
        "target": "tp_pen_only_read",
        "function": "tp_pen_only_read",
        "covered_functions": ["tp_pen_only_read"],
        "source": str(source),
        "source_sha256": sha256(source),
        "driver_source": str(driver_source),
        "driver_source_sha256": sha256(driver_source),
        "expected_cases": 4,
        "repetitions": 2,
        "sanitizers": ["address", "undefined"],
        "cycles": cycles,
        "reproducible": reproducible,
        "reproducible_binary": reproducible,
        "passed": passed,
        "status": "PASS" if passed else "FAIL",
        "limitations": [
            "The callback, printk, simple_read_from_buffer and device memory are host fixtures.",
            "No smartphone, procfs, input subsystem, transport or hardware is exercised.",
        ],
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {output}")
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
