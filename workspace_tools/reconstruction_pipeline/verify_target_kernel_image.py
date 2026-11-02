#!/usr/bin/env python3
"""Verify the NX809J kernel Image hash and embedded UTS_RELEASE against the manifest."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import urllib.request
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--manifest",
        type=Path,
        default=ROOT / "kernel_development" / "config" / "target_kernel.json",
    )
    parser.add_argument(
        "--image-file",
        type=Path,
        help="use a previously downloaded release Image instead of fetching the pinned URL",
    )
    parser.add_argument(
        "--output",
        type=Path,
        default=ROOT / "reverse_engineering" / "validation" / "kernel_source"
        / "target_kernel_image_20261030.json",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    manifest = json.loads(args.manifest.read_text(encoding="utf-8"))
    provenance = manifest["source_provenance"]
    if args.image_file:
        image_bytes = args.image_file.read_bytes()
        image_origin = str(args.image_file.resolve())
    else:
        request = urllib.request.Request(
            provenance["kernel_image_url"],
            headers={"User-Agent": "Codex-NX809J-Kernel-Attestation"},
        )
        with urllib.request.urlopen(request, timeout=180) as response:
            image_bytes = response.read()
        image_origin = provenance["kernel_image_url"]

    observed_sha256 = hashlib.sha256(image_bytes).hexdigest()
    try:
        embedded_release = image_bytes.split(b"Linux version ", 1)[1].split(b" ", 1)[0].decode("ascii")
    except (IndexError, UnicodeDecodeError) as error:
        raise RuntimeError(f"could not extract Linux version string from Image: {error}") from error

    expected_sha256 = provenance["kernel_image_sha256"]
    expected_release = manifest["kernel_release"]
    mismatches = {}
    if observed_sha256 != expected_sha256:
        mismatches["sha256"] = {"expected": expected_sha256, "observed": observed_sha256}
    if embedded_release != expected_release:
        mismatches["kernel_release"] = {
            "expected": expected_release,
            "observed": embedded_release,
        }
    if mismatches:
        raise RuntimeError(f"kernel Image does not match target manifest: {mismatches}")

    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "status": "VERIFIED",
        "image_origin": image_origin,
        "image_asset_url": provenance["kernel_image_url"],
        "source_repository": provenance["repository"],
        "source_commit": provenance["commit"],
        "release_tag": provenance["release_tag"],
        "expected_sha256": expected_sha256,
        "observed_sha256": observed_sha256,
        "expected_kernel_release": expected_release,
        "embedded_kernel_release": embedded_release,
        "mismatches": {},
    }
    output = args.output.resolve()
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({
        "status": payload["status"],
        "kernel_release": embedded_release,
        "image_sha256": observed_sha256,
        "output": str(output),
    }, indent=2))
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, RuntimeError, KeyError, json.JSONDecodeError) as error:
        raise SystemExit(f"ERROR: {error}") from error
