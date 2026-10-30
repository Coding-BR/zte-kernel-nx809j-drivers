#!/usr/bin/env python3
"""Run the bounded config-ID checker in the project Docker image."""

from __future__ import annotations

import argparse
import hashlib
import json
import pathlib
import subprocess


def sha256(path: pathlib.Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--build-root", type=pathlib.Path, required=True)
    parser.add_argument("--output", type=pathlib.Path, required=True)
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    args = parser.parse_args()

    source = pathlib.Path(__file__).resolve()
    repo_root = source.parents[5]
    args.build_root.mkdir(parents=True, exist_ok=True)
    cycles = []
    compile_command = (
        "gcc -std=gnu11 -O1 -g -Wall -Wextra -Werror -fno-omit-frame-pointer "
        "-fno-pie -no-pie -fsanitize=address,undefined -Wl,--build-id=none "
        "/drivers/kernel_development/drivers/validation/zte_tpd/host/"
        "syna_tcm_testing_0002_check_config_id_host_test.c "
        "-o /out/config_id_host_test && /out/config_id_host_test"
    )
    for cycle in (1, 2):
        output_dir = args.build_root / f"cycle{cycle}"
        output_dir.mkdir(parents=True, exist_ok=True)
        binary = output_dir / "config_id_host_test"
        result = subprocess.run(
            [
                "docker", "run", "--rm", "-v", f"{repo_root}:/drivers:ro",
                "-v", f"{output_dir}:/out", args.image, "bash", "-lc",
                compile_command,
            ],
            text=True,
            capture_output=True,
            check=False,
        )
        cycles.append(
            {
                "cycle": cycle,
                "returncode": result.returncode,
                "stdout": result.stdout,
                "stderr": result.stderr,
                "sha256": sha256(binary) if binary.exists() else None,
                "passed": result.returncode == 0 and not result.stderr,
            }
        )

    hashes = {cycle["sha256"] for cycle in cycles}
    reproducible = len(hashes) == 1 and None not in hashes
    passed = all(cycle["passed"] for cycle in cycles) and reproducible
    report = {
        "schema_version": 1,
        "target": "syna_tcm_testing_0002_check_config_id",
        "mode": "direct_source_asan_ubsan_host_oracle",
        "stock_contract": "Ghidra Assembly 0011da70",
        "expected_cases": 7,
        "cycles": cycles,
        "reproducible_binary": reproducible,
        "passed": passed,
        "status": "PASS" if passed else "FAIL",
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {args.output}")
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
