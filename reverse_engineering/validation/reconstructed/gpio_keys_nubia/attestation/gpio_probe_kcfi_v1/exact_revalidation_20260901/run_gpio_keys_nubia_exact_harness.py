#!/usr/bin/env python3
"""Refresh direct host evidence for exact-assembly gpio_keys functions.

The host programs model the function contracts with controlled kernel stubs;
the exact AArch64 body remains independently gated by the assembly/KCFI
reports.  The current exact source files are recorded as inputs so stale
microtask evidence cannot be silently reused after a source change.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path


FUNCTIONS = {
    "gpio_keys_attr_show_helper": "gpio_keys_attr_show_helper_host_test.c",
    "gpio_keys_attr_store_helper": "gpio_keys_attr_store_helper_host_test.c",
    "gpio_keys_close": "gpio_keys_close_host_test.c",
    "gpio_keys_gpio_isr": "gpio_keys_gpio_isr_host_test.c",
    "gpio_keys_gpio_report_event": "gpio_keys_gpio_report_event_host_test.c",
    "gpio_keys_gpio_work_func": "gpio_keys_gpio_work_func_host_test.c",
    "gpio_keys_shutdown": "gpio_keys_shutdown_host_test.c",
    "gpio_keys_open": "gpio_keys_open_host_test.c",
    "gpio_keys_probe": "gpio_keys_probe_host_test.c",
    "gpio_keys_quiesce_key": "gpio_keys_quiesce_key_host_test.c",
    "gpio_keys_resume": "gpio_keys_resume_host_test.c",
    "gpio_keys_show_GamekeyStatus": "gpio_keys_show_GamekeyStatus_host_test.c",
    "gpio_keys_show_disabled_keys": "gpio_keys_show_disabled_keys_host_test.c",
    "gpio_keys_show_disabled_switches": "gpio_keys_show_disabled_switches_host_test.c",
    "gpio_keys_show_keys": "gpio_keys_show_keys_host_test.c",
    "gpio_keys_show_switches": "gpio_keys_show_switches_host_test.c",
    "gpio_keys_store_GamekeyStatus": "gpio_keys_store_GamekeyStatus_host_test.c",
    "gpio_keys_store_disabled_keys": "gpio_keys_store_disabled_keys_host_test.c",
    "gpio_keys_store_disabled_switches": "gpio_keys_store_disabled_switches_host_test.c",
    "gpio_keys_suspend": "gpio_keys_suspend_host_test.c",
    "gpio_keys_irq_isr": "gpio_keys_irq_isr_host_test.c",
    "gpio_keys_irq_timer": "gpio_keys_irq_timer_host_test.c",
    "gpio_keys_init": "gpio_keys_lifecycle_host_test.c",
    "gpio_keys_exit": "gpio_keys_lifecycle_host_test.c",
}


def sha256_file(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def default_repository() -> Path:
    return Path(__file__).resolve().parents[2]


def run_one(source: Path, image: str, toolchain_volume: str, clang_revision: str) -> dict[str, object]:
    container_source = "/work/test.c"
    clang = f"/work/toolchains/{clang_revision}/bin/clang"
    command = [
        "docker", "run", "--rm",
        "-v", f"{source}:{container_source}:ro",
        "-v", f"{toolchain_volume}:/work/toolchains:ro",
        "-w", "/tmp",
        image, "sh", "-lc",
        f"{clang} -std=gnu11 -Wall -Wextra -Werror {container_source} "
        "-o test_harness && ./test_harness",
    ]
    completed = subprocess.run(command, text=True, capture_output=True, check=False)
    return {
        "source": str(source),
        "source_sha256": sha256_file(source),
        "command": command,
        "returncode": completed.returncode,
        "stdout": completed.stdout,
        "stderr": completed.stderr,
        "passed": completed.returncode == 0,
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repository", type=Path, default=default_repository())
    parser.add_argument("--function", action="append", choices=sorted(FUNCTIONS), required=True)
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()

    repository = args.repository.resolve()
    host_root = repository / "kernel_development/drivers/validation/gpio_keys_nubia/host"
    source_root = repository / "kernel_development/drivers/reconstructed/gpio_keys_nubia"
    selected = list(dict.fromkeys(args.function))
    harnesses = [host_root / FUNCTIONS[function] for function in selected]
    exact_sources = [source_root / f"{function}_exact.S" for function in selected]
    missing = [str(path) for path in [*harnesses, *exact_sources] if not path.is_file()]
    if missing:
        raise FileNotFoundError("missing harness/source: " + ", ".join(missing))

    tests = {
        function: run_one(host_root / FUNCTIONS[function], args.image, args.toolchain_volume, args.clang_revision)
        for function in selected
    }
    passed = all(bool(test["passed"]) for test in tests.values())
    inputs = [
        {"path": str(path), "size": path.stat().st_size, "sha256": sha256_file(path)}
        for path in [*harnesses, *exact_sources]
    ]
    report = {
        "schema_version": "1.0",
        "mode": "offline_direct_host_contract_harness_bound_to_current_exact_sources",
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "driver": "gpio_keys_nubia",
        "target": selected,
        "covered_functions": selected,
        "passed": passed,
        "status": "PASS" if passed else "FAIL",
        "tests": tests,
        "inputs": inputs,
        "limitations": [
            "The host programs execute controlled contract models, not kernel code or AArch64 assembly.",
            "The current exact .S files are bound as inputs; opcode, relocation, KCFI, and Docker module gates remain independent.",
            "No ADB, fastboot, insmod, rmmod, GPIO, IRQ, timer, MMIO, or smartphone operation is performed.",
        ],
    }
    output = args.output.resolve()
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"output": str(output), "passed": passed, "functions": selected}, sort_keys=True))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
