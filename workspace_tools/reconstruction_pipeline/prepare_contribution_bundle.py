#!/usr/bin/env python3
"""Refresh commit, file and evidence hashes in an NX809J contribution bundle."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from pathlib import Path, PurePosixPath
from typing import Any


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def canonical_git_sha256(repo: Path, path: Path) -> str:
    relative = path.resolve().relative_to(repo).as_posix()
    object_id = run_git(
        repo,
        "hash-object",
        "--filters",
        f"--path={relative}",
        "-w",
        "--",
        relative,
    ).strip()
    data = subprocess.run(
        ["git", "cat-file", "blob", object_id],
        cwd=repo,
        check=True,
        stdout=subprocess.PIPE,
    ).stdout
    return hashlib.sha256(data).hexdigest()


def run_git(repo: Path, *args: str) -> str:
    return subprocess.run(
        ["git", *args],
        cwd=repo,
        check=True,
        text=True,
        encoding="utf-8",
        stdout=subprocess.PIPE,
    ).stdout


def run_git_bytes(repo: Path, *args: str) -> bytes:
    return subprocess.run(
        ["git", *args],
        cwd=repo,
        check=True,
        stdout=subprocess.PIPE,
    ).stdout


def repo_path(repo: Path, value: str) -> Path:
    pure = PurePosixPath(value)
    if pure.is_absolute() or ".." in pure.parts:
        raise ValueError(f"unsafe repository path: {value}")
    path = (repo / Path(*pure.parts)).resolve()
    path.relative_to(repo)
    return path


def refresh_record(repo: Path, record: dict[str, Any]) -> None:
    path = repo_path(repo, str(record["path"]))
    if not path.is_file():
        raise ValueError(f"missing evidence file: {record['path']}")
    record["sha256"] = canonical_git_sha256(repo, path)


def parse_changes(repo: Path, base: str, bundle_root: str) -> list[dict[str, Any]]:
    raw = run_git_bytes(repo, "diff", "--name-status", "--no-renames", "-z", base, "--")
    fields = raw.split(b"\0")
    if fields and fields[-1] == b"":
        fields.pop()
    if len(fields) % 2:
        raise ValueError("unexpected git diff output")
    changes: dict[str, str] = {}
    for index in range(0, len(fields), 2):
        status = fields[index].decode("ascii")
        name = fields[index + 1].decode("utf-8")
        changes[PurePosixPath(name).as_posix()] = status
    untracked = run_git_bytes(repo, "ls-files", "--others", "--exclude-standard", "-z")
    for name in untracked.split(b"\0"):
        if name:
            changes[name.decode("utf-8")] = "A"
    records: list[dict[str, Any]] = []
    for path, status in sorted(changes.items()):
        if path == bundle_root or path.startswith(bundle_root + "/"):
            continue
        file_path = repo_path(repo, path)
        records.append(
            {
                "path": path,
                "change": status,
                "sha256": None if status == "D" else canonical_git_sha256(repo, file_path),
            }
        )
    return records


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--manifest", type=Path, required=True)
    parser.add_argument("--base", default="origin/main")
    args = parser.parse_args()
    repo = Path(__file__).resolve().parents[2]
    manifest_path = args.manifest.resolve()
    manifest_path.relative_to(repo)
    manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
    if not isinstance(manifest, dict):
        raise ValueError("manifest must be a JSON object")
    base = run_git(repo, "rev-parse", "--verify", f"{args.base}^{{commit}}").strip()
    bundle_root = manifest_path.parent.relative_to(repo).as_posix()
    manifest["base_commit"] = base
    manifest["environment_lock_sha256"] = canonical_git_sha256(
        repo,
        repo / "reproducible_environment" / "environment.lock.json"
    )
    manifest["changed_files"] = parse_changes(repo, base, bundle_root)
    for record in manifest.get("reproduction_scripts", []):
        refresh_record(repo, record)
    for check in manifest.get("checks", []):
        refresh_record(repo, check["log"])
        if "report" in check:
            refresh_record(repo, check["report"])
    manifest_path.write_text(
        json.dumps(manifest, indent=2, ensure_ascii=False, sort_keys=True) + "\n",
        encoding="utf-8",
    )
    print(f"PASS: refreshed {manifest_path.relative_to(repo)} against {base}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
