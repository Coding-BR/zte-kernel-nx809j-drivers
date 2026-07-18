#!/usr/bin/env python3
"""Compile and execute the direct-source control-value callback harness."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path


SOURCE_FILES = (
    "set_lcd_reset_processing.c",
    "tpd_report_uevent.c",
    "tpd_reset_gpio_output.c",
)
EXPECTED_TESTS = 7


def sha256_file(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def resolve_layout(root: Path) -> tuple[Path, Path]:
    engineering_source = root / "curated" / "zte_tpd"
    if engineering_source.is_dir():
        return root / "validation" / "zte_tpd" / "harness", engineering_source
    repository_source = root / "kernel_development" / "drivers" / "reconstructed" / "zte_tpd"
    if repository_source.is_dir():
        return (
            root / "reverse_engineering" / "validation" / "reconstructed" / "zte_tpd" / "harness",
            repository_source,
        )
    raise FileNotFoundError(f"zte_tpd workspace layout not found under {root}")


def default_workspace() -> Path:
    script = Path(__file__).resolve()
    for candidate in (script.parents[1], script.parents[2]):
        try:
            resolve_layout(candidate)
            return candidate
        except FileNotFoundError:
            continue
    return script.parents[1]


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--engineering-root", type=Path, default=default_workspace())
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    parser.add_argument("--repetitions", type=int, default=2)
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()
    if args.repetitions < 1:
        parser.error("--repetitions must be at least 1")

    root = args.engineering_root.resolve()
    harness_dir, source_dir = resolve_layout(root)
    output = (args.output or harness_dir.parent / "control_value_harness_report.json").resolve()
    build_dir = harness_dir / "build"
    build_dir.mkdir(parents=True, exist_ok=True)
    harness_source = harness_dir / "control_value_harness.c"
    inputs = [harness_source, *(source_dir / name for name in SOURCE_FILES)]
    missing = [str(path) for path in inputs if not path.is_file()]
    if missing:
        raise FileNotFoundError("missing harness inputs: " + ", ".join(missing))

    container_root = "/work/workspace"
    container_source = f"{container_root}/{source_dir.relative_to(root).as_posix()}"
    container_harness = f"{container_root}/{harness_dir.relative_to(root).as_posix()}"
    clang = f"/work/toolchains/{args.clang_revision}/bin/clang"
    shell_command = (
        f"{clang} -std=gnu11 -O1 -Wall -Wextra -Werror "
        f"-Wno-unused-parameter -Wno-unused-variable -Wno-unused-function "
        f"-Wno-int-conversion -Wno-pointer-to-int-cast "
        f"-fsanitize=address,undefined -fno-omit-frame-pointer "
        f"-I{container_source} control_value_harness.c "
        f"-o build/control_value_harness "
        "&& ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 "
        "UBSAN_OPTIONS=halt_on_error=1 ./build/control_value_harness"
    )
    command = [
        "docker", "run", "--rm",
        "-v", f"{root}:{container_root}",
        "-v", f"{args.toolchain_volume}:/work/toolchains:ro",
        "-w", container_harness,
        args.image, "sh", "-lc", shell_command,
    ]
    executions = []
    for index in range(args.repetitions):
        completed = subprocess.run(command, text=True, capture_output=True, check=False)
        pass_lines = [line[5:] for line in completed.stdout.splitlines() if line.startswith("PASS ")]
        fail_lines = [line[5:] for line in completed.stdout.splitlines() if line.startswith("FAIL ")]
        summaries = [line for line in completed.stdout.splitlines() if line.startswith("SUMMARY ")]
        execution_passed = (
            completed.returncode == 0
            and len(pass_lines) == EXPECTED_TESTS
            and not fail_lines
            and bool(summaries)
        )
        executions.append({
            "index": index + 1,
            "passed": execution_passed,
            "returncode": completed.returncode,
            "stdout": completed.stdout,
            "stderr": completed.stderr,
            "tests_passed": pass_lines,
            "tests_failed": fail_lines,
            "summary": summaries[-1] if summaries else None,
        })

    passed = all(execution["passed"] for execution in executions)
    first = executions[0]
    report = {
        "schema_version": "1.0",
        "mode": "offline_direct_source_control_value_host_harness_asan_ubsan",
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "passed": passed,
        "command": command,
        "repetitions": args.repetitions,
        "executions": executions,
        "returncode": 0 if passed else next(
            (execution["returncode"] for execution in executions if execution["returncode"]),
            1,
        ),
        "tests": {
            "expected": EXPECTED_TESTS,
            "passed": first["tests_passed"],
            "failed": first["tests_failed"],
            "summary": first["summary"],
        },
        "coverage": {
            "direct_source_functions": 3,
            "source_files": list(SOURCE_FILES),
            "hardware_paths_exercised": False,
        },
        "inputs": [
            {"path": str(path), "size": path.stat().st_size, "sha256": sha256_file(path)}
            for path in inputs
        ],
        "limitations": [
            "The cdev storage, printk, stack-status register and kobject uevent are deterministic host stubs.",
            "The reset GPIO harness covers the null-callback safety branch; the non-null KCFI callback requires an AArch64 execution context.",
            "The harness validates recovered offsets, value masks and event selection, not electrical hardware.",
            "No ADB, fastboot, insmod, rmmod, SPI, IRQ, MMIO or partition operation is performed.",
        ],
    }
    output.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({
        "output": str(output),
        "passed": passed,
        "repetitions": args.repetitions,
        "tests": len(first["tests_passed"]),
        "functions": 3,
    }))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
