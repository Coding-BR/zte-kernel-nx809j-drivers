#!/usr/bin/env python3
"""Generate or verify the versioned NX809J reference-module package."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import re
import struct
import sys
from pathlib import Path
from typing import Any


DRIVERS = (
    "zte_charger_policy",
    "zte_fingerprint",
    "zte_imem_info",
    "zte_ir",
    "zte_led",
    "zte_misc",
    "zte_power_supply",
    "zte_ramdisk_reboot",
    "zte_reboot_ext",
    "zte_sensor_sensitivity",
    "zte_stats_info",
    "zte_tpd",
)
CATEGORIES = ("stock", "candidates")
MODINFO_RE = re.compile(
    rb"(alias|author|depends|description|firmware|intree|license|name|"
    rb"parm|parmtype|retpoline|srcversion|vermagic)=([\x20-\x7e]+)"
)


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def elf_identity(data: bytes) -> dict[str, Any]:
    result: dict[str, Any] = {
        "magic": data[:4].hex(),
        "class": None,
        "endianness": None,
        "type": None,
        "machine": None,
        "aarch64_relocatable": False,
    }
    if len(data) < 20 or data[:4] != b"\x7fELF":
        return result

    elf_class = data[4]
    elf_data = data[5]
    byte_order = "<" if elf_data == 1 else ">" if elf_data == 2 else None
    if byte_order is None:
        return result

    elf_type, machine = struct.unpack_from(byte_order + "HH", data, 16)
    result.update(
        {
            "class": {1: "ELF32", 2: "ELF64"}.get(elf_class, str(elf_class)),
            "endianness": {1: "little", 2: "big"}.get(elf_data, str(elf_data)),
            "type": {1: "ET_REL", 2: "ET_EXEC", 3: "ET_DYN"}.get(
                elf_type, str(elf_type)
            ),
            "machine": {183: "AARCH64"}.get(machine, str(machine)),
            "aarch64_relocatable": elf_class == 2
            and elf_data == 1
            and elf_type == 1
            and machine == 183,
        }
    )
    return result


def module_info(data: bytes) -> dict[str, list[str]]:
    values: dict[str, list[str]] = {}
    for segment in data.split(b"\0"):
        match = MODINFO_RE.fullmatch(segment)
        if not match:
            continue
        key = match.group(1).decode("ascii")
        value = match.group(2).decode("utf-8", errors="replace")
        values.setdefault(key, []).append(value)
    return {key: sorted(set(items)) for key, items in sorted(values.items())}


def load_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8-sig"))


def evidence_hash(repo_root: Path, driver: str) -> str | None:
    manifest = (
        repo_root
        / "reverse_engineering"
        / "validation"
        / "reconstructed"
        / driver
        / "offline_static"
        / "stock_assembly"
        / "manifest.json"
    )
    if not manifest.is_file():
        return None
    source = load_json(manifest).get("source", {})
    value = source.get("sha256")
    return str(value).lower() if value else None


def status_maps(repo_root: Path) -> tuple[dict[str, str], dict[str, dict[str, str]]]:
    status = load_json(repo_root / "STATUS_MANIFEST.json")
    driver_status = {
        name: details["status"] for name, details in status.get("drivers", {}).items()
    }

    audit = load_json(
        repo_root
        / "reverse_engineering"
        / "validation"
        / "OFFLINE_RECONSTRUCTION_AUDIT.json"
    )
    audit_hashes = {
        item["driver"]: {
            "stock": str(item.get("stock_sha256", "")).lower(),
            "candidate": str(item.get("candidate_sha256", "")).lower(),
        }
        for item in audit.get("drivers", [])
    }
    return driver_status, audit_hashes


def collect_entries(repo_root: Path) -> list[dict[str, Any]]:
    package_root = repo_root / "reference_modules"
    driver_status, audit_hashes = status_maps(repo_root)
    entries: list[dict[str, Any]] = []

    for category in CATEGORIES:
        for driver in DRIVERS:
            path = package_root / category / f"{driver}.ko"
            if not path.is_file():
                raise FileNotFoundError(path)
            data = path.read_bytes()
            actual_hash = sha256(path)
            audit_key = "stock" if category == "stock" else "candidate"
            audit_hash = audit_hashes.get(driver, {}).get(audit_key)
            assembly_hash = evidence_hash(repo_root, driver) if category == "stock" else None

            entry = {
                "driver": driver,
                "class": "stock_reference" if category == "stock" else "reconstructed_candidate",
                "path": path.relative_to(repo_root).as_posix(),
                "size": path.stat().st_size,
                "sha256": actual_hash,
                "elf": elf_identity(data),
                "modinfo": module_info(data),
                "status": "REFERENCE_ONLY"
                if category == "stock"
                else driver_status.get(driver, "UNKNOWN"),
                "cross_checks": {
                    "offline_audit_sha256": audit_hash,
                    "offline_audit_match": bool(audit_hash and audit_hash == actual_hash),
                    "assembly_source_sha256": assembly_hash,
                    "assembly_source_match": None
                    if category != "stock"
                    else bool(assembly_hash and assembly_hash == actual_hash),
                },
            }
            entries.append(entry)
    return entries


def manifest(repo_root: Path, generated_utc: str | None = None) -> dict[str, Any]:
    return {
        "schema_version": "1.0",
        "generated_utc": generated_utc
        or dt.datetime.now(dt.timezone.utc).isoformat().replace("+00:00", "Z"),
        "device": {"codename": "NX809J", "product": "REDMAGIC 11 Pro+"},
        "scope": {
            "stock_modules": len(DRIVERS),
            "candidate_modules": len(DRIVERS),
            "driver_order": list(DRIVERS),
        },
        "provenance": {
            "stock": "NX809J vendor_boot acquisition runs NX809J-20260711T011653Z and NX809J-20260712T105314Z",
            "candidates": "engineering/curated snapshot selected by OFFLINE_RECONSTRUCTION_AUDIT.json",
        },
        "warning": "Candidate publication preserves test inputs; it does not promote any driver beyond STATUS_MANIFEST.json.",
        "entries": collect_entries(repo_root),
    }


def sums_text(entries: list[dict[str, Any]]) -> str:
    return "".join(f"{item['sha256']}  {item['path']}\n" for item in entries)


def full_vendor_boot_manifest(repo_root: Path, generated_utc: str) -> dict[str, Any]:
    snapshot_root = repo_root / "reference_modules" / "full_vendor_boot"
    files = sorted(path for path in snapshot_root.iterdir() if path.is_file())
    entries: list[dict[str, Any]] = []
    for path in files:
        data = path.read_bytes()
        entry: dict[str, Any] = {
            "path": path.relative_to(repo_root).as_posix(),
            "size": path.stat().st_size,
            "sha256": sha256(path),
        }
        if path.suffix == ".ko":
            entry["elf"] = elf_identity(data)
            entry["modinfo"] = module_info(data)
        entries.append(entry)

    return {
        "schema_version": "1.0",
        "generated_utc": generated_utc,
        "device": {"codename": "NX809J", "product": "REDMAGIC 11 Pro+"},
        "source": "NX809J-20260711T011653Z/02_normalized/boot_images/vendor_boot_a/ramdisk/lib/modules",
        "module_count": sum(item["path"].endswith(".ko") for item in entries),
        "metadata_file_count": sum(not item["path"].endswith(".ko") for item in entries),
        "entries": entries,
    }


def generate(repo_root: Path) -> int:
    package_root = repo_root / "reference_modules"
    result = manifest(repo_root)
    (package_root / "MANIFEST.json").write_text(
        json.dumps(result, indent=2, ensure_ascii=True) + "\n", encoding="utf-8"
    )
    (package_root / "SHA256SUMS").write_text(
        sums_text(result["entries"]), encoding="ascii"
    )
    full = full_vendor_boot_manifest(repo_root, result["generated_utc"])
    (package_root / "FULL_VENDOR_BOOT_MANIFEST.json").write_text(
        json.dumps(full, indent=2, ensure_ascii=True) + "\n", encoding="utf-8"
    )
    (package_root / "FULL_VENDOR_BOOT_SHA256SUMS").write_text(
        sums_text(full["entries"]), encoding="ascii"
    )
    print(
        f"generated {len(result['entries'])} target entries and "
        f"{len(full['entries'])} full vendor_boot entries"
    )
    return 0


def verify(repo_root: Path) -> int:
    package_root = repo_root / "reference_modules"
    manifest_path = package_root / "MANIFEST.json"
    sums_path = package_root / "SHA256SUMS"
    full_manifest_path = package_root / "FULL_VENDOR_BOOT_MANIFEST.json"
    full_sums_path = package_root / "FULL_VENDOR_BOOT_SHA256SUMS"
    failures: list[str] = []

    if not all(
        path.is_file()
        for path in (manifest_path, sums_path, full_manifest_path, full_sums_path)
    ):
        print("reference manifest is missing", file=sys.stderr)
        return 1

    recorded = load_json(manifest_path)
    expected = manifest(repo_root, recorded.get("generated_utc"))
    if recorded != expected:
        failures.append("MANIFEST.json does not describe the current package")
    if sums_path.read_text(encoding="ascii") != sums_text(expected["entries"]):
        failures.append("SHA256SUMS does not describe the current package")

    recorded_full = load_json(full_manifest_path)
    expected_full = full_vendor_boot_manifest(repo_root, recorded_full.get("generated_utc"))
    if recorded_full != expected_full:
        failures.append("FULL_VENDOR_BOOT_MANIFEST.json does not describe the snapshot")
    if full_sums_path.read_text(encoding="ascii") != sums_text(expected_full["entries"]):
        failures.append("FULL_VENDOR_BOOT_SHA256SUMS does not describe the snapshot")
    if expected_full["module_count"] != 335 or expected_full["metadata_file_count"] != 6:
        failures.append("full vendor_boot snapshot must contain 335 modules and 6 metadata files")

    full_hashes = {
        Path(item["path"]).name: item["sha256"]
        for item in expected_full["entries"]
        if item["path"].endswith(".ko")
    }

    for entry in expected["entries"]:
        if not entry["elf"]["aarch64_relocatable"]:
            failures.append(f"not an AArch64 ET_REL module: {entry['path']}")
        checks = entry["cross_checks"]
        if not checks["offline_audit_match"]:
            failures.append(f"audit hash mismatch: {entry['path']}")
        if entry["class"] == "stock_reference" and not checks["assembly_source_match"]:
            failures.append(f"assembly source hash mismatch: {entry['path']}")
        if entry["class"] == "reconstructed_candidate" and entry["status"] != "INCOMPLETE":
            failures.append(
                f"unexpected candidate promotion without package refresh: {entry['path']}"
            )
        if entry["class"] == "stock_reference":
            if full_hashes.get(Path(entry["path"]).name) != entry["sha256"]:
                failures.append(f"target stock differs from full snapshot: {entry['path']}")

    if failures:
        for failure in failures:
            print(f"FAIL: {failure}", file=sys.stderr)
        return 1

    print(
        "PASS: 12 stock modules, 12 candidates and 335 vendor_boot modules "
        "match their ELF and SHA-256 identities"
    )
    return 0


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("mode", choices=("generate", "verify"))
    parser.add_argument(
        "--repo-root",
        type=Path,
        default=Path(__file__).resolve().parents[2],
    )
    args = parser.parse_args()
    repo_root = args.repo_root.resolve()
    return generate(repo_root) if args.mode == "generate" else verify(repo_root)


if __name__ == "__main__":
    raise SystemExit(main())
