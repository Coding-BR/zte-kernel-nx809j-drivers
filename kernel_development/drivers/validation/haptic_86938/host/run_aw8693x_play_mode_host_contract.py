#!/usr/bin/env python3
"""Run an exhaustive 8-bit mode contract and an I2C-write mutant in Docker."""

from __future__ import annotations

import argparse
import hashlib
import json
import re
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[5]
IMAGE = "nubia-sm8850-kernel-builder:nx809j-repro"
TOOLCHAIN_VOLUME = "nubia_sm8850_kernel_toolchains"
CLANG = "/toolchains/clang-r536225/bin/clang"
MUTATION_SOURCE = "i2c_w_bits(haptic, 8, ~3U, 1);"
MUTATION_REPLACEMENT = "i2c_w_bits(haptic, 8, ~3U, 0);"


def sha256(path: Path) -> str:
	digest = hashlib.sha256()
	with path.open("rb") as stream:
		for chunk in iter(lambda: stream.read(1024 * 1024), b""):
			digest.update(chunk)
	return digest.hexdigest()


def docker_compile_command(cycle: Path, output_name: str,
			   source_macro: str | None = None) -> list[str]:
	drivers = ROOT / "kernel_development" / "drivers"
	harness = "/drivers/validation/haptic_86938/host/aw8693x_play_mode_contract_test.c"
	arguments = [
		"-std=gnu11", "-O1", "-g", "-Wall", "-Wextra", "-Werror",
		"-Wformat=2", "-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
		"-fsanitize=address,undefined", "-Wl,--build-id=none",
		"-I/drivers/validation/haptic_86938/host/include",
	]
	if source_macro is not None:
		arguments.append(f'-DHAPTIC_PLAY_MODE_SOURCE="{source_macro}"')
	arguments.extend([harness, "-o", f"/out/{output_name}"])
	return [
		"docker", "run", "--rm", "--network", "none",
		"-v", f"{drivers}:/drivers:ro",
		"-v", f"{TOOLCHAIN_VOLUME}:/toolchains:ro",
		"-v", f"{cycle.resolve()}:/out",
		IMAGE, CLANG, *arguments,
	]


def docker_run_command(cycle: Path, binary_name: str) -> list[str]:
	return [
		"docker", "run", "--rm", "--network", "none",
		"-e", "ASAN_OPTIONS=detect_leaks=1:halt_on_error=1",
		"-e", "UBSAN_OPTIONS=halt_on_error=1:print_stacktrace=1",
		"-v", f"{cycle.resolve()}:/out:ro", IMAGE,
		f"/out/{binary_name}",
	]


def run(args: list[str]) -> subprocess.CompletedProcess[str]:
	return subprocess.run(args, text=True, capture_output=True, check=False)


