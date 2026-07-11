#!/usr/bin/env python3
"""Compile recovered headers against the configured Android kernel tree."""

from __future__ import annotations

import argparse
import datetime as dt
import json
import subprocess
import sys
from pathlib import Path


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--source-volume", default="nubia_sm8850_kernel_src")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--clang-revision", default="clang-r536225")
    parser.add_argument("--curated-root", type=Path, required=True)
    parser.add_argument("-o", "--output", type=Path, required=True)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    curated_root = args.curated_root.resolve()
    probe = curated_root / "tools" / "layout_header_probe.c"
    if not probe.is_file():
        raise ValueError(f"probe source not found: {probe}")

    common = "/work/src/kernel/kernel_platform/common"
    clang = f"/work/toolchains/{args.clang_revision}/bin/clang"
    command = [
        "docker",
        "run",
        "--rm",
        "-v",
        f"{args.source_volume}:/work/src:ro",
        "-v",
        f"{args.toolchain_volume}:/work/toolchains:ro",
        "-v",
        f"{curated_root}:/work/curated:ro",
        "-w",
        common,
        args.image,
        clang,
        "-fsyntax-only",
        "--target=aarch64-linux-gnu",
        "-nostdinc",
        "-D__KERNEL__",
        "-std=gnu11",
        "-fshort-wchar",
        "-funsigned-char",
        "-fno-common",
        "-fno-strict-aliasing",
        "-mgeneral-regs-only",
        "-Werror",
        "-Wno-unused-variable",
        "-I./arch/arm64/include",
        "-I./arch/arm64/include/generated",
        "-I./include",
        "-I./arch/arm64/include/uapi",
        "-I./arch/arm64/include/generated/uapi",
        "-I./include/uapi",
        "-I./include/generated/uapi",
        "-I/work/curated/headers",
        "-include",
        "./include/linux/compiler-version.h",
        "-include",
        "./include/linux/kconfig.h",
        "-include",
        "./include/linux/compiler_types.h",
        "/work/curated/tools/layout_header_probe.c",
    ]
    completed = subprocess.run(
        command,
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
        check=False,
    )
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "passed": completed.returncode == 0,
        "compiler": clang,
        "clang_revision": args.clang_revision,
        "command": command,
        "returncode": completed.returncode,
        "stdout": completed.stdout,
        "stderr": completed.stderr,
    }
    rendered = json.dumps(payload, indent=2, sort_keys=True) + "\n"
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(rendered, encoding="utf-8", newline="\n")
    print(json.dumps({"output": str(args.output), "passed": payload["passed"]}))
    return completed.returncode


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, RuntimeError, ValueError, subprocess.SubprocessError) as exc:
        print(f"error: {exc}", file=sys.stderr)
        raise SystemExit(2)
