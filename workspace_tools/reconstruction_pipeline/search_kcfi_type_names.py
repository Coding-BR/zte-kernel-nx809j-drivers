#!/usr/bin/env python3
"""Search KCFI type IDs without compiling every candidate declaration.

LLVM 19 derives a KCFI type ID from the low 32 bits of xxHash64 over the
normalized Itanium type name. This tool expands named axes in a mangled-name
template and applies the same hash locally. It is an oracle accelerator, not
proof that a recovered C declaration is semantically correct.
"""

from __future__ import annotations

import argparse
import datetime as dt
import itertools
import json
from pathlib import Path
from typing import Iterable


MASK64 = (1 << 64) - 1
PRIME64_1 = 11400714785074694791
PRIME64_2 = 14029467366897019727
PRIME64_3 = 1609587929392839161
PRIME64_4 = 9650029242287828579
PRIME64_5 = 2870177450012600261


def rotate_left(value: int, count: int) -> int:
    return ((value << count) | (value >> (64 - count))) & MASK64


def xxh64_round(accumulator: int, value: int) -> int:
    accumulator = (accumulator + value * PRIME64_2) & MASK64
    accumulator = rotate_left(accumulator, 31)
    return (accumulator * PRIME64_1) & MASK64


def xxh64_merge_round(accumulator: int, value: int) -> int:
    accumulator ^= xxh64_round(0, value)
    return (accumulator * PRIME64_1 + PRIME64_4) & MASK64


def xxh64(data: bytes, seed: int = 0) -> int:
    length = len(data)
    offset = 0
    if length >= 32:
        v1 = (seed + PRIME64_1 + PRIME64_2) & MASK64
        v2 = (seed + PRIME64_2) & MASK64
        v3 = seed & MASK64
        v4 = (seed - PRIME64_1) & MASK64
        limit = length - 32
        while offset <= limit:
            v1 = xxh64_round(v1, int.from_bytes(data[offset : offset + 8], "little"))
            v2 = xxh64_round(v2, int.from_bytes(data[offset + 8 : offset + 16], "little"))
            v3 = xxh64_round(v3, int.from_bytes(data[offset + 16 : offset + 24], "little"))
            v4 = xxh64_round(v4, int.from_bytes(data[offset + 24 : offset + 32], "little"))
            offset += 32
        result = (
            rotate_left(v1, 1)
            + rotate_left(v2, 7)
            + rotate_left(v3, 12)
            + rotate_left(v4, 18)
        ) & MASK64
        for value in (v1, v2, v3, v4):
            result = xxh64_merge_round(result, value)
    else:
        result = (seed + PRIME64_5) & MASK64

    result = (result + length) & MASK64
    while offset + 8 <= length:
        lane = xxh64_round(0, int.from_bytes(data[offset : offset + 8], "little"))
        result ^= lane
        result = (rotate_left(result, 27) * PRIME64_1 + PRIME64_4) & MASK64
        offset += 8
    if offset + 4 <= length:
        result ^= (
            int.from_bytes(data[offset : offset + 4], "little") * PRIME64_1
        ) & MASK64
        result &= MASK64
        result = (rotate_left(result, 23) * PRIME64_2 + PRIME64_3) & MASK64
        offset += 4
    while offset < length:
        result ^= (data[offset] * PRIME64_5) & MASK64
        result &= MASK64
        result = (rotate_left(result, 11) * PRIME64_1) & MASK64
        offset += 1

    result ^= result >> 33
    result = (result * PRIME64_2) & MASK64
    result ^= result >> 29
    result = (result * PRIME64_3) & MASK64
    result ^= result >> 32
    return result & MASK64


def kcfi_type_id(mangled_type: str) -> int:
    return xxh64(mangled_type.encode("ascii")) & 0xFFFFFFFF


def encode_tag(tag: str) -> str:
    if not tag or not tag.replace("_", "a").isalnum():
        raise ValueError(f"invalid C tag: {tag!r}")
    return f"{len(tag)}{tag}"


def parse_assignment(value: str) -> tuple[str, str]:
    name, separator, payload = value.partition("=")
    if not separator or not name or not payload:
        raise argparse.ArgumentTypeError("expected NAME=VALUE")
    return name, payload


def read_tags(path: Path) -> list[str]:
    return sorted(
        {
            line.strip()
            for line in path.read_text(encoding="utf-8").splitlines()
            if line.strip() and not line.lstrip().startswith("#")
        }
    )


def generated_tags(tokens: list[str], max_parts: int) -> Iterable[str]:
    for count in range(1, max_parts + 1):
        for parts in itertools.product(tokens, repeat=count):
            yield "_".join(parts)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("target", help="target KCFI type ID")
    parser.add_argument("template", help="mangled-name template with {axis} fields")
    parser.add_argument("--tag-axis", action="append", default=[], type=parse_assignment)
    parser.add_argument("--value", action="append", default=[], type=parse_assignment)
    parser.add_argument("--generated-tag-axis")
    parser.add_argument("--token", action="append", default=[])
    parser.add_argument("--max-parts", type=int, default=3)
    parser.add_argument("--output", type=Path)
    parser.add_argument("--stop-after-match", action="store_true")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    target = int(args.target, 0) & 0xFFFFFFFF
    if args.max_parts < 1:
        raise ValueError("--max-parts must be positive")

    axes: dict[str, list[tuple[str, str]]] = {}
    for name, path_text in args.tag_axis:
        values = [(tag, encode_tag(tag)) for tag in read_tags(Path(path_text))]
        axes.setdefault(name, []).extend(values)
    for name, value in args.value:
        axes.setdefault(name, []).append((value, value))
    if args.generated_tag_axis:
        tokens = sorted(set(args.token))
        if not tokens:
            raise ValueError("--generated-tag-axis requires at least one --token")
        axes.setdefault(args.generated_tag_axis, []).extend(
            (tag, encode_tag(tag))
            for tag in generated_tags(tokens, args.max_parts)
        )
    if not axes:
        axes = {"_single": [("", "")]}

    names = sorted(axes)
    matches: list[dict[str, object]] = []
    checked = 0
    for values in itertools.product(*(axes[name] for name in names)):
        labels = {name: value[0] for name, value in zip(names, values)}
        encoded = {name: value[1] for name, value in zip(names, values)}
        if names == ["_single"]:
            mangled = args.template
        else:
            mangled = args.template.format(**encoded)
        type_id = kcfi_type_id(mangled)
        checked += 1
        if type_id != target:
            continue
        matches.append(
            {
                "axes": labels,
                "mangled_type": mangled,
                "type_id": f"0x{type_id:08x}",
            }
        )
        if args.stop_after_match:
            break

    report = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "offline_llvm_xxhash64_kcfi_name_search",
        "target_type_id": f"0x{target:08x}",
        "template": args.template,
        "axes": {name: len(values) for name, values in axes.items()},
        "candidates_checked": checked,
        "matches": matches,
        "passed": bool(matches),
        "limitations": [
            "A hash match resolves a normalized type name, not function semantics.",
            "The recovered declaration still requires binary, call-site and direct-test validation.",
        ],
    }
    rendered = json.dumps(report, indent=2, sort_keys=True) + "\n"
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(rendered, encoding="utf-8")
    else:
        print(rendered, end="")
    print(
        json.dumps(
            {
                "candidates_checked": checked,
                "matches": len(matches),
                "passed": bool(matches),
            },
            sort_keys=True,
        )
    )
    return 0 if matches else 1


if __name__ == "__main__":
    raise SystemExit(main())
