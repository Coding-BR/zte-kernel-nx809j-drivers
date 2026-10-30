#!/usr/bin/env python3
"""Run a reproducible ASan/UBSan direct-source harness for syna_cdev_read."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import subprocess
from pathlib import Path
from typing import Any


EXPECTED_STDOUT = "PASS syna_cdev_read host tests (4 cases)\n"


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def run_command(command: list[str]) -> dict[str, Any]:
    completed = subprocess.run(command, capture_output=True, text=True, check=False)
    return {
        "command": command,
        "returncode": completed.returncode,
        "stdout": completed.stdout[-4000:],
        "stderr": completed.stderr[-4000:],
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    repository_root = Path(__file__).resolve().parents[2]
    parser.add_argument("--repo-root", type=Path, default=repository_root)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--build-root", type=Path, required=True)
    parser.add_argument("--repetitions", type=int, default=2)
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    args = parser.parse_args()
    if args.repetitions < 2:
        parser.error("--repetitions must be at least 2")

    root = args.repo_root.resolve()
    drivers_root = root / "kernel_development" / "drivers"
    harness = drivers_root / "validation" / "zte_tpd" / "host" / "syna_cdev_read_host_test.c"
    source = drivers_root / "reconstructed" / "zte_tpd" / "syna_cdev_read.c"
    for path in (harness, source):
        if not path.is_file():
            raise FileNotFoundError(path)

    output = args.output.resolve()
    build_root = args.build_root.resolve()
    if build_root.exists():
        raise FileExistsError(build_root)
    build_root.mkdir(parents=True)
    cycles: list[dict[str, Any]] = []
    binary_hashes: list[str] = []
    for cycle in range(1, args.repetitions + 1):
        cycle_root = build_root / f"cycle{cycle}"
        cycle_root.mkdir()
        binary = cycle_root / "host_test_asan_ubsan"
        compile_result = run_command([
            "docker", "run", "--rm",
            "-v", f"{drivers_root}:/drivers:ro",
            "-v", f"{cycle_root}:/output",
            "-v", f"{args.toolchain_volume}:/toolchains:ro",
            args.image,
            f"/toolchains/{args.clang_revision}/bin/clang",
            "-std=gnu11", "-O1", "-g", "-Wall", "-Wextra", "-Werror",
            "-Wno-unused-parameter", "-Wno-int-conversion",
            "-Wno-compare-distinct-pointer-types", "-Wno-unused-but-set-variable",
            "-Wno-sign-compare",
            "-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
            "-frandom-seed=zte-tpd-next121-syna-cdev-read",
            "-ffile-prefix-map=/drivers=<drivers>", "-fsanitize=address,undefined",
            "-Wl,--build-id=none",
            "/drivers/validation/zte_tpd/host/syna_cdev_read_host_test.c",
            "-o", "/output/host_test_asan_ubsan",
        ])
        run_result = {"command": [], "returncode": None, "stdout": "", "stderr": ""}
        binary_hash = None
        if compile_result["returncode"] == 0 and binary.is_file():
            run_result = run_command([
                "docker", "run", "--rm", "-v", f"{cycle_root}:/output:ro",
                args.image, "/output/host_test_asan_ubsan",
            ])
            binary_hash = sha256_file(binary)
            binary_hashes.append(binary_hash)
        passed = (
            compile_result["returncode"] == 0
            and run_result["returncode"] == 0
            and run_result["stdout"] == EXPECTED_STDOUT
            and not run_result["stderr"]
        )
        cycles.append({
            "cycle": cycle,
            "compile": compile_result,
            "run": run_result,
            "binary_sha256": binary_hash,
            "passed": passed,
        })

    passed = all(cycle["passed"] for cycle in cycles)
    reproducible = passed and len(set(binary_hashes)) == 1
    report = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "offline_direct_source_syna_cdev_read_asan_ubsan",
        "driver": "zte_tpd",
        "target": "syna_cdev_read",
        "covered_functions": ["syna_cdev_read"],
        "compiler": f"/toolchains/{args.clang_revision}/bin/clang",
        "container_image": args.image,
        "toolchain_volume": args.toolchain_volume,
        "build_root": str(build_root),
        "sanitizers": ["address", "undefined"],
        "expected_cases": 4,
        "repetitions": args.repetitions,
        "inputs": [
            {"path": str(path), "size": path.stat().st_size, "sha256": sha256_file(path)}
            for path in (harness, source)
        ],
        "cycles": cycles,
        "reproducible_binary": reproducible,
        "passed": passed and reproducible,
        "status": "PASS" if passed and reproducible else "FAIL",
        "limitations": [
            "The harness validates direct-source cdev read control flow and ABI-visible arguments only.",
            "It does not load the module or emulate a physical Synaptics TCM device.",
            "Assembly, KCFI, Ghidra, Joern, and the whole-module build remain separate gates.",
            "Only decompiler-origin pointer and unused-register diagnostics are suppressed; ASan and UBSan remain enabled.",
        ],
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"output": str(output), "passed": report["passed"], "cycles": len(cycles)}))
    return 0 if report["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
