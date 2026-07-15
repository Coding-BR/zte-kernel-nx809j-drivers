#!/usr/bin/env python3
"""Build and run the canonical zte_ir host harness twice."""

import datetime as dt
import hashlib
import json
import subprocess
from pathlib import Path


COVERED_FUNCTIONS = [
    "zte_ir_write", "zte_ir_ioctl", "zte_ir_open", "zte_ir_release",
    "zte_ir_probe", "zte_ir_remove", "init_module", "cleanup_module",
]
COVERED_HELPERS = ["zte_ir_encode_pulses"]


def run(command):
    result = subprocess.run(command, capture_output=True, text=True, timeout=120)
    return {
        "argv": command,
        "returncode": result.returncode,
        "stdout": result.stdout,
        "stderr": result.stderr,
    }


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def validation_root(driver):
    for parent in driver.parents:
        engineering = parent / "validation"
        if (parent / "curated").is_dir() and engineering.is_dir():
            return engineering / "zte_ir"
        public = parent / "reverse_engineering" / "validation" / "reconstructed"
        if public.is_dir():
            return public / "zte_ir"
    return driver / "validation"


def main():
    tests = Path(__file__).resolve().parent
    driver = tests.parent
    validation = validation_root(driver)
    output = validation / "host"
    output.mkdir(parents=True, exist_ok=True)
    compiles, runs, binaries = [], [], []
    for suffix in ("a", "b"):
        binary = output / f"host_test_{suffix}"
        command = [
            "docker", "run", "--rm", "-v", f"{driver}:/source:ro",
            "-v", f"{output}:/output",
            "-v", "nubia_sm8850_kernel_toolchains:/toolchains:ro",
            "nubia-sm8850-kernel-builder:latest",
            "/toolchains/clang-r536225/bin/clang", "-std=gnu11", "-O2",
            "-Wall", "-Wextra", "-Werror", "-Wno-unused-parameter",
            "/source/tests/host_test.c", "-o", f"/output/{binary.name}",
        ]
        compiles.append(run(command))
        if compiles[-1]["returncode"] or not binary.is_file():
            break
        binaries.append({
            "path": str(binary),
            "size": binary.stat().st_size,
            "sha256": digest(binary),
        })
        runs.append(run([
            "docker", "run", "--rm", "-v", f"{output}:/output:ro",
            "nubia-sm8850-kernel-builder:latest", f"/output/{binary.name}",
        ]))
    reproducible = len(binaries) == 2 and binaries[0]["sha256"] == binaries[1]["sha256"]
    passed = (
        reproducible and len(runs) == 2
        and all(item["returncode"] == 0 for item in compiles + runs)
        and all("PASS zte_ir host tests" in item["stdout"] for item in runs)
    )
    report = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "driver": "zte_ir",
        "source": str(driver / "zte_ir.c"),
        "source_sha256": digest(driver / "zte_ir.c"),
        "candidate_sha256": digest(driver / "zte_ir.ko"),
        "test_source": str(tests / "host_test.c"),
        "covered_functions": COVERED_FUNCTIONS,
        "covered_helpers": COVERED_HELPERS,
        "compile_reports": compiles,
        "run_reports": runs,
        "binaries": binaries,
        "reproducible": reproducible,
        "passed": passed,
    }
    path = validation / "host_test_report.json"
    path.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"report": str(path), "passed": passed, "reproducible": reproducible}))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
