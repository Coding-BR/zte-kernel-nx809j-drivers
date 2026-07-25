#!/usr/bin/env python3
"""Install the pinned Joern distribution after size and SHA-256 verification."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import os
import shutil
import stat
import sys
import urllib.request
import zipfile
from pathlib import Path
from typing import Any


SCRIPT_DIR = Path(__file__).resolve().parent
REPO_ROOT = SCRIPT_DIR.parents[1]
DEFAULT_LOCK = SCRIPT_DIR / "joern" / "joern.lock.json"


def sha256_file(path: Path, chunk_size: int = 8 * 1024 * 1024) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        while chunk := stream.read(chunk_size):
            digest.update(chunk)
    return digest.hexdigest()


def load_lock(path: Path) -> dict[str, Any]:
    payload = json.loads(path.read_text(encoding="utf-8"))
    distribution = payload.get("distribution", {})
    required = ("asset", "download_url", "size", "sha256")
    missing = [key for key in required if key not in distribution]
    if missing:
        raise ValueError(f"Joern lock is missing: {', '.join(missing)}")
    return payload


def verify_archive(path: Path, distribution: dict[str, Any]) -> dict[str, Any]:
    if not path.is_file():
        raise FileNotFoundError(path)
    observed_size = path.stat().st_size
    expected_size = int(distribution["size"])
    if observed_size != expected_size:
        raise ValueError(
            f"Joern archive size mismatch: expected {expected_size}, got {observed_size}"
        )
    observed_sha256 = sha256_file(path)
    expected_sha256 = str(distribution["sha256"]).lower()
    if observed_sha256 != expected_sha256:
        raise ValueError(
            "Joern archive SHA-256 mismatch: "
            f"expected {expected_sha256}, got {observed_sha256}"
        )
    return {"path": str(path.resolve()), "size": observed_size, "sha256": observed_sha256}


def download_archive(url: str, destination: Path, expected_size: int) -> None:
    destination.parent.mkdir(parents=True, exist_ok=True)
    partial = destination.with_suffix(destination.suffix + ".part")
    offset = partial.stat().st_size if partial.exists() else 0
    headers = {"User-Agent": "NX809J-Joern-Bootstrap/1.0"}
    if offset:
        headers["Range"] = f"bytes={offset}-"
    request = urllib.request.Request(url, headers=headers)
    with urllib.request.urlopen(request, timeout=120) as response:
        append = offset > 0 and getattr(response, "status", None) == 206
        if not append:
            offset = 0
        mode = "ab" if append else "wb"
        next_progress = ((offset // (256 * 1024 * 1024)) + 1) * (256 * 1024 * 1024)
        with partial.open(mode) as stream:
            downloaded = offset
            while chunk := response.read(8 * 1024 * 1024):
                stream.write(chunk)
                downloaded += len(chunk)
                if downloaded >= next_progress:
                    print(f"downloaded {downloaded}/{expected_size} bytes", flush=True)
                    next_progress += 256 * 1024 * 1024
    if partial.stat().st_size != expected_size:
        raise ValueError(
            f"incomplete Joern download: expected {expected_size}, got {partial.stat().st_size}"
        )
    partial.replace(destination)


def safe_member_target(root: Path, member_name: str) -> Path:
    target = (root / member_name).resolve()
    try:
        target.relative_to(root.resolve())
    except ValueError as error:
        raise ValueError(f"unsafe ZIP member: {member_name}") from error
    return target


def extract_archive(archive_path: Path, destination: Path) -> None:
    destination.mkdir(parents=True, exist_ok=False)
    with zipfile.ZipFile(archive_path) as archive:
        for member in archive.infolist():
            target = safe_member_target(destination, member.filename)
            unix_mode = member.external_attr >> 16
            if stat.S_ISLNK(unix_mode):
                raise ValueError(f"symbolic links are not accepted in Joern ZIP: {member.filename}")
            if member.is_dir():
                target.mkdir(parents=True, exist_ok=True)
                continue
            target.parent.mkdir(parents=True, exist_ok=True)
            with archive.open(member) as source, target.open("wb") as output:
                shutil.copyfileobj(source, output, length=8 * 1024 * 1024)
            permissions = unix_mode & 0o777
            if permissions and os.name != "nt":
                target.chmod(permissions)


def locate_cli_root(install_root: Path) -> Path:
    candidates = [install_root, install_root / "joern-cli"]
    candidates.extend(path.parent for path in install_root.glob("*/joern"))
    candidates.extend(path.parent for path in install_root.glob("*/joern.bat"))
    for candidate in candidates:
        if (candidate / "joern").is_file() or (candidate / "joern.bat").is_file():
            return candidate.resolve()
    raise FileNotFoundError(f"Joern launcher not found below {install_root}")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--lock", type=Path, default=DEFAULT_LOCK)
    parser.add_argument("--archive", type=Path)
    parser.add_argument(
        "--install-root",
        type=Path,
        default=REPO_ROOT / "reproducible_environment" / ".tools" / "joern-v4.0.548",
    )
    parser.add_argument(
        "--cache-root",
        type=Path,
        default=REPO_ROOT / "reproducible_environment" / ".cache",
    )
    parser.add_argument("--download", action="store_true")
    parser.add_argument("--download-only", action="store_true")
    parser.add_argument("--verify-only", action="store_true")
    parser.add_argument("--force", action="store_true")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    lock_path = args.lock.resolve()
    lock = load_lock(lock_path)
    distribution = lock["distribution"]
    archive_path = (
        args.archive.resolve()
        if args.archive
        else (args.cache_root / distribution["asset"]).resolve()
    )
    if not archive_path.exists():
        if not args.download:
            raise FileNotFoundError(
                f"missing {archive_path}; pass --download or provide --archive"
            )
        download_archive(
            str(distribution["download_url"]),
            archive_path,
            int(distribution["size"]),
        )
    archive_record = verify_archive(archive_path, distribution)
    if args.verify_only or args.download_only:
        print(json.dumps({"verified": True, "archive": archive_record}, sort_keys=True))
        return 0

    install_root = args.install_root.resolve()
    marker = install_root / "nx809j-joern-install.json"
    if marker.is_file() and not args.force:
        current = json.loads(marker.read_text(encoding="utf-8"))
        if current.get("archive", {}).get("sha256") == archive_record["sha256"]:
            print(json.dumps({"installed": True, "reused": True, **current}, sort_keys=True))
            return 0
    if install_root.exists():
        if not args.force:
            raise FileExistsError(f"install root already exists: {install_root}")
        if install_root.parent == install_root or len(install_root.parts) < 4:
            raise ValueError(f"refusing to remove unsafe install root: {install_root}")
        shutil.rmtree(install_root)

    staging = install_root.with_name(install_root.name + ".extracting")
    if staging.exists():
        shutil.rmtree(staging)
    try:
        extract_archive(archive_path, staging)
        cli_root = locate_cli_root(staging)
        relative_cli_root = cli_root.relative_to(staging)
        staging.replace(install_root)
        final_cli_root = (install_root / relative_cli_root).resolve()
    except Exception:
        if staging.exists():
            shutil.rmtree(staging)
        raise

    record = {
        "schema_version": "1.0",
        "installed_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "lock": {"path": str(lock_path), "sha256": sha256_file(lock_path)},
        "release_tag": lock["project"]["release_tag"],
        "source_commit": lock["project"]["source_commit"],
        "archive": archive_record,
        "install_root": str(install_root),
        "cli_root": str(final_cli_root),
    }
    marker.write_text(json.dumps(record, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"installed": True, "reused": False, **record}, sort_keys=True))
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, zipfile.BadZipFile, json.JSONDecodeError) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(2)
