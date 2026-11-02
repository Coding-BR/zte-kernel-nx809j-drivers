#!/usr/bin/env python3
"""Build and run the syna_hw_interface_init harness twice with sanitizers."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import os
import pathlib
import shutil
import subprocess


EXPECTED_STDOUT = "PASS syna_hw_interface_init host tests (4 cases)\n"


def sha256(path: pathlib.Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def run(command: list[str], env: dict[str, str]) -> subprocess.CompletedProcess[str]:
    return subprocess.run(
        command,
        check=False,
        env=env,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
    )


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--compiler", default="gcc")
    parser.add_argument(
        "--source",
        type=pathlib.Path,
        default=pathlib.Path(__file__).with_name(
            "syna_hw_interface_init_host_test.c"
        ),
    )
    parser.add_argument("--build-root", type=pathlib.Path, required=True)
    parser.add_argument("--output", type=pathlib.Path, required=True)
    args = parser.parse_args()

    source = args.source.resolve()
    driver_source = (
        source.parents[3]
        / "reconstructed"
        / "zte_tpd"
        / "syna_hw_interface_init.c"
    )
    build_root = args.build_root.resolve()
    output = args.output.resolve()
    for path in (source, driver_source):
        if not path.is_file():
            parser.error(f"source not found: {path}")

    env = os.environ.copy()
    env.update(
        {
            "ASAN_OPTIONS": "detect_leaks=1:halt_on_error=1:strict_string_checks=1",
            "UBSAN_OPTIONS": "halt_on_error=1:print_stacktrace=1",
            "LC_ALL": "C",
            "SOURCE_DATE_EPOCH": "0",
            "TZ": "UTC",
        }
    )
    compiler_version = run([args.compiler, "--version"], env)
    if compiler_version.returncode:
        raise SystemExit(compiler_version.stderr.strip())

    if build_root.exists():
        shutil.rmtree(build_root)
    build_root.mkdir(parents=True)

    cycles: list[dict[str, object]] = []
    for cycle in (1, 2):
        cycle_root = build_root / f"cycle{cycle}"
        cycle_root.mkdir()
        binary = cycle_root / "host_test_asan_ubsan"
        command = [
            args.compiler,
            "-std=c11",
            "-O1",
            "-g",
            "-Wall",
            "-Wextra",
            "-Werror",
            "-fno-omit-frame-pointer",
            "-fno-pie",
            "-no-pie",
            "-frandom-seed=zte-tpd-next23",
            f"-ffile-prefix-map={build_root}=<build>",
            "-fsanitize=address,undefined",
            "-Wl,--build-id=none",
            str(source),
            "-o",
            str(binary),
        ]
        compile_result = run(command, env)
        run_result = None
        if compile_result.returncode == 0:
            run_result = run([str(binary)], env)
        passed = bool(
            run_result
            and run_result.returncode == 0
            and run_result.stdout == EXPECTED_STDOUT
            and run_result.stderr == ""
        )
        cycles.append(
            {
                "cycle": cycle,
                "compile_command": command,
                "compile_returncode": compile_result.returncode,
                "compile_stdout": compile_result.stdout,
                "compile_stderr": compile_result.stderr,
                "run_returncode": run_result.returncode if run_result else None,
                "run_stdout": run_result.stdout if run_result else "",
                "run_stderr": run_result.stderr if run_result else "",
                "binary_sha256": sha256(binary) if binary.is_file() else None,
                "passed": passed,
            }
        )

    binary_hashes = [cycle["binary_sha256"] for cycle in cycles]
    reproducible = len(set(binary_hashes)) == 1 and binary_hashes[0] is not None
    passed = all(bool(cycle["passed"]) for cycle in cycles) and reproducible
    report = {
        "schema_version": 1,
        "generated_at_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "offline_direct_source_next23_hw_interface_init_asan_ubsan",
        "target": "syna_hw_interface_init",
        "source": str(source),
        "source_sha256": sha256(source),
        "compiler": args.compiler,
        "compiler_version": compiler_version.stdout.splitlines()[0],
        "sanitizers": ["address", "undefined"],
        "expected_cases": 4,
        "repetitions": 2,
        "cycles": cycles,
        "inputs": [
            {
                "path": str(path),
                "size": path.stat().st_size,
                "sha256": sha256(path),
            }
            for path in (source, driver_source)
        ],
        "reproducible_binary": reproducible,
        "passed": passed,
        "status": "PASS" if passed else "FAIL",
        "limitations": [
            "The harness stubs platform registration, SPI registration and printk.",
            "It proves branch, call-order, argument, return, global and log behavior.",
            "Assembly, KCFI and Ghidra equivalence remain independent gates.",
            "No smartphone, SPI controller or platform bus is used.",
        ],
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {output}")
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
