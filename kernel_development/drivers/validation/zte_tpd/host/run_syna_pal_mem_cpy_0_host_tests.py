#!/usr/bin/env python3
"""Run the direct syna_pal_mem_cpy_0 host contract under sanitizers."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path


IMAGE = "nubia-sm8850-kernel-builder:latest"
TOOLCHAIN_VOLUME = "nubia_sm8850_kernel_toolchains"
CLANG = "/toolchains/clang-r536225/bin/clang"
EXPECTED = "PASS syna_pal_mem_cpy_0 host tests (4 cases)\n"


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--build-root", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()
    repo_root = Path(__file__).resolve().parents[5]
    source = repo_root / "kernel_development/drivers/validation/zte_tpd/host/syna_pal_mem_cpy_0_host_test.c"
    args.build_root.mkdir(parents=True, exist_ok=True)
    cycles = []
    for cycle in (1, 2):
        cycle_root = args.build_root / f"cycle{cycle}"
        cycle_root.mkdir(parents=True, exist_ok=True)
        binary = cycle_root / "mem_cpy_host_test"
        command = [
            "docker", "run", "--rm", "-v", f"{repo_root}:/drivers:ro",
            "-v", f"{cycle_root}:/out", "-v", f"{TOOLCHAIN_VOLUME}:/toolchains:ro",
            IMAGE, CLANG, "-std=gnu11", "-O1", "-g", "-Wall", "-Wextra", "-Werror",
            "-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
            "-fsanitize=address,undefined", "-Wl,--build-id=none",
            f"/drivers/{source.relative_to(repo_root).as_posix()}", "-o", "/out/mem_cpy_host_test",
        ]
        compiled = subprocess.run(command, text=True, capture_output=True, check=False)
        executed = subprocess.run(
            ["docker", "run", "--rm", "-v", f"{cycle_root}:/out:ro", IMAGE, "/out/mem_cpy_host_test"],
            text=True, capture_output=True, check=False,
        ) if compiled.returncode == 0 else None
        passed = (
            compiled.returncode == 0 and executed is not None and executed.returncode == 0
            and executed.stdout == EXPECTED and not executed.stderr and binary.is_file()
        )
        cycles.append({
            "cycle": cycle,
            "compile_command": command,
            "compile_returncode": compiled.returncode,
            "compile_stdout": compiled.stdout,
            "compile_stderr": compiled.stderr,
            "run_returncode": None if executed is None else executed.returncode,
            "run_stdout": "" if executed is None else executed.stdout,
            "run_stderr": "" if executed is None else executed.stderr,
            "binary_sha256": sha256(binary) if binary.is_file() else None,
            "passed": passed,
        })
    hashes = {cycle["binary_sha256"] for cycle in cycles}
    passed = all(cycle["passed"] for cycle in cycles) and len(hashes) == 1 and None not in hashes
    report = {
        "schema_version": 1,
        "generated_at_utc": datetime.now(timezone.utc).isoformat(),
        "target": "syna_pal_mem_cpy_0",
        "mode": "direct_source_asan_ubsan_host_oracle",
        "expected_cases": 4,
        "cycles": cycles,
        "reproducible_binary": len(hashes) == 1 and None not in hashes,
        "passed": passed,
        "status": "PASS" if passed else "FAIL",
        "limitations": [
            "The harness isolates the reconstructed memory-copy helper and its printk collaborator.",
            "No Android device or physical hardware was exercised.",
        ],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {args.output}")
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
