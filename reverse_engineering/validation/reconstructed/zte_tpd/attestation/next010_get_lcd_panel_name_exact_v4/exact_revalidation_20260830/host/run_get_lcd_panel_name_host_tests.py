#!/usr/bin/env python3
"""Build and run the LCD panel-name getter harness twice with sanitizers."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import os
import pathlib
import subprocess


EXPECTED_STDOUT = "PASS get_lcd_panel_name host tests (1 case)\n"


def sha256(path: pathlib.Path) -> str:
	digest = hashlib.sha256()
	with path.open("rb") as stream:
		for block in iter(lambda: stream.read(1024 * 1024), b""):
			digest.update(block)
	return digest.hexdigest()


def execute(command: list[str], env: dict[str, str]) -> subprocess.CompletedProcess[str]:
	return subprocess.run(command, check=False, env=env, text=True,
		stdout=subprocess.PIPE, stderr=subprocess.PIPE)


def main() -> int:
	parser = argparse.ArgumentParser()
	parser.add_argument("--compiler", default="clang")
	parser.add_argument("--source", type=pathlib.Path,
		default=pathlib.Path(__file__).with_name("get_lcd_panel_name_host_test.c"))
	parser.add_argument("--build-root", type=pathlib.Path, required=True)
	parser.add_argument("--output", type=pathlib.Path, required=True)
	args = parser.parse_args()

	source = args.source.resolve()
	driver_source = source.parents[3] / "reconstructed" / "zte_tpd" / "get_lcd_panel_name.c"
	build_root = args.build_root.resolve()
	output = args.output.resolve()
	for path in (source, driver_source):
		if not path.is_file():
			parser.error(f"source not found: {path}")
	if build_root.exists():
		parser.error(f"build root already exists: {build_root}")

	env = os.environ.copy()
	env.update({
		"ASAN_OPTIONS": "detect_leaks=1:halt_on_error=1:strict_string_checks=1",
		"UBSAN_OPTIONS": "halt_on_error=1:print_stacktrace=1",
		"LC_ALL": "C", "SOURCE_DATE_EPOCH": "0", "TZ": "UTC",
	})
	compiler_version = execute([args.compiler, "--version"], env)
	if compiler_version.returncode:
		raise SystemExit(compiler_version.stderr.strip())

	build_root.mkdir(parents=True)
	cycles: list[dict[str, object]] = []
	for cycle in (1, 2):
		cycle_root = build_root / f"cycle{cycle}"
		cycle_root.mkdir()
		binary = cycle_root / "host_test_asan_ubsan"
		command = [args.compiler, "-std=gnu11", "-O1", "-g", "-Wall", "-Wextra",
			"-Werror", "-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
			"-frandom-seed=zte-tpd-next58-lcd-panel-name",
			f"-ffile-prefix-map={build_root}=<build>", "-fsanitize=address,undefined",
			"-Wl,--build-id=none", str(source), "-o", str(binary)]
		compile_result = execute(command, env)
		run_result = execute([str(binary)], env) if compile_result.returncode == 0 else None
		passed = bool(run_result and run_result.returncode == 0 and
			run_result.stdout == EXPECTED_STDOUT and run_result.stderr == "")
		cycles.append({"cycle": cycle, "compile_command": command,
			"compile_returncode": compile_result.returncode,
			"compile_stdout": compile_result.stdout,
			"compile_stderr": compile_result.stderr,
			"run_returncode": run_result.returncode if run_result else None,
			"run_stdout": run_result.stdout if run_result else "",
			"run_stderr": run_result.stderr if run_result else "",
			"binary_sha256": sha256(binary) if binary.is_file() else None,
			"passed": passed})

	binary_hashes = [cycle["binary_sha256"] for cycle in cycles]
	reproducible = len(set(binary_hashes)) == 1 and binary_hashes[0] is not None
	passed = all(bool(cycle["passed"]) for cycle in cycles) and reproducible
	report = {"schema_version": 1, "generated_at_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
		"mode": "offline_direct_source_next58_lcd_panel_name_asan_ubsan", "driver": "zte_tpd",
		"target": "get_lcd_panel_name", "covered_functions": ["get_lcd_panel_name"],
		"source": str(source), "source_sha256": sha256(source), "compiler": args.compiler,
		"compiler_version": compiler_version.stdout.splitlines()[0],
		"sanitizers": ["address", "undefined"], "expected_cases": 1, "repetitions": 2,
		"cycles": cycles,
		"inputs": [{"path": str(path), "size": path.stat().st_size, "sha256": sha256(path)} for path in (source, driver_source)],
		"reproducible": reproducible, "reproducible_binary": reproducible, "passed": passed,
		"status": "PASS" if passed else "FAIL",
		"limitations": ["The harness proves the static literal ABI only.",
			"Module assembly, KCFI, Ghidra and Joern remain independent gates.",
			"No smartphone or panel-firmware interaction is used."]}
	output.parent.mkdir(parents=True, exist_ok=True)
	with output.open("w", encoding="utf-8", newline="\n") as stream:
		json.dump(report, stream, indent=2)
		stream.write("\n")
	print(f"{report['status']}: {output}")
	return 0 if passed else 1


if __name__ == "__main__":
	raise SystemExit(main())
