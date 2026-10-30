#!/usr/bin/env python3
"""Compile the trim reconstruction as an isolated AArch64 input twice."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path


ROOT = Path(__file__).resolve().parents[5]
INPUT = Path("kernel_development/drivers/validation/zte_tpd/host/trim_aarch64_assembly_input.c")
IMAGE = "nubia-sm8850-kernel-builder:latest"
TOOLCHAIN_VOLUME = "nubia_sm8850_kernel_toolchains"
CLANG = "/toolchains/clang-r536225/bin/clang"


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def docker_compile(output: Path, mode: str) -> subprocess.CompletedProcess[str]:
    output_name = output.name
    command = [
        "docker", "run", "--rm",
        "-v", f"{ROOT}:/workspace:ro",
        "-v", f"{output.parent}:/out",
        "-v", f"{TOOLCHAIN_VOLUME}:/toolchains:ro",
        IMAGE, CLANG,
        "--target=aarch64-linux-android34", "-std=gnu11",
        "-O2", "-Wall", "-Wextra", "-Werror",
    ]
    if mode == "syntax":
        command += ["-fsyntax-only"]
    elif mode == "assembly":
        command += ["-fno-asynchronous-unwind-tables", "-S", "-o", f"/out/{output_name}"]
    elif mode == "object":
        command += ["-c", "-o", f"/out/{output_name}"]
    else:
        raise ValueError(mode)
    command.append(f"/workspace/{INPUT.as_posix()}")
    return subprocess.run(command, check=False, text=True, capture_output=True)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--build-root", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()
    args.build_root.mkdir(parents=True, exist_ok=True)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    cycles: list[dict[str, object]] = []

    for cycle in (1, 2):
        cycle_root = args.build_root / f"cycle{cycle}"
        cycle_root.mkdir(parents=True, exist_ok=True)
        assembly = cycle_root / "trim_candidate.s"
        obj = cycle_root / "trim_candidate.o"
        syntax = docker_compile(cycle_root / "unused", "syntax")
        assembly_result = docker_compile(assembly, "assembly") if syntax.returncode == 0 else None
        object_result = docker_compile(obj, "object") if syntax.returncode == 0 else None
        passed = (
            syntax.returncode == 0
            and assembly_result is not None and assembly_result.returncode == 0
            and object_result is not None and object_result.returncode == 0
            and assembly.is_file() and obj.is_file()
        )
        cycles.append({
            "cycle": cycle,
            "syntax_returncode": syntax.returncode,
            "syntax_stderr": syntax.stderr,
            "assembly_returncode": None if assembly_result is None else assembly_result.returncode,
            "assembly_stderr": "" if assembly_result is None else assembly_result.stderr,
            "object_returncode": None if object_result is None else object_result.returncode,
            "object_stderr": "" if object_result is None else object_result.stderr,
            "assembly_sha256": sha256(assembly) if assembly.is_file() else None,
            "object_sha256": sha256(obj) if obj.is_file() else None,
            "passed": passed,
        })

    assembly_hashes = {cycle["assembly_sha256"] for cycle in cycles}
    object_hashes = {cycle["object_sha256"] for cycle in cycles}
    passed = all(bool(cycle["passed"]) for cycle in cycles)
    report = {
        "schema_version": 1,
        "generated_at_utc": datetime.now(timezone.utc).isoformat(),
        "driver": "zte_tpd",
        "target": "trim",
        "mode": "standalone_aarch64_clang_input",
        "input": str(ROOT / INPUT),
        "input_sha256": sha256(ROOT / INPUT),
        "compiler": CLANG,
        "target_triple": "aarch64-linux-android34",
        "cycles": cycles,
        "reproducible_assembly": len(assembly_hashes) == 1 and None not in assembly_hashes,
        "reproducible_object": len(object_hashes) == 1 and None not in object_hashes,
        "passed": passed,
        "status": "PASS" if passed else "FAIL",
        "limitations": [
            "This is an isolated AArch64 translation unit, not a linked zte_tpd.ko.",
            "Kbuild, KCFI and exact stock opcode parity remain separate gates.",
        ],
    }
    args.output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"{report['status']}: {args.output}")
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
