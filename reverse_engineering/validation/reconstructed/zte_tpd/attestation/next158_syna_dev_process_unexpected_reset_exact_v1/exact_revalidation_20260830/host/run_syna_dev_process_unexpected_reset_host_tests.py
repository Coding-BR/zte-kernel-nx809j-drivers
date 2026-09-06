#!/usr/bin/env python3
"""Build and run the direct-source unexpected-reset harness twice in Docker."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import pathlib
import subprocess

IMAGE = "nubia-sm8850-kernel-builder:latest"
TOOLCHAIN_VOLUME = "nubia_sm8850_kernel_toolchains"
CLANG = "/toolchains/clang-r536225/bin/clang"
EXPECTED_STDOUT = """PASS null_context_returns_einval
PASS null_context_logs_without_queue
PASS inactive_mode_returns_zero
PASS inactive_mode_has_no_side_effects
PASS missing_workqueue_returns_einval
PASS missing_workqueue_logs_event_and_error
PASS first_reset_returns_zero
PASS first_reset_sets_flag_and_queues_on_cpu_32
PASS duplicate_reset_returns_zero
PASS duplicate_reset_is_not_requeued
SUMMARY tests=10 failures=0
"""


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
                        default=pathlib.Path(__file__).with_name(
                            "syna_dev_process_unexpected_reset_host_test.c"))
    parser.add_argument("--build-root", type=pathlib.Path, required=True)
    parser.add_argument("--output", type=pathlib.Path, required=True)
    args = parser.parse_args()
    source = args.source.resolve()
    drivers = source.parents[3]
    driver_source = drivers / "reconstructed" / "zte_tpd" / "syna_dev_process_unexpected_reset.c"
    build_root = args.build_root.resolve()
    output = args.output.resolve()
    if not source.is_file():
        parser.error(f"source not found: {source}")
    if not driver_source.is_file():
        parser.error(f"driver source not found: {driver_source}")
    if build_root.exists():
        parser.error(f"build root already exists: {build_root}")
    version = execute(["docker", "run", "--rm", "-v", f"{TOOLCHAIN_VOLUME}:/toolchains:ro",
                       IMAGE, CLANG, "--version"])
    if version.returncode:
        raise SystemExit(version.stderr.strip())
    build_root.mkdir(parents=True)
    cycles = []
    for cycle in (1, 2):
        cycle_root = build_root / f"cycle{cycle}"
        cycle_root.mkdir()
        binary_name = "host_test_asan_ubsan"
        binary = cycle_root / binary_name
        command = ["docker", "run", "--rm", "-v", f"{drivers}:/drivers:ro", "-v",
                   f"{cycle_root}:/output", "-v", f"{TOOLCHAIN_VOLUME}:/toolchains:ro",
                   IMAGE, CLANG, "-std=gnu11", "-O1", "-g", "-Wall", "-Wextra", "-Werror",
                   "-Wno-unused-parameter", "-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
                   "-D", "ZTE_TPD_HOST_TEST", "-frandom-seed=zte-tpd-target168-unexpected-reset",
                   "-ffile-prefix-map=/drivers=<drivers>", "-fsanitize=address,undefined",
                   "-Wl,--build-id=none",
                   "/drivers/validation/zte_tpd/host/syna_dev_process_unexpected_reset_host_test.c",
                   "-o", f"/output/{binary_name}"]
        compiled = execute(command)
        run = execute(["docker", "run", "--rm", "-v", f"{cycle_root}:/output:ro",
                       IMAGE, f"/output/{binary_name}"]) if compiled.returncode == 0 else None
        passed = bool(run and run.returncode == 0 and run.stdout == EXPECTED_STDOUT
                      and run.stderr == "")
        cycles.append({"cycle": cycle, "compile_returncode": compiled.returncode,
                       "compile_stderr": compiled.stderr,
                       "run_returncode": run.returncode if run else None,
                       "run_stdout": run.stdout if run else "",
                       "run_stderr": run.stderr if run else "",
                       "binary_sha256": sha256(binary) if binary.is_file() else None,
                       "passed": passed})
    hashes = [cycle["binary_sha256"] for cycle in cycles]
    reproducible = len(set(hashes)) == 1 and hashes[0] is not None
    passed = all(cycle["passed"] for cycle in cycles) and reproducible
    report = {
        "schema_version": 1,
        "generated_at_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "offline_direct_source_syna_dev_process_unexpected_reset_asan_ubsan",
        "driver": "zte_tpd",
        "target": "syna_dev_process_unexpected_reset",
        "covered_functions": ["syna_dev_process_unexpected_reset"],
        "source": str(source),
        "source_sha256": sha256(source),
        "driver_source": str(driver_source),
        "driver_source_sha256": sha256(driver_source),
        "expected_cases": 10,
        "repetitions": 2,
        "cycles": cycles,
        "reproducible": reproducible,
        "reproducible_binary": reproducible,
        "passed": passed,
        "status": "PASS" if passed else "FAIL",
        "limitations": [
            "The harness includes the reconstructed source directly and stubs only printk and queue_work_on.",
            "A real workqueue, callback execution, concurrent reset delivery and physical hardware are not exercised.",
            "AArch64 exact code/relocation comparison, KCFI and controlled-device validation remain separate gates."
        ],
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {output}")
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
