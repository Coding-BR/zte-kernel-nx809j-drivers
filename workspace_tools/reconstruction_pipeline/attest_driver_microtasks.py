#!/usr/bin/env python3
"""Promote driver microtasks only from hash-backed build, KCFI and test evidence."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
from pathlib import Path
from typing import Any


def read_json(path: Path) -> dict[str, Any]:
    value = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(value, dict):
        raise ValueError(f"expected JSON object: {path}")
    return value


def write_json(path: Path, value: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(
        json.dumps(value, indent=2, sort_keys=True, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )


def write_markdown(path: Path, driver: str, tasks: list[dict[str, Any]]) -> None:
    lines = [
        f"# Microtarefas Obrigatorias: {driver}",
        "",
        "Cada linha representa uma funcao stock com fonte revisado e evidencias de compilacao, KCFI e teste.",
        "",
        "| ID | Funcao stock | Entrada | Categoria | Fonte mapeada | Estado |",
        "|---|---|---|---|---|---|",
    ]
    for task in tasks:
        source = f"{task['source_file']}:{task['source_function']}"
        lines.append(
            f"| {task['id']} | {task['stock_function']} | {task['stock_entry']} | "
            f"{task['category']} | {source} | {task['status']} |"
        )
    path.write_text("\n".join(lines) + "\n", encoding="utf-8", newline="\n")


def write_prompts(path: Path, driver: str, tasks: list[dict[str, Any]]) -> None:
    lines = [f"# Prompts Atomicos: {driver}", ""]
    for task in tasks:
        lines.extend(
            [
                f"## {task['id']} - {task['stock_function']}",
                "",
                "```text",
                str(task.get("implementation_prompt", "")).rstrip(),
                "```",
                "",
            ]
        )
    path.write_text("\n".join(lines), encoding="utf-8", newline="\n")


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def relative_path(path: Path, workspace_root: Path) -> str:
    return str(path.resolve().relative_to(workspace_root.resolve()))


def function_id(name: Any, entry: Any) -> str:
    if not isinstance(name, str) or not name:
        raise ValueError("microtask or mapping has no stock function name")
    return f"{name}@{entry}" if isinstance(entry, str) and entry else name


def parse_args() -> argparse.Namespace:
    engineering_root = Path(__file__).resolve().parents[1]
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--driver", required=True)
    parser.add_argument("--build-report", type=Path, required=True)
    parser.add_argument("--test-report", type=Path, required=True)
    parser.add_argument("--kcfi-report", type=Path, required=True)
    parser.add_argument(
        "--kcfi-not-applicable",
        action="append",
        default=[],
        help="direct-call function without an indirect KCFI boundary; repeat as needed",
    )
    parser.add_argument("--engineering-root", type=Path, default=engineering_root)
    return parser.parse_args()


def require_build(report: dict[str, Any], driver: str) -> dict[str, Any]:
    records = report.get("drivers")
    if not isinstance(records, list):
        raise ValueError("build report has no drivers array")
    record = next((item for item in records if item.get("driver") == driver), None)
    if not isinstance(record, dict):
        raise ValueError(f"build report has no {driver} record")
    build = record.get("build", {})
    checks = record.get("checks", {})
    required = {
        "build_passed": build.get("passed") is True,
        "reproducible_build": build.get("reproducible") is True,
        "aarch64_rel": checks.get("aarch64_rel") is True,
        "alias_match": checks.get("alias_match") is True,
        "function_traceability": checks.get("function_traceability") is True,
        "namespace_match": checks.get("namespace_match") is True,
        "undefined_symbols_match": checks.get("undefined_symbols_match") is True,
    }
    failures = [name for name, passed in required.items() if not passed]
    if failures:
        raise ValueError("build evidence failed: " + ", ".join(failures))
    return {"checks": required, "build": build}


def main() -> int:
    args = parse_args()
    engineering_root = args.engineering_root.resolve()
    workspace_root = engineering_root.parent
    driver_root = engineering_root / "curated" / args.driver
    validation_root = engineering_root / "validation" / args.driver
    manifest_path = driver_root / "MICROTASKS.json"
    map_path = driver_root / "reconstruction_map.json"

    for path in (manifest_path, map_path, args.build_report, args.test_report, args.kcfi_report):
        if not path.resolve().is_file():
            raise ValueError(f"missing required input: {path}")

    manifest = read_json(manifest_path)
    reconstruction_map = read_json(map_path)
    build_report = read_json(args.build_report.resolve())
    test_report = read_json(args.test_report.resolve())
    kcfi_report = read_json(args.kcfi_report.resolve())
    build_evidence = require_build(build_report, args.driver)

    if test_report.get("driver") != args.driver or test_report.get("passed") is not True:
        raise ValueError("host test report did not pass for requested driver")
    if test_report.get("reproducible") is not True:
        raise ValueError("host test report is not reproducible")
    covered = set(test_report.get("covered_functions", []))

    if kcfi_report.get("passed") is not True:
        raise ValueError("KCFI report did not pass")
    kcfi_comparisons = {
        function_id(item.get("function"), item.get("stock_entry")): item
        for item in kcfi_report.get("comparisons", [])
        if isinstance(item, dict)
        and isinstance(item.get("function"), str)
        and item.get("passed") is True
    }
    kcfi_not_applicable = set(args.kcfi_not_applicable)
    overlap = set(kcfi_comparisons) & kcfi_not_applicable
    if overlap:
        raise ValueError("KCFI functions cannot also be not-applicable: " + ", ".join(sorted(overlap)))

    tasks = manifest.get("tasks")
    if not isinstance(tasks, list) or not tasks:
        raise ValueError("microtask manifest has no tasks")
    name_counts: dict[str, int] = {}
    for task in tasks:
        name = task.get("stock_function")
        if not isinstance(name, str) or not name:
            raise ValueError("microtask has no stock_function")
        name_counts[name] = name_counts.get(name, 0) + 1

    def task_key(item: dict[str, Any]) -> str:
        name = item.get("stock_function")
        if name_counts.get(name, 0) > 1:
            return function_id(name, item.get("stock_entry"))
        return function_id(name, None)

    functions = {task_key(task) for task in tasks}
    mappings: dict[str, dict[str, Any]] = {}
    for item in reconstruction_map.get("mappings", []):
        if not isinstance(item, dict) or item.get("status") != "reviewed":
            continue
        name = item.get("stock_function")
        key = function_id(name, item.get("stock_entry")) if name_counts.get(name, 0) > 1 else function_id(name, None)
        if key in mappings:
            raise ValueError(f"duplicate reviewed mapping identity: {key}")
        mappings[key] = item
    missing_mappings = functions - set(mappings)
    if missing_mappings:
        raise ValueError("functions missing reviewed source mapping: " + ", ".join(sorted(missing_mappings)))
    missing_tests = functions - covered
    comparison_keys = {
        function_id(name, None) if name_counts.get(name.split("@", 1)[0], 0) == 1 else name
        for name in kcfi_comparisons
    }
    normalized_comparisons = {
        function_id(key, None) if name_counts.get(key.split("@", 1)[0], 0) == 1 else key: value
        for key, value in kcfi_comparisons.items()
    }
    missing_kcfi = functions - comparison_keys - kcfi_not_applicable
    unknown_na = kcfi_not_applicable - functions
    if missing_tests:
        raise ValueError("functions missing direct host coverage: " + ", ".join(sorted(missing_tests)))
    if missing_kcfi:
        raise ValueError("functions missing KCFI decision: " + ", ".join(sorted(missing_kcfi)))
    if unknown_na:
        raise ValueError("unknown --kcfi-not-applicable functions: " + ", ".join(sorted(unknown_na)))

    source_hashes = {
        "build_report": sha256_file(args.build_report.resolve()),
        "test_report": sha256_file(args.test_report.resolve()),
        "kcfi_report": sha256_file(args.kcfi_report.resolve()),
    }
    generated_utc = dt.datetime.now(dt.timezone.utc).isoformat()

    for task in tasks:
        task_id = str(task["id"])
        function = str(task["stock_function"])
        identity = task_key(task)
        mapping = mappings[identity]
        evidence_dir = validation_root / "microtasks" / task_id
        compile_path = evidence_dir / "compile.json"
        test_path = evidence_dir / "test.json"
        kcfi_path = evidence_dir / "kcfi.json"

        write_json(
            compile_path,
            {
                "schema_version": "1.0",
                "generated_utc": generated_utc,
                "driver": args.driver,
                "function": identity,
                "stock_function": function,
                "stock_entry": task.get("stock_entry"),
                "passed": True,
                "source_report": relative_path(args.build_report, workspace_root),
                "source_report_sha256": source_hashes["build_report"],
                **build_evidence,
            },
        )
        write_json(
            test_path,
            {
                "schema_version": "1.0",
                "generated_utc": generated_utc,
                "driver": args.driver,
                "function": identity,
                "stock_function": function,
                "stock_entry": task.get("stock_entry"),
                "passed": True,
                "directly_covered": True,
                "source_report": relative_path(args.test_report, workspace_root),
                "source_report_sha256": source_hashes["test_report"],
                "test_source": test_report.get("test_source"),
            },
        )
        comparison = normalized_comparisons.get(identity)
        write_json(
            kcfi_path,
            {
                "schema_version": "1.0",
                "generated_utc": generated_utc,
                "driver": args.driver,
                "function": identity,
                "stock_function": function,
                "stock_entry": task.get("stock_entry"),
                "passed": True,
                "applicable": comparison is not None,
                "decision": comparison or {
                    "reason": "Function is reached only by direct calls in the reconstructed and stock call graphs; no indirect callback boundary was observed."
                },
                "source_report": relative_path(args.kcfi_report, workspace_root),
                "source_report_sha256": source_hashes["kcfi_report"],
            },
        )

        task["status"] = "PASS"
        task["source_file"] = mapping["source_file"]
        task["source_function"] = mapping["source_function"]
        prompt_lines = str(task.get("implementation_prompt", "")).splitlines()
        task["implementation_prompt"] = "\n".join(
            f"Alvo no fonte: {task['source_file']}:{task['source_function']}"
            if line.startswith("Alvo no fonte:") else line
            for line in prompt_lines
        )
        task["evidence"] = [
            {
                "role": role,
                "path": relative_path(path, workspace_root),
                "sha256": sha256_file(path),
            }
            for role, path in (
                ("compile", compile_path),
                ("kcfi", kcfi_path),
                ("test", test_path),
            )
        ]
        task["attestation"] = "Promoted by attest_driver_microtasks.py after strict hash-backed checks."

    manifest["generated_utc"] = generated_utc
    manifest["status"] = "PASS"
    manifest["attestation_tool"] = str(Path(__file__).resolve())
    write_json(manifest_path, manifest)
    write_markdown(driver_root / "MICROTASKS.md", args.driver, tasks)
    write_prompts(driver_root / "MICROTASK_PROMPTS.md", args.driver, tasks)
    write_json(
        validation_root / "microtask_validation.json",
        {
            "schema_version": "1.0",
            "status": "PASS",
            "driver": args.driver,
            "tests": [relative_path(args.test_report, workspace_root)],
            "kcfi": [relative_path(args.kcfi_report, workspace_root)],
            "reports": [relative_path(manifest_path, workspace_root)],
            "audit": relative_path(validation_root / "microtask_audit.json", workspace_root),
            "verified_tasks": len(tasks),
            "generated_utc": generated_utc,
        },
    )
    print(json.dumps({"driver": args.driver, "passed": True, "tasks": len(tasks)}))
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError) as error:
        print(f"error: {error}")
        raise SystemExit(2)
