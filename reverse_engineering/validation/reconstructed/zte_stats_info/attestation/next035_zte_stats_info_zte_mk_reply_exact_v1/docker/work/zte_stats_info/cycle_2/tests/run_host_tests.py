#!/usr/bin/env python3
"""Build and execute the zte_stats_info source-level host harness twice."""

from __future__ import annotations

import datetime as dt
import hashlib
import json
import subprocess
import sys
from pathlib import Path
from typing import Any

COVERED_FUNCTIONS = [
    "__zte_lock_task_sighand",
    "zte_taskstats_user_cmd",
    "zte_cgroupstats_user_cmd",
    "zte_parse",
    "zte_add_del_listener",
    "zte_prepare_reply",
    "zte_mk_reply",
    "init_module",
]


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def run(command: list[str]) -> dict[str, Any]:
    completed = subprocess.run(
        command, capture_output=True, text=True, encoding="utf-8",
        errors="replace", timeout=120, check=False,
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
    output_root = engineering_root / "validation" / "zte_stats_info" / "host"
    output_root.mkdir(parents=True, exist_ok=True)
    reports = []
    runs = []
    binaries = []
    for suffix in ("a", "b"):
        binary = output_root / f"host_test_{suffix}"
        command = [
            "docker", "run", "--rm",
            "-v", f"{driver_root}:/source:ro",
            "-v", f"{output_root}:/output",
            "-v", "nubia_sm8850_kernel_toolchains:/toolchains:ro",
            "nubia-sm8850-kernel-builder:latest",
            "/toolchains/clang-r536225/bin/clang",
            "-std=gnu11", "-O2", "-Wall", "-Wextra", "-Werror",
            "-Wno-unused-parameter", "/source/tests/host_test.c",
            "-o", f"/output/{binary.name}",
        ]
        reports.append(run(command))
        if reports[-1]["returncode"] or not binary.is_file():
            break
        binaries.append({
            "path": str(binary), "size": binary.stat().st_size,
            "sha256": sha256_file(binary),
        })
        runs.append(run([
            "docker", "run", "--rm", "-v", f"{output_root}:/output:ro",
            "nubia-sm8850-kernel-builder:latest", f"/output/{binary.name}",
        ]))
    reproducible = (
        len(binaries) == 2 and binaries[0]["sha256"] == binaries[1]["sha256"]
        and binaries[0]["size"] == binaries[1]["size"]
    )
    passed = (
        reproducible and len(runs) == 2
        and all(item["returncode"] == 0 for item in reports + runs)
        and all("PASS zte_stats_info host tests" in item["stdout"] for item in runs)
    )
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "driver": "zte_stats_info",
        "source": str(driver_root / "zte_stats_info.c"),
        "test_source": str(tests_root / "host_test.c"),
        "covered_functions": COVERED_FUNCTIONS,
        "compile_reports": reports,
        "run_reports": runs,
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
    except (OSError, subprocess.SubprocessError) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(2)
