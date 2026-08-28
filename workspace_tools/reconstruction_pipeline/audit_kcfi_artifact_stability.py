#!/usr/bin/env python3
"""Prove that a metadata-only module rebuild preserves the KCFI byte surface."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import struct
from pathlib import Path
from typing import Any


KCFI_SECTIONS = (".text", "__version_ext_crcs", "__version_ext_names")


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def section_hashes(path: Path) -> dict[str, str]:
    data = path.read_bytes()
    if data[:4] != b"\x7fELF" or data[4] != 2 or data[5] != 1:
        raise ValueError(f"not ELF64 little-endian: {path}")
    header = struct.unpack_from("<16sHHIQQQIHHHHHH", data, 0)
    section_offset, section_size, section_count, string_index = (
        header[6],
        header[11],
        header[12],
        header[13],
    )
    sections: list[tuple[int, int, int]] = []
    for index in range(section_count):
        offset = section_offset + index * section_size
        fields = struct.unpack_from("<IIQQQQIIQQ", data, offset)
        sections.append((fields[0], fields[4], fields[5]))
    _, names_offset, names_size = sections[string_index]
    names = data[names_offset : names_offset + names_size]
    result: dict[str, str] = {}
    for name_index, offset, size in sections:
        end = names.find(b"\0", name_index)
        name = names[name_index:end].decode("utf-8", errors="replace")
        result[name] = hashlib.sha256(data[offset : offset + size]).hexdigest()
    return result


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--baseline-report", type=Path, required=True)
    parser.add_argument("--baseline-candidate", type=Path, required=True)
    parser.add_argument("--current-candidate", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--strict", action="store_true")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    baseline_report = json.loads(args.baseline_report.read_text(encoding="utf-8"))
    baseline_sha = sha256_file(args.baseline_candidate)
    current_sha = sha256_file(args.current_candidate)
    report_sha = baseline_report.get("candidate", {}).get("sha256")
    baseline_sections = section_hashes(args.baseline_candidate)
    current_sections = section_hashes(args.current_candidate)
    section_delta = {
        name: {
            "baseline": baseline_sections.get(name),
            "current": current_sections.get(name),
            "match": baseline_sections.get(name) == current_sections.get(name),
        }
        for name in KCFI_SECTIONS
    }
    checks = {
        "baseline_report_binds_baseline_candidate": report_sha == baseline_sha,
        "baseline_candidate_is_distinct": baseline_sha != current_sha,
        "kcfi_sections_present": all(name in baseline_sections and name in current_sections for name in KCFI_SECTIONS),
        "kcfi_sections_unchanged": all(item["match"] for item in section_delta.values()),
    }
    passed = all(checks.values())
    payload: dict[str, Any] = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "offline_kcfi_artifact_stability",
        "baseline_report": str(args.baseline_report.resolve()),
        "baseline_candidate": {
            "path": str(args.baseline_candidate.resolve()),
            "sha256": baseline_sha,
        },
        "current_candidate": {
            "path": str(args.current_candidate.resolve()),
            "sha256": current_sha,
        },
        "kcfi_sections": section_delta,
        "checks": checks,
        "passed": passed,
        "limitations": [
            "This proves byte stability of the recorded KCFI sections; it does not prove semantic equivalence.",
            "The current candidate still requires its own ABI/KMI, build and runtime gates.",
        ],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"output": str(args.output), "passed": passed}, sort_keys=True))
    return 0 if passed or not args.strict else 1


if __name__ == "__main__":
    raise SystemExit(main())
