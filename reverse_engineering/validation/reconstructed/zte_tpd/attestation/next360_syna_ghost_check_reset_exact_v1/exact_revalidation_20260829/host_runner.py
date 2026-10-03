#!/usr/bin/env python3
"""Build and run syna_ghost_check_reset against the real source body twice."""
from __future__ import annotations
import argparse
import hashlib
import json
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[5]
IMAGE = "nubia-sm8850-kernel-builder:latest"
EXPECTED = (
    "PASS returns_zero\nPASS five_calls\nPASS call_order\nPASS tcm_context\n"
    "PASS hw_interface_offset\nPASS fingerprint_mode_disabled\nPASS stock_log_format\n"
    "PASS stock_log_name\nSUMMARY tests=8 failures=0\n"
)

def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()

def source_body() -> tuple[str, str]:
    source_path = ROOT / "kernel_development/drivers/reconstructed/zte_tpd/syna_ghost_check_reset.c"
    raw = source_path.read_text(encoding="utf-8")
    marker = '#include "defs.h"'
    if raw.count(marker) != 1:
        raise RuntimeError("expected one kernel header include in source")
    return raw.replace(marker, "", 1), sha256(source_path)

def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--build-root", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    parser.add_argument("--prepare-source-root", type=Path)
    args = parser.parse_args()
    args.build_root.mkdir(parents=True, exist_ok=True)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    body, source_hash = source_body()
    if args.prepare_source_root:
        args.prepare_source_root.mkdir(parents=True, exist_ok=True)
        (args.prepare_source_root / "syna_ghost_check_reset_under_test.c").write_text(
            body, encoding="utf-8")
    cycles = []
    for number in (1, 2):
        cycle = args.build_root / f"cycle{number}"
        cycle.mkdir(parents=True, exist_ok=True)
        (cycle / "syna_ghost_check_reset_under_test.c").write_text(body, encoding="utf-8")
        command = [
            "docker", "run", "--rm", "--network", "none",
            "-v", f"{ROOT / 'kernel_development/drivers'}:/drivers:ro",
            "-v", "nubia_sm8850_kernel_toolchains:/toolchains:ro",
            "-v", f"{cycle.resolve()}:/out", IMAGE, "bash", "-lc",
            "/toolchains/clang-r536225/bin/clang -std=gnu11 -O1 -g -Wall -Wextra -Werror "
            "-fno-omit-frame-pointer -fno-pie -no-pie -fsanitize=address,undefined "
            "-Wl,--build-id=none -I/out "
            "/drivers/validation/zte_tpd/host/syna_ghost_check_reset_contract_test.c "
            "-o /out/syna_ghost_check_reset_contract_test",
        ]
        compiled = subprocess.run(command, text=True, capture_output=True, check=False)
        executed = None
        binary = cycle / "syna_ghost_check_reset_contract_test"
        if compiled.returncode == 0:
            executed = subprocess.run(
                ["docker", "run", "--rm", "--network", "none", "-v",
                 f"{cycle.resolve()}:/out:ro", IMAGE,
                 "/out/syna_ghost_check_reset_contract_test"],
                text=True, capture_output=True, check=False)
        passed = (compiled.returncode == 0 and executed is not None and
                  executed.returncode == 0 and executed.stdout == EXPECTED and
                  not executed.stderr and binary.is_file())
        cycles.append({"cycle": number, "compile_returncode": compiled.returncode,
                       "compile_stderr": compiled.stderr,
                       "run_returncode": None if executed is None else executed.returncode,
                       "run_stdout": "" if executed is None else executed.stdout,
                       "run_stderr": "" if executed is None else executed.stderr,
                       "binary_sha256": sha256(binary) if binary.is_file() else None,
                       "passed": passed})
    hashes = {item["binary_sha256"] for item in cycles}
    passed = all(item["passed"] for item in cycles) and len(hashes) == 1 and None not in hashes
    report = {"schema_version": 1, "driver": "zte_tpd", "target": "syna_ghost_check_reset",
              "mode": "offline_contract_model_asan_ubsan",
              "source": str(ROOT / "kernel_development/drivers/reconstructed/zte_tpd/syna_ghost_check_reset.c"),
              "source_sha256": source_hash, "expected_output": EXPECTED, "cycles": cycles,
              "reproducible_binary": passed, "passed": passed,
              "status": "PASS" if passed else "FAIL",
              "coverage": {"cdev_tcm_offset_0xdb8": True, "tcm_hw_if_offset_0x270": True,
                           "four_stock_calls": True, "stock_log_contract": True},
              "limitations": ["Uses deterministic host stubs; physical SPI and hardware behavior are separate gates.",
                              "AArch64, KCFI, Joern and canonical build are separate gates."]}
    args.output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {args.output}")
    return 0 if passed else 1

if __name__ == "__main__":
    raise SystemExit(main())
