#!/usr/bin/env python3
"""Verify hash-backed compile, KCFI and test evidence for every microtask."""

from __future__ import annotations

import argparse
import hashlib
import json
import sys
from pathlib import Path
from typing import Any

REQUIRED_ROLES = {"compile", "kcfi", "test"}


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def read_json(path: Path) -> dict[str, Any]:
    value = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(value, dict):
        raise ValueError("expected JSON object")
    return value


def parse_args() -> argparse.Namespace:
    engineering_root = Path(__file__).resolve().parents[1]
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--driver", required=True)
    parser.add_argument("--curated-root", type=Path, default=engineering_root / "curated")
    parser.add_argument("--evidence-root", type=Path, default=engineering_root / "validation")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    curated_root = args.curated_root.resolve()
    if curated_root.name == "reconstructed" and curated_root.parent.name == "drivers":
        workspace_root = curated_root.parents[2]
    else:
        workspace_root = curated_root.parent.parent
    manifest_path = curated_root / args.driver / "MICROTASKS.json"
    output = args.evidence_root.resolve() / args.driver / "microtask_audit.json"
    if not manifest_path.is_file():
        raise ValueError("missing microtask manifest: " + str(manifest_path))
    manifest = read_json(manifest_path)
    failures = []
    checked = 0
    tasks = manifest.get("tasks", [])
    if not isinstance(tasks, list) or not tasks:
        blockers = manifest.get("blocked", [])
        detail = "; ".join(blockers) if isinstance(blockers, list) else "unknown blocker"
        failures.append("no microtasks available: " + detail)
        tasks = []
    for task in tasks:
        checked += 1
        if task.get("status") != "PASS":
            failures.append(task.get("id", "unknown") + ": status is not PASS")
            continue
        roles = set()
        for record in task.get("evidence", []):
            if not isinstance(record, dict):
                failures.append(task["id"] + ": invalid evidence record")
                continue
            role = record.get("role")
            path_value = record.get("path")
            expected = record.get("sha256")
            if not isinstance(role, str) or not isinstance(path_value, str) or not isinstance(expected, str):
                failures.append(task["id"] + ": incomplete evidence record")
                continue
            candidate = (workspace_root / path_value).resolve()
            if candidate != workspace_root and workspace_root not in candidate.parents:
                failures.append(task["id"] + ": evidence escapes workspace")
            elif not candidate.is_file():
                failures.append(task["id"] + ": evidence file is missing")
            elif sha256_file(candidate) != expected:
                failures.append(task["id"] + ": evidence SHA-256 mismatch")
            else:
                roles.add(role)
        missing_roles = REQUIRED_ROLES - roles
        if missing_roles:
            failures.append(task["id"] + ": missing evidence roles " + ", ".join(sorted(missing_roles)))
    passed = not failures and bool(manifest.get("tasks"))
    payload = {
        "schema_version": "1.0",
        "driver": args.driver,
        "manifest": str(manifest_path),
        "passed": passed,
        "checked_tasks": checked,
        "failures": failures,
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + chr(10), encoding="utf-8")
    print(json.dumps({"driver": args.driver, "passed": passed, "checked_tasks": checked, "failures": len(failures)}, ensure_ascii=False))
    return 0 if passed else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError) as error:
        print("error: " + str(error), file=sys.stderr)
        raise SystemExit(2)
