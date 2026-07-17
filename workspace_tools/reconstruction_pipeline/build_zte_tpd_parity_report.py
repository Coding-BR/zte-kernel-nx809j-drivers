#!/usr/bin/env python3
"""Build a hash-bound offline parity report for the reconstructed zte_tpd.

The report is intentionally narrower than a semantic-equivalence claim. It
combines current build, ABI, KCFI, decomposition, symbol and microtask evidence
and refuses to publish when those inputs target different binaries.
"""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import shutil
from pathlib import Path
from typing import Any


DRIVER = "zte_tpd"


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


def require(condition: bool, message: str) -> None:
    if not condition:
        raise ValueError(message)


def evidence_passes(payload: dict[str, Any]) -> bool:
    if payload.get("passed") is not None:
        return payload["passed"] is True
    return payload.get("status") == "PASS"


def load_inputs(
    validation_root: Path, reconstruction_map_path: Path
) -> dict[str, dict[str, Any]]:
    paths = {
        "build": validation_root / "driver_audit_static_final.json",
        "abi": validation_root / "abi_validation.json",
        "layout": validation_root / "header_layout_probe.json",
        "kcfi_direct": validation_root / "kcfi_direct_surface_final_comparison.json",
        "kcfi_families": validation_root / "kcfi_callback_families.json",
        "kcfi_full": validation_root / "kcfi_full_surface.json",
        "symbols": validation_root / "symbol_inventory_kmi_exact_final.json",
        "decomposition": validation_root / "module_decomposition_audit.json",
        "microtasks": validation_root / "microtask_progress.json",
        "mapping": reconstruction_map_path,
    }
    missing = [str(path) for path in paths.values() if not path.is_file()]
    if missing:
        raise FileNotFoundError("missing parity evidence: " + ", ".join(missing))
    return {name: read_json(path) for name, path in paths.items()}


def select_build_driver(payload: dict[str, Any]) -> dict[str, Any]:
    matches = [item for item in payload.get("drivers", []) if item.get("driver") == DRIVER]
    require(len(matches) == 1, "build audit must contain exactly one zte_tpd result")
    return matches[0]


