#!/usr/bin/env python3
"""Audit complete offline reconstruction evidence without touching a device.

The highest possible verdict is STATIC_ALIGNED_CANDIDATE. This program contains
no ADB, fastboot, module-loading, or partition-writing operation.
"""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import os
import sys
from pathlib import Path
from typing import Any


REQUIRED_GHIDRA_FILES = (
    "manifest.json",
    "functions.jsonl",
    "calls.jsonl",
    "externals.jsonl",
    "symbols.jsonl",
    "strings.jsonl",
    "memory_blocks.jsonl",
    "pseudocode.c",
)


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def md5_file(path: Path) -> str:
    digest = hashlib.md5(usedforsecurity=False)
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def read_json(path: Path) -> dict[str, Any]:
    value = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(value, dict):
        raise ValueError(f"{path} is not a JSON object")
    return value


def read_jsonl(path: Path) -> list[dict[str, Any]]:
    records: list[dict[str, Any]] = []
    for line_number, line in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
        if not line.strip():
            continue
        value = json.loads(line)
        if not isinstance(value, dict):
            raise ValueError(f"{path}:{line_number} is not a JSON object")
        records.append(value)
    return records


def gate(
    name: str,
    *,
    blockers: list[str] | None = None,
    evidence: list[Path | str] | None = None,
    details: dict[str, Any] | None = None,
    status: str | None = None,
) -> dict[str, Any]:
    blockers = sorted(set(blockers or []))
    return {
        "name": name,
        "status": status or ("PASS" if not blockers else "INCOMPLETE"),
        "blockers": blockers,
        "evidence": [str(item) for item in (evidence or [])],
        "details": details or {},
    }


def evidence_passes(payload: dict[str, Any]) -> bool:
    return payload.get("status") == "PASS" or payload.get("passed") is True


def discover_repo_root() -> Path:
    environment = os.environ.get("NX809J_REPO_ROOT")
    candidates = [Path(environment)] if environment else []
    script = Path(__file__).resolve()
    candidates.extend(script.parents)
    candidates.extend(parent / "zte-kernel-nx809j-drivers" for parent in script.parents)
    for candidate in candidates:
        resolved = candidate.expanduser().resolve()
        if (
            (resolved / "README.md").is_file()
            and (resolved / "reverse_engineering").is_dir()
            and (resolved / "workspace_tools").is_dir()
        ):
            return resolved
    raise ValueError("repository root not found; set NX809J_REPO_ROOT")


def function_id(record: dict[str, Any]) -> str | None:
    name = record.get("name")
    entry = record.get("entry")
    if not isinstance(name, str) or not name:
        return None
    return f"{name}@{entry}" if isinstance(entry, str) and entry else name


def discover_engineering_root(explicit: Path | None, repo_root: Path) -> Path:
    candidates: list[Path] = []
    if explicit:
        candidates.append(explicit)
    environment = os.environ.get("NX809J_ENGINEERING_ROOT")
    if environment:
        candidates.append(Path(environment))
    candidates.extend(
        (
            repo_root.parent / "kernel-docker-workspace" / "engenharia",
            repo_root / "engenharia",
            Path.cwd() / "engenharia",
        )
    )
    for candidate in candidates:
        resolved = candidate.expanduser().resolve()
        if (resolved / "curated").is_dir() and (resolved / "runs").is_dir():
            return resolved
    raise ValueError(
        "engineering root not found; pass --engineering-root or set "
        "NX809J_ENGINEERING_ROOT"
    )


def find_run(engineering_root: Path, driver: str) -> Path | None:
    candidates = sorted(
        (path for path in (engineering_root / "runs").glob("*") if path.is_dir()),
        key=lambda path: path.stat().st_mtime,
        reverse=True,
    )
    for candidate in candidates:
        stock = candidate / "01_acquisition" / "modules" / f"{driver}.ko"
        functions = (
            candidate / "03_ghidra" / "exports" / f"{driver}.ko" / "functions.jsonl"
        )
        if stock.is_file() and functions.is_file():
            return candidate
    return None


