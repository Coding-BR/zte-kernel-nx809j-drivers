#!/usr/bin/env python3
"""Materialize a portable, function-scoped package from a full Ghidra export."""

from __future__ import annotations

import argparse
import hashlib
import json
import shutil
from pathlib import Path
from typing import Any


GENERATED_FILES = ("functions.jsonl", "strings.jsonl", "manifest.json")
GENERATED_DIRECTORIES = ("decompiled", "pcode")


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def read_json(path: Path) -> dict[str, Any]:
    payload = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(payload, dict):
        raise ValueError(f"JSON root is not an object: {path}")
    return payload


def read_jsonl(path: Path) -> list[dict[str, Any]]:
    rows = []
    for line_number, line in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
        if not line.strip():
            continue
        row = json.loads(line)
        if not isinstance(row, dict):
            raise ValueError(f"JSONL row {line_number} is not an object: {path}")
        rows.append(row)
    return rows


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8", newline="\n")


def clean_generated_output(output: Path) -> None:
    for name in GENERATED_DIRECTORIES:
        path = output / name
        if path.is_dir():
            shutil.rmtree(path)
    for name in GENERATED_FILES:
        path = output / name
        if path.is_file():
            path.unlink()


def materialize_scoped_export(
    source: Path,
    output: Path,
    requested_functions: list[str],
) -> dict[str, Any]:
    source = source.resolve()
    output = output.resolve()
    if source == output or source in output.parents:
        raise ValueError("output directory must be outside the source export")
    if len(requested_functions) != len(set(requested_functions)):
        raise ValueError("requested function names must be unique")
    if not requested_functions:
        raise ValueError("at least one function is required")

    manifest_path = source / "manifest.json"
    functions_path = source / "functions.jsonl"
    strings_path = source / "strings.jsonl"
    for path in (manifest_path, functions_path, strings_path):
        if not path.is_file():
            raise FileNotFoundError(path)

    source_manifest = read_json(manifest_path)
    rows = read_jsonl(functions_path)
    by_name: dict[str, list[dict[str, Any]]] = {}
    for row in rows:
        name = row.get("name")
        if isinstance(name, str):
            by_name.setdefault(name, []).append(row)

    selected = []
    for name in requested_functions:
        matches = by_name.get(name, [])
        if len(matches) != 1:
            raise ValueError(f"expected one Ghidra row for {name}, found {len(matches)}")
        row = matches[0]
        for key in ("decompiled_file", "pcode_file"):
            relative = row.get(key)
            if not isinstance(relative, str) or not relative:
                raise ValueError(f"{name} has no {key}")
            source_artifact = source / relative
            if not source_artifact.is_file():
                raise FileNotFoundError(source_artifact)
        selected.append(row)

    output.mkdir(parents=True, exist_ok=True)
    clean_generated_output(output)
    for row in selected:
        for key in ("decompiled_file", "pcode_file"):
            relative = Path(str(row[key]))
            destination = output / relative
            destination.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(source / relative, destination)
    shutil.copy2(strings_path, output / "strings.jsonl")
    write_text(
        output / "functions.jsonl",
        "".join(json.dumps(row, separators=(",", ":")) + "\n" for row in selected),
    )

    portable_manifest = {
        "schema_version": 1,
        "program": source_manifest.get("program"),
        "executable_format": source_manifest.get("executable_format"),
        "executable_md5": source_manifest.get("executable_md5"),
        "language": source_manifest.get("language"),
        "compiler_spec": source_manifest.get("compiler_spec"),
        "image_base": source_manifest.get("image_base"),
        "pointer_size": source_manifest.get("pointer_size"),
        "function_count": len(selected),
        "scope": requested_functions[0] if len(requested_functions) == 1 else requested_functions,
        "source_export_function_count": source_manifest.get("function_count"),
        "source_export_manifest_sha256": sha256_file(manifest_path),
    }
    write_text(output / "manifest.json", json.dumps(portable_manifest, indent=2) + "\n")
    return portable_manifest


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--source-export", type=Path, required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument("--function", action="append", required=True)
    args = parser.parse_args()
    manifest = materialize_scoped_export(
        args.source_export,
        args.output_dir,
        args.function,
    )
    print(json.dumps({"passed": True, "functions": manifest["function_count"]}))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