def main() -> int:
	parser = argparse.ArgumentParser(description=__doc__)
	parser.add_argument("--build-root", required=True, type=Path)
	parser.add_argument("--output", required=True, type=Path)
	args = parser.parse_args()
	if args.build_root.exists():
		parser.error(f"build root already exists: {args.build_root}")
	if args.output.exists():
		parser.error(f"report already exists: {args.output}")

	source = ROOT / "kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_139_aw8693x_play_mode.c"
	harness = ROOT / "kernel_development/drivers/validation/haptic_86938/host/aw8693x_play_mode_contract_test.c"
	stub_headers = ROOT / "kernel_development/drivers/validation/haptic_86938/host/include/linux"
	runner = Path(__file__).resolve()
	if not source.is_file() or not harness.is_file() or not stub_headers.is_dir():
		raise FileNotFoundError("candidate C source, harness, or stub headers are missing")

	original_source = source.read_text(encoding="utf-8")
	if original_source.count(MUTATION_SOURCE) != 1:
		raise ValueError("the mode-2 I2C mutation site is not unique")
	mutant_source = original_source.replace(MUTATION_SOURCE, MUTATION_REPLACEMENT, 1)

	args.build_root.mkdir(parents=True)
	cycles: list[dict[str, object]] = []
	pass_pattern = re.compile(
		r"PASS aw8693x_play_mode bounded C contract: 256 inputs, (\d+) checks\n\Z"
	)
	for number in (1, 2):
		cycle = args.build_root / f"cycle{number}"
		cycle.mkdir()
		binary_name = "aw8693x_play_mode_contract_test"
		compiled = run(docker_compile_command(cycle, binary_name))
		executed = run(docker_run_command(cycle, binary_name)) if compiled.returncode == 0 else None
		binary = cycle / binary_name
		match = pass_pattern.fullmatch(executed.stdout) if executed is not None else None
		passed = bool(
			compiled.returncode == 0 and executed is not None
			and executed.returncode == 0 and match is not None
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
			"assertion_count": None if match is None else int(match.group(1)),
			"binary_sha256": sha256(binary) if binary.is_file() else None,
			"passed": passed,
		})

	mutation_cycle = args.build_root / "cycle1"
	mutant_path = mutation_cycle / "aw8693x_play_mode_mutant.c"
	mutant_path.write_text(mutant_source, encoding="utf-8", newline="\n")
	mutant_name = "aw8693x_play_mode_mutant_test"
	mutant_compile = run(docker_compile_command(
		mutation_cycle, mutant_name, source_macro="/out/aw8693x_play_mode_mutant.c"
	))
	mutant_run = run(docker_run_command(mutation_cycle, mutant_name)) if mutant_compile.returncode == 0 else None
	mutation_detected = bool(
		mutant_compile.returncode == 0 and mutant_run is not None
		and mutant_run.returncode == 1
		and mutant_run.stdout.startswith("FAIL mode=2 I2C value")
		and mutant_run.stderr == ""
	)

	binary_hashes = {cycle["binary_sha256"] for cycle in cycles}
	reproducible = len(binary_hashes) == 1 and None not in binary_hashes
	passed = all(bool(cycle["passed"]) for cycle in cycles) and reproducible and mutation_detected
	report = {
		"schema_version": 1,
		"driver": "haptic_86938",
		"target": "aw8693x_play_mode",
		"mode": "exhaustive_u8_contract_asan_ubsan_with_mutation",
		"source": str(source),
		"source_sha256": sha256(source),
		"harness": str(harness),
		"harness_sha256": sha256(harness),
		"stub_headers": {path.name: sha256(path) for path in sorted(stub_headers.glob("*.h"))},
		"runner": str(runner),
		"runner_sha256": sha256(runner),
		"compiler": CLANG,
		"container_image": IMAGE,
		"toolchain_volume": TOOLCHAIN_VOLUME,
		"sanitizers": ["address", "undefined"],
		"bounded_domain": {
			"mode_type": "u8",
			"domain_size": 256,
			"values_exhausted": list(range(256)),
			"accepted_modes": [0, 1, 2, 3, 4, 5],
			"invalid_modes": list(range(6, 256)),
			"device_precondition": "aw is a valid non-null pointer to the observed aw_haptic layout",
		},
		"cycles": cycles,
		"reproducible_binary": reproducible,
		"mutation": {
			"seed": "mode 2 RTP: change register 0x08 mask ~3 value from 1 to 0",
			"mutated_source_sha256": sha256(mutant_path),
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
			"The harness exercises the non-AArch64 C implementation embedded beside the stock-exact AArch64 assembly island.",
			"Exact AArch64 opcodes, relocations, Ghidra/P-Code and KCFI are covered separately by protocol_core_v7.",
			"The harness does not execute the kernel driver, validate live I2C hardware, or replace independent review.",
		],
	}
	args.output.parent.mkdir(parents=True, exist_ok=True)
	args.output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8", newline="\n")
	print(json.dumps({"output": str(args.output), "passed": passed,
			  "cycles": len(cycles), "mutation_detected": mutation_detected}))
	return 0 if passed else 1


if __name__ == "__main__":
	raise SystemExit(main())
