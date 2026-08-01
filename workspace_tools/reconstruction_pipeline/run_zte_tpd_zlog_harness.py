#!/usr/bin/env python3
"""Run the zte_tpd zlog host harness in reproducible ASan/UBSan cycles."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


SOURCE_FILES = (
    "zte_tpd_zlog.h",
    "_inline_copy_from_user.c",
    "tpd_zlog_register.c",
    "tpd_zlog_check.c",
    "tpd_zlog_record_notify.c",
    "zlog_register_work_init.c",
    "zlog_register_work.c",
    "zlog_register_work_deinit.c",
    "tpd_zlog_init.c",
    "tp_zlog_debug_read.c",
    "tp_zlog_debug_write.c",
)

EXPECTED_STDOUT = """PASS test_layout_and_init
PASS test_register_paths
PASS test_throttle_check
PASS test_all_notify_mappings
PASS test_tenth_error_escalation
PASS test_notify_gates
PASS test_debug_read
PASS test_debug_write_mask_and_errors
PASS test_work_lifecycle
PASS test_unregistered_notify
SUMMARY total=10 passed=10 failed=0
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


def resolve_layout(root: Path) -> tuple[Path, Path]:
    engineering_source = root / "curated" / "zte_tpd"
    engineering_harness = root / "validation" / "zte_tpd" / "harness"
    if engineering_source.is_dir() and engineering_harness.is_dir():
        return engineering_harness, engineering_source

    harness_dir = root / "reverse_engineering" / "validation" / "reconstructed" / "zte_tpd" / "harness"
    source_dir = root / "kernel_development" / "drivers" / "reconstructed" / "zte_tpd"
    if harness_dir.is_dir() and source_dir.is_dir():
        return harness_dir, source_dir
    raise FileNotFoundError(f"zte_tpd harness layout not found under {root}")


def default_workspace() -> Path:
    return Path(__file__).resolve().parents[2]


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--engineering-root", type=Path, default=default_workspace())
    parser.add_argument("--build-root", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--repetitions", type=int, default=2)
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    args = parser.parse_args()
    if args.repetitions < 2:
        parser.error("--repetitions must be at least 2")

    engineering_root = args.engineering_root.resolve()
    harness_dir, source_dir = resolve_layout(engineering_root)
    harness_source = harness_dir / "zlog_harness.c"
    inputs = [harness_source, *(source_dir / name for name in SOURCE_FILES)]
    missing = [str(path) for path in inputs if not path.is_file()]
    if missing:
        raise FileNotFoundError("missing harness inputs: " + ", ".join(missing))

    build_root = args.build_root.resolve()
    if build_root.exists():
        raise FileExistsError(build_root)
    build_root.mkdir(parents=True)

    workspace = "/workspace"
    source_path = f"{workspace}/{source_dir.relative_to(engineering_root).as_posix()}"
    harness_path = f"{workspace}/{harness_source.relative_to(engineering_root).as_posix()}"
    clang = f"/toolchains/{args.clang_revision}/bin/clang"
    cycles: list[dict[str, Any]] = []
    binary_hashes: list[str] = []
    for cycle in range(1, args.repetitions + 1):
        cycle_root = build_root / f"cycle_{cycle}"
        cycle_root.mkdir()
        binary = cycle_root / "zlog_harness_asan_ubsan"
        compile_result = run_command([
            "docker", "run", "--rm",
            "-v", f"{engineering_root}:{workspace}:ro",
            "-v", f"{cycle_root}:/output",
            "-v", f"{args.toolchain_volume}:/toolchains:ro",
            args.image,
            clang,
            "-std=gnu11", "-O1", "-g", "-Wall", "-Wextra", "-Werror",
            "-Wno-unused-parameter", "-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
            "-frandom-seed=zte-tpd-next106-zlog-register-work-init",
            "-ffile-prefix-map=/workspace=<workspace>",
            "-fsanitize=address,undefined", "-Wl,--build-id=none",
            "-I" + source_path, harness_path, "-o", "/output/zlog_harness_asan_ubsan",
        ])
        run_result = {"command": [], "returncode": None, "stdout": "", "stderr": ""}
        binary_hash = None
        if compile_result["returncode"] == 0 and binary.is_file():
            run_result = run_command([
                "docker", "run", "--rm", "-v", f"{cycle_root}:/output:ro",
                args.image, "/output/zlog_harness_asan_ubsan",
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
        "mode": "offline_direct_source_zlog_asan_ubsan",
        "driver": "zte_tpd",
        "target": "zlog_register_work_init",
        "covered_functions": ["zlog_register_work_init"],
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "compiler": clang,
        "container_image": args.image,
        "toolchain_volume": args.toolchain_volume,
        "sanitizers": ["address", "undefined"],
        "expected_cases": 10,
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
            "The host harness validates direct reconstructed control flow, not Android scheduler timing.",
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
