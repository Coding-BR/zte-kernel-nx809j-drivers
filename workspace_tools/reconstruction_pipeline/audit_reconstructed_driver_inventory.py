#!/usr/bin/env python3
"""Inventory reconstructed driver trees against stock, Ghidra, and Docker.

This is a scope and traceability report. It does not claim static equivalence,
semantic equivalence, or hardware readiness from the existence of source files
or a candidate module.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import re
from collections import Counter
from pathlib import Path
from typing import Any

BUILD_INPUT_SUFFIXES = {".c", ".h", ".s", ".inc"}
BUILD_INPUT_NAMES = {"Makefile", "Kbuild", "vendor.Module.symvers"}


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def portable_path(path: Path | None, roots: tuple[tuple[Path, str], ...]) -> str | None:
    if path is None:
        return None
    resolved = path.resolve()
    for root, label in roots:
        try:
            return f"{label}/{resolved.relative_to(root.resolve()).as_posix()}"
        except ValueError:
            continue
    return path.name


def normalize_entry(value: Any) -> str | None:
    if isinstance(value, int):
        return f"{value:08x}"
    if not isinstance(value, str) or not value.strip():
        return None
    text = value.strip().lower()
    if text.startswith("0x"):
        text = text[2:]
    if re.fullmatch(r"[0-9a-f]+", text):
        return f"{int(text, 16):08x}"
    return text


def read_json(path: Path) -> dict[str, Any]:
    value = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(value, dict):
        raise ValueError(f"expected JSON object: {path}")
    return value


def read_jsonl(path: Path) -> list[dict[str, Any]]:
    rows: list[dict[str, Any]] = []
    for number, line in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
        if not line.strip():
            continue
        value = json.loads(line)
        if not isinstance(value, dict):
            raise ValueError(f"expected JSON object at {path}:{number}")
        rows.append(value)
    return rows


def stock_module(repo_root: Path, driver: str) -> Path | None:
    for root in ("full_vendor_boot", "stock"):
        path = repo_root / "reference_modules" / root / f"{driver}.ko"
        if path.is_file():
            return path
    return None


def ghidra_export(repo_root: Path, driver: str) -> Path:
    root = (
        repo_root
        / "reverse_engineering"
        / "validation"
        / "reconstructed"
        / driver
        / "offline_static"
        / "ghidra_stock"
    )
    nested = root / f"{driver}.ko"
    return nested if (nested / "functions.jsonl").is_file() else root


def identity(name: Any, entry: Any) -> tuple[str, str] | None:
    if not isinstance(name, str) or not name:
        return None
    normalized = normalize_entry(entry)
    return (name, normalized) if normalized is not None else None


def module_record(path: Path | None, repo_root: Path) -> dict[str, Any]:
    if path is None or not path.is_file():
        return {"exists": False, "path": portable_path(path, ((repo_root, "repo"),))}
    return {
        "exists": True,
        "path": portable_path(path, ((repo_root, "repo"),)),
        "size": path.stat().st_size,
        "sha256": sha256_file(path),
    }


def source_inventory(root: Path) -> dict[str, Any]:
    files: dict[str, str] = {}
    if root.is_dir():
        for path in root.rglob("*"):
            if not path.is_file() or ".git" in path.parts or "tests" in path.parts:
                continue
            if path.name.endswith(".mod.c"):
                continue
            if path.suffix.lower() not in BUILD_INPUT_SUFFIXES and path.name not in BUILD_INPUT_NAMES:
                continue
            files[path.relative_to(root).as_posix()] = sha256_file(path)
    digest = hashlib.sha256()
    for name, file_hash in sorted(files.items()):
        digest.update(name.encode("utf-8"))
        digest.update(b"\0")
        digest.update(file_hash.encode("ascii"))
        digest.update(b"\n")
    return {"file_count": len(files), "sha256": digest.hexdigest(), "files": files}


def inspect_driver(repo_root: Path, engineering_root: Path, driver_root: Path) -> dict[str, Any]:
    driver = driver_root.name
    map_path = driver_root / "reconstruction_map.json"
    candidate_path = driver_root / f"{driver}.ko"
    stock_path = stock_module(repo_root, driver)
    export_root = ghidra_export(repo_root, driver)
    functions_path = export_root / "functions.jsonl"
    docker_root = engineering_root / "curated" / driver
    repo_sources = source_inventory(driver_root)
    docker_sources = source_inventory(docker_root)

    findings: list[str] = []
    map_data: dict[str, Any] = {}
    mappings: list[dict[str, Any]] = []
    if map_path.is_file():
        try:
            map_data = read_json(map_path)
            raw_mappings = map_data.get("mappings", [])
            if isinstance(raw_mappings, list):
                mappings = [item for item in raw_mappings if isinstance(item, dict)]
            else:
                findings.append("map_mappings_not_a_list")
        except (OSError, ValueError, json.JSONDecodeError) as exc:
            findings.append(f"map_unreadable:{type(exc).__name__}")
    else:
        findings.append("reconstruction_map_missing")
    if map_data and map_data.get("driver") not in (None, driver):
        findings.append("map_driver_field_mismatch")

    if not (driver_root / "Makefile").is_file():
        findings.append("source_makefile_missing")
    c_sources = [
        path for path in driver_root.rglob("*.c")
        if not path.name.endswith(".mod.c") and ".git" not in path.parts
    ]
    if not c_sources:
        findings.append("source_c_files_missing")
    if not candidate_path.is_file():
        findings.append("candidate_module_missing")
    if stock_path is None:
        findings.append("stock_module_missing")
    if not functions_path.is_file():
        findings.append("ghidra_function_inventory_missing")

    ghidra_functions: list[dict[str, Any]] = []
    if functions_path.is_file():
        try:
            ghidra_functions = read_jsonl(functions_path)
        except (OSError, ValueError, json.JSONDecodeError) as exc:
            findings.append(f"ghidra_inventory_unreadable:{type(exc).__name__}")

    ghidra_ids = {
        found
        for row in ghidra_functions
        if (found := identity(row.get("name"), row.get("entry"))) is not None
    }
    map_ids = {
        found
        for row in mappings
        if (found := identity(row.get("stock_function"), row.get("stock_entry"))) is not None
    }
    unmapped_ghidra = sorted(ghidra_ids - map_ids)
    stale_map_ids = sorted(map_ids - ghidra_ids)
    if unmapped_ghidra:
        findings.append("ghidra_functions_unmapped")
    if stale_map_ids:
        findings.append("map_identities_absent_from_ghidra")

    missing_source_files = sorted(
        {
            str(row.get("source_file"))
            for row in mappings
            if isinstance(row.get("source_file"), str)
            and not (driver_root / row["source_file"]).is_file()
        }
    )
    if missing_source_files:
        findings.append("mapped_source_files_missing")

    stock_sha = sha256_file(stock_path) if stock_path and stock_path.is_file() else None
    candidate_sha = sha256_file(candidate_path) if candidate_path.is_file() else None
    map_stock_sha = map_data.get("stock_sha256")
    map_candidate_sha = map_data.get("candidate_sha256")
    if stock_sha and map_stock_sha and stock_sha != map_stock_sha:
        findings.append("map_stock_hash_mismatch")
    if candidate_sha and map_candidate_sha and candidate_sha != map_candidate_sha:
        findings.append("map_candidate_hash_mismatch")

    statuses = Counter(
        str(row.get("status", "MISSING_STATUS")).strip() or "MISSING_STATUS"
        for row in mappings
    )
    docker_source_files = [
        path for path in docker_root.rglob("*.c")
        if not path.name.endswith(".mod.c")
    ] if docker_root.is_dir() else []
    source_differences = [
        name
        for name in sorted(set(repo_sources["files"]) | set(docker_sources["files"]))
        if repo_sources["files"].get(name) != docker_sources["files"].get(name)
    ]
    docker_candidate_path = docker_root / f"{driver}.ko"
    docker_candidate_record = (
        {
            "exists": True,
            "path": f"docker/curated/{driver}/{driver}.ko",
            "size": docker_candidate_path.stat().st_size,
            "sha256": sha256_file(docker_candidate_path),
        }
        if docker_candidate_path.is_file()
        else {"exists": False, "path": f"docker/curated/{driver}/{driver}.ko"}
    )

    return {
        "driver": driver,
        "source_tree": {
            "path": portable_path(driver_root, ((repo_root, "repo"),)),
            "makefile": (driver_root / "Makefile").is_file(),
            "c_file_count": len(c_sources),
            "build_input_count": repo_sources["file_count"],
            "build_input_sha256": repo_sources["sha256"],
        },
        "stock_module": module_record(stock_path, repo_root),
        "candidate_module": module_record(candidate_path, repo_root),
        "ghidra": {
            "path": portable_path(export_root, ((repo_root, "repo"),)),
            "functions_path": portable_path(functions_path, ((repo_root, "repo"),)),
            "function_count": len(ghidra_functions),
        },
        "function_map": {
            "exists": map_path.is_file(),
            "path": portable_path(map_path, ((repo_root, "repo"),)),
            "driver_field_matches_directory": map_data.get("driver") in (None, driver),
            "mapping_count": len(mappings),
            "unique_identity_count": len(map_ids),
            "ghidra_identity_count": len(ghidra_ids),
            "mapped_ghidra_identity_count": len(ghidra_ids & map_ids),
            "all_ghidra_identities_mapped": bool(ghidra_ids) and ghidra_ids <= map_ids,
            "unmapped_ghidra_identities": [f"{name}@{entry}" for name, entry in unmapped_ghidra],
            "map_identities_absent_from_ghidra": [f"{name}@{entry}" for name, entry in stale_map_ids],
            "missing_source_files": missing_source_files,
            "status_counts": dict(sorted(statuses.items())),
            "declared_stock_sha256": map_stock_sha,
            "declared_candidate_sha256": map_candidate_sha,
            "stock_sha256_matches_map": (stock_sha == map_stock_sha) if map_stock_sha else None,
            "candidate_sha256_matches_map": (candidate_sha == map_candidate_sha) if map_candidate_sha else None,
        },
        "docker_snapshot": {
            "curated_directory_present": docker_root.is_dir(),
            "makefile_present": (docker_root / "Makefile").is_file(),
            "candidate_present": (docker_root / f"{driver}.ko").is_file(),
            "candidate_module": docker_candidate_record,
            "build_input_count": docker_sources["file_count"],
            "build_input_sha256": docker_sources["sha256"],
            "build_inputs_match_repository": bool(docker_root.is_dir()) and not source_differences,
            "build_input_differences": source_differences,
            "candidate_matches_repository_candidate": (
                docker_candidate_record.get("sha256") == candidate_sha
                if docker_candidate_record.get("exists") and candidate_sha
                else None
            ),
            "c_file_count": len(docker_source_files),
        },
        "structural_findings": findings,
    }


def render_markdown(payload: dict[str, Any]) -> str:
    summary = payload["summary"]
    lines = [
        "# Inventário de reconstrução dos drivers",
        "",
        f"Raiz: `{payload['repo_root']}`",
        f"Snapshot Docker: `{payload['engineering_root']}`",
        "",
        "Este inventário cobre diretórios em `kernel_development/drivers/reconstructed`. "
        "A existência de fonte, mapa ou `.ko` não prova equivalência estática/semântica. "
        "A validação completa de cada candidato continua sendo feita pelos gates do protocolo.",
        "",
        f"Drivers encontrados: **{summary['driver_count']}**; com candidato `.ko`: "
        f"**{summary['candidate_module_count']}**; com stock: **{summary['stock_module_count']}**; "
        f"com inventário Ghidra: **{summary['drivers_with_ghidra_inventory']}** "
        f"({summary['ghidra_function_total']} funções); "
        f"presentes no snapshot curado do Docker: **{summary['docker_curated_driver_count']}**; "
        f"candidatos Docker iguais ao repositório: **{summary['docker_candidates_matching_repository']}**; "
        f"snapshots de fonte iguais: **{summary['docker_source_snapshots_matching_repository']}**.",
        "",
        "| Driver | Ghidra | Mapeadas | Cobertura de identidade | Status por função | `.ko` repo | `.ko` Docker | Fontes iguais | Achados |",
        "|---|---:|---:|---|---|---|---|---|---|",
    ]
    for row in payload["drivers"]:
        fmap = row["function_map"]
        coverage = f"{fmap['mapped_ghidra_identity_count']}/{fmap['ghidra_identity_count']}"
        states = ", ".join(f"{key}:{value}" for key, value in fmap["status_counts"].items()) or "sem mapa"
        findings = ", ".join(row["structural_findings"]) or "nenhum estrutural"
        lines.append(
            f"| `{row['driver']}` | {row['ghidra']['function_count']} | {fmap['mapping_count']} "
            f"| {coverage} | {states} | {'sim' if row['candidate_module']['exists'] else 'não'} "
            f"| {'sim' if row['docker_snapshot']['candidate_module']['exists'] else 'não'} "
            f"| {'sim' if row['docker_snapshot']['build_inputs_match_repository'] else 'não'} "
            f"| {findings} |"
        )
    lines.extend(
        (
            "",
            "## Escopo e leitura",
            "",
            f"- O inventário listou {summary['driver_count']} árvores do repositório; "
            f"`audit_offline_reconstruction.py --all` cobre a seleção curada `zte_*`/`zlog_*` "
            "do Docker e não substitui esta enumeração.",
            "- Estados em `status_counts` são transcritos do mapa por função; não são "
            "interpretados como aprovação do driver inteiro.",
            "- `docker_snapshot.curated_directory_present` indica disponibilidade do "
            "snapshot para a rotina de build, não resultado de build.",
            "- Revisão independente, teste em hardware e autorização de promoção são "
            "gates separados.",
            "",
        )
    )
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--repo-root",
        type=Path,
        default=Path(__file__).resolve().parents[2],
    )
    parser.add_argument(
        "--engineering-root",
        type=Path,
        default=Path(__file__).resolve().parents[3] / "kernel-docker-workspace" / "engenharia",
    )
    parser.add_argument("--output", type=Path)
    parser.add_argument("--markdown", type=Path)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    repo_root = args.repo_root.resolve()
    engineering_root = args.engineering_root.resolve()
    source_root = repo_root / "kernel_development" / "drivers" / "reconstructed"
    if not source_root.is_dir():
        raise FileNotFoundError(f"reconstructed source root is missing: {source_root}")
    driver_dirs = sorted(path for path in source_root.iterdir() if path.is_dir())
    roots = ((repo_root, "repo"), (engineering_root, "docker"))
    drivers = [inspect_driver(repo_root, engineering_root, path) for path in driver_dirs]
    summary = {
        "driver_count": len(drivers),
        "candidate_module_count": sum(row["candidate_module"]["exists"] for row in drivers),
        "stock_module_count": sum(row["stock_module"]["exists"] for row in drivers),
        "drivers_with_ghidra_inventory": sum(row["ghidra"]["function_count"] > 0 for row in drivers),
        "ghidra_function_total": sum(row["ghidra"]["function_count"] for row in drivers),
        "docker_curated_driver_count": sum(row["docker_snapshot"]["curated_directory_present"] for row in drivers),
        "docker_candidates_matching_repository": sum(
            row["docker_snapshot"]["candidate_matches_repository_candidate"] is True
            for row in drivers
        ),
        "docker_source_snapshots_matching_repository": sum(
            row["docker_snapshot"]["build_inputs_match_repository"]
            for row in drivers
            if row["docker_snapshot"]["curated_directory_present"]
        ),
        "drivers_with_structural_findings": sum(bool(row["structural_findings"]) for row in drivers),
    }
    payload = {
        "schema_version": "1.0",
        "mode": "repository_scope_inventory",
        "repo_root": "repo",
        "engineering_root": "docker",
        "summary": summary,
        "drivers": drivers,
    }
    output = args.output or repo_root / "reverse_engineering" / "validation" / "RECONSTRUCTED_DRIVER_INVENTORY.json"
    markdown = args.markdown or output.with_suffix(".md")
    output = output.resolve()
    markdown = markdown.resolve()
    # Use portable labels in the report body; retain concrete roots separately for reproducibility.
    for row in drivers:
        for key in ("source_tree", "stock_module", "candidate_module", "ghidra", "function_map"):
            record = row.get(key)
            if isinstance(record, dict):
                for field, value in list(record.items()):
                    if field.endswith("_path") or field == "path":
                        if isinstance(value, str):
                            path = (repo_root / value.removeprefix("repo/")).resolve()
                            record[field] = portable_path(path, roots)
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(payload, indent=2, ensure_ascii=False, sort_keys=True) + "\n", encoding="utf-8")
    markdown.parent.mkdir(parents=True, exist_ok=True)
    markdown.write_text(render_markdown(payload), encoding="utf-8")
    print(json.dumps({"output": str(output), "markdown": str(markdown), **summary}, ensure_ascii=False, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
