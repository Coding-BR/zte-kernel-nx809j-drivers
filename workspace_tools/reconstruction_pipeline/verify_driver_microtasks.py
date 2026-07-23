#!/usr/bin/env python3
"""Verify hash-backed compile, KCFI and test evidence for every microtask."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
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


def sha256_bytes(value: bytes) -> str:
    return hashlib.sha256(value).hexdigest()


def read_json(path: Path) -> dict[str, Any]:
    return read_json_bytes(path.read_bytes())


def read_json_bytes(value: bytes) -> dict[str, Any]:
    value = json.loads(value.decode("utf-8"))
    if not isinstance(value, dict):
        raise ValueError("expected JSON object")
    return value


def git_index_blob(workspace_root: Path, relative_path: Path) -> bytes:
    if relative_path.is_absolute() or ".." in relative_path.parts:
        raise ValueError(f"invalid Git index path: {relative_path}")
    result = subprocess.run(
        [
            "git",
            "-C",
            str(workspace_root),
            "show",
            ":" + relative_path.as_posix(),
        ],
        check=False,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
    )
    if result.returncode != 0:
        detail = result.stderr.decode("utf-8", errors="replace").strip()
        raise ValueError(
            f"missing Git index blob {relative_path.as_posix()}: {detail}"
        )
    return result.stdout


def discover_layout() -> tuple[Path, Path]:
    script = Path(__file__).resolve()
    for root in script.parents:
        engineering_curated = root / "curated"
        engineering_validation = root / "validation"
        if engineering_curated.is_dir() and engineering_validation.is_dir():
            return engineering_curated, engineering_validation
        repository_curated = root / "kernel_development" / "drivers" / "reconstructed"
        repository_validation = root / "reverse_engineering" / "validation" / "reconstructed"
        if repository_curated.is_dir() and repository_validation.is_dir():
            return repository_curated, repository_validation
    raise ValueError("could not discover engineering or repository reconstruction layout")


def workspace_root_for_curated(curated_root: Path) -> Path:
    if curated_root.name == "reconstructed" and curated_root.parent.name == "drivers":
        return curated_root.parents[2]
    if curated_root.name == "curated":
        return curated_root.parent
    raise ValueError(f"unsupported curated layout: {curated_root}")


def parse_args() -> argparse.Namespace:
    curated_root, evidence_root = discover_layout()
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--driver", required=True)
    parser.add_argument("--curated-root", type=Path, default=curated_root)
    parser.add_argument("--evidence-root", type=Path, default=evidence_root)
    parser.add_argument(
        "--git-index",
        action="store_true",
        help="verify the staged manifest and evidence blobs instead of checkout bytes",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    curated_root = args.curated_root.resolve()
    workspace_root = workspace_root_for_curated(curated_root)
    manifest_path = curated_root / args.driver / "MICROTASKS.json"
    output = args.evidence_root.resolve() / args.driver / "microtask_audit.json"
    if not manifest_path.is_file():
        raise ValueError("missing microtask manifest: " + str(manifest_path))
    if args.git_index:
        manifest_relative = manifest_path.relative_to(workspace_root)
        manifest = read_json_bytes(
            git_index_blob(workspace_root, manifest_relative)
        )
    else:
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
            else:
                if args.git_index:
                    try:
                        actual = sha256_bytes(
                            git_index_blob(workspace_root, Path(path_value))
                        )
                    except ValueError as error:
                        failures.append(task["id"] + ": " + str(error))
                        continue
                elif not candidate.is_file():
                    failures.append(task["id"] + ": evidence file is missing")
                    continue
                else:
                    actual = sha256_file(candidate)
                if actual != expected:
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
        "evidence_source": "git_index" if args.git_index else "working_tree",
        "passed": passed,
        "checked_tasks": checked,
        "failures": failures,
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(
        json.dumps(payload, indent=2, ensure_ascii=False) + chr(10),
        encoding="utf-8",
        newline="\n",
    )
    print(json.dumps({"driver": args.driver, "passed": passed, "checked_tasks": checked, "failures": len(failures)}, ensure_ascii=False))
    return 0 if passed else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError) as error:
        print("error: " + str(error), file=sys.stderr)
        raise SystemExit(2)
