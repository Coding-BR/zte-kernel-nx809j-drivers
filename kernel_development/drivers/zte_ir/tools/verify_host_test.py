#!/usr/bin/env python3
"""Compile and execute a host harness that includes an atomic C microtask."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import subprocess
import sys
from pathlib import Path
from typing import Any


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def run(arguments: list[str]) -> dict[str, Any]:
    completed = subprocess.run(
        arguments,
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
        timeout=120,
        check=False,
    )
    return {
        "argv": arguments,
        "returncode": completed.returncode,
        "stdout": completed.stdout,
        "stderr": completed.stderr,
    }


def inside(root: Path, path: Path) -> Path:
    resolved = path.resolve() if path.is_absolute() else (root / path).resolve()
    if resolved != root and root not in resolved.parents:
        raise ValueError(f"path escapes curated root: {path}")
    return resolved


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--curated-root", type=Path, required=True)
    parser.add_argument("--source", type=Path, required=True)
    parser.add_argument("--binary", type=Path, required=True)
    parser.add_argument("--report", type=Path, required=True)
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    root = args.curated_root.resolve()
    source = inside(root, args.source)
    binary = inside(root, args.binary)
    report = inside(root, args.report)
    if not source.is_file():
        raise ValueError(f"test source not found: {source}")
    binary.parent.mkdir(parents=True, exist_ok=True)

    source_container = "/work/curated/" + source.relative_to(root).as_posix()
    binary_container = "/work/curated/" + binary.relative_to(root).as_posix()
    compile_command = [
        "docker",
        "run",
        "--rm",
        "-v",
        f"{root}:/work/curated",
        args.image,
        "cc",
        "-std=c11",
        "-O2",
        "-Wall",
        "-Wextra",
        "-Werror",
        source_container,
        "-o",
        binary_container,
    ]
    compile_result = run(compile_command)
    if compile_result["returncode"] != 0:
        raise RuntimeError(compile_result["stderr"] or "host test compilation failed")

    execute_command = [
        "docker",
        "run",
        "--rm",
        "-v",
        f"{root}:/work/curated:ro",
        args.image,
        binary_container,
    ]
    execute_result = run(execute_command)
    passed = (
        execute_result["returncode"] == 0
        and "failures=0" in execute_result["stdout"]
    )
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "passed": passed,
        "source": {
            "path": str(source),
            "sha256": sha256_file(source),
        },
        "binary": {
            "path": str(binary),
            "size": binary.stat().st_size,
            "sha256": sha256_file(binary),
        },
        "compile": compile_result,
        "execute": execute_result,
    }
    report.parent.mkdir(parents=True, exist_ok=True)
    report.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    print(json.dumps({"passed": passed, "stdout": execute_result["stdout"].strip()}))
    return 0 if passed else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, RuntimeError, ValueError, subprocess.SubprocessError) as exc:
        print(f"error: {exc}", file=sys.stderr)
        raise SystemExit(2)
