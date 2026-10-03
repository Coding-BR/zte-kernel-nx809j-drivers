#!/usr/bin/env python3
"""Build and run the set_follow_hand_level contract harness twice in Docker."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[5]
IMAGE = "nubia-sm8850-kernel-builder:latest"
TOOLS = "nubia_sm8850_kernel_toolchains"
CLANG = "/toolchains/clang-r536225/bin/clang"
EXPECTED = "PASS set_follow_hand_level host tests (4 cases)\n"


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--build-root", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()
    harness = ROOT / "kernel_development/drivers/validation/zte_tpd/host/set_follow_hand_level_host_test.c"
    source = ROOT / "kernel_development/drivers/reconstructed/zte_tpd/set_follow_hand_level.c"
    if args.build_root.exists():
        parser.error(f"build root already exists: {args.build_root}")
    args.build_root.mkdir(parents=True)
    cycles = []
    for number in (1, 2):
        cycle = args.build_root / f"cycle{number}"
        cycle.mkdir()
        binary = cycle / "set_follow_hand_level_host_test_asan_ubsan"
        command = [
            "docker", "run", "--rm", "--network", "none",
            "-v", f"{ROOT / 'kernel_development/drivers'}:/drivers:ro",
            "-v", f"{cycle.resolve()}:/out", "-v", f"{TOOLS}:/toolchains:ro",
            IMAGE, CLANG, "-std=gnu11", "-O1", "-g", "-Wall", "-Wextra", "-Werror",
            "-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
            "-fsanitize=address,undefined", "-Wl,--build-id=none",
            "-ffile-prefix-map=/drivers=<drivers>",
            "/drivers/validation/zte_tpd/host/set_follow_hand_level_host_test.c",
            "-o", "/out/set_follow_hand_level_host_test_asan_ubsan",
        ]
        compiled = subprocess.run(command, text=True, capture_output=True, check=False)
        executed = None
        if compiled.returncode == 0:
            executed = subprocess.run(
                ["docker", "run", "--rm", "--network", "none", "-e",
                 "ASAN_OPTIONS=detect_leaks=1:halt_on_error=1", "-e",
                 "UBSAN_OPTIONS=halt_on_error=1:print_stacktrace=1", "-v",
                 f"{cycle.resolve()}:/out:ro", IMAGE, "/out/set_follow_hand_level_host_test_asan_ubsan"],
                text=True, capture_output=True, check=False)
        passed = bool(compiled.returncode == 0 and executed is not None
                      and executed.returncode == 0 and executed.stdout == EXPECTED
                      and executed.stderr == "" and binary.is_file())
        cycles.append({
            "cycle": number, "compile_returncode": compiled.returncode,
            "compile_stderr": compiled.stderr,
            "run_returncode": None if executed is None else executed.returncode,
            "run_stdout": "" if executed is None else executed.stdout,
            "run_stderr": "" if executed is None else executed.stderr,
            "binary_sha256": sha256(binary) if binary.is_file() else None,
            "passed": passed,
        })
    hashes = {cycle["binary_sha256"] for cycle in cycles}
    passed = all(bool(cycle["passed"]) for cycle in cycles) and len(hashes) == 1 and None not in hashes
    report = {
        "schema_version": 1, "driver": "zte_tpd",
        "target": "set_follow_hand_level", "function": "set_follow_hand_level",
        "mode": "offline_contract_model_asan_ubsan",
        "source": str(harness), "source_sha256": sha256(source),
        "driver_source": str(source), "driver_source_sha256": sha256(source),
        "harness_sha256": sha256(harness), "compiler": CLANG,
        "container_image": IMAGE, "toolchain_volume": TOOLS,
        "expected_output": EXPECTED, "expected_cases": 4,
        "sanitizers": ["address", "undefined"], "cycles": cycles,
        "reproducible_binary": passed, "passed": passed,
        "status": "PASS" if passed else "FAIL",
        "limitations": [
            "The harness exercises setter behavior with fake device state.",
            "It does not execute real sysfs, transport, IRQ, MMIO, hardware or module loading.",
        ],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"output": str(args.output), "passed": passed, "cycles": len(cycles)}))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
