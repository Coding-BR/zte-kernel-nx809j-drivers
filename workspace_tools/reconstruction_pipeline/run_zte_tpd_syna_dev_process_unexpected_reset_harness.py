#!/usr/bin/env python3
"""Run the offline ASan/UBSan harness for syna_dev_process_unexpected_reset."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import re
import subprocess
from pathlib import Path
from typing import Any


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def run_command(command: list[str]) -> dict[str, Any]:
    completed = subprocess.run(command, capture_output=True, text=True, check=False)
    return {
        "command": command,
        "returncode": completed.returncode,
        "stdout": completed.stdout[-8000:],
        "stderr": completed.stderr[-8000:],
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    repository_root = Path(__file__).resolve().parents[2]
    parser.add_argument("--repo-root", type=Path, default=repository_root)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--repetitions", type=int, default=2)
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    args = parser.parse_args()
    if args.repetitions < 2:
        parser.error("--repetitions must be at least 2")

    root = args.repo_root.resolve()
    harness = root / "kernel_development" / "drivers" / "validation" / "zte_tpd" / "host" / "syna_dev_process_unexpected_reset_host_test.c"
    source = root / "kernel_development" / "drivers" / "reconstructed" / "zte_tpd" / "syna_dev_process_unexpected_reset.c"
    evidence_root = root / "reverse_engineering" / "validation" / "reconstructed" / "zte_tpd" / "offline_static"
    evidence = [
        evidence_root / "ghidra_stock" / "decompiled" / "0167_00113a9c_syna_dev_process_unexpected_reset.c",
        evidence_root / "ghidra_stock" / "pcode" / "0167_00113a9c_syna_dev_process_unexpected_reset.jsonl",
        evidence_root / "stock_assembly" / "0167_syna_dev_process_unexpected_reset_00113a9c.asm",
    ]
    missing = [str(path) for path in [harness, source, *evidence] if not path.is_file()]
    if missing:
        raise FileNotFoundError("missing harness inputs: " + ", ".join(missing))

    output = args.output.resolve()
    build_root = output.parent / "host-build"
    build_root.mkdir(parents=True, exist_ok=False)
    cycles: list[dict[str, Any]] = []
    binary_hashes: list[str] = []

    for cycle in range(1, args.repetitions + 1):
        cycle_root = build_root / f"cycle{cycle}"
        cycle_root.mkdir()
        binary = cycle_root / "host_test_asan_ubsan"
        compile_command = [
            "docker", "run", "--rm",
            "-v", f"{root}:/repo:ro",
            "-v", f"{cycle_root}:/output",
            "-v", f"{args.toolchain_volume}:/toolchains:ro",
            args.image,
            f"/toolchains/{args.clang_revision}/bin/clang",
            "-std=gnu11", "-O1", "-g", "-Wall", "-Wextra", "-Werror",
            "-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
            "-frandom-seed=zte-tpd-target168-unexpected-reset",
            "-ffile-prefix-map=/repo=<repo>",
            "-fsanitize=address,undefined", "-Wl,--build-id=none",
            "/repo/kernel_development/drivers/validation/zte_tpd/host/syna_dev_process_unexpected_reset_host_test.c",
            "-o", "/output/host_test_asan_ubsan",
        ]
        compile_result = run_command(compile_command)
        run_result: dict[str, Any] = {"command": [], "returncode": None, "stdout": "", "stderr": ""}
        binary_hash = None
        if compile_result["returncode"] == 0 and binary.is_file():
            run_result = run_command([
                "docker", "run", "--rm", "-v", f"{cycle_root}:/output:ro",
                args.image, "/output/host_test_asan_ubsan",
            ])
            binary_hash = sha256_file(binary)
            binary_hashes.append(binary_hash)
        summary = re.search(r"SUMMARY tests=(\d+) failures=(\d+)", run_result["stdout"])
        passed = (
            compile_result["returncode"] == 0
            and run_result["returncode"] == 0
            and summary is not None
            and int(summary.group(1)) == 10
            and int(summary.group(2)) == 0
        )
        cycles.append({
            "cycle": cycle,
            "compile": compile_result,
            "run": run_result,
            "summary": {"tests": int(summary.group(1)), "failures": int(summary.group(2))} if summary else None,
            "binary_sha256": binary_hash,
            "passed": passed,
        })

    passed = all(cycle["passed"] for cycle in cycles)
    reproducible = passed and len(set(binary_hashes)) == 1
    report = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "offline_direct_source_unexpected_reset_asan_ubsan",
        "driver": "zte_tpd",
        "target": "syna_dev_process_unexpected_reset",
        "covered_functions": ["syna_dev_process_unexpected_reset"],
        "compiler": f"/toolchains/{args.clang_revision}/bin/clang",
        "container_image": args.image,
        "toolchain_volume": args.toolchain_volume,
        "sanitizers": ["address", "undefined"],
        "expected_cases": 10,
        "repetitions": args.repetitions,
        "inputs": [
            {"path": str(path), "size": path.stat().st_size, "sha256": sha256_file(path)}
            for path in [harness, source, *evidence]
        ],
        "cycles": cycles,
        "reproducible_binary": reproducible,
        "passed": passed and reproducible,
        "status": "PASS" if passed and reproducible else "FAIL",
        "limitations": [
            "The harness directly executes the recovered source with deterministic mocks for printk and queue_work_on.",
            "It does not prove scheduler behavior, workqueue lifetime, Android integration, or hardware behavior.",
            "Assembly, P-Code, KCFI, Joern, the whole-module build, and hardware remain independent gates.",
        ],
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"output": str(output), "passed": report["passed"], "cycles": len(cycles)}))
    return 0 if report["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