def validate_inputs(
    inputs: dict[str, dict[str, Any]], candidate_sha: str
) -> dict[str, Any]:
    build = select_build_driver(inputs["build"])
    stock_sha = build.get("stock", {}).get("sha256")
    require(build.get("status") == "static_verified", "build audit is not static_verified")
    require(build.get("build", {}).get("passed") is True, "double-clean build did not pass")
    require(build.get("build", {}).get("reproducible") is True, "build is not reproducible")
    require(
        build.get("candidate", {}).get("sha256") == candidate_sha,
        "build audit targets another candidate",
    )
    require(bool(stock_sha), "build audit has no stock SHA-256")

    abi = inputs["abi"]
    require(evidence_passes(abi), "ABI validation did not pass")
    require(abi.get("candidate_sha256") == candidate_sha, "ABI report is stale")
    require(abi.get("stock_sha256") == stock_sha, "ABI report targets another stock module")

    layout = inputs["layout"]
    require(evidence_passes(layout), "layout probe did not pass")
    require(
        layout.get("stock", {}).get("sha256") == stock_sha,
        "layout probe targets another stock module",
    )
    require(
        layout.get("stock", {}).get("layout_evidence", {}).get("passed") is True,
        "stock layout evidence did not pass",
    )

    kcfi_direct = inputs["kcfi_direct"]
    comparisons = kcfi_direct.get("comparisons", [])
    required_functions = kcfi_direct.get("required_functions", [])
    require(evidence_passes(kcfi_direct), "direct KCFI comparison did not pass")
    require(len(comparisons) == len(required_functions) > 0, "direct KCFI coverage is incomplete")
    require(all(item.get("passed") is True for item in comparisons), "direct KCFI has mismatches")

    kcfi_families = inputs["kcfi_families"]
    family_summary = kcfi_families.get("summary", {})
    require(
        family_summary.get("matching_families") == family_summary.get("family_count") > 0,
        "callback KCFI family coverage is incomplete",
    )
    require(
        family_summary.get("matching_candidate_functions") == family_summary.get("stock_functions"),
        "callback KCFI function coverage is incomplete",
    )

    kcfi_full = inputs["kcfi_full"]
    full_summary = kcfi_full.get("summary", {})
    require(
        kcfi_full.get("candidate", {}).get("sha256") == candidate_sha,
        "full KCFI report is stale",
    )
    require(
        kcfi_full.get("stock", {}).get("sha256") == stock_sha,
        "full KCFI report targets another stock module",
    )
    require(
        full_summary.get("matched", 0) + full_summary.get("mismatched", 0)
        == full_summary.get("stock_records", -1),
        "full KCFI totals are inconsistent",
    )

    mapping = inputs["mapping"]
    mapping_count = mapping.get("function_count")
    require(mapping.get("candidate_sha256") == candidate_sha, "traceability map is stale")
    require(mapping.get("stock_sha256") == stock_sha, "traceability map targets another stock module")
    require(mapping_count == len(mapping.get("mappings", [])) > 0, "traceability map is incomplete")

    decomposition = inputs["decomposition"]
    decomposition_driver = next(
        (item for item in decomposition.get("drivers", []) if item.get("driver") == DRIVER), None
    )
    require(decomposition.get("status") == "PASS", "module decomposition did not pass")
    require(decomposition_driver is not None, "module decomposition has no zte_tpd result")
    require(decomposition_driver.get("candidate_sha256") == candidate_sha, "decomposition is stale")
    require(decomposition_driver.get("stock_sha256") == stock_sha, "decomposition stock mismatch")
    coverage = decomposition_driver.get("coverage", {})
    require(
        coverage.get("functions")
        == coverage.get("decompiled_c")
        == coverage.get("pcode")
        == coverage.get("assembly")
        == mapping_count,
        "decomposition does not cover every mapped function",
    )

    symbols = inputs["symbols"]
    require(symbols.get("candidate", {}).get("sha256") == candidate_sha, "symbol inventory is stale")
    require(symbols.get("stock", {}).get("sha256") == stock_sha, "symbol inventory stock mismatch")
    require(not symbols.get("text_symbol_delta", {}).get("missing"), "stock text symbols are missing")
    require(
        not symbols.get("undefined_symbol_delta", {}).get("missing")
        and not symbols.get("undefined_symbol_delta", {}).get("unexpected"),
        "undefined symbol surface differs from stock",
    )
    require(symbols.get("source_coverage", {}).get("complete") is True, "source coverage is incomplete")

    microtasks = inputs["microtasks"]
    summary = microtasks.get("summary", {})
    require(summary.get("task_count") == mapping_count, "microtask count differs from mapping count")
    require(
        summary.get("promoted_pass", 0) + summary.get("remaining", 0) == mapping_count,
        "microtask progress totals are inconsistent",
    )
    require(summary.get("demoted_stale_pass") == 0, "stale microtask PASS entries were detected")

    candidate_oracle = Path(kcfi_direct.get("candidate_report", ""))
    if candidate_oracle.is_file():
        oracle = read_json(candidate_oracle)
        require(oracle.get("source", {}).get("sha256") == candidate_sha, "KCFI oracle is stale")

    return {
        "build": build,
        "stock_sha": stock_sha,
        "candidate_sha": candidate_sha,
        "mapping_count": mapping_count,
        "kcfi_count": len(comparisons),
        "family_count": family_summary["family_count"],
        "family_function_count": family_summary["stock_functions"],
        "full_kcfi_records": full_summary["stock_records"],
        "full_kcfi_matched": full_summary["matched"],
        "full_kcfi_mismatched": full_summary["mismatched"],
        "full_kcfi_excluded": full_summary["stock_excluded"],
        "extra_text_count": len(symbols.get("text_symbol_delta", {}).get("extra", [])),
        "extra_text_classes": symbols.get("text_symbol_delta", {}).get("extra_class_counts", {}),
        "microtasks_pass": summary["promoted_pass"],
        "microtasks_remaining": summary["remaining"],
        "test_report_count": len(microtasks.get("test_reports", [])),
    }


