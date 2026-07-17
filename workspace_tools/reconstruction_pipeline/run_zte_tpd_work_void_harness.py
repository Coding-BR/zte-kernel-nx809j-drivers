#!/usr/bin/env python3
"""Compile and execute the direct-source zte_tpd work/void harness."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path


SOURCE_FILES = (
    *(f"tpd_id{index}_report_work.c" for index in range(10)),
    "ufp_single_tap_work.c",
    "ghost_check_reset.c",
    "tpd_clean_all_event.c",
    "cancel_report_lcd_state_delayed_work.c",
    "tpd_probe_work_deinit.c",
    "tpd_report_work_deinit.c",
    "tpd_resume_work_deinit.c",
    "tpd_workqueue_deinit.c",
    "tpd_probe_work_init.c",
    "tpd_resume_work_init.c",
    "tpd_proc_deinit.c",
    "tpd_reset_fw_data_pos_and_size.c",
    "tp_free_tp_firmware_data.c",
    "ufp_report_lcd_state.c",
    "ufp_report_lcd_state_work.c",
    "ufp_mac_exit.c",
    "zte_touch_pdev_unregister.c",
    "syna_hw_interface_exit.c",
    "syna_dev_module_exit.c",
    "cleanup_module.c",
)
EXPECTED_TESTS = 10


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


def parse_harness_output(stdout: str) -> tuple[list[str], list[str], str | None]:
    pass_lines = [line[5:] for line in stdout.splitlines() if line.startswith("PASS ")]
    fail_lines = [line[5:] for line in stdout.splitlines() if line.startswith("FAIL ")]
    summaries = [line for line in stdout.splitlines() if line.startswith("SUMMARY ")]
    return pass_lines, fail_lines, summaries[-1] if summaries else None


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
    output = (args.output or harness_dir.parent / "work_void_harness_report.json").resolve()
    build_dir = harness_dir / "build"
    build_dir.mkdir(parents=True, exist_ok=True)
    harness_source = harness_dir / "work_void_callbacks_harness.c"
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
        f"-I{container_source} work_void_callbacks_harness.c "
        f"-o build/work_void_callbacks_harness "
        "&& ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 "
        "UBSAN_OPTIONS=halt_on_error=1 ./build/work_void_callbacks_harness"
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
        pass_lines, fail_lines, summary = parse_harness_output(completed.stdout)
        execution_passed = (
            completed.returncode == 0
            and len(pass_lines) == EXPECTED_TESTS
            and not fail_lines
            and summary is not None
        )
        executions.append(
            {
                "index": index + 1,
                "passed": execution_passed,
                "returncode": completed.returncode,
                "stdout": completed.stdout,
                "stderr": completed.stderr,
                "tests_passed": pass_lines,
                "tests_failed": fail_lines,
                "summary": summary,
            }
        )
    passed = all(execution["passed"] for execution in executions)
    first = executions[0]

    report = {
        "schema_version": "1.0",
        "mode": "offline_direct_source_work_void_host_harness_asan_ubsan",
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "passed": passed,
        "command": command,
        "repetitions": args.repetitions,
        "executions": executions,
        "returncode": 0 if passed else next(
            (execution["returncode"] for execution in executions if execution["returncode"]),
            1,
        ),
        "stdout": first["stdout"],
        "stderr": first["stderr"],
        "coverage": {
            "direct_source_functions": len(SOURCE_FILES),
            "source_files": list(SOURCE_FILES),
            "hardware_paths_exercised": False,
        },
        "tests": {
            "expected": EXPECTED_TESTS,
            "passed": first["tests_passed"],
            "failed": first["tests_failed"],
            "summary": first["summary"],
        },
        "inputs": [
            {"path": str(path), "size": path.stat().st_size, "sha256": sha256_file(path)}
            for path in inputs
        ],
        "limitations": [
            "Kernel workqueue scheduling and concurrency are replaced by deterministic host calls.",
            "The harness validates recovered offsets, call order and branch effects, not electrical hardware behavior.",
            "Seven complex Synaptics work callbacks remain outside this harness and require a dedicated CFI-aware fixture.",
            "No ADB, fastboot, insmod, rmmod, SPI, IRQ, MMIO or partition operation is performed.",
        ],
    }
    output.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({
        "output": str(output),
        "passed": passed,
        "repetitions": args.repetitions,
        "tests": len(first["tests_passed"]),
        "functions": len(SOURCE_FILES),
    }))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