def file_record(path: Path) -> dict[str, Any]:
    if not path.is_file():
        return {"path": str(path), "exists": False}
    return {
        "path": str(path),
        "exists": True,
        "size": path.stat().st_size,
        "sha256": sha256_file(path),
    }


def stock_gate(run_root: Path | None, driver: str) -> tuple[dict[str, Any], Path | None, str | None]:
    blockers: list[str] = []
    if run_root is None:
        blockers.append("no run contains both stock and Ghidra evidence")
        return gate("O1 Stock/ELF", blockers=blockers), None, None
    stock = run_root / "01_acquisition" / "modules" / f"{driver}.ko"
    if not stock.is_file():
        blockers.append("stock module is missing")
        return gate("O1 Stock/ELF", blockers=blockers, evidence=[stock]), None, None
    stock_sha = sha256_file(stock)
    if stock.stat().st_size == 0:
        blockers.append("stock module is empty")
    run_validation = run_root / "00_manifest" / "validation.json"
    if not run_validation.is_file():
        blockers.append("run validation manifest is missing")
    else:
        try:
            validation = read_json(run_validation)
            if str(validation.get("status", "")).lower() != "pass":
                blockers.append("engineering run validation did not pass")
            module_rows = validation.get("modules", [])
            matching = [
                row for row in module_rows
                if isinstance(row, dict) and row.get("module") == f"{driver}.ko"
            ]
            if not matching or matching[0].get("errors"):
                blockers.append("stock module is not clean in the run validation")
        except (OSError, ValueError, json.JSONDecodeError) as error:
            blockers.append(f"invalid run validation manifest: {error}")
    return (
        gate(
            "O1 Stock/ELF",
            blockers=blockers,
            evidence=[stock],
            details={"sha256": stock_sha, "size": stock.stat().st_size},
        ),
        stock,
        stock_sha,
    )


def ghidra_gate(
    run_root: Path | None, driver: str, stock: Path | None
) -> tuple[dict[str, Any], list[dict[str, Any]]]:
    blockers: list[str] = []
    records: list[dict[str, Any]] = []
    if run_root is None:
        return gate("O2/O3 Assembly + Ghidra", blockers=["engineering run is missing"]), records
    export = run_root / "03_ghidra" / "exports" / f"{driver}.ko"
    for name in REQUIRED_GHIDRA_FILES:
        path = export / name
        if not path.is_file() or path.stat().st_size == 0:
            blockers.append(f"missing or empty Ghidra export: {name}")
    manifest: dict[str, Any] = {}
    if not blockers:
        try:
            manifest = read_json(export / "manifest.json")
            records = read_jsonl(export / "functions.jsonl")
            if manifest.get("program") != f"{driver}.ko":
                blockers.append("Ghidra program name differs from stock module")
            if stock is not None and manifest.get("executable_md5", "").lower() != md5_file(stock):
                blockers.append("Ghidra executable MD5 differs from current stock")
            if manifest.get("function_count") != len(records):
                blockers.append("manifest function_count differs from functions.jsonl")
            seen: set[str] = set()
            for index, record in enumerate(records):
                name = record.get("name")
                if not isinstance(name, str) or not name:
                    blockers.append(f"function {index} has no name")
                    continue
                identity = function_id(record)
                if identity in seen:
                    blockers.append(f"duplicate Ghidra function identity: {identity}")
                if identity:
                    seen.add(identity)
                if record.get("decompiled") is not True or record.get("decompiler_error"):
                    blockers.append(f"decompilation failed: {name}")
                for field in ("decompiled_file", "pcode_file"):
                    value = record.get(field)
                    if not isinstance(value, str) or not value:
                        blockers.append(f"{name} has no {field}")
                        continue
                    path = (export / value).resolve()
                    if export.resolve() not in path.parents:
                        blockers.append(f"{name} {field} escapes export directory")
                    elif not path.is_file() or path.stat().st_size == 0:
                        blockers.append(f"{name} {field} is missing or empty")
        except (OSError, ValueError, json.JSONDecodeError) as error:
            blockers.append(f"invalid Ghidra export: {error}")
    details = {
        "function_count": len(records),
        "image_base": manifest.get("image_base"),
        "pointer_size": manifest.get("pointer_size"),
    }
    return gate("O3 Ghidra", blockers=blockers, evidence=[export], details=details), records