def build_report(metrics: dict[str, Any]) -> dict[str, Any]:
    total = metrics["mapping_count"]
    passed = metrics["microtasks_pass"]
    remaining = metrics["microtasks_remaining"]
    extra_classes = ", ".join(
        f"{name}={count}" for name, count in sorted(metrics["extra_text_classes"].items())
    )
    full_kcfi_passed = metrics["full_kcfi_mismatched"] == 0
    return {
        "schema_version": "2.0",
        "status": "PASS" if full_kcfi_passed else "INCOMPLETE",
        "driver": DRIVER,
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "scope": (
            "Hash-bound offline parity for the canonical out-of-tree candidate; "
            "untested semantics, scheduler timing and electrical behavior are excluded"
        ),
        "stock_sha256": metrics["stock_sha"],
        "candidate_sha256": metrics["candidate_sha"],
        "comparisons": [
            {
                "surface": "ELF, modinfo and KMI",
                "result": "PASS",
                "evidence": (
                    "driver_audit_static_final.json records two clean reproducible builds, "
                    "an AArch64 REL module, exact imports, aliases and namespaces, and a "
                    "fresh candidate hash match"
                ),
            },
            {
                "surface": "AArch64 ABI and recovered layouts",
                "result": "PASS",
                "evidence": (
                    "abi_validation.json and header_layout_probe.json are current and pass "
                    "Clang compile-time assertions against GKI 6.12.23"
                ),
                "note": "The stock ELF independently fixes syna_spi_device at 0x3f0 bytes and release at +0x338",
            },
            {
                "surface": "verified callback KCFI",
                "result": "PASS",
                "evidence": (
                    f"KCFI section and type IDs match for {metrics['kcfi_count']}/{metrics['kcfi_count']} "
                    f"selected functions, including {metrics['family_function_count']}/{metrics['family_function_count']} "
                    f"callbacks in {metrics['family_count']} recovered families"
                ),
                "note": "Function size is non-gating because the OEM LTO pipeline is unavailable",
            },
            {
                "surface": "complete recoverable KCFI surface",
                "result": "PASS" if full_kcfi_passed else "INCOMPLETE",
                "evidence": (
                    f"kcfi_full_surface.json matches {metrics['full_kcfi_matched']}/"
                    f"{metrics['full_kcfi_records']} stock functions with recoverable preambles"
                ),
                "note": (
                    f"{metrics['full_kcfi_mismatched']} signatures differ and "
                    f"{metrics['full_kcfi_excluded']} stock functions require separate preamble review"
                ),
            },
            {
                "surface": "stock function structural traceability",
                "result": "PASS",
                "evidence": (
                    f"reconstruction_map.json and module_decomposition_audit.json bind all {total}/{total} "
                    "stock identities to source, pseudocode, P-Code and AArch64 assembly"
                ),
                "note": "Structural identity is not semantic equivalence",
            },
            {
                "surface": "stock text and import surface",
                "result": "PASS",
                "evidence": (
                    "symbol_inventory_kmi_exact_final.json records no missing stock text symbol and no "
                    "missing or unexpected import"
                ),
                "note": (
                    f"{metrics['extra_text_count']} candidate-only text symbols are classified and non-gating "
                    f"({extra_classes})"
                ),
            },
            {
                "surface": "hash-attested direct-test subset",
                "result": "PASS",
                "evidence": (
                    f"microtask_progress.json promotes {passed}/{total} current-source tasks from "
                    f"{metrics['test_report_count']} sanitizer-backed host reports with zero stale PASS demotions"
                ),
                "note": f"This PASS covers only the attested subset; {remaining} functions remain unvalidated",
            },
            {
                "surface": "hardware",
                "result": "DEFERRED",
                "evidence": "No ADB, fastboot, insmod, rmmod, SPI, IRQ or partition operation was performed",
                "note": "Controlled NX809J hardware validation remains a separate gate",
            },
        ],
        "blockers": [
            *(
                [
                    f"Full KCFI surface has {metrics['full_kcfi_mismatched']} mismatched function signatures"
                ]
                if not full_kcfi_passed
                else []
            ),
            f"O6 has {passed} hash-attested PASS microtasks and {remaining} tasks still requiring direct evidence",
            "O10 independent review is pending",
            "Controlled NX809J hardware validation is deferred",
        ],
        "semantic_equivalence": "PARTIAL_TESTED_SUBSET_ONLY",
        "independent_review": "NOT_PERFORMED",
        "hardware_status": "DEFERRED",
    }


