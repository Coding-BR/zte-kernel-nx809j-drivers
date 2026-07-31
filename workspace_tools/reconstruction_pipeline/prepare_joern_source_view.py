#!/usr/bin/env python3
"""Create a hash-attested CPG input view without changing compiled sources.

Joern's C frontend can stop modeling a function after a preprocessor directive
inside its body.  The kernel build still consumes the untouched source tree.
This tool copies that tree into an analysis-only view and comments only those
function-local directives, retaining an auditable line-by-line transformation
record.  It is not a C preprocessor and must never be used as a build input.
"""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import re
import shutil
from pathlib import Path
from typing import Any


TEXT_SUFFIXES = {".c", ".h"}


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes().replace(b"\r\n", b"\n")).hexdigest()


def tree_hash(root: Path) -> dict[str, Any]:
    files = []
    digest = hashlib.sha256()
    for path in sorted(item for item in root.rglob("*") if item.is_file()):
        relative = path.relative_to(root).as_posix()
        file_digest = sha256(path) if path.suffix.lower() in TEXT_SUFFIXES else hashlib.sha256(path.read_bytes()).hexdigest()
        digest.update(relative.encode("utf-8"))
        digest.update(b"\0")
        digest.update(file_digest.encode("ascii"))
        digest.update(b"\n")
        files.append({"path": relative, "sha256": file_digest, "size": path.stat().st_size})
    return {"root": str(root.resolve()), "tree_sha256": digest.hexdigest(), "files": files}


def brace_delta(line: str) -> int:
    """Conservatively count braces outside line comments and string literals."""
    delta = 0
    quote = ""
    escaped = False
    index = 0
    while index < len(line):
        char = line[index]
        next_char = line[index + 1] if index + 1 < len(line) else ""
        if not quote and char == "/" and next_char == "/":
            break
        if quote:
            if escaped:
                escaped = False
            elif char == "\\":
                escaped = True
            elif char == quote:
                quote = ""
        elif char in {"'", '"'}:
            quote = char
        elif char == "{":
            delta += 1
        elif char == "}":
            delta -= 1
        index += 1
    return delta


def replace_aliases(line: str, aliases: dict[str, str]) -> str:
    """Expand only aliases that were defined inside the current function."""
    for name, value in aliases.items():
        line = re.sub(rf"\b{re.escape(name)}\b", value, line)
    return line


def normalize_source(path: Path, forced_include: str | None) -> list[dict[str, Any]]:
    original = path.read_text(encoding="utf-8")
    lines = original.splitlines(keepends=True)
    brace_depth = 0
    aliases: dict[str, str] = {}
    changes: list[dict[str, Any]] = []
    rendered: list[str] = []
    if forced_include and path.suffix.lower() == ".c":
        rendered.append(f'#include "{forced_include}"\n')
        changes.append({
            "kind": "forced_include",
            "line": 0,
            "original": "",
            "replacement": f'#include "{forced_include}"',
        })
    for line_number, line in enumerate(lines, start=1):
        stripped = line.lstrip()
        if brace_depth > 0 and stripped.startswith("#"):
            define = re.match(r"\s*#\s*define\s+([A-Za-z_]\w*)\s+(.+?)\s*$", line)
            undefine = re.match(r"\s*#\s*undef\s+([A-Za-z_]\w*)\s*$", line)
            if define:
                aliases[define.group(1)] = define.group(2)
            elif undefine:
                aliases.pop(undefine.group(1), None)
            replacement = "/* joern-source-view omitted function-local directive */\n"
            rendered.append(replacement)
            changes.append({
                "kind": "function_local_directive",
                "line": line_number,
                "original": line.rstrip("\r\n"),
                "replacement": replacement.rstrip("\n"),
            })
        else:
            rendered.append(replace_aliases(line, aliases) if brace_depth > 0 else line)
        brace_depth += brace_delta(line)
        if brace_depth <= 0:
            aliases.clear()
    if changes:
        path.write_text("".join(rendered), encoding="utf-8", newline="\n")
    return changes


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--source-root", type=Path, required=True)
    parser.add_argument("--output-root", type=Path, required=True)
    parser.add_argument("--report", type=Path, required=True)
    parser.add_argument(
        "--forced-include",
        help=(
            "header relative to --source-root that the real build force-includes "
            "for every C translation unit"
        ),
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    source_root = args.source_root.resolve()
    output_root = args.output_root.resolve()
    if not source_root.is_dir():
        raise FileNotFoundError(f"source root does not exist: {source_root}")
    if output_root.exists():
        raise FileExistsError(f"refusing to overwrite source view: {output_root}")
    if args.forced_include and not (source_root / args.forced_include).is_file():
        raise FileNotFoundError(
            f"forced include is not inside source root: {args.forced_include}"
        )

    shutil.copytree(source_root, output_root)
    changes: dict[str, list[dict[str, Any]]] = {}
    for path in sorted(output_root.rglob("*")):
        if path.is_file() and path.suffix.lower() in TEXT_SUFFIXES:
            file_changes = normalize_source(path, args.forced_include)
            if file_changes:
                changes[path.relative_to(output_root).as_posix()] = file_changes

    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "purpose": "analysis_only_joern_cpg_input",
        "build_input_prohibited": True,
        "forced_include": args.forced_include,
        "source": tree_hash(source_root),
        "source_view": tree_hash(output_root),
        "transformed_files": changes,
    }
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({
        "output": str(output_root),
        "report": str(args.report.resolve()),
        "transformed_files": len(changes),
        "transformed_directives": sum(len(items) for items in changes.values()),
    }, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
