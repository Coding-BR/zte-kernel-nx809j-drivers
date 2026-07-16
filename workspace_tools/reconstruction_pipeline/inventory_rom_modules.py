#!/usr/bin/env python3
"""Build a deduplicated Android ROM kernel-module inventory and target delta."""

from __future__ import annotations

import argparse
import datetime as dt
import json
import re
import sys
from collections import defaultdict
from pathlib import Path
from typing import Any

from manage_reference_modules import elf_identity, module_info, sha256


ZTE_CUSTOM_RE = re.compile(r"^(?:zte_|zlog_|nubia_|gpio_keys_nubia$)")
DEVICE_REVIEW_NAMES = {
    "aw86320",
    "aw9620x",
    "awp1921",
    "dmesg_dumper",
    "fp_goodix",
    "ftmmod",
    "haptic_86938",
    "nb7vpq904m",
    "rdbg",
    "soc_fan",
    "st54jese",
    "st54jnfc",
}


def parse_assignment(value: str) -> tuple[str, str]:
    label, separator, raw_path = value.partition("=")
    if not separator or not label or not raw_path:
        raise argparse.ArgumentTypeError("expected LABEL=PATH")
    if not re.fullmatch(r"[A-Za-z0-9_.-]+", label):
        raise argparse.ArgumentTypeError(f"invalid source label {label!r}")
    return label, raw_path


def classify_module(stem: str) -> str:
    normalized = stem.replace("-", "_")
    if ZTE_CUSTOM_RE.match(normalized):
        return "zte_nubia_custom"
    if stem in DEVICE_REVIEW_NAMES:
        return "device_vendor_review"
    return "platform_or_standard"


def reconstructed_names(root: Path) -> set[str]:
    if not root.is_dir():
        return set()
    # A directory is only a reconstruction candidate when its matching .ko
    # exists. Evidence-only directories (for example, a Ghidra export queue)
    # must not inflate the inventory's reconstruction count.
    return {
        path.name
        for path in root.iterdir()
        if path.is_dir() and (path / f"{path.name}.ko").is_file()
    }


def collect_source(label: str, root: Path, reconstructed: set[str]) -> list[dict[str, Any]]:
    if not root.is_dir():
        raise FileNotFoundError(root)
    entries: list[dict[str, Any]] = []
    for path in sorted(root.rglob("*.ko"), key=lambda item: item.as_posix().lower()):
        data = path.read_bytes()
        stem = path.stem
        classification = classify_module(stem)
        entries.append(
            {
                "source": label,
                "relative_path": path.relative_to(root).as_posix(),
                "filename": path.name,
                "module_stem": stem,
                "size": path.stat().st_size,
                "sha256": sha256(path),
                "elf": elf_identity(data),
                "modinfo": module_info(data),
                "classification": classification,
                "reconstruction": (
                    "present" if stem in reconstructed else "not_started"
                ),
            }
        )
    return entries


def summarize(entries: list[dict[str, Any]], reconstructed: set[str]) -> dict[str, Any]:
    by_name: dict[str, list[dict[str, Any]]] = defaultdict(list)
    by_hash: dict[str, list[dict[str, Any]]] = defaultdict(list)
    source_counts: dict[str, int] = defaultdict(int)
    for entry in entries:
        by_name[entry["filename"]].append(entry)
        by_hash[entry["sha256"]].append(entry)
        source_counts[entry["source"]] += 1

    custom_names = sorted(
        name
        for name, group in by_name.items()
        if any(item["classification"] == "zte_nubia_custom" for item in group)
    )
    review_names = sorted(
        name
        for name, group in by_name.items()
        if any(item["classification"] == "device_vendor_review" for item in group)
    )
    custom_present = sorted(
        name for name in custom_names if Path(name).stem in reconstructed
    )
    custom_missing = sorted(
        name for name in custom_names if Path(name).stem not in reconstructed
    )
    conflicting_names = sorted(
        name
        for name, group in by_name.items()
        if len({item["sha256"] for item in group}) > 1
    )
    duplicate_hashes = {
        digest: sorted(
            f"{item['source']}:{item['relative_path']}" for item in group
        )
        for digest, group in sorted(by_hash.items())
        if len(group) > 1
    }
    return {
        "source_module_counts": dict(sorted(source_counts.items())),
        "module_occurrences": len(entries),
        "unique_filenames": len(by_name),
        "unique_binary_hashes": len(by_hash),
        "duplicate_binary_groups": len(duplicate_hashes),
        "same_name_different_binary_count": len(conflicting_names),
        "same_name_different_binary": conflicting_names,
        "zte_nubia_custom": {
            "total": len(custom_names),
            "reconstruction_present": len(custom_present),
            "not_started": len(custom_missing),
            "names": custom_names,
            "present_names": custom_present,
            "missing_names": custom_missing,
        },
        "device_vendor_review": {
            "total": len(review_names),
            "names": review_names,
            "warning": "Name-based triage only; static evidence must confirm ownership and reconstruction scope.",
        },
        "duplicate_hashes": duplicate_hashes,
    }


