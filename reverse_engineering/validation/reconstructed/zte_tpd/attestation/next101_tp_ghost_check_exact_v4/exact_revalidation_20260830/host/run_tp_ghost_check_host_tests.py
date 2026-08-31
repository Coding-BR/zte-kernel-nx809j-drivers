#!/usr/bin/env python3
"""Compile and execute the direct-source tp_ghost_check harness twice."""

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


DRIVER_SOURCE_C = pathlib.Path(
    "kernel_development/drivers/reconstructed/zte_tpd/tp_ghost_check.c"
)
DRIVER_SOURCE_ASM = pathlib.Path(
    "kernel_development/drivers/reconstructed/zte_tpd/tp_ghost_check_exact.S"
)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--build-root", type=pathlib.Path, required=True)
    parser.add_argument("--output", type=pathlib.Path, required=True)
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    args = parser.parse_args()
    source = pathlib.Path(__file__).with_name("tp_ghost_check_host_test.c").resolve()
    root = source.parents[3]
    repo_root = source.parents[5]
    if args.build_root.exists():
        shutil.rmtree(args.build_root)
    args.build_root.mkdir(parents=True)
    cycles = []
    for cycle in (1, 2):
        output = args.build_root / f"cycle{cycle}"
        output.mkdir()
        binary = output / "tp_ghost_check_host_test"
        result = subprocess.run([
            "docker", "run", "--rm", "-v", f"{root}:/drivers:ro",
            "-v", f"{output}:/out", args.image, "bash", "-lc",
            "gcc -std=gnu11 -O1 -g -Wall -Wextra -Werror -fno-omit-frame-pointer "
            "-fno-pie -no-pie -fsanitize=address,undefined -Wl,--build-id=none "
            "/drivers/validation/zte_tpd/host/tp_ghost_check_host_test.c "
            "-o /out/tp_ghost_check_host_test && /out/tp_ghost_check_host_test",
        ], text=True, capture_output=True, check=False)
        cycles.append({"cycle": cycle, "returncode": result.returncode,
                       "stdout": result.stdout, "stderr": result.stderr,
                       "sha256": sha256(binary) if binary.exists() else None,
                       "passed": result.returncode == 0 and not result.stderr})
    passed = all(c["passed"] for c in cycles) and len({c["sha256"] for c in cycles}) == 1
    report = {"schema_version": 1, "generated_at_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
              "target": "tp_ghost_check", "mode": "direct_source_asan_ubsan",
              "source": str(source), "source_sha256": sha256(source),
              "driver_source": str(repo_root / DRIVER_SOURCE_C),
              "driver_source_sha256": sha256(repo_root / DRIVER_SOURCE_C),
              "inputs": [
                  {"path": DRIVER_SOURCE_C.as_posix(),
                   "sha256": sha256(repo_root / DRIVER_SOURCE_C)},
                  {"path": DRIVER_SOURCE_ASM.as_posix(),
                   "sha256": sha256(repo_root / DRIVER_SOURCE_ASM)},
                  {"path": "kernel_development/drivers/validation/zte_tpd/host/"
                          "tp_ghost_check_host_test.c",
                   "sha256": sha256(source)},
              ],
              "covered_functions": ["tp_ghost_check"], "cycles": cycles,
              "reproducible_binary": len({c["sha256"] for c in cycles}) == 1,
              "passed": passed, "status": "PASS" if passed else "FAIL"}
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {args.output}")
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
