#!/usr/bin/env python3
"""Build and run the testing-item getter harness twice with sanitizers."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import os
import pathlib
import subprocess


EXPECTED_STDOUT = "PASS syna_tcm_get_testing_0001 host tests (1 case)\n"


def sha256(path: pathlib.Path) -> str:
	digest = hashlib.sha256()
	with path.open("rb") as stream:
		for block in iter(lambda: stream.read(1024 * 1024), b""):
			digest.update(block)
	return digest.hexdigest()


def run(command: list[str], env: dict[str, str]) -> subprocess.CompletedProcess[str]:
	return subprocess.run(command, check=False, env=env, text=True,
	                      stdout=subprocess.PIPE, stderr=subprocess.PIPE)


def main() -> int:
	parser = argparse.ArgumentParser()
	parser.add_argument("--compiler", required=True)
	parser.add_argument("--source", type=pathlib.Path, default=pathlib.Path(__file__).with_name(
		"syna_tcm_get_testing_0001_host_test.c"))
	parser.add_argument("--build-root", type=pathlib.Path, required=True)
	parser.add_argument("--output", type=pathlib.Path, required=True)
	args = parser.parse_args()

	source = args.source.resolve()
	driver_source = source.parents[3] / "reconstructed" / "zte_tpd" / "syna_tcm_get_testing_0001.c"
	build_root = args.build_root.resolve()
	output = args.output.resolve()
	if not source.is_file() or not driver_source.is_file():
		raise SystemExit("missing harness or driver source")
	if build_root.exists():
		raise SystemExit(f"build root already exists: {build_root}")

	env = os.environ.copy()
	env.update({"ASAN_OPTIONS": "detect_leaks=1:halt_on_error=1:strict_string_checks=1",
				"UBSAN_OPTIONS": "halt_on_error=1:print_stacktrace=1", "LC_ALL": "C",
				"SOURCE_DATE_EPOCH": "0", "TZ": "UTC"})
	build_root.mkdir(parents=True)
	cycles = []
	for cycle in (1, 2):
		binary = build_root / f"cycle{cycle}" / "host_test_asan_ubsan"
		binary.parent.mkdir()
		command = [args.compiler, "-std=gnu11", "-O1", "-g", "-Wall", "-Wextra", "-Werror",
				   "-fno-omit-frame-pointer", "-fno-pie", "-no-pie", "-fsanitize=address,undefined",
				   "-Wl,--build-id=none", str(source), "-o", str(binary)]
		compiled = run(command, env)
		executed = run([str(binary)], env) if compiled.returncode == 0 else None
		passed = bool(executed and executed.returncode == 0 and executed.stdout == EXPECTED_STDOUT and not executed.stderr)
		cycles.append({"cycle": cycle, "compile_command": command,
					   "compile_returncode": compiled.returncode, "compile_stdout": compiled.stdout,
					   "compile_stderr": compiled.stderr, "run_returncode": executed.returncode if executed else None,
					   "run_stdout": executed.stdout if executed else "", "run_stderr": executed.stderr if executed else "",
					   "binary_sha256": sha256(binary) if binary.is_file() else None, "passed": passed})
	binary_hashes = [cycle["binary_sha256"] for cycle in cycles]
	reproducible = len(set(binary_hashes)) == 1 and binary_hashes[0] is not None
	passed = reproducible and all(bool(cycle["passed"]) for cycle in cycles)
	report = {"schema_version": 1, "generated_at_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
			  "mode": "offline_direct_source_testing_0001_asan_ubsan", "driver": "zte_tpd",
			  "target": "syna_tcm_get_testing_0001", "covered_functions": ["syna_tcm_get_testing_0001"],
			  "source": str(source), "source_sha256": sha256(source), "compiler": args.compiler,
			  "sanitizers": ["address", "undefined"], "expected_cases": 1, "repetitions": 2,
			  "cycles": cycles, "inputs": [{"path": str(path), "size": path.stat().st_size, "sha256": sha256(path)} for path in (source, driver_source)],
			  "reproducible": reproducible, "reproducible_binary": reproducible, "passed": passed,
			  "status": "PASS" if passed else "FAIL",
			  "limitations": ["The harness supplies a minimal stand-in for struct testing_item and proves only the zero-argument object-identity contract; Android runtime and hardware remain outside this unit gate."]}
	output.parent.mkdir(parents=True, exist_ok=True)
	with output.open("w", encoding="utf-8", newline="\n") as stream:
		json.dump(report, stream, indent=2)
		stream.write("\n")
	print(f"{report['status']}: {output}")
	return 0 if passed else 1


if __name__ == "__main__":
	raise SystemExit(main())
