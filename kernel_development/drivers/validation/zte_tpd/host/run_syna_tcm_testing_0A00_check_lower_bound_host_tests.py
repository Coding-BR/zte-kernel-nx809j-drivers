#!/usr/bin/env python3
"""Build and run the 0A00 lower-bound checker harness twice."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import pathlib
import subprocess


EXPECTED = "PASS syna_tcm_testing_0A00_check_lower_bound host tests (3 cases)\n"


def sha256(path: pathlib.Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def run(command: list[str]) -> subprocess.CompletedProcess[str]:
    return subprocess.run(command, check=False, text=True, capture_output=True)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--compiler", required=True)
    parser.add_argument("--source", type=pathlib.Path, default=pathlib.Path(__file__).with_name(
        "syna_tcm_testing_0A00_check_lower_bound_host_test.c"))
    parser.add_argument("--build-root", type=pathlib.Path, required=True)
    parser.add_argument("--output", type=pathlib.Path, required=True)
    args = parser.parse_args()
    source = args.source.resolve()
    driver_source = source.parents[3] / "reconstructed" / "zte_tpd" / "syna_tcm_testing_0A00_check_lower_bound.c"
    build_root = args.build_root.resolve()
    output = args.output.resolve()
    if not source.is_file() or not driver_source.is_file():
        raise SystemExit("missing harness or driver source")
    build_root.mkdir(parents=True)
    cycles = []
    for cycle in (1, 2):
        binary = build_root / f"cycle{cycle}" / "host_test_asan_ubsan"
        binary.parent.mkdir()
        command = [args.compiler, "-std=gnu11", "-O1", "-g", "-Wall", "-Wextra", "-Werror",
                   "-fno-omit-frame-pointer", "-fno-pie", "-no-pie", "-fsanitize=address,undefined",
                   "-Wl,--build-id=none", str(source), "-o", str(binary)]
        compiled = run(command)
        executed = run([str(binary)]) if compiled.returncode == 0 else None
        passed = bool(executed and executed.returncode == 0 and executed.stdout == EXPECTED and not executed.stderr)
        cycles.append({"cycle": cycle, "compile_command": command,
                       "compile_returncode": compiled.returncode,
                       "compile_stderr": compiled.stderr,
                       "run_returncode": executed.returncode if executed else None,
                       "run_stdout": executed.stdout if executed else "",
                       "run_stderr": executed.stderr if executed else "",
                       "binary_sha256": sha256(binary) if binary.is_file() else None,
                       "passed": passed})
    reproducible = len({x["binary_sha256"] for x in cycles}) == 1 and cycles[0]["binary_sha256"] is not None
    passed = reproducible and all(x["passed"] for x in cycles)
    report = {"schema_version": 1, "generated_at_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
              "mode": "offline_direct_source_0A00_lower_bound_asan_ubsan", "driver": "zte_tpd",
              "target": "syna_tcm_testing_0A00_check_lower_bound",
              "covered_functions": ["syna_tcm_testing_0A00_check_lower_bound"],
              "source": str(source), "source_sha256": sha256(source), "compiler": args.compiler,
              "sanitizers": ["address", "undefined"], "expected_cases": 3, "repetitions": 2,
              "cycles": cycles, "inputs": [{"path": str(x), "size": x.stat().st_size, "sha256": sha256(x)} for x in (source, driver_source)],
              "reproducible": reproducible, "reproducible_binary": reproducible,
              "passed": passed, "status": "PASS" if passed else "FAIL",
              "limitations": ["Kernel printk and ABI context are stubbed; Android runtime and hardware remain outside this unit gate."]}
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {output}")
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
