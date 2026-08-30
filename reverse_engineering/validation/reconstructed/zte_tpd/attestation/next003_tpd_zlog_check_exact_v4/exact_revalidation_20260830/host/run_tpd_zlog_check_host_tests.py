#!/usr/bin/env python3
"""Build and run the tpd_zlog_check host harness twice in Docker."""

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
EXPECTED_STDOUT = "PASS tpd_zlog_check host tests (5 cases)\n"
DRIVER_SOURCE_C = pathlib.Path(
    "kernel_development/drivers/reconstructed/zte_tpd/tpd_zlog_check.c"
)


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
                            "tpd_zlog_check_contract_test.c"))
    parser.add_argument("--build-root", type=pathlib.Path, required=True)
    parser.add_argument("--output", type=pathlib.Path, required=True)
    args = parser.parse_args()
    source = args.source.resolve()
    drivers = source.parents[3]
    repo_root = source.parents[5]
    build_root = args.build_root.resolve()
    output = args.output.resolve()
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
                   "-fno-omit-frame-pointer", "-fno-pie", "-no-pie", "-D",
                   "ZTE_TPD_HOST_TEST", "-frandom-seed=zte-tpd-target376-zlog-check",
                   "-ffile-prefix-map=/drivers=<drivers>", "-fsanitize=address,undefined",
                   "-Wl,--build-id=none",
                   "/drivers/validation/zte_tpd/host/tpd_zlog_check_contract_test.c",
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
    report = {"schema_version": 1,
              "generated_at_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
              "mode": "offline_direct_source_tpd_zlog_check_asan_ubsan",
              "driver": "zte_tpd", "target": "tpd_zlog_check",
              "covered_functions": ["tpd_zlog_check"], "source": str(source),
              "source_sha256": sha256(source),
              "driver_source": str(repo_root / DRIVER_SOURCE_C),
              "driver_source_sha256": sha256(repo_root / DRIVER_SOURCE_C),
              "inputs": [
                  {"path": DRIVER_SOURCE_C.as_posix(),
                   "sha256": sha256(repo_root / DRIVER_SOURCE_C)},
                  {"path": "kernel_development/drivers/validation/zte_tpd/host/"
                          "tpd_zlog_check_contract_test.c",
                   "sha256": sha256(source)},
              ],
              "expected_cases": 5,
              "repetitions": 2, "cycles": cycles, "reproducible": reproducible,
              "reproducible_binary": reproducible, "passed": passed,
              "status": "PASS" if passed else "FAIL",
              "limitations": [
                  "jiffies and printk are stubbed; the harness checks the timing, index and return contracts.",
                  "The invalid-index branch is non-returning brk #0x5512 and is verified statically, not executed in the host process.",
                  "No smartphone, SPI, firmware transport or physical hardware is exercised."]}
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {output}")
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
