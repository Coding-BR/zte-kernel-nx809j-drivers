#!/usr/bin/env python3
"""Run the isolated tpd_zlog_register host harness in reproducible ASan/UBSan cycles."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


SCRIPT_DIR = Path(__file__).resolve().parent
REPO_ROOT = SCRIPT_DIR.parents[1]
EXPECTED_STDOUT = """PASS test_layout_contract
PASS test_existing_client_logs_without_state_change
PASS test_client_failure_marks_registered
PASS test_success_uses_global_buffer_and_notifies
PASS test_allocation_failure_keeps_stock_memset_path
PASS test_ff_probe_id_skips_notify
SUMMARY total=6 passed=6 failed=0
"""


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as source:
        for chunk in iter(lambda: source.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def run_command(command: list[str]) -> dict[str, Any]:
    completed = subprocess.run(command, text=True, capture_output=True, check=False)
    return {
        "command": command,
        "returncode": completed.returncode,
        "stdout": completed.stdout[-4000:],
        "stderr": completed.stderr[-4000:],
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--source-root", type=Path, required=True)
    parser.add_argument("--build-root", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--repetitions", type=int, default=2)
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    args = parser.parse_args()
    if args.repetitions < 2:
        parser.error("--repetitions must be at least 2")

    source_root = args.source_root.resolve()
    harness = (
        REPO_ROOT
        / "reverse_engineering"
        / "validation"
        / "reconstructed"
        / "zte_tpd"
        / "harness"
        / "tpd_zlog_register_harness.c"
    )
    inputs = [harness, source_root / "zte_tpd_zlog.h", source_root / "tpd_zlog_register.c"]
    missing = [str(path) for path in inputs if not path.is_file()]
    if missing:
        raise FileNotFoundError("missing harness inputs: " + ", ".join(missing))

    build_root = args.build_root.resolve()
    if build_root.exists():
        raise FileExistsError(build_root)
    build_root.mkdir(parents=True)

    clang = f"/toolchains/{args.clang_revision}/bin/clang"
    cycles: list[dict[str, Any]] = []
    binary_hashes: list[str] = []
    for cycle in range(1, args.repetitions + 1):
        cycle_root = build_root / f"cycle_{cycle}"
        cycle_root.mkdir()
        binary = cycle_root / "tpd_zlog_register_harness_asan_ubsan"
        compile_result = run_command([
            "docker", "run", "--rm",
            "-v", f"{source_root}:/source:ro",
            "-v", f"{harness.parent}:/harness:ro",
            "-v", f"{cycle_root}:/output",
            "-v", f"{args.toolchain_volume}:/toolchains:ro",
            args.image,
            clang,
            "-std=gnu11", "-O1", "-g", "-Wall", "-Wextra", "-Werror",
            "-Wno-unused-parameter", "-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
            "-frandom-seed=zte-tpd-next111-tpd-zlog-register",
            "-ffile-prefix-map=/source=<source>",
            "-fsanitize=address,undefined", "-Wl,--build-id=none",
            "-I/source", "/harness/tpd_zlog_register_harness.c",
            "-o", "/output/tpd_zlog_register_harness_asan_ubsan",
        ])
        run_result = {"command": [], "returncode": None, "stdout": "", "stderr": ""}
        binary_hash = None
        if compile_result["returncode"] == 0 and binary.is_file():
            run_result = run_command([
                "docker", "run", "--rm", "-v", f"{cycle_root}:/output:ro",
                args.image, "/output/tpd_zlog_register_harness_asan_ubsan",
            ])
            binary_hash = sha256_file(binary)
            binary_hashes.append(binary_hash)
        passed = (
            compile_result["returncode"] == 0
            and run_result["returncode"] == 0
            and run_result["stdout"] == EXPECTED_STDOUT
            and not run_result["stderr"]
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
        "mode": "offline_direct_source_tpd_zlog_register_asan_ubsan",
        "driver": "zte_tpd",
        "target": "tpd_zlog_register",
        "covered_functions": ["tpd_zlog_register"],
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "compiler": clang,
        "container_image": args.image,
        "toolchain_volume": args.toolchain_volume,
        "sanitizers": ["address", "undefined"],
        "expected_cases": 6,
        "repetitions": args.repetitions,
        "build_root": str(build_root),
        "inputs": [
            {"path": str(path), "size": path.stat().st_size, "sha256": sha256_file(path)}
            for path in inputs
        ],
        "cycles": cycles,
        "reproducible_binary": reproducible,
        "passed": passed and reproducible,
        "status": "PASS" if passed and reproducible else "FAIL",
        "limitations": [
            "The host harness validates direct reconstructed control flow, not Android allocator behavior.",
            "The null memset path is intercepted by a harness stub because executing it in a kernel is unsafe.",
            "No stock module, kernel module load, ADB, fastboot, SPI, IRQ, or physical touch controller is exercised.",
            "Ghidra, Joern, KCFI, assembly, and canonical module build remain separate mandatory gates.",
        ],
    }
    output = args.output.resolve()
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"output": str(output), "passed": report["passed"], "cycles": len(cycles)}))
    return 0 if report["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
