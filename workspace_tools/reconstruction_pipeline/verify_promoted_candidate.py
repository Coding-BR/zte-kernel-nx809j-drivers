#!/usr/bin/env python3
"""Verify that a promoted module matches both artifacts from a clean build audit."""

from __future__ import annotations

import argparse
import hashlib
import json
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def file_record(path: Path) -> dict[str, Any]:
    return {
        "path": str(path),
        "size": path.stat().st_size,
        "sha256": sha256_file(path),
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--audit", type=Path, required=True)
    parser.add_argument("--candidate", type=Path, required=True)
    parser.add_argument("--driver", default="zte_tpd")
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()

    audit_path = args.audit.resolve()
    candidate_path = args.candidate.resolve()
    audit = json.loads(audit_path.read_text(encoding="utf-8"))
    drivers = [item for item in audit.get("drivers", []) if item.get("driver") == args.driver]
    if len(drivers) != 1:
        raise ValueError(f"expected one {args.driver} record in {audit_path}")

    build = drivers[0].get("build", {})
    first = build.get("first_build", {})
    second = build.get("second_build", {})
    candidate = file_record(candidate_path)
    expected_hash = second.get("sha256")
    expected_size = second.get("size")
    checks = {
        "audit_build_passed": build.get("passed") is True,
        "audit_reproducible": build.get("reproducible") is True,
        "clean_build_hashes_match": first.get("sha256") == expected_hash,
        "clean_build_sizes_match": first.get("size") == expected_size,
        "candidate_hash_matches": candidate["sha256"] == expected_hash,
        "candidate_size_matches": candidate["size"] == expected_size,
    }
    report = {
        "schema_version": "1.0",
        "mode": "offline_promoted_candidate_verification",
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "driver": args.driver,
        "passed": all(checks.values()),
        "checks": checks,
        "audit": {
            "path": str(audit_path),
            "sha256": sha256_file(audit_path),
        },
        "first_build": first,
        "second_build": second,
        "candidate": candidate,
    }
    output = args.output.resolve()
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"output": str(output), "passed": report["passed"], "sha256": candidate["sha256"]}))
    return 0 if report["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
