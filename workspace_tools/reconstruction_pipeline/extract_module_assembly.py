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


def docker_image_id(image: str) -> str | None:
    completed = subprocess.run(
        ["docker", "image", "inspect", image, "--format", "{{.Id}}"],
        check=False,
        capture_output=True,
        text=True,
    )
    return completed.stdout.strip() if completed.returncode == 0 else None


def read_function_specs(path: Path) -> list[dict[str, Any]]:
    specs: list[dict[str, Any]] = []
    blocks: list[tuple[str, int, int]] = []
    blocks_path = path.parent / "memory_blocks.jsonl"
    if blocks_path.is_file():
        with blocks_path.open("r", encoding="utf-8") as block_stream:
            for line in block_stream:
                if not line.strip():
                    continue
                block = json.loads(line)
                if block.get("execute") is not True:
                    continue
                try:
                    start = int(str(block["start"]), 16)
                    end = int(str(block["end"]), 16)
                except ValueError:
                    continue
                blocks.append(
                    (
                        str(block["name"]),
                        start,
                        end,
                    )
                )
    with path.open("r", encoding="utf-8") as stream:
        for line_number, line in enumerate(stream, 1):
            if not line.strip():
                continue
            record = json.loads(line)
            name = record.get("name") if isinstance(record, dict) else None
            if not isinstance(name, str) or not name:
                raise ValueError(f"{path}:{line_number}: missing function name")
            raw_entry = record.get("entry")
            entry = int(raw_entry, 16) if isinstance(raw_entry, str) else None
            section = None
            relative_entry = None
            if entry is not None:
                containing = [item for item in blocks if item[1] <= entry <= item[2]]
                if len(containing) == 1:
                    section, block_start, _block_end = containing[0]
                    relative_entry = entry - block_start
            body_bytes = record.get("body_bytes")
            specs.append(
                {
                    "name": name,
                    "entry": raw_entry,
                    "relative_entry": relative_entry,
                    "section": section,
                    "body_bytes": body_bytes if isinstance(body_bytes, int) else None,
                    "function_id": f"{name}@{raw_entry}" if raw_entry else name,
                }
            )
    return specs


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
) -> dict[str, list[tuple[str, int, int]]]:
    llvm_objdump = f"/toolchains/{clang_revision}/bin/llvm-objdump"
    command = docker_tool_command(
        module=module,
        tool=llvm_objdump,
        toolchain_volume=toolchain_volume,
        image=image,
        arguments=["-t"],
    )
    completed = subprocess.run(command, check=False, capture_output=True, text=True)
    if completed.returncode != 0:
        raise subprocess.SubprocessError(completed.stderr.strip() or "llvm-objdump -t failed")
    ranges: dict[str, list[tuple[str, int, int]]] = {}
    pattern = re.compile(
        r"^([0-9a-fA-F]+)\s+\S+\s+F\s+(\S+)\s+([0-9a-fA-F]+)\s+(.+)$"
    )
    for line in completed.stdout.splitlines():
        match = pattern.match(line)
        if not match:
            continue
        start = int(match.group(1), 16)
        section = match.group(2)
        size = int(match.group(3), 16)
        if size:
            ranges.setdefault(match.group(4), []).append((section, start, size))
    return ranges


def select_symbol_range(
    candidates: list[tuple[str, int, int]],
    section: str | None,
    relative_entry: int | None,
) -> tuple[str, int, int] | None:
    if section is not None and relative_entry is not None:
        exact = [item for item in candidates if item[0] == section and item[1] == relative_entry]
        if len(exact) == 1:
            return exact[0]
    if relative_entry is not None:
        exact = [item for item in candidates if item[1] == relative_entry]
        if len(exact) == 1:
            return exact[0]
    if section is not None:
        in_section = [item for item in candidates if item[0] == section]
        if len(in_section) == 1:
            return in_section[0]
    if len(candidates) == 1:
        return candidates[0]
    return None


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
    specs = [
        {
            "name": name,
            "entry": None,
            "relative_entry": None,
            "section": None,
            "body_bytes": None,
            "function_id": name,
        }
        for name in args.functions
    ]
    if args.functions_jsonl:
        specs.extend(read_function_specs(args.functions_jsonl.resolve()))
    unique_specs: list[dict[str, Any]] = []
    seen_ids: set[str] = set()
    for spec in specs:
        function_id = spec["function_id"]
        if function_id not in seen_ids:
            unique_specs.append(spec)
            seen_ids.add(function_id)
    specs = unique_specs
    if not specs:
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
    for index, spec in enumerate(specs):
        function = spec["name"]
        function_id = spec["function_id"]
        symbol_range = select_symbol_range(
            symbol_ranges.get(function, []), spec.get("section"), spec.get("relative_entry")
        )
        range_source = "elf_symbol"
        if symbol_range is None and spec.get("relative_entry") is not None and spec.get("body_bytes"):
            symbol_range = (
                spec.get("section") or "unknown",
                spec["relative_entry"],
                spec["body_bytes"],
            )
            range_source = "ghidra_body"
        arguments = ["-d", "-r"]
        if symbol_range:
            section, start, symbol_size = symbol_range
            if section != "unknown":
                arguments.append(f"--section={section}")
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
        addresses = [
            int(match.group(1), 16)
            for line in completed.stdout.splitlines()
            if (match := re.match(r"^\s*([0-9a-fA-F]+):\s+[0-9a-fA-F]{8}\s+", line))
        ]
        labels = [
            {"address": f"0x{int(match.group(1), 16):x}", "name": match.group(2)}
            for line in completed.stdout.splitlines()
            if (match := re.match(r"^\s*([0-9a-fA-F]+)\s+<([^>]+)>:$", line))
        ]
        found = completed.returncode == 0 and bool(addresses)
        label_match = any(item["name"] == function for item in labels)
        complete = bool(
            found
            and symbol_range
            and addresses
            and max(addresses) + 4 >= start + symbol_size
        )
        entry_suffix = f"_{safe_name(str(spec['entry']))}" if spec.get("entry") else ""
        filename = f"{index:04d}_{safe_name(function)}{entry_suffix}.asm"
        target = output_dir / filename
        target.write_text(completed.stdout, encoding="utf-8")
        if not complete:
            failures.append(function_id)
        records.append(
            {
                "function": function,
                "function_id": function_id,
                "ghidra_entry": spec.get("entry"),
                "section": section if symbol_range else spec.get("section"),
                "file": filename,
                "found": found,
                "label_match": label_match,
                "labels": labels,
                "complete": complete,
                "range_source": range_source if symbol_range else None,
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
        "mode": "offline_module_assembly",
        "source": {
            "path": str(module),
            "size": module.stat().st_size,
            "sha256": sha256_file(module),
        },
        "tool": {
            "image": args.image,
            "image_id": docker_image_id(args.image),
            "entrypoint": entrypoint,
            "toolchain_volume": args.toolchain_volume,
            "clang_revision": args.clang_revision,
        },
        "function_inventory": {
            "path": str(args.functions_jsonl.resolve()) if args.functions_jsonl else None,
            "sha256": sha256_file(args.functions_jsonl.resolve()) if args.functions_jsonl else None,
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
                "functions": len(specs),
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
