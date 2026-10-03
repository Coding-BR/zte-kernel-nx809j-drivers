#!/usr/bin/env python3
"""Build and run the cleanup_module contract harness twice in Docker."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import pathlib
import subprocess

IMAGE = "nubia-sm8850-kernel-builder:latest"
TOOLCHAIN_VOLUME = "nubia_sm8850_kernel_toolchains"
CLANG = "/toolchains/clang-r536225/bin/clang"
EXPECTED_STDOUT = "PASS cleanup_module host tests (1 case)\n"
PRELUDE = """#define __int64 long long
#define __exit
struct platform_driver { unsigned long marker; };
extern struct platform_driver zte_touch_device_driver;
extern void platform_driver_unregister(struct platform_driver *);
"""


def sha256(path: pathlib.Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def execute(command: list[str]) -> subprocess.CompletedProcess[str]:
    return subprocess.run(command, check=False, text=True,
                          stdout=subprocess.PIPE, stderr=subprocess.PIPE)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--source", type=pathlib.Path,
                        default=pathlib.Path(__file__).parents[3] /
                        "reconstructed" / "zte_tpd" / "cleanup_module.c")
    parser.add_argument("--contract", type=pathlib.Path,
                        default=pathlib.Path(__file__).with_name("cleanup_module_contract_test.c"))
    parser.add_argument("--build-root", type=pathlib.Path, required=True)
    parser.add_argument("--output", type=pathlib.Path, required=True)
    args = parser.parse_args()

    source = args.source.resolve()
    contract = args.contract.resolve()
    build_root = args.build_root.resolve()
    output = args.output.resolve()
    if not source.is_file() or not contract.is_file():
        parser.error("cleanup_module source or contract test not found")
    if build_root.exists():
        parser.error(f"build root already exists: {build_root}")

    version = execute(["docker", "run", "--rm", "-v",
                       f"{TOOLCHAIN_VOLUME}:/toolchains:ro", IMAGE, CLANG, "--version"])
    if version.returncode:
        raise SystemExit(version.stderr.strip())

    build_root.mkdir(parents=True)
    transformed = build_root / "cleanup_module_under_test.c"
    source_text = source.read_text(encoding="utf-8")
    transformed.write_text(PRELUDE + source_text.replace('#include "defs.h"\n', ""),
                           encoding="utf-8", newline="\n")
    contract_copy = build_root / "cleanup_module_contract_test.c"
    contract_copy.write_bytes(contract.read_bytes())
    cycles = []
    for cycle in (1, 2):
        cycle_root = build_root / f"cycle{cycle}"
        cycle_root.mkdir()
        binary_name = "cleanup_module_host_test_asan_ubsan"
        binary = cycle_root / binary_name
        compile_command = [
            "docker", "run", "--rm", "-v", f"{build_root}:/output:ro", "-v",
            f"{cycle_root}:/binout", "-v", f"{TOOLCHAIN_VOLUME}:/toolchains:ro",
            IMAGE, CLANG, "-std=gnu11", "-O1", "-g", "-Wall", "-Wextra", "-Werror",
            "-fno-omit-frame-pointer", "-fno-pie", "-no-pie",
            "-frandom-seed=zte-tpd-target162-cleanup", "-ffile-prefix-map=/output=<output>",
            "-fsanitize=address,undefined", "-Wl,--build-id=none",
            "/output/cleanup_module_under_test.c", "/output/cleanup_module_contract_test.c",
            "-o", f"/binout/{binary_name}",
        ]
        compiled = execute(compile_command)
        run = execute(["docker", "run", "--rm", "-v", f"{cycle_root}:/output:ro",
                       IMAGE, f"/output/{binary_name}"]) if compiled.returncode == 0 else None
        passed = bool(run and run.returncode == 0 and run.stdout == EXPECTED_STDOUT
                      and run.stderr == "")
        cycles.append({
            "cycle": cycle,
            "compile_returncode": compiled.returncode,
            "compile_stderr": compiled.stderr,
            "run_returncode": run.returncode if run else None,
            "run_stdout": run.stdout if run else "",
            "run_stderr": run.stderr if run else "",
            "binary_sha256": sha256(binary) if binary.is_file() else None,
            "passed": passed,
        })

    hashes = [cycle["binary_sha256"] for cycle in cycles]
    reproducible = len(set(hashes)) == 1 and hashes[0] is not None
    passed = all(cycle["passed"] for cycle in cycles) and reproducible
    report = {
        "schema_version": 1,
        "generated_at_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "offline_direct_source_cleanup_module_asan_ubsan",
        "driver": "zte_tpd",
        "target": "cleanup_module",
        "covered_functions": ["cleanup_module", "syna_dev_module_exit", "zte_touch_deinit", "platform_driver_unregister"],
        "source": str(source),
        "source_sha256": sha256(source),
        "contract_source": str(contract),
        "contract_source_sha256": sha256(contract),
        "expected_cases": 1,
        "repetitions": 2,
        "cycles": cycles,
        "reproducible": reproducible,
        "reproducible_binary": reproducible,
        "passed": passed,
        "status": "PASS" if passed else "FAIL",
        "limitations": [
            "The harness uses deterministic stubs for module exit, touch deinit and driver unregister.",
            "No smartphone, module unload, SPI, IRQ, MMIO, firmware transport or hardware is exercised.",
        ],
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {output}")
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
