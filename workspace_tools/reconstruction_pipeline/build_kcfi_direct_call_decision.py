#!/usr/bin/env python3
"""Prove that a function has no stock indirect KCFI call boundary."""

from __future__ import annotations

import argparse
from collections import Counter
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path
from typing import Any


DIRECT_REFERENCE_TYPE = "UNCONDITIONAL_CALL"
DECISION = "KCFI_NOT_APPLICABLE_DIRECT_CALL_ONLY"


def read_object(path: Path) -> dict[str, Any]:
    payload = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(payload, dict):
        raise ValueError(f"expected JSON object: {path}")
    return payload


def read_jsonl(path: Path) -> list[dict[str, Any]]:
    records: list[dict[str, Any]] = []
    for line_number, line in enumerate(
        path.read_text(encoding="utf-8").splitlines(), start=1
    ):
        if not line.strip():
            continue
        value = json.loads(line)
        if not isinstance(value, dict):
            raise ValueError(f"expected JSON object at {path}:{line_number}")
        records.append(value)
    return records


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def portable_path(path: Path, workspace: Path) -> str:
    resolved = path.resolve()
    try:
        return resolved.relative_to(workspace.resolve()).as_posix()
    except ValueError:
        return str(resolved)


def file_evidence(path: Path, workspace: Path) -> dict[str, Any]:
    resolved = path.resolve()
    return {
        "path": portable_path(resolved, workspace),
        "sha256": sha256_file(resolved),
        "size": resolved.stat().st_size,
    }


def matching_records(
    payload: dict[str, Any], key: str, function: str
) -> list[dict[str, Any]]:
    values = payload.get(key, [])
    if not isinstance(values, list):
        raise ValueError(f"KCFI report has no {key} array")
    return [
        value
        for value in values
        if isinstance(value, dict) and value.get("function") == function
    ]


def incoming_calls(
    records: list[dict[str, Any]], function: str
) -> list[dict[str, Any]]:
    return [record for record in records if record.get("target") == function]


def summarize_calls(records: list[dict[str, Any]]) -> dict[str, Any]:
    by_caller = Counter(
        (str(record.get("caller")), str(record.get("reference_type")))
        for record in records
    )
    target_addresses = sorted(
        {
            str(record["target_address"])
            for record in records
            if isinstance(record.get("target_address"), str)
        }
    )
    return {
        "count": len(records),
        "by_caller_and_reference_type": [
            {
                "caller": caller,
                "reference_type": reference_type,
                "count": count,
            }
            for (caller, reference_type), count in sorted(by_caller.items())
        ],
        "target_addresses": target_addresses,
        "calls": records,
    }


def validate_source(
    payload: dict[str, Any], module: Path, report_name: str
) -> dict[str, Any]:
    source = payload.get("source")
    if not isinstance(source, dict):
        raise ValueError(f"{report_name} has no source object")
    expected_sha = source.get("sha256")
    expected_size = source.get("size")
    actual_sha = sha256_file(module)
    actual_size = module.stat().st_size
    if expected_sha != actual_sha:
        raise ValueError(f"{report_name} source SHA-256 does not match module")
    if expected_size != actual_size:
        raise ValueError(f"{report_name} source size does not match module")
    return {
        "sha256_matches": True,
        "size_matches": True,
        "sha256": actual_sha,
        "size": actual_size,
    }


