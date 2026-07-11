#!/usr/bin/env python3
"""Capture selected BTF/DWARF layouts from vmlinux through Docker pahole."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import re
import subprocess
import sys
from pathlib import Path


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("vmlinux", type=Path)
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--type", action="append", dest="types", required=True)
    parser.add_argument("-o", "--output", type=Path, required=True)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    vmlinux = args.vmlinux.resolve()
    if not vmlinux.is_file():
        raise ValueError(f"vmlinux not found: {vmlinux}")

    records = []
    for type_name in args.types:
        if not re.fullmatch(r"[A-Za-z_][A-Za-z0-9_]*", type_name):
            raise ValueError(f"unsafe type name: {type_name!r}")
        command = [
            "docker",
            "run",
            "--rm",
            "-v",
            f"{vmlinux.parent}:/input:ro",
            args.image,
            "pahole",
            "-C",
            type_name,
            f"/input/{vmlinux.name}",
        ]
        completed = subprocess.run(
            command,
            capture_output=True,
            text=True,
            encoding="utf-8",
            errors="replace",
            check=False,
        )
        if completed.returncode != 0:
            raise RuntimeError(
                f"pahole failed for {type_name}: {completed.stderr.strip()}"
            )
        raw = completed.stdout.rstrip() + "\n"
        size_match = re.search(r"/\* size:\s*([0-9]+),", raw)
        if not size_match:
            raise ValueError(f"pahole output for {type_name} has no size")
        records.append(
            {
                "type": type_name,
                "size": int(size_match.group(1)),
                "raw_pahole": raw,
            }
        )

    payload = {
        "schema_version": "1.0",
        "captured_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "source": {
            "path": str(vmlinux),
            "size": vmlinux.stat().st_size,
            "sha256": sha256_file(vmlinux),
        },
        "docker_image": args.image,
        "records": records,
    }
    rendered = json.dumps(payload, indent=2, sort_keys=True) + "\n"
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(rendered, encoding="utf-8", newline="\n")
    print(json.dumps({"output": str(args.output), "types": args.types}, sort_keys=True))
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, RuntimeError, ValueError, subprocess.SubprocessError) as exc:
        print(f"error: {exc}", file=sys.stderr)
        raise SystemExit(2)
