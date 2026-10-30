#!/usr/bin/env python3
"""Run the offline tpd_cdev/workqueue contract twice with sanitizers."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from pathlib import Path


ROOT = Path(__file__).resolve().parents[5]
HOST_SOURCE = Path(
    "kernel_development/drivers/validation/zte_tpd/host/"
    "syna_tpd_register_fw_class_host_test.c"
)
DRIVER_SOURCE = Path(
    "kernel_development/drivers/reconstructed/zte_tpd/"
    "syna_tpd_register_fw_class.c"
)
IMAGE = "nubia-sm8850-kernel-builder:latest"
EXPECTED = "syna_tpd_register_fw_class host contract: PASS\n"


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--build-root", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()
    if not (ROOT / HOST_SOURCE).is_file():
        parser.error(f"host source not found: {ROOT / HOST_SOURCE}")
    if not (ROOT / DRIVER_SOURCE).is_file():
        parser.error(f"driver source not found: {ROOT / DRIVER_SOURCE}")
    args.build_root.mkdir(parents=True, exist_ok=True)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    cycles: list[dict[str, object]] = []

    for cycle in (1, 2):
        cycle_root = args.build_root / f"cycle{cycle}"
        cycle_root.mkdir(parents=True, exist_ok=True)
        binary = "/out/host_test_asan_ubsan"
        compile_command = [
            "docker", "run", "--rm",
            "-v", f"{ROOT / 'kernel_development/drivers'}:/drivers:ro",
            "-v", f"{cycle_root}:/out", IMAGE, "bash", "-lc",
            "gcc -std=gnu11 -O1 -g -Wall -Wextra -Werror "
            "-Wno-pointer-to-int-cast -Wno-int-conversion "
            "-fno-omit-frame-pointer -fno-pie -no-pie "
            "-fsanitize=address,undefined -Wl,--build-id=none "
            f"/drivers/{HOST_SOURCE.relative_to('kernel_development/drivers').as_posix()} "
            f"-o {binary}",
        ]
        compiled = subprocess.run(compile_command, check=False, text=True, capture_output=True)
        run_command = ["docker", "run", "--rm", "-v", f"{cycle_root}:/out:ro", IMAGE, binary]
        executed = subprocess.run(run_command, check=False, text=True, capture_output=True) if compiled.returncode == 0 else None
        binary_path = cycle_root / "host_test_asan_ubsan"
        passed = (
            compiled.returncode == 0
            and executed is not None
            and executed.returncode == 0
            and executed.stdout == EXPECTED
            and not executed.stderr
            and binary_path.is_file()
        )
        cycles.append({
            "cycle": cycle,
            "compile_returncode": compiled.returncode,
            "compile_stderr": compiled.stderr,
            "run_returncode": None if executed is None else executed.returncode,
            "run_stdout": "" if executed is None else executed.stdout,
            "run_stderr": "" if executed is None else executed.stderr,
            "binary_sha256": sha256(binary_path) if binary_path.is_file() else None,
            "passed": passed,
        })

    hashes = {cycle["binary_sha256"] for cycle in cycles}
    passed = all(bool(cycle["passed"]) for cycle in cycles) and len(hashes) == 1 and None not in hashes
    report = {
        "schema_version": 1,
        "driver": "zte_tpd",
        "target": "syna_tpd_register_fw_class",
        "mode": "offline_fake_memory_asan_ubsan",
        "source": str(ROOT / HOST_SOURCE),
        "source_sha256": sha256(ROOT / HOST_SOURCE),
        "driver_source": str(ROOT / DRIVER_SOURCE),
        "driver_source_sha256": sha256(ROOT / DRIVER_SOURCE),
        "expected_output": EXPECTED,
        "cycles": cycles,
        "reproducible_binary": len(hashes) == 1 and None not in hashes,
        "passed": passed,
        "status": "PASS" if passed else "FAIL",
        "limitations": [
            "The harness validates offsets, callback stores and error branches with fake memory.",
            "It does not call the real power-supply framework or hardware.",
            "Assembly, KCFI and whole-module build remain separate gates.",
        ],
    }
    args.output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {args.output}")
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
