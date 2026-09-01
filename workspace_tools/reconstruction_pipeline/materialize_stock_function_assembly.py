#!/usr/bin/env python3
"""Materialize an extracted stock AArch64 function as relocatable .S."""

from __future__ import annotations

import argparse
import pathlib
import re


INSTRUCTION_RE = re.compile(r"^\s*[0-9a-f]+:\s+([0-9a-f]{8})\s")
LOCAL_CALL_RE = re.compile(r"\bbl\s+0x[0-9a-f]+\s+<([^>]+)>")
RELOCATION_RE = re.compile(r"R_AARCH64_[A-Z0-9_]+\s+(.+?)\s*$")


def parse(
    path: pathlib.Path,
    function: str,
    relocate_local_calls: bool,
) -> list[tuple[str, list[tuple[str, str]]]]:
    records: list[tuple[str, list[tuple[str, str]]]] = []
    for line in path.read_text(encoding="utf-8").splitlines():
        instruction = INSTRUCTION_RE.match(line)
        if instruction:
            records.append((instruction.group(1), []))
            if relocate_local_calls:
                call = LOCAL_CALL_RE.search(line)
                if call:
                    target = call.group(1)
                    if not target.startswith(f"{function}+"):
                        records[-1][1].append(("R_AARCH64_CALL26", target))
            continue
        relocation = RELOCATION_RE.search(line)
        if relocation and records:
            kind = line[line.index("R_AARCH64_") :].split()[0]
            item = (kind, relocation.group(1))
            if item not in records[-1][1]:
                records[-1][1].append(item)
    if not records:
        raise SystemExit(f"no AArch64 instructions found in {path}")
    return records


def render(
    function: str,
    records: list[tuple[str, list[tuple[str, str]]]],
    rodata: str | None,
    kcfi_type_id: str | None,
    section_base_prefix: str | None,
    relocation_aliases: dict[str, str],
    encoded_local_call_targets: dict[str, int],
    function_text_offset: int,
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
    for index, (word, relocations) in enumerate(records):
        encoded_word = int(word, 16)
        for kind, target in relocations:
            if kind == "R_AARCH64_CALL26" and target in encoded_local_call_targets:
                target_offset = encoded_local_call_targets[target]
                pc_offset = function_text_offset + index * 4
                delta = target_offset - pc_offset
                if delta % 4 != 0 or not -(1 << 27) <= delta < (1 << 27):
                    raise SystemExit(
                        f"local CALL26 target out of range or unaligned: "
                        f"{target} pc=0x{pc_offset:x} target=0x{target_offset:x}"
                    )
                encoded_word = 0x94000000 | ((delta // 4) & 0x03FFFFFF)
                break
        lines.append(f"    .inst 0x{encoded_word:08x}")
        for kind, target in relocations:
            if section_base_prefix:
                if target.startswith(".rodata.str1.1"):
                    target = (
                        f"{section_base_prefix}_rodata_str_base"
                        + target.removeprefix(".rodata.str1.1")
                    )
                elif target.startswith(".rodata"):
                    target = (
                        f"{section_base_prefix}_rodata_base"
                        + target.removeprefix(".rodata")
                    )
                elif target.startswith(".bss"):
                    target = (
                        f"{section_base_prefix}_bss_base"
                        + target.removeprefix(".bss")
                    )
                elif target.startswith(".codetag.alloc_tags"):
                    target = (
                        f"{section_base_prefix}_codetag_base"
                        + target.removeprefix(".codetag.alloc_tags")
                    )
                elif target.startswith(".data"):
                    target = (
                        f"{section_base_prefix}_data_base"
                        + target.removeprefix(".data")
                    )
            target = relocation_aliases.get(target, target)
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
    parser.add_argument(
        "--section-base-prefix",
        help=(
            "rewrite .rodata/.rodata.str1.1/.bss/.codetag.alloc_tags targets "
            "to named absolute bases PREFIX_rodata_base, PREFIX_rodata_str_base, "
            "PREFIX_bss_base, PREFIX_codetag_base and PREFIX_data_base"
        ),
    )
    parser.add_argument(
        "--relocate-local-calls",
        action="store_true",
        help="recreate CALL26 relocations for linked local helper calls",
    )
    parser.add_argument(
        "--relocation-alias",
        action="append",
        default=[],
        metavar="SOURCE=TARGET",
        help="replace one rendered relocation target with an audited symbol",
    )
    parser.add_argument(
        "--encode-local-call-target",
        action="append",
        default=[],
        metavar="SYMBOL=TEXT_OFFSET",
        help=(
            "encode a local CALL26 instruction for Ghidra's raw ELF loader while "
            "retaining its explicit relocation; TEXT_OFFSET is relative to .text"
        ),
    )
    parser.add_argument(
        "--function-text-offset",
        type=lambda value: int(value, 0),
        default=0,
        help="function entry offset relative to .text for local CALL26 encoding",
    )
    args = parser.parse_args()
    relocation_aliases: dict[str, str] = {}
    for item in args.relocation_alias:
        source, separator, target = item.partition("=")
        if not separator or not source or not target:
            parser.error(f"invalid --relocation-alias: {item!r}")
        relocation_aliases[source] = target
    encoded_local_call_targets: dict[str, int] = {}
    for item in args.encode_local_call_target:
        source, separator, target = item.partition("=")
        if not separator or not source or not target:
            parser.error(f"invalid --encode-local-call-target: {item!r}")
        try:
            encoded_local_call_targets[source] = int(target, 0)
        except ValueError:
            parser.error(f"invalid local call TEXT_OFFSET: {item!r}")
    output = render(
        args.function,
        parse(args.assembly, args.function, args.relocate_local_calls),
        args.rodata_include,
        args.kcfi_type_id,
        args.section_base_prefix,
        relocation_aliases,
        encoded_local_call_targets,
        args.function_text_offset,
    )
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(output, encoding="utf-8", newline="\n")
    print(f"WROTE {args.output} ({output.count('.inst ')} instructions)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
