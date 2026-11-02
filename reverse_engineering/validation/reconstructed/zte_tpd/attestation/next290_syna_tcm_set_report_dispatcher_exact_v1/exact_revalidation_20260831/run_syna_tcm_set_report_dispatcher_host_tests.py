#!/usr/bin/env python3
"""Run the syna_tcm_set_report_dispatcher contract twice with sanitizers."""

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
    parser.add_argument("--compiler", required=True)
    parser.add_argument("--build-root", type=pathlib.Path, required=True)
    parser.add_argument("--output", type=pathlib.Path, required=True)
    args = parser.parse_args()

    runner = pathlib.Path(__file__).resolve()
    repo_root = runner.parents[5]
    driver_source = (repo_root / "kernel_development" / "drivers" /
                     "reconstructed" / "zte_tpd" /
                     "syna_tcm_set_report_dispatcher.c")
    test_source = "/workspace/kernel_development/drivers/validation/zte_tpd/host/syna_tcm_set_report_dispatcher_host_test.c"
    build_root = args.build_root.resolve()
    output = args.output.resolve()
    build_root.mkdir(parents=True, exist_ok=True)
    cycles = []

    for cycle in (1, 2):
        output_dir = build_root / f"cycle{cycle}"
        output_dir.mkdir(parents=True, exist_ok=True)
        binary = output_dir / "syna_tcm_set_report_dispatcher_host_test"
        binary_path = f"/workspace/{binary.relative_to(repo_root).as_posix()}"
        command = [
            args.compiler, "-std=gnu2x", "-O1", "-g", "-Wall", "-Wextra",
            "-Werror", "-Wno-c23-extensions", "-Wno-unused-variable",
            "-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
            "-fsanitize=address,undefined", "-fno-sanitize=alignment",
            "-Wl,--build-id=none", "-ffile-prefix-map=/workspace=<workspace>",
            test_source, "-o", binary_path,
        ]
        compile_result = subprocess.run(
            ["docker", "run", "--rm", "-v", f"{repo_root}:/workspace",
             "-v", "nubia_sm8850_kernel_toolchains:/toolchains:ro", "-w",
             "/workspace", "nubia-sm8850-kernel-builder:latest", *command],
            text=True, capture_output=True, check=False,
        )
        run_result = None
        if compile_result.returncode == 0:
            run_result = subprocess.run(
                ["docker", "run", "--rm", "-v", f"{repo_root}:/workspace",
                 "-v", "nubia_sm8850_kernel_toolchains:/toolchains:ro", "-w",
                 "/workspace", "nubia-sm8850-kernel-builder:latest", binary_path],
                text=True, capture_output=True, check=False,
            )
        compile_output = compile_result.stdout + compile_result.stderr
        run_stdout = run_result.stdout if run_result else ""
        run_stderr = run_result.stderr if run_result else ""
        passed = (
            compile_result.returncode == 0 and run_result is not None and
            run_result.returncode == 0 and
            run_stdout == "PASS syna_tcm_set_report_dispatcher host tests (2 cases)\n" and
            not compile_output and not run_stderr
        )
        cycles.append({
            "cycle": cycle,
            "compile_returncode": compile_result.returncode,
            "compile_stderr": compile_output,
            "run_returncode": run_result.returncode if run_result else None,
            "run_stdout": run_stdout,
            "run_stderr": run_stderr,
            "binary_sha256": sha256(binary) if binary.exists() else None,
            "passed": passed,
        })

    hashes = {cycle["binary_sha256"] for cycle in cycles}
    reproducible = len(hashes) == 1 and None not in hashes
    passed = all(cycle["passed"] for cycle in cycles) and reproducible
    report = {
        "schema_version": 1,
        "mode": "offline_direct_source_set_report_dispatcher_asan_ubsan",
        "driver": "zte_tpd",
        "target": "syna_tcm_set_report_dispatcher",
        "covered_functions": ["syna_tcm_set_report_dispatcher"],
        "source": test_source,
        "source_sha256": sha256(runner),
        "driver_source": "/workspace/kernel_development/drivers/reconstructed/zte_tpd/syna_tcm_set_report_dispatcher.c",
        "driver_source_sha256": sha256(driver_source),
        "sanitizers": ["address", "undefined"],
        "expected_cases": 2,
        "repetitions": 2,
        "cycles": cycles,
        "reproducible": reproducible,
        "reproducible_binary": reproducible,
        "passed": passed,
        "status": "PASS" if passed else "FAIL",
        "limitations": [
            "Kernel printk and dispatcher storage are exercised through host stubs; Android runtime and NX809J hardware remain outside this unit gate."
        ],
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {output}")
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
