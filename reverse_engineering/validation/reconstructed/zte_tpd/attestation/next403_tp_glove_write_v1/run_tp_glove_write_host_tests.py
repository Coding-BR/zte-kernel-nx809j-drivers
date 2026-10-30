#!/usr/bin/env python3
"""Run the tp_glove_write host contract twice with ASan/UBSan."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from pathlib import Path


IMAGE = "nubia-sm8850-kernel-builder:latest"
TOOLCHAIN_VOLUME = "nubia_sm8850_kernel_toolchains"
CLANG = "/toolchains/clang-r536225/bin/clang"
EXPECTED = "PASS tp_glove_write host tests (3 cases)\n"


def sha256(path: Path) -> str:
	return hashlib.sha256(path.read_bytes()).hexdigest()


def run(command: list[str]) -> subprocess.CompletedProcess[str]:
	return subprocess.run(command, check=False, text=True, capture_output=True)


def main() -> int:
	parser = argparse.ArgumentParser(description=__doc__)
	parser.add_argument("--build-root", type=Path, required=True)
	parser.add_argument("--output", type=Path, required=True)
	args = parser.parse_args()

	root = Path(__file__).resolve().parents[5]
	drivers = root / "kernel_development" / "drivers"
	harness = drivers / "validation" / "zte_tpd" / "host" / "tp_glove_write_host_test.c"
	source = drivers / "reconstructed" / "zte_tpd" / "tp_glove_write.c"
	if not harness.is_file() or not source.is_file():
		raise FileNotFoundError("host harness or reconstructed source is missing")
	if args.build_root.exists():
		parser.error(f"build root already exists: {args.build_root}")

	args.build_root.mkdir(parents=True)
	cycles: list[dict[str, object]] = []
	for cycle in (1, 2):
		cycle_root = args.build_root / f"cycle{cycle}"
		cycle_root.mkdir()
		binary = cycle_root / "host_test_asan_ubsan"
		compile_command = [
			"docker", "run", "--rm", "-v", f"{drivers}:/drivers:ro",
			"-v", f"{cycle_root}:/output", "-v",
			f"{TOOLCHAIN_VOLUME}:/toolchains:ro", IMAGE, CLANG,
			"-std=gnu11", "-O1", "-g", "-Wall", "-Wextra", "-Werror",
			"-Wno-unused-but-set-variable", "-fno-omit-frame-pointer",
			"-fno-pie", "-no-pie", "-frandom-seed=zte-tpd-tp-glove-write",
			"-ffile-prefix-map=/drivers=<drivers>",
			"-fsanitize=address,undefined", "-Wl,--build-id=none",
			"/drivers/validation/zte_tpd/host/tp_glove_write_host_test.c",
			"-o", "/output/host_test_asan_ubsan",
		]
		compiled = run(compile_command)
		executed = None
		if compiled.returncode == 0:
			executed = run([
				"docker", "run", "--rm", "-v", f"{cycle_root}:/output:ro",
				IMAGE, "/output/host_test_asan_ubsan",
			])
		passed = bool(
			compiled.returncode == 0 and executed is not None
			and executed.returncode == 0 and executed.stdout == EXPECTED
			and executed.stderr == "" and binary.is_file()
		)
		cycles.append({
			"cycle": cycle,
			"compile_returncode": compiled.returncode,
			"compile_stderr": compiled.stderr,
			"run_returncode": None if executed is None else executed.returncode,
			"run_stdout": "" if executed is None else executed.stdout,
			"run_stderr": "" if executed is None else executed.stderr,
			"binary_sha256": sha256(binary) if binary.is_file() else None,
			"passed": passed,
		})

	hashes = {cycle["binary_sha256"] for cycle in cycles}
	passed = all(bool(cycle["passed"]) for cycle in cycles)
	passed = passed and len(hashes) == 1 and None not in hashes
	report = {
		"schema_version": 1,
		"driver": "zte_tpd",
		"target": "tp_glove_write",
		"mode": "offline_direct_source_asan_ubsan",
		"source": str(source),
		"source_sha256": sha256(source),
		"harness": str(harness),
		"harness_sha256": sha256(harness),
		"compiler": CLANG,
		"container_image": IMAGE,
		"toolchain_volume": TOOLCHAIN_VOLUME,
		"sanitizers": ["address", "undefined"],
		"expected_cases": 3,
		"repetitions": 2,
		"cycles": cycles,
		"reproducible_binary": len(hashes) == 1 and None not in hashes,
		"passed": passed,
		"status": "PASS" if passed else "FAIL",
		"limitations": [
			"The harness validates the +0xe50 callback offset, bool normalization, -EINVAL and count-return contracts with fake memory.",
			"It does not execute the real procfs path or NX809J hardware.",
			"Joern, KCFI, AArch64 and canonical whole-module build are separate gates.",
		],
	}
	args.output.parent.mkdir(parents=True, exist_ok=True)
	args.output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
	print(json.dumps({"output": str(args.output), "passed": passed, "cycles": len(cycles)}))
	return 0 if passed else 1


if __name__ == "__main__":
	raise SystemExit(main())