def dependency_rows(entries: list[dict[str, Any]], classification: str) -> list[dict[str, Any]]:
    grouped: dict[str, list[dict[str, Any]]] = defaultdict(list)
    for entry in entries:
        if entry["classification"] == classification:
            grouped[entry["filename"]].append(entry)
    result: list[dict[str, Any]] = []
    for name, group in sorted(grouped.items()):
        dependencies: set[str] = set()
        aliases: set[str] = set()
        hashes: set[str] = set()
        sources: set[str] = set()
        for entry in group:
            hashes.add(entry["sha256"])
            sources.add(entry["source"])
            for value in entry["modinfo"].get("depends", []):
                dependencies.update(item for item in value.split(",") if item)
            aliases.update(entry["modinfo"].get("alias", []))
        result.append(
            {
                "filename": name,
                "sources": sorted(sources),
                "sha256": sorted(hashes),
                "depends": sorted(dependencies),
                "aliases": sorted(aliases),
                "reconstruction": group[0]["reconstruction"],
            }
        )
    return result


def markdown_report(document: dict[str, Any]) -> str:
    summary = document["summary"]
    custom = summary["zte_nubia_custom"]
    review = summary["device_vendor_review"]
    lines = [
        "# NX809J ROM Kernel Module Inventory",
        "",
        "> Static inventory only. A module is not considered reconstructed or hardware-validated merely because its stock binary was found.",
        "",
        "## Provenance",
        "",
        f"- Device: `{document['device']['codename']}` / `{document['device']['product']}`",
        f"- Kernel target: `{document['device']['kernel']}`",
        f"- `vendor_boot.img` SHA-256: `{document['provenance']['vendor_boot_sha256']}`",
        f"- `system_dlkm_a.img` SHA-256: `{document['provenance']['system_dlkm_sha256']}`",
        f"- `vendor_dlkm_a.img` SHA-256: `{document['provenance']['vendor_dlkm_sha256']}`",
        "- `super.img` was parsed as raw liblp metadata; geometry, header and table checksums were verified before extraction.",
        "",
        "## Counts",
        "",
        "| Source | `.ko` occurrences |",
        "|---|---:|",
    ]
    lines.extend(
        f"| `{source}` | {count} |"
        for source, count in summary["source_module_counts"].items()
    )
    lines.extend(
        [
            f"| **Total occurrences** | **{summary['module_occurrences']}** |",
            "",
            f"There are **{summary['unique_filenames']} unique module filenames** and **{summary['unique_binary_hashes']} unique binary hashes**. "
            f"The inventory contains {summary['duplicate_binary_groups']} exact duplicate groups and {summary['same_name_different_binary_count']} filenames with differing binaries across sources.",
            "",
            "## ZTE/Nubia Target Delta",
            "",
            f"The strict name-based ZTE/Nubia set contains **{custom['total']} modules**. "
            f"A matching candidate `.ko` exists for **{custom['reconstruction_present']}**; **{custom['not_started']}** have no candidate binary yet. This is only a filesystem inventory, not a parity verdict.",
            "",
            "| Module | Sources | Reconstruction | Direct dependencies |",
            "|---|---|---|---|",
        ]
    )
    for item in document["zte_nubia_modules"]:
        deps = ", ".join(f"`{value}`" for value in item["depends"]) or "none"
        sources = ", ".join(f"`{value}`" for value in item["sources"])
        lines.append(
            f"| `{item['filename']}` | {sources} | `{item['reconstruction']}` | {deps} |"
        )
    lines.extend(
        [
            "",
            "## Device-Vendor Review Queue",
            "",
            f"These **{review['total']} modules** were selected only by conservative filename triage. "
            "They may provide hardware or dependency clues, but must not be labelled ZTE proprietary until assembly, strings, aliases, DT bindings and local source coverage are audited.",
            "",
            "| Module | Sources | Reconstruction |",
            "|---|---|---|",
        ]
    )
    for item in document["device_vendor_review_modules"]:
        sources = ", ".join(f"`{value}`" for value in item["sources"])
        lines.append(
            f"| `{item['filename']}` | {sources} | `{item['reconstruction']}` |"
        )
    lines.extend(
        [
            "",
            "## Scope Rule",
            "",
            "1. Reconstruct the strict ZTE/Nubia set first, preserving Assembly, Ghidra P-Code, pseudocode, relocations, KCFI and per-function microtasks.",
            "2. Audit the device-vendor queue against the local kernel source and Device Tree before creating a reconstruction target.",
            "3. Keep platform/standard modules in the dependency corpus. Do not rewrite them when the pinned local source already reproduces their behavior.",
            "4. Treat every status as incomplete until static parity and the mandatory controlled runtime protocol both pass.",
            "5. Use `reverse_engineering/validation/CUSTOM_DRIVER_DEPENDENCY_STATUS.md` for source-map, assembly and cross-driver blocker state; this inventory intentionally does not collapse those gates.",
            "",
        ]
    )
    return "\n".join(lines)


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--source",
        action="append",
        required=True,
        type=parse_assignment,
        metavar="LABEL=PATH",
    )
    parser.add_argument("--reconstructed-root", required=True, type=Path)
    parser.add_argument("--json", required=True, type=Path)
    parser.add_argument("--markdown", required=True, type=Path)
    parser.add_argument("--vendor-boot-sha256", required=True)
    parser.add_argument("--system-dlkm-sha256", required=True)
    parser.add_argument("--vendor-dlkm-sha256", required=True)
    return parser


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)
    try:
        reconstructed = reconstructed_names(args.reconstructed_root)
        entries: list[dict[str, Any]] = []
        source_roots: dict[str, str] = {}
        for label, raw_path in args.source:
            if label in source_roots:
                raise ValueError(f"duplicate source label {label!r}")
            path = Path(raw_path).resolve()
            source_roots[label] = str(path)
            entries.extend(collect_source(label, path, reconstructed))
        document = {
            "schema_version": "1.0",
            "generated_utc": dt.datetime.now(dt.timezone.utc)
            .isoformat()
            .replace("+00:00", "Z"),
            "device": {
                "codename": "NX809J",
                "product": "REDMAGIC 11 Pro+",
                "kernel": "Android 16 GKI 6.12.23",
            },
            "provenance": {
                "sources": sorted(source_roots),
                "vendor_boot_sha256": args.vendor_boot_sha256.lower(),
                "system_dlkm_sha256": args.system_dlkm_sha256.lower(),
                "vendor_dlkm_sha256": args.vendor_dlkm_sha256.lower(),
            },
            "summary": summarize(entries, reconstructed),
            "zte_nubia_modules": dependency_rows(entries, "zte_nubia_custom"),
            "device_vendor_review_modules": dependency_rows(
                entries, "device_vendor_review"
            ),
            "entries": entries,
        }
        args.json.parent.mkdir(parents=True, exist_ok=True)
        args.markdown.parent.mkdir(parents=True, exist_ok=True)
        args.json.write_text(
            json.dumps(document, indent=2, ensure_ascii=True) + "\n",
            encoding="utf-8",
        )
        args.markdown.write_text(markdown_report(document), encoding="utf-8")
        console_summary = {
            key: value
            for key, value in document["summary"].items()
            if key != "duplicate_hashes"
        }
        print(json.dumps(console_summary, indent=2, ensure_ascii=True))
        return 0
    except (OSError, ValueError) as exc:
        print(f"error: {exc}", file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