def render_markdown(report: dict[str, Any]) -> str:
    rows = [
        "# zte_tpd Offline Parity Report",
        "",
        f"- Status: `{report['status']}`",
        f"- Stock SHA-256: `{report['stock_sha256']}`",
        f"- Candidate SHA-256: `{report['candidate_sha256']}`",
        f"- Semantic equivalence: `{report['semantic_equivalence']}`",
        f"- Independent review: `{report['independent_review']}`",
        f"- Hardware: `{report['hardware_status']}`",
        "",
        "## Validated Surfaces",
        "",
        "| Surface | Result | Evidence |",
        "| --- | --- | --- |",
    ]
    for item in report["comparisons"]:
        evidence = item["evidence"]
        if item.get("note"):
            evidence += f" Note: {item['note']}"
        rows.append(f"| {item['surface']} | `{item['result']}` | {evidence} |")
    rows.extend(["", "## Remaining Gates", ""])
    rows.extend(f"- {blocker}" for blocker in report["blockers"])
    rows.extend(
        [
            "",
            "A `PASS` result applies only to its named surface. It does not mean that the",
            "complete driver is behaviorally equivalent to the OEM module.",
            "",
        ]
    )
    return "\n".join(rows)


def parse_args() -> argparse.Namespace:
    script = Path(__file__).resolve()
    repo_root = script.parents[2]
    validation = repo_root / "reverse_engineering" / "validation" / "reconstructed" / DRIVER
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo-root", type=Path, default=repo_root)
    parser.add_argument("--validation-root", type=Path, default=validation)
    parser.add_argument("--candidate", type=Path)
    parser.add_argument("--reconstruction-map", type=Path)
    parser.add_argument("--output", type=Path)
    parser.add_argument("--markdown", type=Path)
    parser.add_argument("--engineering-output-root", type=Path)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    repo_root = args.repo_root.resolve()
    validation = args.validation_root.resolve()
    candidate = (args.candidate or repo_root / "kernel_development" / "drivers" / "reconstructed" / DRIVER / f"{DRIVER}.ko").resolve()
    reconstruction_map = (args.reconstruction_map or candidate.parent / "reconstruction_map.json").resolve()
    output = (args.output or validation / "parity_report.json").resolve()
    markdown = (args.markdown or validation / "PARITY_REPORT.md").resolve()
    if not candidate.is_file():
        raise FileNotFoundError(f"candidate module is missing: {candidate}")

    inputs = load_inputs(validation, reconstruction_map)
    metrics = validate_inputs(inputs, sha256_file(candidate))
    report = build_report(metrics)
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    markdown.write_text(render_markdown(report), encoding="utf-8", newline="\n")

    if args.engineering_output_root:
        destination = args.engineering_output_root.resolve()
        destination.mkdir(parents=True, exist_ok=True)
        shutil.copy2(output, destination / output.name)
        shutil.copy2(markdown, destination / markdown.name)

    print(
        json.dumps(
            {
                "status": report["status"],
                "candidate_sha256": report["candidate_sha256"],
                "output": str(output),
                "markdown": str(markdown),
            }
        )
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
