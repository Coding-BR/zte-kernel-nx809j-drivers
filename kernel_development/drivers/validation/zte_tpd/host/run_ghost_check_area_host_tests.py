#!/usr/bin/env python3
"""Compile and execute the ghost_check_area harness twice with sanitizers."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import pathlib
import shutil
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
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    args = parser.parse_args()
    source = pathlib.Path(__file__).with_name("ghost_check_area_host_test.c").resolve()
    root = source.parents[3]
    if args.build_root.exists():
        shutil.rmtree(args.build_root)
    args.build_root.mkdir(parents=True)
    cycles = []
    for cycle in (1, 2):
        output = args.build_root / f"cycle{cycle}"
        output.mkdir()
        binary = output / "ghost_check_area_host_test"
        result = subprocess.run([
            "docker", "run", "--rm", "-v", f"{root}:/drivers:ro",
            "-v", f"{output}:/out", args.image, "bash", "-lc",
            "gcc -std=gnu11 -O1 -g -Wall -Wextra -Werror -fno-omit-frame-pointer "
            "-fno-pie -no-pie -fsanitize=address,undefined -Wl,--build-id=none "
            "/drivers/validation/zte_tpd/host/ghost_check_area_host_test.c "
            "-o /out/ghost_check_area_host_test && /out/ghost_check_area_host_test",
        ], text=True, capture_output=True, check=False)
        cycles.append({"cycle": cycle, "returncode": result.returncode,
                       "stdout": result.stdout, "stderr": result.stderr,
                       "sha256": sha256(binary) if binary.exists() else None,
                       "passed": result.returncode == 0 and not result.stderr})
    reproducible = len({cycle["sha256"] for cycle in cycles}) == 1
    passed = all(cycle["passed"] for cycle in cycles) and reproducible
    report = {"schema_version": 1, "generated_at_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
              "target": "ghost_check_area", "mode": "direct_source_asan_ubsan",
              "stock_contract": "Ghidra pseudocode 0010f2ac", "expected_cases": 4,
              "cycles": cycles, "reproducible_binary": reproducible,
              "passed": passed, "status": "PASS" if passed else "FAIL"}
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {args.output}")
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
