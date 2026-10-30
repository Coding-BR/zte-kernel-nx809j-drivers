#!/usr/bin/env python3
"""Run the reproducible ASan/UBSan contract harness for normal sensing."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import subprocess
from pathlib import Path


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def run(command: list[str]) -> dict[str, object]:
    result = subprocess.run(command, capture_output=True, text=True, check=False)
    return {
        "command": command,
        "returncode": result.returncode,
        "stdout": result.stdout[-4000:],
        "stderr": result.stderr[-4000:],
    }


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

    repo = Path(__file__).resolve().parents[2]
    drivers = repo / "kernel_development" / "drivers"
    harness = drivers / "validation" / "zte_tpd" / "host" / "syna_dev_enter_normal_sensing_contract_test.c"
    source = drivers / "reconstructed" / "zte_tpd" / "syna_dev_enter_normal_sensing.c"
    output = args.output.resolve()
    build_root = output.parent / "host-build"
    build_root.mkdir(parents=True, exist_ok=False)
    cycles: list[dict[str, object]] = []
    hashes: list[str] = []

    for index in range(1, args.repetitions + 1):
        cycle = build_root / f"cycle{index}"
        cycle.mkdir()
        binary = cycle / "contract_asan_ubsan"
        compile_result = run([
            "docker", "run", "--rm", "-v", f"{drivers}:/drivers:ro",
            "-v", f"{cycle}:/output", "-v", f"{args.toolchain_volume}:/toolchains:ro",
            args.image, f"/toolchains/{args.clang_revision}/bin/clang", "-std=gnu11",
            "-O1", "-g", "-Wall", "-Wextra", "-Werror", "-fno-omit-frame-pointer",
            "-fno-pie", "-no-pie", "-frandom-seed=zte-tpd-next166-normal-sensing",
            "-ffile-prefix-map=/drivers=<drivers>", "-fsanitize=address,undefined",
            "-Wl,--build-id=none",
            "/drivers/validation/zte_tpd/host/syna_dev_enter_normal_sensing_contract_test.c",
            "-o", "/output/contract_asan_ubsan",
        ])
        run_result: dict[str, object] = {"command": [], "returncode": None, "stdout": "", "stderr": ""}
        digest = None
        if compile_result["returncode"] == 0 and binary.is_file():
            run_result = run([
                "docker", "run", "--rm", "-v", f"{cycle}:/output:ro", args.image,
                "/output/contract_asan_ubsan",
            ])
            digest = sha256_file(binary)
            hashes.append(digest)
        passed = (
            compile_result["returncode"] == 0 and run_result["returncode"] == 0 and
            "PASS syna_dev_enter_normal_sensing contract test (5 checks)" in str(run_result["stdout"])
        )
        cycles.append({"cycle": index, "compile": compile_result, "run": run_result,
                       "binary_sha256": digest, "passed": passed})

    passed = all(bool(cycle["passed"]) for cycle in cycles) and len(set(hashes)) == 1
    report = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "driver": "zte_tpd",
        "target": "syna_dev_enter_normal_sensing",
        "covered_functions": ["syna_dev_enter_normal_sensing"],
        "mode": "offline_contract_model_asan_ubsan",
        "container_image": args.image,
        "compiler": f"/toolchains/{args.clang_revision}/bin/clang",
        "repetitions": args.repetitions,
        "inputs": [{"path": str(harness), "sha256": sha256_file(harness)},
                   {"path": str(source), "sha256": sha256_file(source)}],
        "cycles": cycles,
        "passed": passed,
        "status": "PASS" if passed else "FAIL",
        "limitations": [
            "The final function contains target-specific AArch64 inline assembly and is not executed on the x86 host.",
            "Exact AArch64 assembly, KCFI, canonical build, Ghidra and Joern are separate required gates.",
        ],
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"output": str(output), "passed": passed, "cycles": len(cycles)}))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