def validate_assembly_manifest(
    manifest_path: Path,
    stock_sha: str | None,
    required_ids: set[str],
    unique_ids_by_name: dict[str, str],
) -> tuple[int, list[str], dict[str, Any]]:
    blockers: list[str] = []
    try:
        payload = read_json(manifest_path)
    except (OSError, ValueError, json.JSONDecodeError) as error:
        return 0, [f"invalid assembly manifest: {error}"], {}
    if payload.get("source", {}).get("sha256") != stock_sha:
        blockers.append("assembly source SHA-256 differs from current stock")
    records = payload.get("records")
    if not isinstance(records, list):
        return 0, blockers + ["assembly manifest has no records"], payload
    covered: set[str] = set()
    for record in records:
        if not isinstance(record, dict):
            blockers.append("invalid assembly record")
            continue
        name = record.get("function")
        if not isinstance(name, str) or not name:
            blockers.append("assembly record has no function")
            continue
        if record.get("complete") is not True:
            blockers.append(f"assembly interval incomplete: {name}")
            continue
        file_name = record.get("file")
        if not isinstance(file_name, str):
            blockers.append(f"assembly file missing: {name}")
            continue
        assembly = manifest_path.parent / file_name
        if not assembly.is_file() or assembly.stat().st_size == 0:
            blockers.append(f"assembly file missing or empty: {name}")
            continue
        expected_sha = record.get("sha256")
        if expected_sha and sha256_file(assembly) != expected_sha:
            blockers.append(f"assembly SHA-256 mismatch: {name}")
            continue
        identity = record.get("function_id")
        if not isinstance(identity, str) or not identity:
            identity = unique_ids_by_name.get(name)
        if identity:
            covered.add(identity)
        else:
            blockers.append(f"ambiguous assembly identity: {name}")
    missing = sorted(required_ids - covered)
    if missing:
        blockers.append(f"{len(missing)} Ghidra functions lack complete assembly")
    return len(covered & required_ids), blockers, payload


def assembly_gate(
    validation_dir: Path, stock_sha: str | None, records: list[dict[str, Any]]
) -> dict[str, Any]:
    required_ids = {identity for item in records if (identity := function_id(item))}
    name_counts: dict[str, int] = {}
    for item in records:
        name = item.get("name")
        if isinstance(name, str) and name:
            name_counts[name] = name_counts.get(name, 0) + 1
    unique_ids_by_name = {
        item["name"]: identity
        for item in records
        if name_counts.get(item.get("name")) == 1
        and isinstance(item.get("name"), str)
        and (identity := function_id(item))
    }
    candidates = sorted(
        (
            path
            for path in validation_dir.rglob("manifest.json")
            if "assembly" in str(path.parent).lower()
        ),
        key=lambda path: path.stat().st_mtime,
        reverse=True,
    )
    if not candidates:
        return gate(
            "O2 Assembly",
            blockers=["no assembly manifest found"],
            evidence=[validation_dir / "offline_static" / "stock_assembly"],
            details={"required_functions": len(required_ids), "covered_functions": 0},
        )
    best: tuple[int, list[str], dict[str, Any], Path] | None = None
    for candidate in candidates:
        covered, blockers, payload = validate_assembly_manifest(
            candidate, stock_sha, required_ids, unique_ids_by_name
        )
        item = (covered, blockers, payload, candidate)
        if best is None or (covered, -len(blockers)) > (best[0], -len(best[1])):
            best = item
    assert best is not None
    covered, blockers, _payload, path = best
    return gate(
        "O2 Assembly",
        blockers=blockers,
        evidence=[path],
        details={"required_functions": len(required_ids), "covered_functions": covered},
    )


