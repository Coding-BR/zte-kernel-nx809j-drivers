#!/usr/bin/env python3
"""Build and run the tpd_set_singleaodgesture contract harness twice."""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import subprocess
from pathlib import Path


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    digest.update(path.read_bytes())
    return digest.hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--build-root", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[5]
    source = root / "kernel_development/drivers/validation/zte_tpd/host/tpd_set_singleaodgesture_contract_test.c"
    compiler = "/toolchains/clang-r536225/bin/clang"
    image = "nubia-sm8850-kernel-builder:latest"
    expected = "PASS tpd_set_singleaodgesture contract test (5 checks)\n"
    cycles = []

    for number in (1, 2):
        cycle = args.build_root / f"cycle{number}"
        cycle.mkdir(parents=True, exist_ok=True)
        binary = cycle / "tpd_set_singleaodgesture_contract_test"
        command = [
            "docker", "run", "--rm", "--network", "none",
            "-v", f"{root / 'kernel_development/drivers'}:/drivers:ro",
            "-v", "nubia_sm8850_kernel_toolchains:/toolchains:ro",
            "-v", f"{cycle.resolve()}:/out",
            image, "bash", "-lc",
            f"{compiler} -std=gnu11 -O1 -g -Wall -Wextra -Werror "
            f"-fno-omit-frame-pointer -fno-pie -no-pie -fsanitize=address,undefined "
            f"-Wl,--build-id=none -I/drivers/reconstructed/zte_tpd "
            f"/drivers/validation/zte_tpd/host/tpd_set_singleaodgesture_contract_test.c "
            f"-o /out/tpd_set_singleaodgesture_contract_test"
        ]
        compiled = subprocess.run(command, text=True, capture_output=True, check=False)
        run = subprocess.run(
            ["docker", "run", "--rm", "--network", "none", "-v", f"{cycle.resolve()}:/out:ro", image, "/out/tpd_set_singleaodgesture_contract_test"],
            text=True, capture_output=True, check=False,
        ) if compiled.returncode == 0 else None
        cycles.append({
            "cycle": number,
            "compile_returncode": compiled.returncode,
            "compile_stderr": compiled.stderr,
            "run_returncode": None if run is None else run.returncode,
            "run_stdout": None if run is None else run.stdout,
            "run_stderr": None if run is None else run.stderr,
            "binary_sha256": None if not binary.is_file() else sha256(binary),
            "passed": compiled.returncode == 0 and run is not None and run.returncode == 0 and run.stdout == expected,
        })

    report = {
        "schema_version": 1,
        "driver": "zte_tpd",
        "target": "tpd_set_singleaodgesture",
        "mode": "offline_contract_model_asan_ubsan",
        "source": str(source),
        "source_sha256": sha256(root / "kernel_development/drivers/reconstructed/zte_tpd/tpd_set_singleaodgesture.c"),
        "expected_output": expected,
        "cycles": cycles,
        "reproducible_binary": len({c["binary_sha256"] for c in cycles}) == 1,
        "passed": all(c["passed"] for c in cycles),
        "status": "PASS" if all(c["passed"] for c in cycles) else "FAIL",
        "limitations": [
            "The harness validates the observed state offsets with fake memory.",
            "It does not execute the real touchscreen driver or hardware.",
            "AArch64 opcode, KCFI, Joern and canonical whole-module build are separate gates.",
        ],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {args.output}")
    return 0 if report["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
