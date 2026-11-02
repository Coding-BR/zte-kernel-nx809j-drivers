#!/usr/bin/env python3
"""Run a reproducible ASan/UBSan harness for syna_tcm_set_data_duplicator."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
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
        "stdout": completed.stdout[-4000:],
        "stderr": completed.stderr[-4000:],
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
    drivers_root = root / "kernel_development" / "drivers"
    harness = (
        drivers_root / "validation" / "zte_tpd" / "host" /
        "syna_tcm_set_data_duplicator_host_test.c"
    )
    source = (
        drivers_root / "reconstructed" / "zte_tpd" /
        "syna_tcm_set_data_duplicator.c"
    )
    if not harness.is_file() or not source.is_file():
        raise FileNotFoundError("data duplicator harness or source is missing")

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
            "-v", f"{drivers_root}:/drivers:ro",
            "-v", f"{cycle_root}:/output",
            "-v", f"{args.toolchain_volume}:/toolchains:ro",
            args.image,
            f"/toolchains/{args.clang_revision}/bin/clang",
            "-std=gnu11", "-O1", "-g", "-Wall", "-Wextra", "-Werror",
            "-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
            "-frandom-seed=zte-tpd-next98-data-duplicator",
            "-ffile-prefix-map=/drivers=<drivers>",
            "-fsanitize=address,undefined", "-Wl,--build-id=none",
            "/drivers/validation/zte_tpd/host/syna_tcm_set_data_duplicator_host_test.c",
            "-o", "/output/host_test_asan_ubsan",
        ]
        compile_result = run_command(compile_command)
        run_result = {"command": [], "returncode": None, "stdout": "", "stderr": ""}
        binary_hash = None
        if compile_result["returncode"] == 0 and binary.is_file():
            run_result = run_command([
                "docker", "run", "--rm", "-v", f"{cycle_root}:/output:ro",
                args.image, "/output/host_test_asan_ubsan",
            ])
            binary_hash = sha256_file(binary)
            binary_hashes.append(binary_hash)
        passed = (
            compile_result["returncode"] == 0
            and run_result["returncode"] == 0
            and "PASS syna_tcm_set_data_duplicator host tests (2 cases)" in run_result["stdout"]
        )
        cycles.append({
            "cycle": cycle,
            "compile": compile_result,
            "run": run_result,
            "binary_sha256": binary_hash,
            "passed": passed,
        })

    passed = all(cycle["passed"] for cycle in cycles)
    reproducible = passed and len(set(binary_hashes)) == 1
    report = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "offline_direct_source_data_duplicator_asan_ubsan",
        "driver": "zte_tpd",
        "target": "syna_tcm_set_data_duplicator",
        "covered_functions": ["syna_tcm_set_data_duplicator"],
        "compiler": f"/toolchains/{args.clang_revision}/bin/clang",
        "container_image": args.image,
        "toolchain_volume": args.toolchain_volume,
        "sanitizers": ["address", "undefined"],
        "expected_cases": 2,
        "repetitions": args.repetitions,
        "inputs": [
            {"path": str(harness), "size": harness.stat().st_size, "sha256": sha256_file(harness)},
            {"path": str(source), "size": source.stat().st_size, "sha256": sha256_file(source)},
        ],
        "cycles": cycles,
        "reproducible_binary": reproducible,
        "passed": passed and reproducible,
        "status": "PASS" if passed and reproducible else "FAIL",
        "limitations": [
            "The harness validates only indexed pointer stores, null error path, logger contract, and return values.",
            "It does not invoke the stored callback or load the module on an Android device.",
            "Assembly, KCFI, Ghidra, Joern, and the whole-module build are separate gates.",
        ],
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"output": str(output), "passed": report["passed"], "cycles": len(cycles)}))
    return 0 if report["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
