#!/usr/bin/env python3
"""Verify every internal and external SHA-256 record in MANIFEST.json."""

from __future__ import annotations

import argparse
import hashlib
import json
import sys
from pathlib import Path
from typing import Any


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def verify_record(path: Path, record: dict[str, Any]) -> dict[str, Any]:
    exists = path.is_file()
    actual_size = path.stat().st_size if exists else None
    actual_sha256 = sha256_file(path) if exists else None
    return {
        "path": str(path),
        "exists": exists,
        "size_match": actual_size == record.get("size"),
        "sha256_match": actual_sha256 == record.get("sha256"),
    }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "manifest",
        nargs="?",
        type=Path,
        default=Path(__file__).resolve().parents[1] / "MANIFEST.json",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    manifest_path = args.manifest.resolve()
    root = manifest_path.parent
    payload = json.loads(manifest_path.read_text(encoding="utf-8"))
    results = []
    for record in payload.get("files", []):
        candidate = (root / record["path"]).resolve()
        if candidate != root and root not in candidate.parents:
            raise ValueError(f"manifest path escapes package root: {record['path']}")
        results.append(verify_record(candidate, record))
    for record in payload.get("external_sources", []):
        results.append(verify_record(Path(record["path"]), record))

    passed = bool(payload.get("overall_passed")) and all(
        result["exists"] and result["size_match"] and result["sha256_match"]
        for result in results
    )
    failures = [result for result in results if not all(result.values())]
    print(
        json.dumps(
            {
                "manifest": str(manifest_path),
                "passed": passed,
                "records": len(results),
                "failures": failures,
            },
            indent=2,
            sort_keys=True,
        )
    )
    return 0 if passed else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError) as exc:
        print(f"error: {exc}", file=sys.stderr)
        raise SystemExit(2)
