#!/usr/bin/env python3
"""Build and run the detect-device harness twice with ASAN and UBSAN."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import pathlib
import shlex
import subprocess


EXPECTED_STDOUT = "PASS syna_tcm_detect_device host tests (11 cases)\n"


def sha256(path: pathlib.Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    repo = pathlib.Path(__file__).resolve().parents[2]
    parser.add_argument(
        "--engineering-root",
        type=pathlib.Path,
        default=repo.parent / "kernel-docker-workspace" / "engenharia",
    )
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--repetitions", type=int, default=2)
    parser.add_argument("--output", type=pathlib.Path)
    args = parser.parse_args()
    if args.repetitions < 1:
        parser.error("--repetitions must be at least 1")

    source = (
        repo
        / "kernel_development"
        / "drivers"
        / "validation"
        / "zte_tpd"
        / "host"
        / "syna_tcm_detect_device_host_test.c"
    )
    driver_source = (
        repo
        / "kernel_development"
        / "drivers"
        / "reconstructed"
        / "zte_tpd"
        / "syna_tcm_detect_device.c"
    )
    engineering = args.engineering_root.resolve()
    build_root = engineering / "validation" / "zte_tpd" / "host_next19_detect"
    output = (
        args.output
        or repo
        / "reverse_engineering"
        / "validation"
        / "reconstructed"
        / "zte_tpd"
        / "harness"
        / "next19_detect_harness_report.json"
    ).resolve()
    for path in (source, driver_source):
        if not path.is_file():
            raise FileNotFoundError(path)

    build_root.mkdir(parents=True, exist_ok=True)
    cycles = []
    for cycle in range(1, args.repetitions + 1):
        cycle_root = build_root / f"cycle{cycle}"
        cycle_root.mkdir(parents=True, exist_ok=True)
        binary = cycle_root / "host_test_asan_ubsan"
        container_binary = f"/engineering/{binary.relative_to(engineering).as_posix()}"
        compile_command = [
            "gcc",
            "-std=c11",
            "-O1",
            "-g",
            "-Wall",
            "-Wextra",
            "-Werror",
            "-fno-omit-frame-pointer",
            "-fno-pie",
            "-no-pie",
            "-frandom-seed=zte-tpd-next19-detect",
            "-ffile-prefix-map=/repo=<repo>",
            "-ffile-prefix-map=/engineering=<engineering>",
            "-fsanitize=address,undefined",
            "-Wl,--build-id=none",
            "/repo/kernel_development/drivers/validation/zte_tpd/host/syna_tcm_detect_device_host_test.c",
            "-o",
            container_binary,
        ]
        shell = (
            shlex.join(compile_command)
            + " && ASAN_OPTIONS=detect_leaks=1:halt_on_error=1:strict_string_checks=1 "
            + "UBSAN_OPTIONS=halt_on_error=1:print_stacktrace=1 "
            + container_binary
        )
        command = [
            "docker",
            "run",
            "--rm",
            "-v",
            f"{repo}:/repo:ro",
            "-v",
            f"{engineering}:/engineering",
            args.image,
            "sh",
            "-lc",
            shell,
        ]
        completed = subprocess.run(
            command, check=False, text=True, capture_output=True
        )
        passed = (
            completed.returncode == 0
            and completed.stdout == EXPECTED_STDOUT
            and completed.stderr == ""
            and binary.is_file()
        )
        cycles.append(
            {
                "cycle": cycle,
                "compile_command": compile_command,
                "returncode": completed.returncode,
                "stdout": completed.stdout,
                "stderr": completed.stderr,
                "binary_sha256": sha256(binary) if binary.is_file() else None,
                "passed": passed,
            }
        )

    binary_hashes = [cycle["binary_sha256"] for cycle in cycles]
    reproducible = (
        bool(binary_hashes)
        and binary_hashes[0] is not None
        and len(set(binary_hashes)) == 1
    )
    passed = all(bool(cycle["passed"]) for cycle in cycles) and reproducible
    report = {
        "schema_version": 1,
        "generated_at_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "offline_direct_source_next19_detect_asan_ubsan",
        "target": "syna_tcm_detect_device",
        "expected_cases": 11,
        "repetitions": args.repetitions,
        "cycles": cycles,
        "inputs": [
            {
                "path": str(path),
                "size": path.stat().st_size,
                "sha256": sha256(path),
            }
            for path in (source, driver_source)
        ],
        "coverage": {
            "null_device": True,
            "protocol_v2_and_invalid": True,
            "v1_failure_with_and_without_response": True,
            "missing_read_and_write_callbacks": True,
            "quick_setup": True,
            "application_bootloader_and_unknown_modes": True,
            "offset_assertions": [
                "0x08",
                "0x09",
                "0x0c",
                "0x82",
                "0x240",
                "0x248",
                "0x390",
                "0x398",
            ],
            "asan_ubsan": True,
            "hardware_paths_exercised": False,
        },
        "reproducible_binary": reproducible,
        "passed": passed,
        "status": "PASS" if passed else "FAIL",
        "limitations": [
            "The harness stubs printk, protocol-v1 detection and transport callbacks.",
            "It proves branch, offset, argument, return and diagnostic behavior, not SPI hardware integration.",
            "Assembly, KCFI, Ghidra P-Code and full-module integration remain independent gates.",
            "No smartphone, ADB, fastboot, IRQ, MMIO or flash operation is performed.",
        ],
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {output}")
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