def map_gate(
    driver_root: Path, stock_sha: str | None, records: list[dict[str, Any]]
) -> dict[str, Any]:
    path = driver_root / "reconstruction_map.json"
    blockers: list[str] = []
    required = {identity for item in records if (identity := function_id(item))}
    name_counts: dict[str, int] = {}
    ids_by_name: dict[str, str] = {}
    for item in records:
        name = item.get("name")
        if isinstance(name, str) and name:
            name_counts[name] = name_counts.get(name, 0) + 1
            identity = function_id(item)
            if identity:
                ids_by_name[name] = identity
    mapped: set[str] = set()
    if not path.is_file():
        blockers.append("reconstruction_map.json is missing")
    else:
        try:
            payload = read_json(path)
            if payload.get("stock_sha256") != stock_sha:
                blockers.append("reconstruction map stock SHA-256 mismatch")
            mappings = payload.get("mappings")
            if not isinstance(mappings, list):
                blockers.append("reconstruction map has no mappings")
                mappings = []
            for index, mapping in enumerate(mappings):
                if not isinstance(mapping, dict):
                    blockers.append(f"mapping {index} is invalid")
                    continue
                name = mapping.get("stock_function")
                source_file = mapping.get("source_file")
                if not isinstance(name, str) or not name:
                    blockers.append(f"mapping {index} has no stock_function")
                    continue
                raw_entry = mapping.get("stock_entry")
                if isinstance(raw_entry, str) and raw_entry:
                    mapped.add(f"{name}@{raw_entry}")
                elif name_counts.get(name) == 1:
                    mapped.add(ids_by_name[name])
                else:
                    blockers.append(f"ambiguous mapping lacks stock_entry: {name}")
                if mapping.get("status") != "reviewed":
                    blockers.append(f"mapping is not reviewed: {name}")
                if not isinstance(source_file, str) or not (driver_root / source_file).is_file():
                    blockers.append(f"mapped source file is missing: {name}")
                evidence = mapping.get("evidence")
                if not isinstance(evidence, list) or not evidence:
                    blockers.append(f"mapping has no evidence: {name}")
        except (OSError, ValueError, json.JSONDecodeError) as error:
            blockers.append(f"invalid reconstruction map: {error}")
    missing = required - mapped
    if missing:
        blockers.append(f"{len(missing)} Ghidra functions are not mapped")
    return gate(
        "O4 Reconstruction map",
        blockers=blockers,
        evidence=[path],
        details={"required_functions": len(required), "mapped_functions": len(required & mapped)},
    )


def named_report_gate(
    name: str,
    path: Path,
    *,
    required_fields: tuple[str, ...] = (),
    expected_hashes: dict[str, str | None] | None = None,
) -> dict[str, Any]:
    blockers: list[str] = []
    payload: dict[str, Any] = {}
    if not path.is_file():
        blockers.append(f"missing {path.name}")
    else:
        try:
            payload = read_json(path)
            if not evidence_passes(payload):
                blockers.append("report status is not PASS")
            for field in required_fields:
                if not payload.get(field):
                    blockers.append(f"missing report field: {field}")
            for field, expected in (expected_hashes or {}).items():
                if expected is not None and payload.get(field) != expected:
                    blockers.append(f"{field} is missing or targets another artifact")
        except (OSError, ValueError, json.JSONDecodeError) as error:
            blockers.append(f"invalid report: {error}")
    return gate(name, blockers=blockers, evidence=[path], details=payload)


def microtask_gate(validation_dir: Path, function_count: int) -> dict[str, Any]:
    path = validation_dir / "microtask_audit.json"
    result = named_report_gate("O6 Microtasks", path)
    checked = result["details"].get("checked_tasks", 0)
    if checked != function_count:
        result["blockers"].append(
            f"microtask count {checked} differs from Ghidra function count {function_count}"
        )
        result["status"] = "INCOMPLETE"
    result["blockers"] = sorted(set(result["blockers"]))
    return result


