#!/usr/bin/env python3
"""Promote only microtasks backed by current build, KCFI, and direct tests."""

from __future__ import annotations

import argparse
import hashlib
import json
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


def sha256_file(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def read_object(path: Path) -> dict[str, Any]:
    payload = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(payload, dict):
        raise ValueError(f"expected JSON object: {path}")
    return payload


def write_text_lf(path: Path, value: str) -> None:
    with path.open("w", encoding="utf-8", newline="\n") as handle:
        handle.write(value)


def relative_evidence_path(workspace: Path, path: Path) -> str:
    resolved = path.resolve()
    try:
        return resolved.relative_to(workspace).as_posix()
    except ValueError as error:
        raise ValueError(f"evidence escapes workspace: {resolved}") from error


def build_passed(payload: dict[str, Any]) -> bool:
    drivers = payload.get("drivers", [])
    aggregate_passed = bool(
        isinstance(drivers, list)
        and len(drivers) == 1
        and drivers[0].get("status", "").startswith("static_verified")
        and drivers[0].get("build", {}).get("passed")
        and drivers[0].get("build", {}).get("reproducible")
    )
    canonical_passed = bool(
        payload.get("passed") is True
        and payload.get("reproducible") is True
        and isinstance(payload.get("candidate"), dict)
        and isinstance(payload["candidate"].get("sha256"), str)
    )
    return aggregate_passed or canonical_passed


def build_candidate_sha256(payload: dict[str, Any]) -> str | None:
    candidate = payload.get("candidate")
    if isinstance(candidate, dict) and isinstance(candidate.get("sha256"), str):
        return candidate["sha256"].lower()
    drivers = payload.get("drivers")
    if isinstance(drivers, list) and len(drivers) == 1:
        build = drivers[0].get("build")
        if isinstance(build, dict):
            for key in ("candidate_sha256", "sha256"):
                value = build.get(key)
                if isinstance(value, str):
                    return value.lower()
    return None


def kcfi_functions(reports: list[tuple[Path, dict[str, Any]]]) -> dict[str, Path]:
    functions: dict[str, Path] = {}
    for path, payload in reports:
        if not payload.get("passed"):
            continue
        for comparison in payload.get("comparisons", []):
            if comparison.get("passed") and isinstance(comparison.get("function"), str):
                functions[comparison["function"]] = path
    return functions


def direct_tested_sources(
    source_dir: Path,
    reports: list[tuple[Path, dict[str, Any]]],
) -> dict[str, Path]:
    sources: dict[str, Path] = {}
    for report_path, payload in reports:
        if not payload.get("passed"):
            continue
        for record in payload.get("inputs", []):
            path_value = record.get("path")
            expected_sha = record.get("sha256")
            if not isinstance(path_value, str) or not isinstance(expected_sha, str):
                continue
            basename = Path(path_value).name
            current = source_dir / basename
            if current.suffix != ".c" or not current.is_file():
                continue
            if sha256_file(current) == expected_sha:
                sources[basename] = report_path
    return sources


def reset_microtask_attestations(
    tasks: object,
    *,
    selected_functions: set[str] | None = None,
    preserve_unselected: bool = False,
) -> tuple[list[dict[str, Any]], set[str]]:
    if not isinstance(tasks, list) or not tasks:
        raise ValueError("manifest has no microtasks")
    normalized: list[dict[str, Any]] = []
    previous_pass: set[str] = set()
    for task in tasks:
        if not isinstance(task, dict):
            raise ValueError("manifest contains a non-object microtask")
        task_id = task.get("id")
        if task.get("status") == "PASS" and isinstance(task_id, str):
            previous_pass.add(task_id)
        source_function = task.get("source_function")
        selected = not selected_functions or source_function in selected_functions
        if preserve_unselected and not selected:
            normalized.append(task)
            continue
        task["status"] = "READY_FOR_IMPLEMENTATION"
        task["evidence"] = []
        normalized.append(task)
    return normalized, previous_pass


def render_manifest_markdown(payload: dict[str, Any]) -> str:
    lines = [
        f"# Microtarefas Obrigatorias: {payload['driver']}",
        "",
        "Cada linha representa uma unica funcao stock. Nenhuma funcao pode ser "
        "promovida sem mapeamento, compilacao, KCFI e teste com hash verificavel.",
        "",
        "| ID | Funcao stock | Entrada | Categoria | Fonte mapeada | Estado |",
        "|---|---|---|---|---|---|",
    ]
    for task in payload.get("tasks", []):
        source = task.get("source_file", "")
        if task.get("source_function"):
            source += ":" + task["source_function"]
        lines.append(
            "| {id} | {stock} | {entry} | {category} | {source} | {status} |".format(
                id=task["id"],
                stock=task["stock_function"],
                entry=task.get("stock_entry", ""),
                category=task["category"],
                source=source or "PENDENTE",
                status=task["status"],
            )
        )
    lines.extend(
        [
            "",
            "O estado exibido e gerado do mesmo manifesto JSON pelo atestador. "
            "PASS exige evidencias hashadas de compile, KCFI e teste direto.",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--workspace", type=Path, default=Path.cwd())
    parser.add_argument("--driver", required=True)
    parser.add_argument("--manifest", type=Path, required=True)
    parser.add_argument("--source-dir", type=Path, required=True)
    parser.add_argument("--build-report", type=Path, required=True)
    parser.add_argument("--kcfi-report", action="append", type=Path, required=True)
    parser.add_argument("--test-report", action="append", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument(
        "--function",
        action="append",
        default=[],
        help="source function to attest; repeat for a scoped checkpoint",
    )
    parser.add_argument(
        "--preserve-unselected",
        action="store_true",
        help="leave statuses and evidence outside --function unchanged",
    )
    parser.add_argument(
        "--candidate",
        type=Path,
        help="candidate module whose SHA-256 must match the build report",
    )
    parser.add_argument("--dry-run", action="store_true")
    args = parser.parse_args()

    workspace = args.workspace.resolve()
    manifest_path = args.manifest.resolve()
    source_dir = args.source_dir.resolve()
    build_path = args.build_report.resolve()
    build = read_object(build_path)
    if not build_passed(build):
        raise ValueError("build report is not static_verified and reproducible")
    candidate_sha = build_candidate_sha256(build)
    if args.candidate:
        candidate_path = args.candidate.resolve()
        if not candidate_path.is_file():
            raise ValueError(f"candidate module is missing: {candidate_path}")
        if candidate_sha is None:
            raise ValueError("build report has no candidate SHA-256")
        if sha256_file(candidate_path) != candidate_sha:
            raise ValueError("candidate module does not match build report")

    kcfi_reports = [(path.resolve(), read_object(path.resolve())) for path in args.kcfi_report]
    test_reports = [(path.resolve(), read_object(path.resolve())) for path in args.test_report]
    typed = kcfi_functions(kcfi_reports)
    tested = direct_tested_sources(source_dir, test_reports)
    manifest = read_object(manifest_path)
    if manifest.get("driver") != args.driver:
        raise ValueError("manifest driver does not match --driver")
    selected_functions = set(args.function)
    if args.preserve_unselected and not selected_functions:
        raise ValueError("--preserve-unselected requires at least one --function")
    tasks, previous_pass = reset_microtask_attestations(
        manifest.get("tasks"),
        selected_functions=selected_functions,
        preserve_unselected=args.preserve_unselected,
    )
    known_functions = {
        task.get("source_function")
        for task in tasks
        if isinstance(task.get("source_function"), str)
    }
    unknown_functions = selected_functions - known_functions
    if unknown_functions:
        raise ValueError(
            "requested functions are absent from manifest: "
            + ", ".join(sorted(unknown_functions))
        )

    build_evidence = {
        "role": "compile",
        "path": relative_evidence_path(workspace, build_path),
        "sha256": sha256_file(build_path),
    }
    promoted = []
    for task in tasks:
        source_file = task.get("source_file")
        source_function = task.get("source_function")
        if not isinstance(source_file, str) or not isinstance(source_function, str):
            continue
        if selected_functions and source_function not in selected_functions:
            continue
        kcfi_path = typed.get(source_function)
        test_path = tested.get(Path(source_file).name)
        if kcfi_path is None or test_path is None:
            continue
        task["status"] = "PASS"
        task["evidence"] = [
            build_evidence,
            {
                "role": "kcfi",
                "path": relative_evidence_path(workspace, kcfi_path),
                "sha256": sha256_file(kcfi_path),
            },
            {
                "role": "test",
                "path": relative_evidence_path(workspace, test_path),
                "sha256": sha256_file(test_path),
            },
        ]
        promoted.append(task["id"])

    manifest["generated_utc"] = datetime.now(timezone.utc).isoformat()
    current_pass = {
        str(task["id"])
        for task in tasks
        if task.get("status") == "PASS" and isinstance(task.get("id"), str)
    }
    manifest["status"] = "PASS" if len(current_pass) == len(tasks) else "INCOMPLETE"
    if not args.dry_run:
        write_text_lf(
            manifest_path,
            json.dumps(manifest, indent=2, ensure_ascii=False) + "\n",
        )
        write_text_lf(
            manifest_path.with_suffix(".md"),
            render_manifest_markdown(manifest),
        )

    payload = {
        "schema_version": "1.0",
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "driver": args.driver,
        "dry_run": args.dry_run,
        "manifest": str(manifest_path),
        "build_report": str(build_path),
        "kcfi_reports": [str(path) for path, _ in kcfi_reports],
        "test_reports": [str(path) for path, _ in test_reports],
        "candidate": str(args.candidate.resolve()) if args.candidate else None,
        "candidate_sha256": candidate_sha,
        "selected_functions": sorted(selected_functions),
        "preserve_unselected": args.preserve_unselected,
        "summary": {
            "task_count": len(tasks),
            "promoted_pass": len(promoted),
            "current_pass": len(current_pass),
            "remaining": len(tasks) - len(current_pass),
            "previous_pass": len(previous_pass),
            "retained_pass": len(previous_pass.intersection(current_pass)),
            "new_pass": len(current_pass - previous_pass),
            "demoted_stale_pass": len(previous_pass - current_pass),
        },
        "promoted_tasks": promoted,
        "gate_passed": len(current_pass) == len(tasks) and bool(tasks),
        "limitations": [
            "Shared build evidence proves whole-module compilation but does not replace per-function KCFI and direct-test evidence.",
            "Only source files whose current SHA-256 appears in a passing direct-test report are eligible.",
            "Hardware behavior remains outside this offline microtask gate.",
        ],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    write_text_lf(args.output, json.dumps(payload, indent=2, sort_keys=True) + "\n")
    print(json.dumps(payload["summary"], sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
