#!/usr/bin/env python3
"""Run the target-235 build-id contract under ASan and UBSan."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parents[5]
HOST = Path("kernel_development/drivers/validation/zte_tpd/host/syna_tcm_testing_build_id_host_test.c")
IMAGE = "nubia-sm8850-kernel-builder:latest"
TOOLCHAINS = "nubia_sm8850_kernel_toolchains"
CLANG = "/toolchains/clang-r536225/bin/clang"
EXPECTED = "PASS syna_tcm_testing_build_id host tests (4 cases)\n"

def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

def run(command: list[str]) -> subprocess.CompletedProcess[str]:
    return subprocess.run(command, check=False, text=True, capture_output=True)

def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--build-root", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()
    args.build_root.mkdir(parents=True, exist_ok=True)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    source = ROOT / HOST
    cycles = []
    for number in (1, 2):
        cycle = args.build_root / f"cycle{number}"
        cycle.mkdir(parents=True, exist_ok=True)
        binary = "/output/host_test_asan_ubsan"
        compile_command = ["docker", "run", "--rm", "-v", f"{ROOT / 'kernel_development/drivers'}:/drivers:ro",
                           "-v", f"{cycle}:/output", "-v", f"{TOOLCHAINS}:/toolchains:ro", IMAGE, CLANG,
                           "-std=gnu11", "-O1", "-g", "-Wall", "-Wextra", "-Werror",
                           "-Wno-unused-but-set-variable", "-Wno-uninitialized", "-Wno-int-conversion",
                           "-Wno-pointer-to-int-cast",
                           "-fno-omit-frame-pointer", "-fno-pie", "-no-pie", "-fsanitize=address,undefined",
                           "-fno-sanitize=alignment",
                           "-Wl,--build-id=none", f"/drivers/{HOST.relative_to('kernel_development/drivers').as_posix()}", "-o", binary]
        compiled = run(compile_command)
        run_command = ["docker", "run", "--rm", "-v", f"{cycle}:/output:ro", IMAGE, binary]
        executed = run(run_command) if compiled.returncode == 0 else None
        binary_path = cycle / "host_test_asan_ubsan"
        passed = bool(compiled.returncode == 0 and executed and executed.returncode == 0
                      and executed.stdout == EXPECTED and not executed.stderr and binary_path.is_file())
        cycles.append({"cycle": number, "compile_command": compile_command,
                       "compile_returncode": compiled.returncode, "compile_stdout": compiled.stdout,
                       "compile_stderr": compiled.stderr, "run_command": run_command,
                       "run_returncode": None if executed is None else executed.returncode,
                       "run_stdout": "" if executed is None else executed.stdout,
                       "run_stderr": "" if executed is None else executed.stderr,
                       "binary_sha256": sha256(binary_path) if binary_path.is_file() else None,
                       "passed": passed})
    passed = all(cycle["passed"] for cycle in cycles)
    report = {"schema_version": 1, "generated_at_utc": datetime.now(timezone.utc).isoformat(),
              "mode": "offline_direct_source_next235_syna_tcm_testing_build_id_asan_ubsan",
              "driver": "zte_tpd", "target": "syna_tcm_testing_build_id",
              "covered_functions": ["syna_tcm_testing_build_id"], "source": str(source),
              "source_sha256": sha256(source), "compiler": CLANG, "container_image": IMAGE,
              "toolchain_volume": TOOLCHAINS, "sanitizers": ["address", "undefined"],
              "expected_cases": 4, "repetitions": 2, "cycles": cycles,
              "reproducible_binary": len({c["binary_sha256"] for c in cycles}) == 1,
              "passed": passed, "status": "PASS" if passed else "FAIL",
              "limitations": ["Identify, buffer and device-id dependencies use deterministic stubs.",
                              "Module assembly, KCFI, Ghidra and Joern remain independent gates."]}
    args.output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{'PASS' if passed else 'FAIL'}: {args.output}")
    return 0 if passed else 1

if __name__ == "__main__":
    raise SystemExit(main())