def kcfi_gate(validation_dir: Path, stock_sha: str | None, candidate_sha: str | None) -> dict[str, Any]:
    blockers: list[str] = []
    top_level = list(validation_dir.glob("*kcfi*.json"))
    stock_reports: list[Path] = []
    comparisons: list[tuple[Path, dict[str, Any]]] = []
    for path in top_level:
        try:
            payload = read_json(path)
        except (OSError, ValueError, json.JSONDecodeError):
            continue
        if payload.get("source", {}).get("sha256") == stock_sha:
            stock_reports.append(path)
        rows = payload.get("comparisons")
        if isinstance(rows, list) and rows and all(
            isinstance(row, dict) and isinstance(row.get("function"), str) for row in rows
        ):
            comparisons.append((path, payload))
    if not stock_reports:
        blockers.append("no KCFI extraction is tied to the current stock SHA-256")
    valid_comparisons = []
    for path, payload in comparisons:
        rows = payload["comparisons"]
        if evidence_passes(payload) and all(row.get("passed") is True for row in rows):
            report_sha = payload.get("candidate_sha256")
            candidate_report = payload.get("candidate_report")
            if report_sha == candidate_sha:
                valid_comparisons.append((path, payload))
                continue
            if isinstance(candidate_report, str) and candidate_report:
                report_path = Path(candidate_report)
                if not report_path.is_absolute():
                    report_path = validation_dir / report_path
                try:
                    report_payload = read_json(report_path.resolve())
                except (OSError, ValueError, json.JSONDecodeError):
                    continue
                if report_payload.get("source", {}).get("sha256") == candidate_sha:
                    valid_comparisons.append((path, payload))
    if not valid_comparisons:
        blockers.append("no passing per-function KCFI comparison for the current candidate")
    evidence: list[Path] = stock_reports[:1]
    if valid_comparisons:
        evidence.append(valid_comparisons[0][0])
    return gate(
        "O8 KCFI",
        blockers=blockers,
        evidence=evidence,
        details={
            "stock_reports": len(stock_reports),
            "passing_comparisons": len(valid_comparisons),
        },
    )


def find_build_result(validation_dir: Path, driver: str, candidate_sha: str | None) -> tuple[Path | None, dict[str, Any] | None]:
    preferred = validation_dir / "offline_static" / "build_audit.json"
    discovered = {
        path
        for pattern in ("driver_audit*.json", "driver_build_audit*.json")
        for path in validation_dir.glob(pattern)
    }
    candidates = [preferred] + sorted(
        discovered,
        key=lambda path: path.stat().st_mtime,
        reverse=True,
    )
    for path in candidates:
        if not path.is_file():
            continue
        try:
            payload = read_json(path)
        except (OSError, ValueError, json.JSONDecodeError):
            continue
        results = payload.get("drivers") if isinstance(payload.get("drivers"), list) else [payload]
        for result in results:
            if not isinstance(result, dict) or result.get("driver") != driver:
                continue
            current_sha = result.get("candidate", {}).get("sha256")
            if current_sha != candidate_sha:
                continue
            build = result.get("build", {})
            if (
                str(result.get("status", "")).startswith("static_verified")
                and build.get("passed") is True
                and build.get("reproducible") is True
            ):
                return path, result
    return None, None


