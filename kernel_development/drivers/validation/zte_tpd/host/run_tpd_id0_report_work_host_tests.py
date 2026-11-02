#!/usr/bin/env python3
"""Compile and execute the tpd_id0_report_work host contract twice."""

from __future__ import annotations

import argparse
import hashlib
import json
import pathlib
import subprocess


def sha256(path: pathlib.Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--build-root", type=pathlib.Path, required=True)
    parser.add_argument("--output", type=pathlib.Path, required=True)
    args = parser.parse_args()
    root = pathlib.Path(__file__).resolve().parents[5]
    source = "/drivers/validation/zte_tpd/host/tpd_id0_report_work_host_test.c"
    cycles = []
    for number in (1, 2):
        cycle = args.build_root / f"cycle{number}"
        cycle.mkdir(parents=True, exist_ok=True)
        binary = cycle / "tpd_id0_report_work_host_test"
        command = [
            "docker", "run", "--rm", "--network", "none",
            "-v", f"{root / 'kernel_development/drivers'}:/drivers:ro",
            "-v", f"{cycle.resolve()}:/out", "nubia-sm8850-kernel-builder:latest",
            "bash", "-lc",
            "gcc -std=gnu11 -O1 -g -Wall -Wextra -Werror "
            "-fno-omit-frame-pointer -fno-pie -no-pie "
            "-fsanitize=address,undefined -Wl,--build-id=none "
            f"{source} -o /out/tpd_id0_report_work_host_test && "
            "/out/tpd_id0_report_work_host_test",
        ]
        result = subprocess.run(command, text=True, capture_output=True, check=False)
        cycles.append({
            "cycle": number,
            "returncode": result.returncode,
            "stdout": result.stdout,
            "stderr": result.stderr,
            "sha256": sha256(binary) if binary.is_file() else None,
            "passed": result.returncode == 0 and result.stdout ==
                      "PASS tpd_id0_report_work host tests (2 cases)\n" and
                      not result.stderr,
        })
    hashes = {item["sha256"] for item in cycles}
    passed = all(item["passed"] for item in cycles) and len(hashes) == 1 and None not in hashes
    report = {
        "schema_version": 1,
        "target": "tpd_id0_report_work",
        "mode": "direct_source_asan_ubsan",
        "cycles": cycles,
        "reproducible_binary": len(hashes) == 1 and None not in hashes,
        "passed": passed,
        "status": "PASS" if passed else "FAIL",
        "expected_cases": 2,
        "limitations": ["Hardware input device behavior remains a separate runtime gate."],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {args.output}")
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
