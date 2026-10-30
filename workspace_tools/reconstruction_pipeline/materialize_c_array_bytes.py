#!/usr/bin/env python3
"""Materialize one byte array from reconstructed C source as assembler data."""

from __future__ import annotations

import argparse
import re
from pathlib import Path


ARRAY_RE = re.compile(
    r"const\s+unsigned\s+char\s+(?P<name>[A-Za-z_][A-Za-z0-9_]*)\s*"
    r"\[(?P<size>\d+)\]\s*=\s*\{(?P<body>.*?)\};",
    re.DOTALL,
)
BYTE_RE = re.compile(r"0[xX](?P<byte>[0-9A-Fa-f]{1,2})\b")


def materialize(source: Path, name: str, output: Path, expected_size: int | None) -> int:
    text = source.read_text(encoding="utf-8")
    matches = [match for match in ARRAY_RE.finditer(text) if match.group("name") == name]
    if len(matches) != 1:
        raise ValueError(f"expected one array named {name!r}, found {len(matches)}")
    match = matches[0]
    declared_size = int(match.group("size"))
    values = [int(item.group("byte"), 16) for item in BYTE_RE.finditer(match.group("body"))]
    if expected_size is not None and declared_size != expected_size:
        raise ValueError(f"{name}: declared size {declared_size} != {expected_size}")
    if len(values) != declared_size:
        raise ValueError(f"{name}: parsed {len(values)} bytes != declared {declared_size}")
    lines = [f"// Materialized from {source.name}: {name}[{declared_size}]"]
    for index in range(0, len(values), 16):
        chunk = values[index : index + 16]
        lines.append(".byte " + ", ".join(f"0x{value:02x}" for value in chunk))
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text("\n".join(lines) + "\n", encoding="utf-8", newline="\n")
    print(f"WROTE {output} ({len(values)} bytes from {name})")
    return len(values)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--source", type=Path, required=True)
    parser.add_argument("--name", required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--expected-size", type=int)
    args = parser.parse_args()
    materialize(args.source, args.name, args.output, args.expected_size)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