def build_parity_gate(validation_dir: Path, driver: str, candidate_sha: str | None) -> dict[str, Any]:
    blockers: list[str] = []
    evidence: list[Path] = []
    build_path, build_result = find_build_result(validation_dir, driver, candidate_sha)
    if build_path is None:
        blockers.append("no current passing double-clean build audit")
    else:
        evidence.append(build_path)
    parity_path = validation_dir / "parity_report.json"
    if not parity_path.is_file():
        blockers.append("parity_report.json is missing")
    else:
        evidence.append(parity_path)
        try:
            parity = read_json(parity_path)
            if not evidence_passes(parity):
                blockers.append("parity report status is not PASS")
            if parity.get("candidate_sha256") != candidate_sha:
                blockers.append("parity report targets another candidate SHA-256")
            comparisons = parity.get("comparisons", [])
            for item in comparisons if isinstance(comparisons, list) else []:
                if item.get("surface") != "hardware" and item.get("result") != "PASS":
                    blockers.append(f"offline parity failed: {item.get('surface', 'unknown')}")
        except (OSError, ValueError, json.JSONDecodeError) as error:
            blockers.append(f"invalid parity report: {error}")
    return gate(
        "O8/O9 Build + KMI + parity",
        blockers=blockers,
        evidence=evidence,
        details={"build_result": build_result or {}},
    )


def independent_review_gate(validation_dir: Path, candidate_sha: str | None) -> dict[str, Any]:
    path = validation_dir / "independent_review.json"
    result = named_report_gate(
        "O10 Independent review", path, required_fields=("implementer", "reviewer", "commands")
    )
    payload = result["details"]
    if payload.get("implementer") and payload.get("implementer") == payload.get("reviewer"):
        result["blockers"].append("reviewer equals implementer")
    if path.is_file() and payload.get("candidate_sha256") != candidate_sha:
        result["blockers"].append("review targets another candidate SHA-256")
    result["blockers"] = sorted(set(result["blockers"]))
    result["status"] = "PASS" if not result["blockers"] else "INCOMPLETE"
    return result


def audit_driver(engineering_root: Path, driver: str) -> dict[str, Any]:
    driver_root = engineering_root / "curated" / driver
    validation_dir = engineering_root / "validation" / driver
    run_root = find_run(engineering_root, driver)
    candidate = driver_root / f"{driver}.ko"
    candidate_sha = sha256_file(candidate) if candidate.is_file() else None
    identity_blockers = []
    c_sources = list(driver_root.rglob("*.c")) if driver_root.is_dir() else []
    if not driver_root.is_dir():
        identity_blockers.append("curated source directory is missing")
    if not c_sources:
        identity_blockers.append("no reconstructed C source was found")
    if candidate_sha is None:
        identity_blockers.append("candidate module is missing")
    gates = [
        gate(
            "O0 Identity/scope",
            blockers=identity_blockers,
            evidence=[driver_root, candidate],
            details={"candidate": file_record(candidate)},
        )
    ]
    stock_result, _stock, stock_sha = stock_gate(run_root, driver)
    gates.append(stock_result)
    ghidra_result, functions = ghidra_gate(run_root, driver, _stock)
    gates.append(ghidra_result)
    gates.append(assembly_gate(validation_dir, stock_sha, functions))
    gates.append(map_gate(driver_root, stock_sha, functions))
    gates.append(
        named_report_gate(
            "O5 ABI/layout",
            validation_dir / "abi_validation.json",
            required_fields=("document", "header_probe"),
            expected_hashes={"stock_sha256": stock_sha, "candidate_sha256": candidate_sha},
        )
    )
    gates.append(microtask_gate(validation_dir, len(functions)))
    gates.append(kcfi_gate(validation_dir, stock_sha, candidate_sha))
    gates.append(build_parity_gate(validation_dir, driver, candidate_sha))
    gates.append(independent_review_gate(validation_dir, candidate_sha))
    gates.append(
        gate(
            "Hardware",
            status="DEFERRED",
            blockers=["smartphone validation intentionally deferred"],
            details={"gating_for_offline_verdict": False},
        )
    )
    offline = [item for item in gates if item["status"] != "DEFERRED"]
    ready = all(item["status"] == "PASS" for item in offline)
    return {
        "driver": driver,
        "run_root": str(run_root) if run_root else None,
        "stock_sha256": stock_sha,
        "candidate_sha256": candidate_sha,
        "offline_static_ready": ready,
        "verdict": "STATIC_ALIGNED_CANDIDATE" if ready else "INCOMPLETE",
        "gates": gates,
    }


