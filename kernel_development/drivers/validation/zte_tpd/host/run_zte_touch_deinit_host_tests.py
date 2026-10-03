#!/usr/bin/env python3
"""Run reproducible ASan/UBSan tests for zte_touch_deinit."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import subprocess
from pathlib import Path


EXPECTED_STDOUT = "PASS zte_touch_deinit host tests (3 cases)\n"


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def run(command: list[str]) -> dict[str, object]:
    completed = subprocess.run(command, capture_output=True, text=True, check=False)
    return {"command": command, "returncode": completed.returncode,
            "stdout": completed.stdout, "stderr": completed.stderr}


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--repetitions", type=int, default=2)
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    args = parser.parse_args()
    if args.repetitions < 2:
        parser.error("--repetitions must be at least 2")

    repo_root = Path(__file__).resolve().parents[5]
    drivers_root = repo_root / "kernel_development" / "drivers"
    harness = drivers_root / "validation" / "zte_tpd" / "host" / "zte_touch_deinit_host_test.c"
    source = drivers_root / "reconstructed" / "zte_tpd" / "zte_touch_deinit.c"
    if not harness.is_file() or not source.is_file():
        raise FileNotFoundError("zte_touch_deinit harness or source is missing")

    output = args.output.resolve()
    build_root = output.parent / "host-build"
    build_root.mkdir(parents=True, exist_ok=False)
    cycles: list[dict[str, object]] = []
    binary_hashes: list[str] = []
    for cycle in range(1, args.repetitions + 1):
        cycle_root = build_root / f"cycle{cycle}"
        cycle_root.mkdir()
        compile_command = [
            "docker", "run", "--rm", "-v", f"{drivers_root}:/drivers:ro",
            "-v", f"{cycle_root}:/output", "-v",
            f"{args.toolchain_volume}:/toolchains:ro", args.image,
            f"/toolchains/{args.clang_revision}/bin/clang", "-std=gnu11", "-O1", "-g",
            "-Wall", "-Wextra", "-Werror", "-Wno-format-security",
            "-Wno-incompatible-pointer-types", "-Wno-unused-variable",
            "-Wno-unused-but-set-variable", "-Wno-uninitialized",
            "-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
            "-frandom-seed=zte-tpd-zte-touch-deinit",
            "-ffile-prefix-map=/drivers=<drivers>", "-fsanitize=address,undefined",
            "-Wl,--build-id=none",
            "/drivers/validation/zte_tpd/host/zte_touch_deinit_host_test.c",
            "-o", "/output/host_test_asan_ubsan",
        ]
        compile = run(compile_command)
        binary = cycle_root / "host_test_asan_ubsan"
        execute = {"command": [], "returncode": None, "stdout": "", "stderr": ""}
        binary_hash = None
        if compile["returncode"] == 0 and binary.is_file():
            execute = run(["docker", "run", "--rm", "-v", f"{cycle_root}:/output:ro",
                           args.image, "/output/host_test_asan_ubsan"])
            binary_hash = sha256_file(binary)
            binary_hashes.append(binary_hash)
        passed = (compile["returncode"] == 0 and execute["returncode"] == 0
                  and execute["stdout"] == EXPECTED_STDOUT and execute["stderr"] == "")
        cycles.append({"cycle": cycle, "compile": compile, "run": execute,
                       "binary_sha256": binary_hash, "passed": passed})

    passed = all(bool(cycle["passed"]) for cycle in cycles)
    reproducible = passed and len(binary_hashes) == args.repetitions and len(set(binary_hashes)) == 1
    report = {
        "schema_version": "1.0", "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "offline_direct_source_zte_touch_deinit_asan_ubsan",
        "driver": "zte_tpd", "target": "zte_touch_deinit",
        "covered_functions": ["zte_touch_deinit"],
        "compiler": f"/toolchains/{args.clang_revision}/bin/clang",
        "container_image": args.image, "toolchain_volume": args.toolchain_volume,
        "sanitizers": ["address", "undefined"], "expected_cases": 3,
        "repetitions": args.repetitions,
        "inputs": [{"path": str(harness), "size": harness.stat().st_size,
                    "sha256": sha256_file(harness)},
                   {"path": str(source), "size": source.stat().st_size,
                    "sha256": sha256_file(source)}],
        "cycles": cycles, "reproducible_binary": reproducible,
        "passed": passed and reproducible,
        "status": "PASS" if passed and reproducible else "FAIL",
        "limitations": [
            "Kernel teardown helpers and the stock indirect CFI callback are deterministic host stubs.",
            "The harness checks teardown order, all four delayed-work offsets, double vfree lifecycle, sysfs cleanup, workqueue condition and early returns without hardware.",
            "Assembly, KCFI, Ghidra, Joern, canonical build and hardware gates remain separate.",
        ],
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"output": str(output), "passed": report["passed"], "cycles": len(cycles)}))
    return 0 if report["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
