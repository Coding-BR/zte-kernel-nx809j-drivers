#!/usr/bin/env python3
"""Build and run the zte_ramdisk_reboot host harness twice in Docker."""

from __future__ import annotations

import datetime as dt
import hashlib
import json
import subprocess
import sys
from pathlib import Path
from typing import Any


COVERED_FUNCTIONS = [
    "zte_ramdisk_reboot_write",
    "zte_check_xbl_log_lines",
    "extract_ocp_info",
    "extract_sn_info",
    "zte_ramdisk_reboot_probe",
    "zte_ramdisk_reboot_remove",
    "zte_get_xbl_log_memory_region",
    "attr_show",
    "attr_store",
    "ramdisk_nvmem_show",
    "ramdisk_nvmem_store",
    "init_module",
    "cleanup_module",
]


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def run(command: list[str], timeout: int = 120) -> dict[str, Any]:
    completed = subprocess.run(
        command,
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
        timeout=timeout,
        check=False,
    )
    return {
        "argv": command,
        "returncode": completed.returncode,
        "stdout": completed.stdout,
        "stderr": completed.stderr,
    }


def main() -> int:
    tests_root = Path(__file__).resolve().parent
    driver_root = tests_root.parent
    engineering_root = driver_root.parent.parent
    output_root = engineering_root / "validation" / "zte_ramdisk_reboot" / "host"
    output_root.mkdir(parents=True, exist_ok=True)

    compile_reports = []
    run_reports = []
    binaries = []
    for suffix in ("a", "b"):
        binary = output_root / f"host_test_{suffix}"
        command = [
            "docker",
            "run",
            "--rm",
            "-v",
            f"{driver_root}:/source:ro",
            "-v",
            f"{output_root}:/output",
            "-v",
            "nubia_sm8850_kernel_toolchains:/toolchains:ro",
            "nubia-sm8850-kernel-builder:latest",
            "/toolchains/clang-r536225/bin/clang",
            "-std=gnu11",
            "-O2",
            "-Wall",
            "-Wextra",
            "-Werror",
            "-Wno-unused-parameter",
            "/source/tests/host_test.c",
            "-o",
            f"/output/{binary.name}",
        ]
        compile_report = run(command)
        compile_reports.append(compile_report)
        if compile_report["returncode"] != 0 or not binary.is_file():
            break
        binaries.append(
            {
                "path": str(binary),
                "size": binary.stat().st_size,
                "sha256": sha256_file(binary),
            }
        )
        run_reports.append(
            run(
                [
                    "docker",
                    "run",
                    "--rm",
                    "-v",
                    f"{output_root}:/output:ro",
                    "nubia-sm8850-kernel-builder:latest",
                    f"/output/{binary.name}",
                ]
            )
        )

    reproducible = (
        len(binaries) == 2
        and binaries[0]["sha256"] == binaries[1]["sha256"]
        and binaries[0]["size"] == binaries[1]["size"]
    )
    passed = (
        reproducible
        and len(run_reports) == 2
        and all(report["returncode"] == 0 for report in compile_reports)
        and all(
            report["returncode"] == 0
            and "PASS zte_ramdisk_reboot host tests" in report["stdout"]
            for report in run_reports
        )
    )
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "driver": "zte_ramdisk_reboot",
        "source": str(driver_root / "zte_ramdisk_reboot.c"),
        "test_source": str(tests_root / "host_test.c"),
        "covered_functions": COVERED_FUNCTIONS,
        "compile_reports": compile_reports,
        "run_reports": run_reports,
        "binaries": binaries,
        "reproducible": reproducible,
        "passed": passed,
    }
    report = output_root.parent / "host_test_report.json"
    report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"report": str(report), "passed": passed, "reproducible": reproducible}))
    return 0 if passed else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, subprocess.SubprocessError) as exc:
        print(f"error: {exc}", file=sys.stderr)
        raise SystemExit(2)