def render_markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Auditoria Offline de Reconstrucao do NX809J",
        "",
        "Dispositivo: **REDMAGIC 11 Pro+ (NX809J)**",
        "",
        "Esta auditoria nao usa o smartphone. O resultado maximo permitido e "
        "`STATIC_ALIGNED_CANDIDATE`; hardware permanece `DEFERRED`.",
        "",
        f"Gerado em: `{payload['generated_utc']}`",
        "",
        "| Driver | Veredito offline | Gates PASS | Bloqueadores |",
        "|---|---|---:|---|",
    ]
    for result in payload["drivers"]:
        passed = sum(item["status"] == "PASS" for item in result["gates"])
        blockers = [
            blocker
            for item in result["gates"]
            if item["status"] == "INCOMPLETE"
            for blocker in item["blockers"]
        ]
        lines.append(
            f"| `{result['driver']}` | `{result['verdict']}` | {passed}/10 | "
            f"{'<br>'.join(blockers[:4]) or 'nenhum'} |"
        )
    lines.extend(
        (
            "",
            "## Regra de leitura",
            "",
            "`INCOMPLETE` identifica evidencia ausente ou desatualizada; nao prova "
            "que o fonte esteja errado. `STATIC_ALIGNED_CANDIDATE` prova que todos "
            "os gates offline definidos foram satisfeitos para os hashes registrados, "
            "mas nao prova comportamento eletrico.",
            "",
        )
    )
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    repo_root = discover_repo_root()
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--engineering-root", type=Path)
    parser.add_argument("--driver", action="append", dest="drivers")
    parser.add_argument(
        "--all",
        action="store_true",
        help="audit every curated zte_* and zlog_* driver",
    )
    parser.add_argument(
        "--output",
        type=Path,
        default=repo_root / "reverse_engineering" / "validation" / "OFFLINE_RECONSTRUCTION_AUDIT.json",
    )
    parser.add_argument(
        "--markdown",
        type=Path,
        default=repo_root / "reverse_engineering" / "validation" / "OFFLINE_RECONSTRUCTION_AUDIT.md",
    )
    parser.add_argument(
        "--allow-incomplete",
        action="store_true",
        help="return zero after writing an inventory even when gates are incomplete",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    repo_root = discover_repo_root()
    engineering_root = discover_engineering_root(args.engineering_root, repo_root)
    if args.all:
        drivers = sorted(
            path.name
            for path in (engineering_root / "curated").iterdir()
            if path.is_dir() and path.name.startswith(("zte_", "zlog_"))
        )
    else:
        drivers = sorted(set(args.drivers or []))
    if not drivers:
        raise ValueError("pass --all or at least one --driver")
    results = [audit_driver(engineering_root, driver) for driver in drivers]
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "device": {"codename": "NX809J", "product": "REDMAGIC 11 Pro+"},
        "mode": "offline_read_only",
        "engineering_root": str(engineering_root),
        "drivers": results,
        "summary": {
            "driver_count": len(results),
            "static_aligned_candidates": [
                item["driver"] for item in results if item["offline_static_ready"]
            ],
            "incomplete": [
                item["driver"] for item in results if not item["offline_static_ready"]
            ],
            "hardware_validation": "DEFERRED",
        },
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(
        json.dumps(payload, indent=2, ensure_ascii=False, sort_keys=True) + "\n",
        encoding="utf-8",
    )
    args.markdown.parent.mkdir(parents=True, exist_ok=True)
    args.markdown.write_text(render_markdown(payload), encoding="utf-8")
    print(
        json.dumps(
            {
                "output": str(args.output.resolve()),
                "markdown": str(args.markdown.resolve()),
                **payload["summary"],
            },
            ensure_ascii=False,
            sort_keys=True,
        )
    )
    complete = all(item["offline_static_ready"] for item in results)
    return 0 if complete or args.allow_incomplete else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(2)