def build_decision(
    *,
    driver: str,
    function: str,
    stock_kcfi: dict[str, Any],
    candidate_kcfi: dict[str, Any],
    stock_calls: list[dict[str, Any]],
    candidate_calls: list[dict[str, Any]],
    stock_module: Path,
    candidate_module: Path,
) -> dict[str, Any]:
    stock_records = matching_records(stock_kcfi, "records", function)
    stock_excluded = matching_records(stock_kcfi, "excluded", function)
    candidate_records = matching_records(candidate_kcfi, "records", function)
    candidate_excluded = matching_records(candidate_kcfi, "excluded", function)
    stock_incoming = incoming_calls(stock_calls, function)
    candidate_incoming = incoming_calls(candidate_calls, function)

    checks = {
        "stock_has_no_kcfi_record": not stock_records,
        "stock_exclusion_is_recorded": len(stock_excluded) == 1,
        "candidate_has_single_kcfi_record": len(candidate_records) == 1,
        "candidate_has_no_kcfi_exclusion": not candidate_excluded,
        "stock_has_incoming_calls": bool(stock_incoming),
        "candidate_has_incoming_calls": bool(candidate_incoming),
        "stock_incoming_calls_are_direct": bool(stock_incoming)
        and all(
            record.get("reference_type") == DIRECT_REFERENCE_TYPE
            for record in stock_incoming
        ),
        "candidate_incoming_calls_are_direct": bool(candidate_incoming)
        and all(
            record.get("reference_type") == DIRECT_REFERENCE_TYPE
            for record in candidate_incoming
        ),
        "incoming_call_count_matches": len(stock_incoming) == len(candidate_incoming),
        "caller_multiplicity_matches": Counter(
            (record.get("caller"), record.get("reference_type"))
            for record in stock_incoming
        )
        == Counter(
            (record.get("caller"), record.get("reference_type"))
            for record in candidate_incoming
        ),
        "stock_has_one_target_address": len(
            {record.get("target_address") for record in stock_incoming}
        )
        == 1,
        "candidate_has_one_target_address": len(
            {record.get("target_address") for record in candidate_incoming}
        )
        == 1,
    }
    failed = [name for name, passed in checks.items() if not passed]
    if failed:
        raise ValueError("direct-call KCFI decision failed: " + ", ".join(failed))

    stock_source = validate_source(stock_kcfi, stock_module, "stock KCFI report")
    candidate_source = validate_source(
        candidate_kcfi, candidate_module, "candidate KCFI report"
    )
    checks["stock_module_matches_kcfi_report"] = True
    checks["candidate_module_matches_kcfi_report"] = True

    comparison = {
        "function": function,
        "passed": True,
        "applicable": False,
        "decision": DECISION,
        "reason": (
            "The stock ELF has no valid KCFI preamble for this function, and every "
            "incoming stock and candidate reference is a direct UNCONDITIONAL_CALL."
        ),
        "stock_kcfi_record": None,
        "stock_kcfi_exclusion": stock_excluded[0],
        "candidate_kcfi_record": candidate_records[0],
        "candidate_extra_instrumentation": True,
        "stock_call_graph": summarize_calls(stock_incoming),
        "candidate_call_graph": summarize_calls(candidate_incoming),
    }
    return {
        "schema_version": "1.0",
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "driver": driver,
        "function": function,
        "passed": True,
        "applicable": False,
        "decision": DECISION,
        "checks": checks,
        "comparisons": [comparison],
        "modules": {
            "stock": stock_source,
            "candidate": candidate_source,
        },
        "limitations": [
            "This decision proves only that no stock indirect KCFI boundary was observed.",
            "The candidate compiler emitted an extra KCFI preamble; it is not claimed as a stock type-ID match.",
            "Direct-call equivalence does not replace Assembly, P-Code, host, or hardware validation.",
        ],
    }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--driver", required=True)
    parser.add_argument("--function", required=True)
    parser.add_argument("--stock-kcfi-report", type=Path, required=True)
    parser.add_argument("--candidate-kcfi-report", type=Path, required=True)
    parser.add_argument("--stock-calls", type=Path, required=True)
    parser.add_argument("--candidate-calls", type=Path, required=True)
    parser.add_argument("--stock", type=Path, required=True)
    parser.add_argument("--candidate", type=Path, required=True)
    parser.add_argument("--workspace", type=Path, default=Path.cwd())
    parser.add_argument("--output", type=Path, required=True)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    inputs = {
        "stock_kcfi_report": args.stock_kcfi_report.resolve(),
        "candidate_kcfi_report": args.candidate_kcfi_report.resolve(),
        "stock_calls": args.stock_calls.resolve(),
        "candidate_calls": args.candidate_calls.resolve(),
        "stock_module": args.stock.resolve(),
        "candidate_module": args.candidate.resolve(),
    }
    for path in inputs.values():
        if not path.is_file():
            raise ValueError(f"missing input: {path}")

    report = build_decision(
        driver=args.driver,
        function=args.function,
        stock_kcfi=read_object(inputs["stock_kcfi_report"]),
        candidate_kcfi=read_object(inputs["candidate_kcfi_report"]),
        stock_calls=read_jsonl(inputs["stock_calls"]),
        candidate_calls=read_jsonl(inputs["candidate_calls"]),
        stock_module=inputs["stock_module"],
        candidate_module=inputs["candidate_module"],
    )
    report["inputs"] = {
        name: file_evidence(path, args.workspace)
        for name, path in inputs.items()
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    with args.output.open("w", encoding="utf-8", newline="\n") as stream:
        json.dump(report, stream, indent=2, sort_keys=True)
        stream.write("\n")
    print(
        json.dumps(
            {
                "driver": args.driver,
                "function": args.function,
                "passed": True,
                "decision": DECISION,
                "stock_calls": report["comparisons"][0]["stock_call_graph"]["count"],
                "candidate_calls": report["comparisons"][0]["candidate_call_graph"][
                    "count"
                ],
            },
            sort_keys=True,
        )
    )
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError) as error:
        print(f"error: {error}")
        raise SystemExit(2)
