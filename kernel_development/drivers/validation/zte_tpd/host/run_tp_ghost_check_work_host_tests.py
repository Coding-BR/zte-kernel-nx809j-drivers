#!/usr/bin/env python3
"""Build and run the tp_ghost_check_work host harness twice in Docker."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import pathlib
import subprocess


EXPECTED_STDOUT = "PASS tp_ghost_check_work host tests (4 cases)\n"
IMAGE = "nubia-sm8850-kernel-builder:latest"
TOOLCHAIN_VOLUME = "nubia_sm8850_kernel_toolchains"
CLANG = "/toolchains/clang-r536225/bin/clang"


def sha256(path: pathlib.Path) -> str:
	digest = hashlib.sha256()
	with path.open("rb") as stream:
		for block in iter(lambda: stream.read(1024 * 1024), b""):
			digest.update(block)
	return digest.hexdigest()


def execute(command: list[str]) -> subprocess.CompletedProcess[str]:
	return subprocess.run(command, check=False, text=True,
		stdout=subprocess.PIPE, stderr=subprocess.PIPE)


def main() -> int:
	parser = argparse.ArgumentParser()
	parser.add_argument("--source", type=pathlib.Path,
		default=pathlib.Path(__file__).with_name("tp_ghost_check_work_host_test.c"))
	parser.add_argument("--build-root", type=pathlib.Path, required=True)
	parser.add_argument("--output", type=pathlib.Path, required=True)
	args = parser.parse_args()

	source = args.source.resolve()
	drivers = source.parents[3]
	driver_source = drivers / "reconstructed" / "zte_tpd" / "tp_ghost_check_work.c"
	build_root = args.build_root.resolve()
	output = args.output.resolve()
	for path in (source, driver_source):
		if not path.is_file():
			parser.error(f"source not found: {path}")
	if build_root.exists():
		parser.error(f"build root already exists: {build_root}")

	version_command = ["docker", "run", "--rm",
		"-v", f"{TOOLCHAIN_VOLUME}:/toolchains:ro", IMAGE, CLANG, "--version"]
	compiler_version = execute(version_command)
	if compiler_version.returncode:
		raise SystemExit(compiler_version.stderr.strip())

	build_root.mkdir(parents=True)
	cycles: list[dict[str, object]] = []
	for cycle in (1, 2):
		cycle_root = build_root / f"cycle{cycle}"
		cycle_root.mkdir()
		binary = cycle_root / "host_test_asan_ubsan"
		command = ["docker", "run", "--rm",
			"-v", f"{drivers}:/drivers:ro", "-v", f"{cycle_root}:/output",
			"-v", f"{TOOLCHAIN_VOLUME}:/toolchains:ro", IMAGE, CLANG,
			"-std=gnu11", "-O1", "-g", "-Wall", "-Wextra", "-Werror",
			"-Wno-int-conversion", "-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
			"-frandom-seed=zte-tpd-next64-tp-ghost-check-work",
			"-ffile-prefix-map=/drivers=<drivers>", "-fsanitize=address,undefined",
			"-Wl,--build-id=none", "/drivers/validation/zte_tpd/host/"
			"tp_ghost_check_work_host_test.c", "-o", "/output/host_test_asan_ubsan"]
		compile_result = execute(command)
		run_command = ["docker", "run", "--rm", "-v", f"{cycle_root}:/output:ro",
			IMAGE, "/output/host_test_asan_ubsan"]
		run_result = execute(run_command) if compile_result.returncode == 0 else None
		passed = bool(run_result and run_result.returncode == 0 and
			run_result.stdout == EXPECTED_STDOUT and run_result.stderr == "")
		cycles.append({"cycle": cycle, "compile_command": command,
			"compile_returncode": compile_result.returncode,
			"compile_stdout": compile_result.stdout,
			"compile_stderr": compile_result.stderr,
			"run_command": run_command if run_result else None,
			"run_returncode": run_result.returncode if run_result else None,
			"run_stdout": run_result.stdout if run_result else "",
			"run_stderr": run_result.stderr if run_result else "",
			"binary_sha256": sha256(binary) if binary.is_file() else None,
			"passed": passed})

	binary_hashes = [cycle["binary_sha256"] for cycle in cycles]
	reproducible = len(set(binary_hashes)) == 1 and binary_hashes[0] is not None
	passed = all(bool(cycle["passed"]) for cycle in cycles) and reproducible
	report = {"schema_version": 1, "generated_at_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
		"mode": "offline_direct_source_next64_tp_ghost_check_work_asan_ubsan",
		"driver": "zte_tpd", "target": "tp_ghost_check_work",
		"covered_functions": ["tp_ghost_check_work"], "source": str(source),
		"source_sha256": sha256(source), "compiler": CLANG,
		"compiler_version": compiler_version.stdout.splitlines()[0],
		"container_image": IMAGE, "toolchain_volume": TOOLCHAIN_VOLUME,
		"sanitizers": ["address", "undefined"], "expected_cases": 4,
		"repetitions": 2, "cycles": cycles,
		"inputs": [{"path": str(path), "size": path.stat().st_size,
			"sha256": sha256(path)} for path in (source, driver_source)],
		"reproducible": reproducible, "reproducible_binary": reproducible,
		"passed": passed, "status": "PASS" if passed else "FAIL",
		"limitations": [
			"The harness proves every observed branch, callback dispatch, counter reload and terminal state clear.",
			"The AArch64 codegen lock preserves the stock signed cmp #2 / b.gt predicate; hosts use the equivalent C branch.",
			"Module assembly, KCFI, Ghidra and Joern remain independent gates.",
			"No smartphone, workqueue scheduler or touch-controller interaction is used."]}
	output.parent.mkdir(parents=True, exist_ok=True)
	with output.open("w", encoding="utf-8", newline="\n") as stream:
		json.dump(report, stream, indent=2)
		stream.write("\n")
	print(f"{report['status']}: {output}")
	return 0 if passed else 1


if __name__ == "__main__":
	raise SystemExit(main())
