#!/usr/bin/env python3
"""Run the dedicated offline ASAN/UBSAN contract for microtask 016."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path


HARNESS = "zte_touch_pdev_register_contract_test.c"
SOURCE = "zte_touch_pdev_register.c"
EXPECTED = 4


def sha256_file(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--engineering-root", type=Path, required=True)
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    parser.add_argument("--repetitions", type=int, default=2)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    if args.repetitions < 1:
        parser.error("--repetitions must be at least 1")

    root = args.engineering_root.resolve()
    host_dir = root / "kernel_development" / "drivers" / "validation" / "zte_tpd" / "host"
    source_dir = root / "kernel_development" / "drivers" / "reconstructed" / "zte_tpd"
    harness = host_dir / HARNESS
    source = source_dir / SOURCE
    missing = [str(path) for path in (harness, source) if not path.is_file()]
    if missing:
        raise FileNotFoundError("missing harness inputs: " + ", ".join(missing))
    (host_dir / "build").mkdir(parents=True, exist_ok=True)

    binary = "build/zte_touch_pdev_register_contract_test"
    clang = f"/work/toolchains/{args.clang_revision}/bin/clang"
    workdir = f"/work/workspace/{host_dir.relative_to(root).as_posix()}"
    command = [
        "docker", "run", "--rm", "-v", f"{root}:/work/workspace",
        "-v", f"{args.toolchain_volume}:/work/toolchains:ro",
        "-w", workdir, args.image, "sh", "-lc",
        f"{clang} -std=gnu11 -O1 -Wall -Wextra -Werror "
        f"-fsanitize=address,undefined -fno-omit-frame-pointer {HARNESS} "
        f"-o {binary} && ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 "
        f"UBSAN_OPTIONS=halt_on_error=1 ./{binary}",
    ]

    cycles = []
    for index in range(args.repetitions):
        result = subprocess.run(command, text=True, capture_output=True, check=False)
        passed = (
            result.returncode == 0
            and f"({EXPECTED} cases)" in result.stdout
            and not result.stderr
        )
        cycles.append({
            "cycle": index + 1,
            "returncode": result.returncode,
            "stdout": result.stdout,
            "stderr": result.stderr,
            "passed": passed,
        })

    report = {
        "schema_version": "1.0",
        "mode": "offline_direct_source_zte_touch_pdev_register_asan_ubsan",
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "driver": "zte_tpd",
        "microtask_id": "016_zte_touch_pdev_register",
        "function": "zte_touch_pdev_register",
        "expected_cases": EXPECTED,
        "repetitions": args.repetitions,
        "passed": all(cycle["passed"] for cycle in cycles),
        "coverage": {
            "allocation_failure": True,
            "platform_device_add_failure_and_release": True,
            "zero_return_success": True,
            "positive_add_return_normalized": True,
            "callback_slot_cleanup_and_installation": True,
            "hardware_paths_exercised": False,
        },
        "command": command,
        "inputs": [
            {"path": str(harness), "sha256": sha256_file(harness), "size": harness.stat().st_size},
            {"path": str(source), "sha256": sha256_file(source), "size": source.stat().st_size},
        ],
        "cycles": cycles,
        "limitations": [
            "platform_device allocation, add, release and printk are stubbed.",
            "The KCFI guard on dev.release is validated separately.",
            "No smartphone, platform bus or physical hardware is exercised.",
        ],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"output": str(args.output), "passed": report["passed"], "repetitions": args.repetitions, "tests": EXPECTED}))
    return 0 if report["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
