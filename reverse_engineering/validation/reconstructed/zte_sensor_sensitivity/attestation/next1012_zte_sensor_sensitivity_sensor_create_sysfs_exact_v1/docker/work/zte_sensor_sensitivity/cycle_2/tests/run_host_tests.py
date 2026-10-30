#!/usr/bin/env python3
"""Build and run the zte_sensor_sensitivity host harness twice."""

from __future__ import annotations

import datetime as dt
import hashlib
import json
import subprocess
import sys
from pathlib import Path

COVERED_FUNCTIONS = [
    "sensors_sensitivity_register", "sensor_create_sysfs_interfaces",
    "sensors_sensitivity_unregister", "accel_enable_show", "accel_enable_store",
    "accel_x_axial_show", "accel_x_axial_store", "accel_y_axial_show",
    "accel_y_axial_store", "accel_z_axial_show", "accel_z_axial_store",
    "gyro_enable_show", "gyro_enable_store", "gyro_x_axial_show",
    "gyro_x_axial_store", "gyro_y_axial_show", "gyro_y_axial_store",
    "gyro_z_axial_show", "gyro_z_axial_store", "init_module", "cleanup_module",
]


def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def run(command: list[str]) -> dict:
    result = subprocess.run(command, capture_output=True, text=True,
                            encoding="utf-8", errors="replace", timeout=120)
    return {"argv": command, "returncode": result.returncode,
            "stdout": result.stdout, "stderr": result.stderr}


def main() -> int:
    tests = Path(__file__).resolve().parent
    driver = tests.parent
    engineering = driver.parent.parent
    output = engineering / "validation" / "zte_sensor_sensitivity" / "host"
    output.mkdir(parents=True, exist_ok=True)
    compiles, runs, binaries = [], [], []
    for suffix in ("a", "b"):
        binary = output / f"host_test_{suffix}"
        command = [
            "docker", "run", "--rm", "-v", f"{driver}:/source:ro",
            "-v", f"{output}:/output", "-v",
            "nubia_sm8850_kernel_toolchains:/toolchains:ro",
            "nubia-sm8850-kernel-builder:latest",
            "/toolchains/clang-r536225/bin/clang", "-std=gnu11", "-O2",
            "-Wall", "-Wextra", "-Werror", "-Wno-unused-parameter",
            "-Wno-missing-field-initializers", "/source/tests/host_test.c",
            "-o", f"/output/{binary.name}",
        ]
        compiles.append(run(command))
        if compiles[-1]["returncode"] or not binary.is_file():
            break
        binaries.append({"path": str(binary), "size": binary.stat().st_size,
                         "sha256": sha(binary)})
        runs.append(run(["docker", "run", "--rm", "-v", f"{output}:/output:ro",
                         "nubia-sm8850-kernel-builder:latest", f"/output/{binary.name}"]))
    reproducible = (len(binaries) == 2 and binaries[0]["sha256"] == binaries[1]["sha256"]
                    and binaries[0]["size"] == binaries[1]["size"])
    passed = (reproducible and len(runs) == 2
              and all(item["returncode"] == 0 for item in compiles + runs)
              and all("PASS zte_sensor_sensitivity host tests" in item["stdout"]
                      for item in runs))
    payload = {
        "schema_version": "1.0", "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "driver": "zte_sensor_sensitivity", "source": str(driver / "zte_sensor_sensitivity.c"),
        "test_source": str(tests / "host_test.c"), "covered_functions": COVERED_FUNCTIONS,
        "compile_reports": compiles, "run_reports": runs, "binaries": binaries,
        "reproducible": reproducible, "passed": passed,
    }
    report = output.parent / "host_test_report.json"
    report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"report": str(report), "passed": passed,
                      "reproducible": reproducible}))
    return 0 if passed else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, subprocess.SubprocessError) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(2)
