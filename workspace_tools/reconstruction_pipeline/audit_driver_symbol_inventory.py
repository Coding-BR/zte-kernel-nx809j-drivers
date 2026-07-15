#!/usr/bin/env python3
"""Audit stock/candidate kernel-module symbols and source-to-Ghidra coverage."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import re
import subprocess
import sys
from collections import Counter
from pathlib import Path
from typing import Any


TEXT_TYPES = frozenset("tTwW")
KCFI_PREFIXES = ("__kcfi_typeid_", "__cfi_", "__pfx_")
GENERATED_SOURCE_NAMES = {"globals", "offset_test"}


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def read_jsonl(path: Path) -> list[dict[str, Any]]:
    records: list[dict[str, Any]] = []
    with path.open("r", encoding="utf-8") as stream:
        for line_number, line in enumerate(stream, 1):
            if not line.strip():
                continue
            value = json.loads(line)
            if not isinstance(value, dict):
                raise ValueError(f"{path}:{line_number}: expected a JSON object")
            records.append(value)
    return records


def run_llvm_nm(
    module: Path,
    *,
    defined: bool,
    image: str,
    toolchain_volume: str,
    clang_revision: str,
) -> list[dict[str, str]]:
    mode = "--defined-only" if defined else "--undefined-only"
    command = [
        "docker",
        "run",
        "--rm",
        "--entrypoint",
        f"/toolchains/{clang_revision}/bin/llvm-nm",
        "-v",
        f"{module.parent.resolve()}:/input:ro",
        "-v",
        f"{toolchain_volume}:/toolchains:ro",
        image,
        mode,
        "--format=posix",
        f"/input/{module.name}",
    ]
    completed = subprocess.run(command, check=True, capture_output=True, text=True)
    symbols: list[dict[str, str]] = []
    for line in completed.stdout.splitlines():
        fields = line.split()
        if len(fields) >= 2:
            symbols.append({"name": fields[0], "type": fields[1]})
    return symbols


def symbol_type_counts(symbols: list[dict[str, str]]) -> list[dict[str, Any]]:
    return [
        {"type": symbol_type, "count": count}
        for symbol_type, count in sorted(
            Counter(item["type"] for item in symbols).items(),
            key=lambda item: (item[0].lower(), item[0].isupper()),
        )
    ]


def text_names(symbols: list[dict[str, str]], *, include_kcfi: bool) -> set[str]:
    names = {item["name"] for item in symbols if item["type"] in TEXT_TYPES}
    if not include_kcfi:
        names = {name for name in names if not name.startswith(KCFI_PREFIXES)}
    return names


def classify_extra_symbol(name: str) -> str:
    if name.startswith("sub_"):
        return "decompiler_subroutine"
    if name.startswith("wrap_"):
        return "signature_wrapper"
    if re.search(r"_[0-9]+$", name):
        return "duplicate_renamed"
    return "other"


def source_has_function(path: Path, function_name: str) -> bool:
    text = path.read_text(encoding="utf-8", errors="replace")
    return re.search(rf"\b{re.escape(function_name)}\s*\(", text) is not None


def source_coverage(
    source_dir: Path, ghidra_rows: list[dict[str, Any]]
) -> tuple[dict[str, Any], list[dict[str, Any]]]:
    source_files = {
        path.stem: path
        for path in source_dir.glob("*.c")
        if path.stem not in GENERATED_SOURCE_NAMES and not path.name.endswith(".mod.c")
    }
    ghidra_names = [str(row.get("name", "")) for row in ghidra_rows]
    ghidra_name_set = set(ghidra_names)
    mappings: list[dict[str, Any]] = []
    missing: list[dict[str, Any]] = []
    exact_count = 0
    token_count = 0

    for row in ghidra_rows:
        name = str(row.get("name", ""))
        source = source_files.get(name)
        token_found = bool(source and source_has_function(source, name))
        exact_count += int(source is not None)
        token_count += int(token_found)
        record = {
            "stock_entry": row.get("entry"),
            "stock_function": name,
            "stock_body_bytes": row.get("body_bytes"),
            "stock_pseudocode": row.get("decompiled_file"),
            "source_file": source.name if source else "",
            "source_function": name if source else "",
            "function_token_found": token_found,
            "status": "todo",
            "evidence": [
                "automated filename/token match only; independent pseudocode and P-Code review required"
            ] if source else [],
        }
        mappings.append(record)
        if not source or not token_found:
            missing.append(record)

    duplicates = [
        {"stock_function": name, "count": count}
        for name, count in sorted(Counter(ghidra_names).items())
        if count > 1
    ]
    extras = sorted(set(source_files) - ghidra_name_set)
    coverage = {
        "ghidra_function_rows": len(ghidra_rows),
        "ghidra_unique_function_names": len(ghidra_name_set),
        "source_units": len(source_files),
        "exact_filename_matches": exact_count,
        "function_token_matches": token_count,
        "missing_or_unconfirmed": missing,
        "duplicate_ghidra_names": duplicates,
        "extra_source_units": extras,
        "complete": not missing,
    }
    return coverage, mappings


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--stock", type=Path, required=True)
    parser.add_argument("--candidate", type=Path, required=True)
    parser.add_argument("--ghidra-functions", type=Path, required=True)
    parser.add_argument("--source-dir", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--draft-map", type=Path)
    parser.add_argument("--driver")
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    parser.add_argument("--strict", action="store_true")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    stock = args.stock.resolve()
    candidate = args.candidate.resolve()
    source_dir = args.source_dir.resolve()
    ghidra_path = args.ghidra_functions.resolve()
    for path in (stock, candidate, ghidra_path, source_dir):
        if not path.exists():
            raise FileNotFoundError(path)

    nm_options = {
        "image": args.image,
        "toolchain_volume": args.toolchain_volume,
        "clang_revision": args.clang_revision,
    }
    stock_defined = run_llvm_nm(stock, defined=True, **nm_options)
    candidate_defined = run_llvm_nm(candidate, defined=True, **nm_options)
    stock_undefined = run_llvm_nm(stock, defined=False, **nm_options)
    candidate_undefined = run_llvm_nm(candidate, defined=False, **nm_options)

    stock_text = text_names(stock_defined, include_kcfi=False)
    candidate_text = text_names(candidate_defined, include_kcfi=False)
    missing_text = sorted(stock_text - candidate_text)
    extra_text = sorted(candidate_text - stock_text)
    stock_imports = {item["name"] for item in stock_undefined}
    candidate_imports = {item["name"] for item in candidate_undefined}
    missing_imports = sorted(stock_imports - candidate_imports)
    unexpected_imports = sorted(candidate_imports - stock_imports)
    extra_classes = Counter(classify_extra_symbol(name) for name in extra_text)

    ghidra_rows = read_jsonl(ghidra_path)
    coverage, mappings = source_coverage(source_dir, ghidra_rows)
    checks = {
        "stock_text_symbols_present": not missing_text,
        "no_extra_text_symbols": not extra_text,
        "undefined_symbols_match": not missing_imports and not unexpected_imports,
        "source_coverage_complete": coverage["complete"],
    }
    passed = all(checks.values())
    driver = args.driver or candidate.stem
    generated = dt.datetime.now(dt.timezone.utc).isoformat()
    payload = {
        "schema_version": "1.0",
        "generated_utc": generated,
        "driver": driver,
        "mode": "offline_docker_symbol_inventory",
        "stock": {
            "path": str(stock),
            "size": stock.stat().st_size,
            "sha256": sha256_file(stock),
            "defined_count": len(stock_defined),
            "defined_type_counts": symbol_type_counts(stock_defined),
            "non_kcfi_text_count": len(stock_text),
            "undefined_count": len(stock_imports),
        },
        "candidate": {
            "path": str(candidate),
            "size": candidate.stat().st_size,
            "sha256": sha256_file(candidate),
            "defined_count": len(candidate_defined),
            "defined_type_counts": symbol_type_counts(candidate_defined),
            "non_kcfi_text_count": len(candidate_text),
            "undefined_count": len(candidate_imports),
        },
        "text_symbol_delta": {
            "missing": missing_text,
            "extra": extra_text,
            "extra_class_counts": dict(sorted(extra_classes.items())),
        },
        "undefined_symbol_delta": {
            "missing": missing_imports,
            "unexpected": unexpected_imports,
        },
        "source_coverage": coverage,
        "checks": checks,
        "passed": passed,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")

    if args.draft_map:
        draft = {
            "schema_version": "1.0-draft",
            "driver": driver,
            "generated_utc": generated,
            "review_state": "automated_draft_not_independently_reviewed",
            "stock_module": str(stock),
            "stock_sha256": payload["stock"]["sha256"],
            "ghidra_functions": str(ghidra_path),
            "instructions": [
                "Do not rename this file to reconstruction_map.json until every mapping is reviewed.",
                "Review pseudocode and P-Code, verify signatures and attach hash-backed evidence.",
                "Set status to reviewed only after independent review and direct tests.",
            ],
            "mappings": mappings,
        }
        args.draft_map.parent.mkdir(parents=True, exist_ok=True)
        args.draft_map.write_text(json.dumps(draft, indent=2, sort_keys=True) + "\n", encoding="utf-8")

    print(json.dumps({"output": str(args.output), "driver": driver, "passed": passed}, sort_keys=True))
    return 0 if passed or not args.strict else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError, subprocess.SubprocessError) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(2)
