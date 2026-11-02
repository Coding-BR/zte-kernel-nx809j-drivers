#!/usr/bin/env python3
"""Run the independent contract matrix and return-propagation mutant in Docker."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[5]
IMAGE = "nubia-sm8850-kernel-builder:latest"
TOOLCHAIN_VOLUME = "nubia_sm8850_kernel_toolchains"
CLANG = "/toolchains/clang-r536225/bin/clang"
EXPECTED = "PASS tpd_set_screen_off_awake relational contract: 72 cases, 576 checks\n"
MUTATION_FAILURE = "FAIL return actual=-5 expected=0\n"


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def docker_command(cycle: Path, *arguments: str) -> list[str]:
    drivers = ROOT / "kernel_development" / "drivers"
    return [
        "docker", "run", "--rm", "--network", "none",
        "-v", f"{drivers}:/drivers:ro",
        "-v", f"{TOOLCHAIN_VOLUME}:/toolchains:ro",
        "-v", f"{cycle.resolve()}:/out",
        IMAGE, CLANG, *arguments,
    ]


def compile_binary(cycle: Path, output_name: str,
                   source_macro: str | None = None) -> subprocess.CompletedProcess[str]:
    harness = "/drivers/validation/zte_tpd/host/tpd_set_screen_off_awake_contract_test.c"
    arguments = [
        "-std=gnu11", "-O1", "-g", "-Wall", "-Wextra", "-Werror",
        "-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
        "-fsanitize=address,undefined", "-Wl,--build-id=none",
        "-I/drivers/reconstructed/zte_tpd",
    ]
    if source_macro is not None:
        arguments.append(f'-DTPD_SET_SCREEN_OFF_AWAKE_SOURCE="{source_macro}"')
    arguments.extend([harness, "-o", f"/out/{output_name}"])
    return subprocess.run(docker_command(cycle, *arguments),
                          text=True, capture_output=True, check=False)


def run_binary(cycle: Path, binary_name: str) -> subprocess.CompletedProcess[str]:
    return subprocess.run(
        [
            "docker", "run", "--rm", "--network", "none",
            "-e", "ASAN_OPTIONS=detect_leaks=1:halt_on_error=1",
            "-e", "UBSAN_OPTIONS=halt_on_error=1:print_stacktrace=1",
            "-v", f"{cycle.resolve()}:/out:ro", IMAGE,
            f"/out/{binary_name}",
        ],
        text=True, capture_output=True, check=False,
    )


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--build-root", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()
    if args.build_root.exists():
        parser.error(f"build root already exists: {args.build_root}")
    if args.output.exists():
        parser.error(f"report already exists: {args.output}")

    source = ROOT / "kernel_development/drivers/reconstructed/zte_tpd/tpd_set_screen_off_awake.c"
    harness = ROOT / "kernel_development/drivers/validation/zte_tpd/host/tpd_set_screen_off_awake_contract_test.c"
    runner = Path(__file__).resolve()
    if not source.is_file() or not harness.is_file():
        raise FileNotFoundError("candidate C source or contract harness is missing")

    original_source = source.read_text(encoding="utf-8")
    stock_call = 'printk(unk_3B5E0, "tpd_set_screen_off_awake");'
    if original_source.count(stock_call) != 1:
        raise ValueError("cannot seed the return-propagation mutant unambiguously")
    mutant_source = original_source.replace(stock_call, f"return {stock_call}")

    args.build_root.mkdir(parents=True)
    cycles: list[dict[str, object]] = []
    for number in (1, 2):
        cycle = args.build_root / f"cycle{number}"
        cycle.mkdir()
        binary_name = "tpd_set_screen_off_awake_contract_test"
        compiled = compile_binary(cycle, binary_name)
        executed = run_binary(cycle, binary_name) if compiled.returncode == 0 else None
        binary = cycle / binary_name
        passed = bool(
            compiled.returncode == 0 and executed is not None
            and executed.returncode == 0 and executed.stdout == EXPECTED
            and executed.stderr == "" and binary.is_file()
        )
        cycles.append({
            "cycle": number,
            "compile_returncode": compiled.returncode,
            "compile_stdout": compiled.stdout,
            "compile_stderr": compiled.stderr,
            "run_returncode": None if executed is None else executed.returncode,
            "run_stdout": "" if executed is None else executed.stdout,
            "run_stderr": "" if executed is None else executed.stderr,
            "binary_sha256": sha256(binary) if binary.is_file() else None,
            "passed": passed,
        })

    mutation_cycle = args.build_root / "cycle1"
    mutant_path = mutation_cycle / "tpd_set_screen_off_awake_mutant.c"
    mutant_path.write_text(mutant_source, encoding="utf-8", newline="\n")
    mutant_name = "tpd_set_screen_off_awake_mutant_test"
    mutant_compile = compile_binary(
        mutation_cycle, mutant_name,
        source_macro="/out/tpd_set_screen_off_awake_mutant.c",
    )
    mutant_run = run_binary(mutation_cycle, mutant_name) if mutant_compile.returncode == 0 else None
    mutation_detected = bool(
        mutant_compile.returncode == 0 and mutant_run is not None
        and mutant_run.returncode == 1 and mutant_run.stdout.startswith(MUTATION_FAILURE)
        and mutant_run.stderr == ""
    )

    binary_hashes = {item["binary_sha256"] for item in cycles}
    reproducible = len(binary_hashes) == 1 and None not in binary_hashes
    passed = all(bool(item["passed"]) for item in cycles) and reproducible and mutation_detected
    report = {
        "schema_version": 1,
        "driver": "zte_tpd",
        "target": "tpd_set_screen_off_awake",
        "mode": "offline_stock_model_relational_asan_ubsan_with_mutation",
        "source": str(source),
        "source_sha256": sha256(source),
        "harness": str(harness),
        "harness_sha256": sha256(harness),
        "runner": str(runner),
        "runner_sha256": sha256(runner),
        "compiler": CLANG,
        "container_image": IMAGE,
        "toolchain_volume": TOOLCHAIN_VOLUME,
        "sanitizers": ["address", "undefined"],
        "case_matrix": {
            "mode_values": [0, 1, 2, "0xffffffff"],
            "requested_values": [0, 1, "0xffffffff", "0x12345678", "INT_MIN", "INT_MAX"],
            "printk_return_values": [0, -5, "INT_MAX"],
            "case_count": 72,
            "assertion_count": 576,
        },
        "cycles": cycles,
        "reproducible_binary": reproducible,
        "mutation": {
            "seed": "replace ignored printk call with return printk(...) on inactive path",
            "compile_returncode": mutant_compile.returncode,
            "compile_stdout": mutant_compile.stdout,
            "compile_stderr": mutant_compile.stderr,
            "run_returncode": None if mutant_run is None else mutant_run.returncode,
            "run_stdout": "" if mutant_run is None else mutant_run.stdout,
            "run_stderr": "" if mutant_run is None else mutant_run.stderr,
            "detected": mutation_detected,
        },
        "passed": passed,
        "status": "PASS" if passed else "FAIL",
        "limitations": [
            "The oracle models only the observed stock Assembly/P-Code effects and valid fixture memory.",
            "The host harness does not execute kernel procfs or NX809J hardware.",
            "Callback KCFI callsite, KMI type, concurrency/lifetime and hardware gates remain separate.",
        ],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2) + "\n",
                           encoding="utf-8", newline="\n")
    print(json.dumps({"output": str(args.output), "passed": passed,
                      "cycles": len(cycles), "mutation_detected": mutation_detected}))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
