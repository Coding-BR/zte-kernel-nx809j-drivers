#!/usr/bin/env python3
"""Build and run the syna_dev_set_up_app_fw host harness twice in Docker."""

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
EXPECTED_STDOUT = "PASS syna_dev_set_up_app_fw host tests (6 cases)\n"


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
                            "syna_dev_set_up_app_fw_contract_test.c"))
    parser.add_argument("--build-root", type=pathlib.Path, required=True)
    parser.add_argument("--output", type=pathlib.Path, required=True)
    args = parser.parse_args()
    source = args.source.resolve()
    drivers = source.parents[3]
    build_root = args.build_root.resolve()
    output = args.output.resolve()
    if not source.is_file():
        parser.error(f"source not found: {source}")
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
                   "-Wno-uninitialized", "-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
                   "-D", "ZTE_TPD_HOST_TEST", "-frandom-seed=zte-tpd-target369-app-fw",
                   "-ffile-prefix-map=/drivers=<drivers>", "-fsanitize=address,undefined",
                   "-Wl,--build-id=none",
                   "/drivers/validation/zte_tpd/host/syna_dev_set_up_app_fw_contract_test.c",
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
              "mode": "offline_direct_source_syna_dev_set_up_app_fw_asan_ubsan",
              "driver": "zte_tpd", "target": "syna_dev_set_up_app_fw",
              "covered_functions": ["syna_dev_set_up_app_fw", "syna_tcm_get_app_info",
                                     "syna_tcm_preserve_touch_report_config"],
              "source": str(source), "source_sha256": sha256(source), "expected_cases": 6,
              "repetitions": 2, "cycles": cycles, "reproducible": reproducible,
              "reproducible_binary": reproducible, "passed": passed,
              "status": "PASS" if passed else "FAIL",
              "limitations": [
                  "Firmware transport and application-info contents are stubbed; only return and transfer-size contracts are exercised.",
                  "No smartphone, SPI, IRQ, workqueue, firmware blob or physical hardware is exercised."]}
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {output}")
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
