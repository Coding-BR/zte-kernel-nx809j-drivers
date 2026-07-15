#!/usr/bin/env python3
"""Extract per-function AArch64 assembly from a kernel module in Docker."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import re
import subprocess
import sys
from pathlib import Path
from typing import Any


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def read_function_names(path: Path) -> list[str]:
    names: list[str] = []
    with path.open("r", encoding="utf-8") as stream:
        for line_number, line in enumerate(stream, 1):
            if not line.strip():
                continue
            record = json.loads(line)
            name = record.get("name") if isinstance(record, dict) else None
            if not isinstance(name, str) or not name:
                raise ValueError(f"{path}:{line_number}: missing function name")
            names.append(name)
    return names


def safe_name(value: str) -> str:
    return re.sub(r"[^A-Za-z0-9_.-]", "_", value)


def docker_tool_command(
    *, module: Path, tool: str, toolchain_volume: str, image: str, arguments: list[str]
) -> list[str]:
    return [
        "docker", "run", "--rm", "--entrypoint", tool,
        "-v", f"{module.parent}:/input:ro",
        "-v", f"{toolchain_volume}:/toolchains:ro",
        image, *arguments, f"/input/{module.name}",
    ]


def read_symbol_ranges(
    *, module: Path, image: str, toolchain_volume: str, clang_revision: str
) -> dict[str, tuple[int, int]]:
    llvm_nm = f"/toolchains/{clang_revision}/bin/llvm-nm"
    command = docker_tool_command(
        module=module,
        tool=llvm_nm,
        toolchain_volume=toolchain_volume,
        image=image,
        arguments=["-S", "--defined-only"],
    )
    completed = subprocess.run(command, check=False, capture_output=True, text=True)
    if completed.returncode != 0:
        raise subprocess.SubprocessError(completed.stderr.strip() or "llvm-nm failed")
    ranges: dict[str, tuple[int, int]] = {}
    pattern = re.compile(r"^([0-9a-fA-F]+)\s+([0-9a-fA-F]+)\s+\S\s+(.+)$")
    for line in completed.stdout.splitlines():
        match = pattern.match(line)
        if not match:
            continue
        start = int(match.group(1), 16)
        size = int(match.group(2), 16)
        if size:
            ranges[match.group(3)] = (start, size)
    return ranges


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("module", type=Path)
    parser.add_argument("--function", action="append", dest="functions", default=[])
    parser.add_argument("--functions-jsonl", type=Path)
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    module = args.module.resolve()
    if not module.is_file():
        raise FileNotFoundError(module)
    functions = list(args.functions)
    if args.functions_jsonl:
        functions.extend(read_function_names(args.functions_jsonl.resolve()))
    functions = list(dict.fromkeys(functions))
    if not functions:
        raise ValueError("at least one --function or --functions-jsonl is required")

    output_dir = args.output_dir.resolve()
    output_dir.mkdir(parents=True, exist_ok=True)
    records: list[dict[str, Any]] = []
    failures: list[str] = []
    entrypoint = f"/toolchains/{args.clang_revision}/bin/llvm-objdump"
    symbol_ranges = read_symbol_ranges(
        module=module,
        image=args.image,
        toolchain_volume=args.toolchain_volume,
        clang_revision=args.clang_revision,
    )
    for index, function in enumerate(functions):
        symbol_range = symbol_ranges.get(function)
        arguments = ["-d", "-r"]
        if symbol_range:
            start, symbol_size = symbol_range
            arguments.extend(
                [f"--start-address=0x{start:x}", f"--stop-address=0x{start + symbol_size:x}"]
            )
        else:
            start = symbol_size = 0
            arguments.append(f"--disassemble-symbols={function}")
        command = docker_tool_command(
            module=module,
            tool=entrypoint,
            toolchain_volume=args.toolchain_volume,
            image=args.image,
            arguments=arguments,
        )
        completed = subprocess.run(command, check=False, capture_output=True, text=True)
        found = completed.returncode == 0 and f"<{function}>:" in completed.stdout
        addresses = [
            int(match.group(1), 16)
            for line in completed.stdout.splitlines()
            if (match := re.match(r"^\s*([0-9a-fA-F]+):\s+[0-9a-fA-F]{8}\s+", line))
        ]
        complete = bool(
            found
            and symbol_range
            and addresses
            and max(addresses) + 4 >= start + symbol_size
        )
        filename = f"{index:04d}_{safe_name(function)}.asm"
        target = output_dir / filename
        target.write_text(completed.stdout, encoding="utf-8")
        if not complete:
            failures.append(function)
        records.append(
            {
                "function": function,
                "file": filename,
                "found": found,
                "complete": complete,
                "symbol_start": f"0x{start:x}" if symbol_range else None,
                "symbol_size": symbol_size if symbol_range else None,
                "last_instruction": f"0x{max(addresses):x}" if addresses else None,
                "returncode": completed.returncode,
                "stderr": completed.stderr,
                "size": target.stat().st_size,
                "sha256": sha256_file(target),
            }
        )

    manifest = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "offline_stock_assembly",
        "source": {
            "path": str(module),
            "size": module.stat().st_size,
            "sha256": sha256_file(module),
        },
        "tool": {
            "image": args.image,
            "entrypoint": entrypoint,
            "toolchain_volume": args.toolchain_volume,
        },
        "records": records,
        "failures": failures,
        "passed": not failures,
    }
    manifest_path = output_dir / "manifest.json"
    manifest_path.write_text(
        json.dumps(manifest, indent=2, sort_keys=True) + "\n", encoding="utf-8"
    )
    print(
        json.dumps(
            {
                "manifest": str(manifest_path),
                "functions": len(functions),
                "passed": not failures,
            },
            sort_keys=True,
        )
    )
    return 0 if not failures else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError, subprocess.SubprocessError) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(2)
