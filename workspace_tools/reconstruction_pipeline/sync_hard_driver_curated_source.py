#!/usr/bin/env python3
"""Hash-sync a reconstructed hard driver's versioned tree to Docker curated/."""

from __future__ import annotations

import argparse
import hashlib
import json
import re
import shutil
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


GENERATED_NAMES = {"Module.symvers", "modules.order"}
GENERATED_SUFFIXES = {".o", ".ko", ".mod", ".cmd"}
ROOT = Path(__file__).resolve().parents[2]


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def source_tree_record(root: Path) -> dict[str, Any]:
    records = []
    aggregate = hashlib.sha256()
    for path in sorted(root.rglob("*"), key=lambda item: item.relative_to(root).as_posix()):
        if (
            not path.is_file()
            or path.name in GENERATED_NAMES
            or path.suffix in GENERATED_SUFFIXES
            or path.name.endswith(".mod.c")
        ):
            continue
        relative = path.relative_to(root).as_posix()
        digest = sha256_file(path)
        size = path.stat().st_size
        records.append({"file": relative, "size_bytes": size, "sha256": digest})
        aggregate.update(relative.encode("utf-8"))
        aggregate.update(b"\0")
        aggregate.update(digest.encode("ascii"))
        aggregate.update(b"\n")
    return {
        "path": str(root),
        "file_count": len(records),
        "manifest_sha256": aggregate.hexdigest(),
        "files": records,
    }


def mismatches(expected: dict[str, Any], actual: dict[str, Any]) -> dict[str, list[str]]:
    expected_files = {item["file"]: item["sha256"] for item in expected["files"]}
    actual_files = {item["file"]: item["sha256"] for item in actual["files"]}
    return {
        "missing_from_curated": sorted(expected_files.keys() - actual_files.keys()),
        "unexpected_in_curated": sorted(actual_files.keys() - expected_files.keys()),
        "content_mismatch": sorted(
            name for name in expected_files.keys() & actual_files.keys()
            if expected_files[name] != actual_files[name]
        ),
    }


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
        newline="\n",
    )


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--driver", required=True)
    parser.add_argument("--source-root", type=Path)
    parser.add_argument("--engineering-root", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument(
        "--apply",
        action="store_true",
        help="copy changed files and remove only stale versioned source files",
    )
    args = parser.parse_args()
    if not re.fullmatch(r"[A-Za-z0-9_.-]+", args.driver):
        parser.error("--driver must contain only letters, digits, dot, underscore or dash")

    source_root = (
        args.source_root
        or ROOT / "kernel_development" / "drivers" / "reconstructed" / args.driver
    ).resolve()
    engineering_root = args.engineering_root.resolve()
    curated_root = (engineering_root / "curated" / args.driver).resolve()
    output = args.output.resolve()
    if not source_root.is_dir():
        raise FileNotFoundError(f"missing versioned source tree: {source_root}")
    if not curated_root.is_dir():
        raise FileNotFoundError(f"missing Docker curated tree: {curated_root}")
    if not curated_root.is_relative_to(engineering_root / "curated"):
        raise ValueError(f"curated target escaped its root: {curated_root}")
    if output.is_relative_to(source_root) or output.is_relative_to(curated_root):
        raise ValueError("--output must be outside the versioned and Docker curated trees")

    source_before = source_tree_record(source_root)
    curated_before = source_tree_record(curated_root)
    planned = mismatches(source_before, curated_before)
    copied: list[str] = []
    removed: list[str] = []
    if args.apply:
        for relative in sorted(set(planned["missing_from_curated"]) | set(planned["content_mismatch"])):
            destination = curated_root / relative
            destination.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(source_root / relative, destination)
            copied.append(relative)
        for relative in planned["unexpected_in_curated"]:
            target = (curated_root / relative).resolve()
            if not target.is_relative_to(curated_root):
                raise ValueError(f"stale source path escaped curated root: {target}")
            target.unlink()
            removed.append(relative)

    curated_after = source_tree_record(curated_root)
    remaining = mismatches(source_before, curated_after)
    passed = not any(remaining.values())
    report = {
        "schema_version": "1.0",
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "mode": "versioned_hard_driver_to_docker_curated_source_sync",
        "driver": args.driver,
        "applied": args.apply,
        "passed": passed,
        "source_repository": source_before,
        "docker_curated_snapshot_before": curated_before,
        "planned": planned,
        "copied": copied,
        "removed_stale_source": removed,
        "docker_curated_snapshot_after": curated_after,
        "remaining": remaining,
        "notes": [
            "All versioned files are hashed; generated module/build artifacts are excluded.",
            "Only versioned source files absent from the candidate tree are removed from curated/.",
            "A Docker build independently validates the synchronized snapshot.",
        ],
    }
    write_json(output, report)
    print(json.dumps({"output": str(output), "passed": passed, "copied": len(copied), "removed": len(removed)}))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
