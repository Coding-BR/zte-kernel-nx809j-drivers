#!/usr/bin/env python3
"""Compare every recoverable stock zte_tpd KCFI record with the candidate."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import shutil
from collections import Counter
from pathlib import Path
from typing import Any


def read_json(path: Path) -> dict[str, Any]:
    payload = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(payload, dict):
        raise ValueError(f"JSON root must be an object: {path}")
    return payload


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def index_records(payload: dict[str, Any], label: str) -> dict[str, dict[str, Any]]:
    records: dict[str, dict[str, Any]] = {}
    for record in payload.get("records", []):
        function = record.get("function")
        if not isinstance(function, str) or not function:
            raise ValueError(f"{label} contains an invalid function record")
        if function in records:
            raise ValueError(f"{label} contains duplicate function: {function}")
        records[function] = record
    if not records:
        raise ValueError(f"{label} contains no KCFI records")
    return records


def build_report(
    stock_payload: dict[str, Any],
    candidate_payload: dict[str, Any],
    candidate_sha256: str,
) -> dict[str, Any]:
    stock_source = stock_payload.get("source", {})
    candidate_source = candidate_payload.get("source", {})
    if candidate_source.get("sha256") != candidate_sha256:
        raise ValueError("candidate KCFI oracle targets another module")
    if not stock_source.get("sha256"):
        raise ValueError("stock KCFI oracle has no source SHA-256")

    stock = index_records(stock_payload, "stock oracle")
    candidate = index_records(candidate_payload, "candidate oracle")
    comparisons = []
    for function, stock_record in sorted(stock.items()):
        candidate_record = candidate.get(function)
        type_match = bool(
            candidate_record
            and stock_record.get("type_id") == candidate_record.get("type_id")
        )
        section_match = bool(
            candidate_record
            and stock_record.get("section") == candidate_record.get("section")
        )
        comparisons.append(
            {
                "function": function,
                "stock_type_id": stock_record.get("type_id"),
                "candidate_type_id": candidate_record.get("type_id") if candidate_record else None,
                "stock_section": stock_record.get("section"),
                "candidate_section": candidate_record.get("section") if candidate_record else None,
                "stock_symbol_size": stock_record.get("symbol_size"),
                "candidate_symbol_size": candidate_record.get("symbol_size") if candidate_record else None,
                "type_match": type_match,
                "section_match": section_match,
                "passed": type_match and section_match,
            }
        )

    matched = [item for item in comparisons if item["passed"]]
    mismatched = [item for item in comparisons if not item["passed"]]
    missing = [item for item in mismatched if item["candidate_type_id"] is None]
    mismatch_groups = Counter(item["stock_type_id"] for item in mismatched)
    excluded = stock_payload.get("excluded", [])
    passed = not mismatched
    return {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "driver": "zte_tpd",
        "mode": "offline_full_stock_kcfi_surface",
        "status": "PASS" if passed else "INCOMPLETE",
        "passed": passed,
        "stock": {
            "path": stock_source.get("path"),
            "sha256": stock_source.get("sha256"),
            "record_count": len(stock),
            "excluded_count": len(excluded),
        },
        "candidate": {
            "path": candidate_source.get("path"),
            "sha256": candidate_sha256,
            "record_count": len(candidate),
        },
        "summary": {
            "stock_records": len(stock),
            "matched": len(matched),
            "mismatched": len(mismatched),
            "missing_candidate": len(missing),
            "stock_excluded": len(excluded),
            "match_percent": round(100.0 * len(matched) / len(stock), 2),
        },
        "mismatch_type_groups": [
            {"stock_type_id": type_id, "count": count}
            for type_id, count in sorted(
                mismatch_groups.items(), key=lambda item: (-item[1], item[0] or "")
            )
        ],
        "comparisons": comparisons,
        "stock_excluded": excluded,
        "limitations": [
            "KCFI proves function-type compatibility, not semantic equivalence.",
            "Symbol size is recorded but non-gating because the OEM LTO pipeline is unavailable.",
            "Stock exclusions require separate assembly review and are not counted as matches.",
            "No smartphone or hardware operation is performed.",
        ],
    }


def render_markdown(report: dict[str, Any]) -> str:
    summary = report["summary"]
    lines = [
        "# zte_tpd Full KCFI Surface",
        "",
        f"- Status: `{report['status']}`",
        f"- Stock SHA-256: `{report['stock']['sha256']}`",
        f"- Candidate SHA-256: `{report['candidate']['sha256']}`",
        f"- Matched: `{summary['matched']}/{summary['stock_records']}` ({summary['match_percent']}%)",
        f"- Mismatched: `{summary['mismatched']}`",
        f"- Missing candidate records: `{summary['missing_candidate']}`",
        f"- Stock records excluded by preamble recovery: `{summary['stock_excluded']}`",
        "",
        "The existing 151-function direct report is a selected callback surface. This report",
        "is the authoritative inventory for the complete recoverable stock KCFI surface.",
        "",
        "## Largest Mismatch Families",
        "",
        "| Stock type ID | Functions |",
        "| --- | ---: |",
    ]
    for group in report["mismatch_type_groups"][:30]:
        lines.append(f"| `{group['stock_type_id']}` | {group['count']} |")
    lines.extend(
        [
            "",
            "## Rule",
            "",
            "A function may use this report as KCFI evidence only when its own comparison",
            "record has `passed: true`. An absent or excluded stock preamble is not an",
            "automatic PASS and requires separate evidence.",
            "",
        ]
    )
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    script = Path(__file__).resolve()
    repo_root = script.parents[2]
    validation = repo_root / "reverse_engineering" / "validation" / "reconstructed" / "zte_tpd"
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--stock", type=Path, default=validation / "signature_oracles" / "stock_all_kcfi.json")
    parser.add_argument("--candidate-oracle", type=Path, default=validation / "signature_oracles" / "candidate_final_all_kcfi.json")
    parser.add_argument(
        "--candidate-module",
        type=Path,
        default=repo_root / "kernel_development" / "drivers" / "reconstructed" / "zte_tpd" / "zte_tpd.ko",
    )
    parser.add_argument("--output", type=Path, default=validation / "kcfi_full_surface.json")
    parser.add_argument("--markdown", type=Path, default=validation / "KCFI_FULL_SURFACE.md")
    parser.add_argument("--engineering-output-root", type=Path)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    for path in (args.stock, args.candidate_oracle, args.candidate_module):
        if not path.is_file():
            raise FileNotFoundError(path)
    report = build_report(
        read_json(args.stock),
        read_json(args.candidate_oracle),
        sha256_file(args.candidate_module),
    )
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    args.markdown.write_text(render_markdown(report), encoding="utf-8", newline="\n")
    if args.engineering_output_root:
        destination = args.engineering_output_root.resolve()
        destination.mkdir(parents=True, exist_ok=True)
        shutil.copy2(args.output, destination / args.output.name)
        shutil.copy2(args.markdown, destination / args.markdown.name)
    print(json.dumps({"status": report["status"], **report["summary"]}))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
