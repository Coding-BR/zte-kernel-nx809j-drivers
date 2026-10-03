#!/usr/bin/env python3
"""Compile and execute the direct-source syna_pal_mem_cpy_1 harness."""
from __future__ import annotations
import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path

EXPECTED_TESTS = 7

def digest(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--workspace", type=Path, default=Path(__file__).resolve().parents[2])
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--repetitions", type=int, default=2)
    args = parser.parse_args()
    if args.repetitions < 1:
        parser.error("--repetitions must be at least 1")
    workspace = args.workspace.resolve()
    harness = workspace / "reverse_engineering/validation/reconstructed/zte_tpd/harness"
    inputs = [workspace / "kernel_development/drivers/reconstructed/zte_tpd/syna_pal_mem_cpy_1.c", harness / "syna_pal_mem_cpy_1_harness.c"]
    if any(not path.is_file() for path in inputs):
        raise FileNotFoundError("missing syna_pal_mem_cpy_1 harness input")
    command = ["docker", "run", "--rm", "-v", f"{workspace}:/work/workspace", "-v", "nubia_sm8850_kernel_toolchains:/work/toolchains:ro", "-w", "/work/workspace/reverse_engineering/validation/reconstructed/zte_tpd/harness", "nubia-sm8850-kernel-builder:latest", "sh", "-lc", "mkdir -p build && /work/toolchains/clang-r536225/bin/clang -std=gnu11 -O1 -Wall -Wextra -Werror -fsanitize=address,undefined -fno-omit-frame-pointer syna_pal_mem_cpy_1_harness.c -o build/syna_pal_mem_cpy_1_harness && ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 UBSAN_OPTIONS=halt_on_error=1 ./build/syna_pal_mem_cpy_1_harness"]
    executions = []
    for index in range(args.repetitions):
        run = subprocess.run(command, text=True, capture_output=True, check=False)
        passes = [line[5:] for line in run.stdout.splitlines() if line.startswith("PASS ")]
        failures = [line[5:] for line in run.stdout.splitlines() if line.startswith("FAIL ")]
        summary = next((line for line in reversed(run.stdout.splitlines()) if line.startswith("SUMMARY ")), None)
        executions.append({"index": index + 1, "passed": run.returncode == 0 and len(passes) == EXPECTED_TESTS and not failures and summary is not None, "returncode": run.returncode, "stdout": run.stdout, "stderr": run.stderr, "tests_passed": passes, "tests_failed": failures, "summary": summary})
    passed = all(item["passed"] for item in executions)
    report = {"schema_version": "1.0", "mode": "offline_direct_source_syna_pal_mem_cpy_1_asan_ubsan", "generated_utc": datetime.now(timezone.utc).isoformat(), "passed": passed, "command": command, "repetitions": args.repetitions, "executions": executions, "tests": {"expected": EXPECTED_TESTS, "passed": executions[0]["tests_passed"], "failed": executions[0]["tests_failed"], "summary": executions[0]["summary"]}, "coverage": {"valid_copy": True, "null_destination": True, "destination_limit": True, "source_limit": True, "combined_limits": True, "printk_argument_order": True, "hardware_paths_exercised": False}, "inputs": [{"path": str(path), "size": path.stat().st_size, "sha256": digest(path)} for path in inputs], "limitations": ["The harness uses a deterministic printk stub.", "No smartphone, module loading or physical hardware is exercised."]}
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8", newline="\n")
    print(json.dumps({"output": str(args.output), "passed": passed, "tests": EXPECTED_TESTS}))
    return 0 if passed else 1

if __name__ == "__main__":
    raise SystemExit(main())
