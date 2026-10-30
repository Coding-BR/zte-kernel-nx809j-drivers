#!/usr/bin/env python3
"""Build and run the zte_misc source-level host harness twice."""

from __future__ import annotations

import datetime as dt
import hashlib
import json
import subprocess
import sys
from pathlib import Path

COVERED_FUNCTIONS = [
    "get_sysnumber_byname", "zte_poweroff_charging_status",
    "zte_misc_register_callback", "zte_misc_get_node_val",
    "battery_module_pack_vendor_get", "zte_misc_get_design_capacity",
    "zte_misc_common_callback_set", "zte_misc_common_callback_get",
    "zte_misc_probe", "zte_misc_remove", "zte_timezone_setup",
    "zte_poweroff_charging_handle", "init_module", "cleanup_module",
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
    output = engineering / "validation" / "zte_misc" / "host"
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
            "-Wno-missing-field-initializers", "-Wno-sign-compare",
            "/source/tests/host_test.c", "-o", f"/output/{binary.name}",
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
              and all("PASS zte_misc host tests" in item["stdout"] for item in runs))
    payload = {
        "schema_version": "1.0", "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "driver": "zte_misc", "source": str(driver / "zte_misc.c"),
        "test_source": str(tests / "host_test.c"), "covered_functions": COVERED_FUNCTIONS,
        "compile_reports": compiles, "run_reports": runs, "binaries": binaries,
        "reproducible": reproducible, "passed": passed,
    }
    report = output.parent / "host_test_report.json"
    report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"report": str(report), "passed": passed, "reproducible": reproducible}))
    return 0 if passed else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, subprocess.SubprocessError) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(2)
