#!/usr/bin/env python3
"""Build an auditable zte_tpd KCFI callback-family recovery report."""

from __future__ import annotations

import argparse
import json
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


FAMILIES = (
    {
        "name": "firmware_getter",
        "stock_type_id": "0x73fc0d79",
        "recovered_signature": "int (struct ztp_device *)",
        "oracle": "fw_getter_kcfi_report.json",
    },
    {
        "name": "firmware_setter",
        "stock_type_id": "0x6af8b499",
        "recovered_signature": "int (struct ztp_device *, int)",
        "oracle": "fw_setter_kcfi_report.json",
    },
    {
        "name": "sensibility_setter",
        "stock_type_id": "0xe1d63dc1",
        "recovered_signature": "int (struct ztp_device *, u8)",
        "oracle": "sensibility_setter_kcfi_report.json",
    },
    {
        "name": "text_callback",
        "stock_type_id": "0x64f25fb2",
        "recovered_signature": "int (struct ztp_device *, char *)",
        "oracle": "text_callback_kcfi_report.json",
    },
    {
        "name": "proc_read",
        "stock_type_id": "0xf4e9d97c",
        "recovered_signature": "ssize_t (struct file *, char *, size_t, loff_t *)",
        "oracle": "proc_read_kcfi_report.json",
    },
    {
        "name": "proc_write",
        "stock_type_id": "0xc3d43b4d",
        "recovered_signature": "ssize_t (struct file *, const char *, size_t, loff_t *)",
        "oracle": "proc_write_kcfi_report.json",
    },
    {
        "name": "work_callback",
        "stock_type_id": "0xa607748c",
        "recovered_signature": "void (struct work_struct *)",
        "oracle": "work_callback_kcfi_report.json",
    },
    {
        "name": "void_noarg",
        "stock_type_id": "0xe5c47d60",
        "recovered_signature": "void (void)",
        "oracle": "void_noarg_kcfi_report.json",
    },
)


def records_by_name(payload: dict[str, Any]) -> dict[str, dict[str, Any]]:
    records: dict[str, dict[str, Any]] = {}
    for record in payload.get("records", []):
        name = record.get("function")
        if not isinstance(name, str) or not name:
            raise ValueError("KCFI report contains an invalid function name")
        if name in records:
            raise ValueError(f"duplicate KCFI function: {name}")
        records[name] = record
    return records


def render_markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# zte_tpd KCFI Callback Families",
        "",
        "This report is generated exclusively from the local stock module, the local candidate ELF, and Clang KCFI oracles. It does not attest hardware behavior.",
        "",
        "| Family | Stock KCFI | Signature | Stock functions | Candidate match | Status |",
        "|---|---:|---|---:|---:|---|",
    ]
    for family in payload["families"]:
        lines.append(
            f"| `{family['name']}` | `{family['stock_type_id']}` | "
            f"`{family['recovered_signature']}` | {family['stock_function_count']} | "
            f"{family['matching_candidate_count']} | `{family['status']}` |"
        )
    lines.extend(
        [
            "",
            "## Gate Meaning",
            "",
            "- `MATCH`: every stock function in the family exists in the candidate with the exact KCFI type ID.",
            "- `MISMATCH`: at least one function is missing or retains another KCFI type.",
            "- KCFI proves indirect-call ABI compatibility, not function-body parity, timing, locking, MMIO, SPI, IRQ, or electrical behavior.",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("stock", type=Path)
    parser.add_argument("candidate", type=Path)
    parser.add_argument("--oracle-root", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--markdown", type=Path, required=True)
    args = parser.parse_args()

    stock = records_by_name(json.loads(args.stock.read_text(encoding="utf-8")))
    candidate = records_by_name(json.loads(args.candidate.read_text(encoding="utf-8")))
    families = []
    for specification in FAMILIES:
        functions = sorted(
            name
            for name, record in stock.items()
            if record.get("type_id") == specification["stock_type_id"]
        )
        matching = [
            name
            for name in functions
            if candidate.get(name, {}).get("type_id") == specification["stock_type_id"]
        ]
        missing = [name for name in functions if name not in candidate]
        mismatched = [
            {
                "function": name,
                "stock_type_id": specification["stock_type_id"],
                "candidate_type_id": candidate.get(name, {}).get("type_id"),
            }
            for name in functions
            if name in candidate
            and candidate[name].get("type_id") != specification["stock_type_id"]
        ]
        oracle_path = args.oracle_root / specification["oracle"]
        oracle_passed = False
        if oracle_path.is_file():
            oracle_passed = bool(json.loads(oracle_path.read_text(encoding="utf-8")).get("passed"))
        family = {
            **specification,
            "oracle_path": str(oracle_path.resolve()),
            "oracle_passed": oracle_passed,
            "stock_function_count": len(functions),
            "stock_functions": functions,
            "matching_candidate_count": len(matching),
            "matching_candidate_functions": matching,
            "missing_candidate_functions": missing,
            "mismatched_candidate_functions": mismatched,
        }
        family["status"] = (
            "MATCH"
            if functions and oracle_passed and len(matching) == len(functions)
            else "MISMATCH"
        )
        families.append(family)

    payload = {
        "schema_version": "1.0",
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "mode": "offline_local_elf_kcfi_family_audit",
        "stock_report": str(args.stock.resolve()),
        "candidate_report": str(args.candidate.resolve()),
        "families": families,
        "summary": {
            "family_count": len(families),
            "matching_families": sum(family["status"] == "MATCH" for family in families),
            "stock_functions": sum(family["stock_function_count"] for family in families),
            "matching_candidate_functions": sum(
                family["matching_candidate_count"] for family in families
            ),
        },
        "limitations": [
            "KCFI is an indirect-call ABI oracle, not a body-equivalence oracle.",
            "Typedefs with the same normalized machine type may share a KCFI ID; semantic use and local kernel APIs select the canonical spelling.",
            "No device, network, ADB, fastboot, insmod, rmmod, SPI, IRQ, MMIO, or partition operation is performed.",
        ],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    args.markdown.parent.mkdir(parents=True, exist_ok=True)
    args.markdown.write_text(render_markdown(payload), encoding="utf-8")
    print(json.dumps(payload["summary"], sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
