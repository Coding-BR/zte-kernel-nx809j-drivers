#!/usr/bin/env python3
"""Build and run the PT01 sysfs harness twice with sanitizers."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import pathlib
import subprocess


EXPECTED_STDOUT = "PASS syna_testing_pt01_show host tests (6 cases)\n"
REPO_ROOT = pathlib.Path(__file__).resolve().parents[5]
IMAGE = "nubia-sm8850-kernel-builder:latest"
TOOLCHAIN_VOLUME = "nubia_sm8850_kernel_toolchains"
CLANG = "/toolchains/clang-r536225/bin/clang"


def sha256(path: pathlib.Path) -> str:
	digest = hashlib.sha256()
	with path.open("rb") as stream:
		for block in iter(lambda: stream.read(1024 * 1024), b""):
			digest.update(block)
	return digest.hexdigest()


def run(command: list[str]) -> subprocess.CompletedProcess[str]:
	return subprocess.run(
		command,
		check=False,
		text=True,
		stdout=subprocess.PIPE,
		stderr=subprocess.PIPE,
	)


def main() -> int:
	parser = argparse.ArgumentParser()
	parser.add_argument(
		"--source",
		type=pathlib.Path,
		default=pathlib.Path(__file__).with_name("syna_testing_pt01_show_host_test.c"),
	)
	parser.add_argument("--build-root", type=pathlib.Path, required=True)
	parser.add_argument("--output", type=pathlib.Path, required=True)
	args = parser.parse_args()

	source = args.source.resolve()
	driver_source = source.parents[3] / "reconstructed" / "zte_tpd" / "syna_testing_pt01_show.c"
	build_root = args.build_root.resolve()
	output = args.output.resolve()
	for path in (source, driver_source):
		if not path.is_file():
			parser.error(f"source not found: {path}")
	if build_root.exists():
		parser.error(f"build root already exists: {build_root}")

	build_root.mkdir(parents=True)
	cycles: list[dict[str, object]] = []
	for cycle in (1, 2):
		cycle_root = build_root / f"cycle{cycle}"
		cycle_root.mkdir()
		binary = cycle_root / "host_test_asan_ubsan"
		command = [
			"docker", "run", "--rm",
			"-v", f"{source.parents[3]}:/drivers:ro",
			"-v", f"{cycle_root.resolve()}:/output",
			"-v", f"{TOOLCHAIN_VOLUME}:/toolchains:ro",
			IMAGE, CLANG, "-std=gnu11",
			"-O1",
			"-g",
			"-Wall",
			"-Wextra",
			"-Werror",
			"-fno-omit-frame-pointer",
			"-fno-pie",
			"-no-pie",
			"-Wno-unused-function", "-Wno-unused-variable", "-Wno-int-conversion",
			"-Wno-cast-function-type", "-Wno-sign-compare", "-Wno-uninitialized",
			"-Wno-unused-but-set-variable", "-Wno-error=uninitialized",
			"-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
			"-frandom-seed=zte-tpd-next225-testing-pt01",
			"-ffile-prefix-map=/drivers=<drivers>",
			"-fsanitize=address,undefined",
			"-Wl,--build-id=none",
			f"/drivers/{source.relative_to(REPO_ROOT / 'kernel_development/drivers').as_posix()}",
			"-o",
			"/output/host_test_asan_ubsan",
		]
		compile_result = run(command)
		run_command = ["docker", "run", "--rm", "-e", "ASAN_OPTIONS=detect_leaks=0",
			"-v", f"{cycle_root.resolve()}:/output:ro", IMAGE, "/output/host_test_asan_ubsan"]
		run_result = run(run_command) if compile_result.returncode == 0 else None
		passed = bool(
			run_result
			and run_result.returncode == 0
			and run_result.stdout == EXPECTED_STDOUT
			and run_result.stderr == ""
		)
		cycles.append(
			{
				"cycle": cycle,
				"compile_command": command,
				"compile_returncode": compile_result.returncode,
				"compile_stdout": compile_result.stdout,
				"compile_stderr": compile_result.stderr,
				"run_returncode": run_result.returncode if run_result else None,
				"run_stdout": run_result.stdout if run_result else "",
				"run_stderr": run_result.stderr if run_result else "",
				"binary_sha256": sha256(binary) if binary.is_file() else None,
				"passed": passed,
			}
		)

	binary_hashes = [cycle["binary_sha256"] for cycle in cycles]
	reproducible = len(set(binary_hashes)) == 1 and binary_hashes[0] is not None
	passed = all(bool(cycle["passed"]) for cycle in cycles) and reproducible
	report = {
		"schema_version": 1,
		"generated_at_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
		"mode": "offline_direct_source_next54_testing_pt01_asan_ubsan",
		"driver": "zte_tpd",
		"target": "syna_testing_pt01_show",
		"covered_functions": ["syna_testing_pt01_show"],
		"source": str(source),
		"source_sha256": sha256(source),
		"compiler": "Docker clang-r536225",
		"sanitizers": ["address", "undefined"],
		"expected_cases": 6,
		"repetitions": 2,
		"cycles": cycles,
		"inputs": [
			{"path": str(path), "size": path.stat().st_size, "sha256": sha256(path)}
			for path in (source, driver_source)
		],
		"reproducible": reproducible,
		"reproducible_binary": reproducible,
		"passed": passed,
		"status": "PASS" if passed else "FAIL",
		"limitations": [
			"The harness stubs kernel kobject, mutex, logging and managed-device APIs.",
			"It proves sysfs lookup offsets, PT01 limit placement, byte formatting and cleanup branches.",
			"Assembly, KCFI and Ghidra equivalence remain independent gates.",
			"No smartphone, sysfs tree or kernel kobject is used.",
		],
	}
	output.parent.mkdir(parents=True, exist_ok=True)
	with output.open("w", encoding="utf-8", newline="\n") as stream:
		json.dump(report, stream, indent=2)
		stream.write("\n")
	print(f"{report['status']}: {output}")
	return 0 if passed else 1


if __name__ == "__main__":
	raise SystemExit(main())
