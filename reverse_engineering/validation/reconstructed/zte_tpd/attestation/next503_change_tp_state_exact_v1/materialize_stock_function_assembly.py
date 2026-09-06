#!/usr/bin/env python3
"""Materialize an extracted stock AArch64 function as relocatable .S."""

from __future__ import annotations

import argparse
import pathlib
import re


INSTRUCTION_RE = re.compile(r"^\s*[0-9a-f]+:\s+([0-9a-f]{8})\s")
RELOCATION_RE = re.compile(r"R_AARCH64_[A-Z0-9_]+\s+(.+?)\s*$")


def parse(path: pathlib.Path) -> list[tuple[str, list[tuple[str, str]]]]:
    records: list[tuple[str, list[tuple[str, str]]]] = []
    for line in path.read_text(encoding="utf-8").splitlines():
        instruction = INSTRUCTION_RE.match(line)
        if instruction:
            records.append((instruction.group(1), []))
            continue
        relocation = RELOCATION_RE.search(line)
        if relocation and records:
            kind = line[line.index("R_AARCH64_") :].split()[0]
            records[-1][1].append((kind, relocation.group(1)))
    if not records:
        raise SystemExit(f"no AArch64 instructions found in {path}")
    return records


def render(
    function: str,
    records: list[tuple[str, list[tuple[str, str]]]],
    rodata: str | None,
    kcfi_type_id: str | None,
) -> str:
    lines = [
        '.section .text,"ax",@progbits',
        ".align 2",
        f".global {function}",
        f".type {function}, %function",
    ]
    if kcfi_type_id:
        lines.append(f"    .word 0x{kcfi_type_id.removeprefix('0x')}")
    lines.append(f"{function}:")
    for word, relocations in records:
        lines.append(f"    .inst 0x{word}")
        for kind, target in relocations:
            lines.append(f"    .reloc .-4, {kind}, {target}")
    lines.append(f".size {function}, .-{function}")
    if rodata:
        lines.extend([
            "",
            '.section .rodata.str1.1,"aMS",@progbits,1',
            ".align 1",
            f'    .include "{rodata}"',
        ])
    return "\n".join(lines) + "\n"


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--assembly", type=pathlib.Path, required=True)
    parser.add_argument("--function", required=True)
    parser.add_argument("--output", type=pathlib.Path, required=True)
    parser.add_argument("--rodata-include")
    parser.add_argument("--kcfi-type-id")
    args = parser.parse_args()
    output = render(
        args.function,
        parse(args.assembly),
        args.rodata_include,
        args.kcfi_type_id,
    )
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(output, encoding="utf-8", newline="\n")
    print(f"WROTE {args.output} ({output.count('.inst ')} instructions)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
