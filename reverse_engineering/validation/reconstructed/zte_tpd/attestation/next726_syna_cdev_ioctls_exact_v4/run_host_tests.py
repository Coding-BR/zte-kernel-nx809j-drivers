#!/usr/bin/env python3
"""Build and run all target-190 route harnesses twice in Docker."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import pathlib
import re
import subprocess

IMAGE = "nubia-sm8850-kernel-builder:latest"
TOOLCHAIN_VOLUME = "nubia_sm8850_kernel_toolchains"
CLANG = "/toolchains/clang-r536225/bin/clang"

SOURCES = [
    "syna_cdev_ioctls_190_11_store_pid_host_test.c",
    "syna_cdev_ioctls_190_12_enable_irq_host_test.c",
    "syna_cdev_ioctls_190_13_raw_read_dispatch_host_test.c",
    "syna_cdev_ioctls_190_14_raw_write_dispatch_host_test.c",
    "syna_cdev_ioctls_190_15_get_frame_host_test.c",
    "syna_cdev_ioctls_190_16_send_message_host_test.c",
    "syna_cdev_ioctls_190_17_set_queued_types_host_test.c",
    "syna_cdev_ioctls_190_18_check_frame_host_test.c",
    "syna_cdev_ioctls_190_19_clear_frames_host_test.c",
    "syna_cdev_ioctls_190_1a_application_info_host_test.c",
    "syna_cdev_ioctls_190_1b_do_hw_reset_host_test.c",
    "syna_cdev_ioctls_190_21_set_config_host_test.c",
    "syna_cdev_ioctls_190_22_get_config_params_host_test.c",
    "syna_cdev_ioctls_190_default_legacy_host_test.c",
]


def execute(command: list[str]) -> subprocess.CompletedProcess[str]:
    return subprocess.run(command, check=False, text=True,
                          stdout=subprocess.PIPE, stderr=subprocess.PIPE)


def sha256(path: pathlib.Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def expected_stdout(source: pathlib.Path) -> str:
    text = source.read_text(encoding="utf-8")
    matches = re.findall(r'puts\("([^"\\]*(?:\\.[^"\\]*)*)"\)', text)
    if not matches:
        raise ValueError(f"no PASS puts() found in {source}")
    return matches[-1].encode("utf-8").decode("unicode_escape") + "\n"


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--source-dir", type=pathlib.Path,
                        default=pathlib.Path(__file__).parent)
    parser.add_argument("--build-root", type=pathlib.Path, required=True)
    parser.add_argument("--output", type=pathlib.Path, required=True)
    args = parser.parse_args()
    source_dir = args.source_dir.resolve()
    drivers = source_dir.parents[2]
    build_root = args.build_root.resolve()
    output = args.output.resolve()
    if build_root.exists():
        parser.error(f"build root already exists: {build_root}")
    sources = [source_dir / name for name in SOURCES]
    if any(not source.is_file() for source in sources):
        parser.error("one or more target-190 harness sources are missing")
    build_root.mkdir(parents=True)
    cycles = []
    for cycle in (1, 2):
        cycle_root = build_root / f"cycle{cycle}"
        cycle_root.mkdir()
        cases = []
        for source in sources:
            binary_name = source.stem
            binary = cycle_root / binary_name
            command = [
                "docker", "run", "--rm", "-v", f"{drivers}:/drivers:ro", "-v",
                f"{cycle_root}:/output", "-v", f"{TOOLCHAIN_VOLUME}:/toolchains:ro",
                IMAGE, CLANG, "-std=gnu11", "-O1", "-g", "-Wall", "-Wextra", "-Werror",
                "-Wno-uninitialized", "-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
                "-D", "ZTE_TPD_HOST_TEST", "-frandom-seed=zte-tpd-target190-parent",
                "-ffile-prefix-map=/drivers=<drivers>", "-fsanitize=address,undefined",
                "-Wl,--build-id=none", f"/drivers/validation/zte_tpd/host/{source.name}",
                "-o", f"/output/{binary_name}",
            ]
            compiled = execute(command)
            run = execute(["docker", "run", "--rm", "-v", f"{cycle_root}:/output:ro",
                           IMAGE, f"/output/{binary_name}"]) if compiled.returncode == 0 else None
            expected = expected_stdout(source)
            passed = bool(run and run.returncode == 0 and run.stdout == expected
                          and run.stderr == "")
            cases.append({
                "source": source.name,
                "source_sha256": sha256(source),
                "expected_stdout": expected,
                "compile_returncode": compiled.returncode,
                "compile_stderr": compiled.stderr,
                "run_returncode": run.returncode if run else None,
                "run_stdout": run.stdout if run else "",
                "run_stderr": run.stderr if run else "",
                "binary_sha256": sha256(binary) if binary.is_file() else None,
                "passed": passed,
            })
        cycles.append({"cycle": cycle, "cases": cases,
                       "passed": all(case["passed"] for case in cases)})
    binary_pairs = {}
    for name in SOURCES:
        stem = pathlib.Path(name).stem
        values = [case["binary_sha256"] for cycle in cycles
                  for case in cycle["cases"] if case["source"] == name]
        binary_pairs[stem] = values
    reproducible = all(len(values) == 2 and values[0] is not None and values[0] == values[1]
                       for values in binary_pairs.values())
    passed = all(cycle["passed"] for cycle in cycles) and reproducible
    report = {
        "schema_version": 1,
        "generated_at_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "offline_target190_routes_asan_ubsan",
        "driver": "zte_tpd",
        "target": "syna_cdev_ioctls",
        "covered_functions": ["syna_cdev_ioctls"],
        "source_dir": str(source_dir),
        "expected_cases": len(SOURCES),
        "repetitions": 2,
        "cycles": cycles,
        "binary_hashes_by_case": binary_pairs,
        "reproducible": reproducible,
        "reproducible_binary": reproducible,
        "passed": passed,
        "status": "PASS" if passed else "FAIL",
        "limitations": [
            "The harnesses exercise the reconstructed ioctl route contracts with controlled callbacks and memory stubs.",
            "Indirect kernel callbacks, physical hardware, user-space ABI integration and device timing remain outside this host gate.",
        ],
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {output}")
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
