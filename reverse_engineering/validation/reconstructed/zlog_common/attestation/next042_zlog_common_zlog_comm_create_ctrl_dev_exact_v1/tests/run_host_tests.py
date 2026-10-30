#!/usr/bin/env python3
"""Compile and run the zlog_common host harness twice in Docker."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import subprocess
import sys
from pathlib import Path


COVERED_FUNCTIONS = [
    "zlog_client_notify", "zlog_client_record", "zlog_register_client",
    "zlog_unregister_client", "zlog_reset_client", "zlog_handle_work",
    "zlog_comm_read", "zlog_comm_write", "zlog_comm_ioctl",
    "zlog_comm_open", "zlog_comm_release", "init_module",
    "zlog_comm_create_ctrl_dev",
]


def sha256_file(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def run(command: list[str]) -> dict[str, object]:
    result = subprocess.run(
        command, capture_output=True, text=True, encoding="utf-8",
        errors="replace", timeout=120, check=False,
    )
    return {
        "argv": command, "returncode": result.returncode,
        "stdout": result.stdout, "stderr": result.stderr,
    }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--output-dir", type=Path,
        default=Path(__file__).resolve().parent / "out",
        help="Directory for binaries and host_test_report.json",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    tests = Path(__file__).resolve().parent
    driver = tests.parent
    output = args.output_dir.resolve()
    output.mkdir(parents=True, exist_ok=True)
    compile_reports = []
    run_reports = []
    binaries = []
    for suffix in ("a", "b"):
        binary = output / f"host_test_{suffix}"
        command = [
            "docker", "run", "--rm", "-v", f"{driver}:/source:ro",
            "-v", f"{output}:/output",
            "-v", "nubia_sm8850_kernel_toolchains:/toolchains:ro",
            "nubia-sm8850-kernel-builder:latest",
            "/toolchains/clang-r536225/bin/clang", "-std=gnu11", "-O2",
            "-Wall", "-Wextra", "-Werror", "-Wno-unused-parameter",
            "-I/source/tests", "/source/tests/host_test.c",
            "-o", f"/output/{binary.name}",
        ]
        compile_reports.append(run(command))
        if compile_reports[-1]["returncode"] != 0 or not binary.is_file():
            break
        binaries.append({
            "path": str(binary), "size": binary.stat().st_size,
            "sha256": sha256_file(binary),
        })
        run_reports.append(run([
            "docker", "run", "--rm", "-v", f"{output}:/output:ro",
            "nubia-sm8850-kernel-builder:latest", f"/output/{binary.name}",
        ]))

    reproducible = (
        len(binaries) == 2
        and binaries[0]["sha256"] == binaries[1]["sha256"]
        and binaries[0]["size"] == binaries[1]["size"]
    )
    passed = (
        reproducible and len(run_reports) == 2
        and all(item["returncode"] == 0 for item in compile_reports + run_reports)
        and all("PASS zlog_common host tests" in item["stdout"] for item in run_reports)
    )
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "driver": "zlog_common",
        "source": str(driver / "zlog_common.c"),
        "test_source": str(tests / "host_test.c"),
        "covered_functions": COVERED_FUNCTIONS,
        "compile_reports": compile_reports,
        "run_reports": run_reports,
        "binaries": binaries,
        "reproducible": reproducible,
        "passed": passed,
    }
    report = output / "host_test_report.json"
    report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({
        "report": str(report), "passed": passed,
        "reproducible": reproducible,
    }))
    return 0 if passed else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, subprocess.SubprocessError) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(2)
