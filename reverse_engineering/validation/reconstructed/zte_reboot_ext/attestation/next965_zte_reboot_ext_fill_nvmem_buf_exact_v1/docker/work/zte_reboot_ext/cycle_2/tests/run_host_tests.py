#!/usr/bin/env python3
"""Build and run the zte_reboot_ext host harness twice."""

import datetime as dt
import hashlib
import json
import subprocess
from pathlib import Path

COVERED_FUNCTIONS = [
    "fill_nvmem_buf", "count_format_args", "entry_panic",
    "zte_reboot_ext_probe", "zte_reboot_ext_remove",
    "save_panic_buf_data_to_nvmem", "register_panic_hook",
    "zte_reboot_ext_panic", "attr_show", "attr_store",
    "boot_nvmem_show", "boot_nvmem_store", "init_module", "cleanup_module",
]


def run(command):
    result = subprocess.run(command, capture_output=True, text=True, timeout=120)
    return {"argv": command, "returncode": result.returncode,
            "stdout": result.stdout, "stderr": result.stderr}


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    tests = Path(__file__).resolve().parent
    driver = tests.parent
    engineering = driver.parent.parent
    output = engineering / "validation" / "zte_reboot_ext" / "host"
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
        binaries.append({"path": str(binary), "size": binary.stat().st_size,
                         "sha256": digest(binary)})
        runs.append(run(["docker", "run", "--rm", "-v", f"{output}:/output:ro",
                         "nubia-sm8850-kernel-builder:latest", f"/output/{binary.name}"]))
    reproducible = len(binaries) == 2 and binaries[0]["sha256"] == binaries[1]["sha256"]
    passed = (reproducible and len(runs) == 2 and
              all(item["returncode"] == 0 for item in compiles + runs) and
              all("PASS zte_reboot_ext host tests" in item["stdout"] for item in runs))
    report = {
        "schema_version": "1.0", "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "driver": "zte_reboot_ext", "source": str(driver / "zte_reboot_ext.c"),
        "test_source": str(tests / "host_test.c"), "covered_functions": COVERED_FUNCTIONS,
        "compile_reports": compiles, "run_reports": runs, "binaries": binaries,
        "reproducible": reproducible, "passed": passed,
    }
    path = output.parent / "host_test_report.json"
    path.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"report": str(path), "passed": passed, "reproducible": reproducible}))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
