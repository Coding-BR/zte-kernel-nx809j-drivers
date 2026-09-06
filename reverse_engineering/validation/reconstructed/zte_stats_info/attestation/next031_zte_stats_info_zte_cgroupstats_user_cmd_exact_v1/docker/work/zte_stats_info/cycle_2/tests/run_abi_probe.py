#!/usr/bin/env python3
"""Build the ABI probe twice and compare target-kernel offsets with Ghidra."""

from __future__ import annotations

import datetime as dt
import hashlib
import json
import re
import shutil
import subprocess
import sys
from pathlib import Path
from typing import Any

EXPECTED = {
    "abi_offset_task_struct_sighand": 0x960,
    "abi_offset_task_struct_signal": 0x958,
    "abi_offset_task_struct_flags": 0x44,
    "abi_offset_task_struct_static_prio": 0x98,
    "abi_offset_task_struct_exit_code": 0x6A4,
    "abi_offset_task_struct_real_parent": 0x718,
    "abi_offset_task_struct_utime": 0x7E8,
    "abi_offset_task_struct_stime": 0x7F0,
    "abi_offset_task_struct_nvcsw": 0x828,
    "abi_offset_task_struct_nivcsw": 0x830,
    "abi_offset_task_struct_start_time": 0x838,
    "abi_offset_task_struct_min_flt": 0x848,
    "abi_offset_task_struct_maj_flt": 0x850,
    "abi_offset_task_struct_real_cred": 0x8F8,
    "abi_offset_task_struct_comm": 0x910,
    "abi_offset_task_struct_ioac": 0xAC8,
    "abi_offset_task_struct_acct_rss_mem1": 0xB10,
    "abi_offset_task_struct_acct_vm_mem1": 0xB18,
    "abi_offset_task_sched_info_pcount": 0x618,
    "abi_offset_task_sched_info_run_delay": 0x620,
    "abi_offset_signal_struct_stats": 0x3A0,
    "abi_offset_mm_struct_hiwater_rss": 0xE8,
    "abi_offset_mm_struct_hiwater_vm": 0xF0,
    "abi_offset_mm_struct_total_vm": 0xF8,
    "abi_size_zte_taskstats_v10": 0x160,
    "abi_size_task_io_accounting": 0x40,
}


def run(command: list[str]) -> dict[str, Any]:
    completed = subprocess.run(
        command, capture_output=True, text=True, encoding="utf-8",
        errors="replace", timeout=180, check=False,
    )
    return {
        "argv": command,
        "returncode": completed.returncode,
        "stdout": completed.stdout,
        "stderr": completed.stderr,
    }


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def main() -> int:
    tests_root = Path(__file__).resolve().parent
    driver_root = tests_root.parent
    workspace_root = driver_root.parents[2]
    validation_root = workspace_root / "engenharia" / "validation" / "zte_stats_info"
    stage = validation_root / "abi_probe_work"
    if stage.exists():
        shutil.rmtree(stage)
    (stage / "tests").mkdir(parents=True)
    shutil.copy2(driver_root / "zte_stats_info_abi.h", stage / "zte_stats_info_abi.h")
    shutil.copy2(tests_root / "abi_probe.c", stage / "tests" / "abi_probe.c")
    shutil.copy2(tests_root / "Makefile", stage / "tests" / "Makefile")

    reports = []
    binaries = []
    for index in range(2):
        clean = [
            "docker", "run", "--rm",
            "-v", "nubia_sm8850_kernel_src:/work/src:ro",
            "-v", "nubia_sm8850_kernel_toolchains:/work/toolchains:ro",
            "-v", f"{workspace_root}:/work/workspace",
            "-e", "PATH=/work/toolchains/clang-r536225/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
            "-w", "/work/src/kernel/kernel_platform/common",
            "nubia-sm8850-kernel-builder:latest", "make", "ARCH=arm64",
            "LLVM=1", "LLVM_IAS=1",
            "M=/work/workspace/engenharia/validation/zte_stats_info/abi_probe_work/tests",
            "clean",
        ]
        build = clean[:-1] + ["modules"]
        reports.append({"clean": run(clean), "build": run(build)})
        module = stage / "tests" / "abi_probe.ko"
        if reports[-1]["build"]["returncode"] or not module.is_file():
            break
        snapshot = validation_root / f"abi_probe_{index + 1}.ko"
        shutil.copy2(module, snapshot)
        binaries.append({
            "path": str(snapshot), "size": snapshot.stat().st_size,
            "sha256": sha256_file(snapshot),
        })

    offsets: dict[str, int] = {}
    nm_report: dict[str, Any] = {}
    if binaries:
        nm_report = run([
            "docker", "run", "--rm", "-v", f"{workspace_root}:/work",
            "-v", "nubia_sm8850_kernel_toolchains:/toolchains:ro",
            "nubia-sm8850-kernel-builder:latest",
            "/toolchains/clang-r536225/bin/llvm-nm", "--defined-only",
            "--print-size", "--size-sort",
            "/work/engenharia/validation/zte_stats_info/abi_probe_2.ko",
        ])
        for line in nm_report.get("stdout", "").splitlines():
            match = re.match(r"^[0-9a-f]+\s+([0-9a-f]+)\s+\S\s+(abi_\S+)$", line)
            if not match:
                continue
            size = int(match.group(1), 16)
            name = match.group(2)
            offsets[name] = size if name.startswith("abi_size_") else size - 1

    comparisons = {
        name: {"expected": expected, "actual": offsets.get(name),
               "passed": offsets.get(name) == expected}
        for name, expected in EXPECTED.items()
    }
    reproducible = (
        len(binaries) == 2 and binaries[0]["sha256"] == binaries[1]["sha256"]
        and binaries[0]["size"] == binaries[1]["size"]
    )
    passed = reproducible and all(item["passed"] for item in comparisons.values())
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "driver": "zte_stats_info",
        "passed": passed,
        "reproducible": reproducible,
        "binaries": binaries,
        "commands": reports,
        "nm": nm_report,
        "comparisons": comparisons,
    }
    report = validation_root / "abi_probe_report.json"
    report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"report": str(report), "passed": passed, "offsets": len(comparisons)}))
    return 0 if passed else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, subprocess.SubprocessError) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(2)
