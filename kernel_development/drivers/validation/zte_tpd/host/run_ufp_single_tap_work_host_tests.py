#!/usr/bin/env python3
"""Run the ufp_single_tap_work callback contract twice with sanitizers."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import pathlib
import shutil
import subprocess


def sha256(path: pathlib.Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--build-root", required=True, type=pathlib.Path)
    parser.add_argument("--output", required=True, type=pathlib.Path)
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    args = parser.parse_args()
    source = pathlib.Path(__file__).with_name("ufp_single_tap_work_host_test.c").resolve()
    drivers = source.parents[3]
    driver_source = drivers / "reconstructed" / "zte_tpd" / "ufp_single_tap_work.c"
    if not driver_source.is_file():
        parser.error(f"driver source not found: {driver_source}")
    if args.build_root.exists():
        shutil.rmtree(args.build_root)
    args.build_root.mkdir(parents=True)
    cycles = []
    expected = "PASS ufp_single_tap_work host tests (4 cases)\n"
    for cycle in (1, 2):
        output = args.build_root / f"cycle{cycle}"
        output.mkdir()
        binary = output / "host_test_asan_ubsan"
        compiled = subprocess.run([
            "docker", "run", "--rm", "-v", f"{drivers}:/drivers:ro",
            "-v", f"{output}:/output", args.image, "gcc", "-std=gnu11", "-O1", "-g",
            "-Wall", "-Wextra", "-Werror", "-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
            "-frandom-seed=zte-tpd-ufp-single-tap-work",
            "-ffile-prefix-map=/drivers=<drivers>", "-fsanitize=address,undefined",
            "-Wl,--build-id=none", "/drivers/validation/zte_tpd/host/ufp_single_tap_work_host_test.c",
            "-o", "/output/host_test_asan_ubsan",
        ], text=True, capture_output=True, check=False)
        executed = subprocess.run([
            "docker", "run", "--rm", "-v", f"{output}:/output:ro", args.image,
            "/output/host_test_asan_ubsan",
        ], text=True, capture_output=True, check=False) if compiled.returncode == 0 else None
        passed = bool(executed and executed.returncode == 0 and
                      executed.stdout == expected and executed.stderr == "")
        cycles.append({"cycle": cycle, "compile_returncode": compiled.returncode,
                       "compile_stdout": compiled.stdout, "compile_stderr": compiled.stderr,
                       "run_returncode": executed.returncode if executed else None,
                       "run_stdout": executed.stdout if executed else "",
                       "run_stderr": executed.stderr if executed else "",
                       "binary_sha256": sha256(binary) if binary.is_file() else None,
                       "passed": passed})
    reproducible = len({cycle["binary_sha256"] for cycle in cycles}) == 1
    passed = all(cycle["passed"] for cycle in cycles) and reproducible
    report = {"schema_version": 1, "generated_at_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
              "mode": "offline_direct_source_asan_ubsan", "driver": "zte_tpd",
              "target": "ufp_single_tap_work", "covered_functions": ["ufp_single_tap_work"],
              "inputs": [{"path": str(path), "size": path.stat().st_size, "sha256": sha256(path)}
                         for path in (source, driver_source)], "sanitizers": ["address", "undefined"],
              "expected_cases": 4, "repetitions": 2, "cycles": cycles,
              "reproducible": reproducible, "reproducible_binary": reproducible,
              "passed": passed, "status": "PASS" if passed else "FAIL",
              "limitations": ["The callback argument is intentionally unused by the stock body.",
                              "This harness proves only the recovered global-field write; workqueue scheduling and hardware behavior remain outside this offline test.",
                              "Assembly, KCFI, Ghidra and Joern remain independent gates."]}
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {args.output}")
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
