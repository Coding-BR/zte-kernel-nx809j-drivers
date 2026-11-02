#!/usr/bin/env python3
"""Synchronize the curated zte_tpd Docker snapshot from the versioned candidate tree.

The canonical builder deliberately compiles a detached curated snapshot. This
tool makes that boundary explicit: it calculates a hash-bound sync plan, only
changes files that the builder considers source, and preserves ignored build
artifacts for external forensic retention.
"""

from __future__ import annotations

import argparse
import json
import shutil
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

from run_zte_tpd_canonical_build import source_tree_mismatches, source_tree_record


ROOT = Path(__file__).resolve().parents[2]


def write_json(path: Path, value: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(
        json.dumps(value, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
        newline="\n",
    )


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--source-root",
        type=Path,
        default=ROOT / "kernel_development" / "drivers" / "reconstructed" / "zte_tpd",
    )
    parser.add_argument("--engineering-root", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument(
        "--apply",
        action="store_true",
        help="Copy changed candidate files and remove only stale curated source files.",
    )
    args = parser.parse_args()

    source_root = args.source_root.resolve()
    curated_root = args.engineering_root.resolve() / "curated" / "zte_tpd"
    output = args.output.resolve()
    if not source_root.is_dir():
        raise FileNotFoundError(f"missing versioned source tree: {source_root}")
    if not curated_root.is_dir():
        raise FileNotFoundError(f"missing curated source tree: {curated_root}")

    before_source = source_tree_record(source_root)
    before_curated = source_tree_record(curated_root)
    plan = source_tree_mismatches(before_source, before_curated)
    copied: list[str] = []
    removed: list[str] = []
    if args.apply:
        expected_paths = set(plan["missing_from_curated"]) | set(plan["content_mismatch"])
        for relative in sorted(expected_paths):
            destination = curated_root / relative
            destination.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(source_root / relative, destination)
            copied.append(relative)
        for relative in plan["unexpected_in_curated"]:
            (curated_root / relative).unlink()
            removed.append(relative)

    after_curated = source_tree_record(curated_root)
    remaining = source_tree_mismatches(before_source, after_curated)
    passed = not any(remaining.values()) and (args.apply or not any(plan.values()))
    report = {
        "schema_version": "1.0",
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "mode": "zte_tpd_versioned_to_curated_source_sync",
        "applied": args.apply,
        "passed": passed,
        "source_tree": before_source,
        "curated_tree_before": before_curated,
        "planned": plan,
        "copied": copied,
        "removed_stale_source": removed,
        "curated_tree_after": after_curated,
        "remaining": remaining,
        "notes": [
            "Only source files recognized by the canonical builder are synchronized.",
            "Ignored build artifacts are retained and are not deleted by this tool.",
            "A successful canonical build independently rechecks source-tree equality.",
        ],
    }
    write_json(output, report)
    print(json.dumps({"output": str(output), "passed": passed, "copied": len(copied), "removed": len(removed)}))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
