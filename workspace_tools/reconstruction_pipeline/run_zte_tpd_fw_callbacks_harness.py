#!/usr/bin/env python3
"""Compile and execute the direct-source zte_tpd firmware callback harness."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path


SOURCE_FILES = (
    "tpd_get_wakegesture.c",
    "tpd_enable_wakegesture.c",
    "tpd_get_singlegamegesture.c",
    "tpd_set_singlegamegesture.c",
    "tpd_get_singleaodgesture.c",
    "tpd_set_singleaodgesture.c",
    "tpd_get_singlefpgesture.c",
    "tpd_set_singlefpgesture.c",
    "tpd_get_one_key.c",
    "tpd_set_one_key.c",
    "tpd_get_tp_report_rate.c",
    "tpd_get_sensibility_level.c",
    "tpd_set_sensibility_level.c",
    "tpd_test_cmd_show.c",
    "tpd_set_game_partition.c",
    "tpd_get_follow_hand_level.c",
    "tpd_get_stability_level.c",
    "tpd_get_rotation_limit_level.c",
    "tpd_get_play_game.c",
    "tpd_get_frame_data.c",
    "tpd_get_palm_mode.c",
    "tpd_set_palm_mode.c",
    "tpd_get_fake_sleep.c",
    "tpd_set_fake_sleep.c",
    "tpd_get_screen_off_awake.c",
    "tpd_set_screen_off_awake.c",
)


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
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()

    engineering_root = args.engineering_root.resolve()
    harness_dir, source_dir = resolve_layout(engineering_root)
    output = (args.output or harness_dir.parent / "fw_callbacks_harness_report.json").resolve()
    build_dir = harness_dir / "build"
    build_dir.mkdir(parents=True, exist_ok=True)
    harness_source = harness_dir / "fw_callbacks_harness.c"
    inputs = [harness_source, *(source_dir / name for name in SOURCE_FILES)]
    missing = [str(path) for path in inputs if not path.is_file()]
    if missing:
        raise FileNotFoundError("missing harness inputs: " + ", ".join(missing))

    container_root = "/work/workspace"
    container_source = f"{container_root}/{source_dir.relative_to(engineering_root).as_posix()}"
    container_harness = f"{container_root}/{harness_dir.relative_to(engineering_root).as_posix()}"
    clang = f"/work/toolchains/{args.clang_revision}/bin/clang"
    shell_command = (
        f"{clang} -std=gnu11 -O1 -Wall -Wextra -Werror "
        f"-Wno-unused-parameter -Wno-unused-but-set-variable "
        f"-fsanitize=address,undefined "
        f"-fno-omit-frame-pointer -I{container_source} "
        "fw_callbacks_harness.c -o build/fw_callbacks_harness "
        "&& ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 "
        "UBSAN_OPTIONS=halt_on_error=1 ./build/fw_callbacks_harness"
    )
    command = [
        "docker", "run", "--rm",
        "-v", f"{engineering_root}:{container_root}",
        "-v", f"{args.toolchain_volume}:/work/toolchains:ro",
        "-w", container_harness,
        args.image, "sh", "-lc", shell_command,
    ]
    completed = subprocess.run(command, text=True, capture_output=True, check=False)
    pass_lines = [line[5:] for line in completed.stdout.splitlines() if line.startswith("PASS ")]
    fail_lines = [line[5:] for line in completed.stdout.splitlines() if line.startswith("FAIL ")]
    summaries = [line for line in completed.stdout.splitlines() if line.startswith("SUMMARY ")]
    passed = completed.returncode == 0 and len(pass_lines) == 10 and not fail_lines and bool(summaries)

    report = {
        "schema_version": "1.0",
        "mode": "offline_direct_source_host_harness_asan_ubsan",
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "passed": passed,
        "command": command,
        "returncode": completed.returncode,
        "stdout": completed.stdout,
        "stderr": completed.stderr,
        "coverage": {
            "direct_source_functions": len(SOURCE_FILES),
            "source_files": list(SOURCE_FILES),
            "hardware_paths_exercised": False,
        },
        "tests": {
            "expected": 10,
            "passed": pass_lines,
            "failed": fail_lines,
            "summary": summaries[-1] if summaries else None,
        },
        "inputs": [
            {"path": str(path), "size": path.stat().st_size, "sha256": sha256_file(path)}
            for path in inputs
        ],
        "limitations": [
            "Printk is a no-op host stub and no kernel scheduler behavior is exercised.",
            "The harness validates observed memory-offset semantics, not the meaning of undocumented hardware fields.",
            "No ADB, fastboot, insmod, rmmod, SPI, IRQ, MMIO, or partition operation is performed.",
            "Hardware validation remains a separate controlled gate.",
        ],
    }
    output.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"output": str(output), "passed": passed, "tests": len(pass_lines)}))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
