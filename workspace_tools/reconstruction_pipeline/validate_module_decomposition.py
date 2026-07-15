#!/usr/bin/env python3
"""Build or verify hash-bound per-function module decomposition indexes.

The verifier is deliberately offline. It never invokes Ghidra, a compiler, a
device tool, or module loading. It validates the immutable artifacts already
published in the repository and creates a deterministic crosswalk between the
stock ELF, Ghidra pseudocode, P-Code, and AArch64 assembly.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import struct
import sys
from pathlib import Path, PurePosixPath
from typing import Any


SCHEMA_VERSION = "1.0"
TARGETS_PATH = Path("reverse_engineering/validation/MODULE_DECOMPOSITION_TARGETS.json")
DEFAULT_REPORT = Path("reverse_engineering/validation/MODULE_DECOMPOSITION_AUDIT.json")
DEFAULT_MARKDOWN = Path("reverse_engineering/validation/MODULE_DECOMPOSITION_AUDIT.md")
INDEX_NAME = "FUNCTION_EVIDENCE_INDEX.jsonl"
MANIFEST_NAME = "MODULE_DECOMPOSITION_MANIFEST.json"
REQUIRED_GHIDRA_FILES = (
    "calls.jsonl",
    "externals.jsonl",
    "functions.jsonl",
    "manifest.json",
    "memory_blocks.jsonl",
    "pseudocode.c",
    "strings.jsonl",
    "symbols.jsonl",
)


class DecompositionError(ValueError):
    """A module decomposition contract is incomplete or inconsistent."""


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def md5_file(path: Path) -> str:
    digest = hashlib.md5()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def json_bytes(value: Any) -> bytes:
    return (
        json.dumps(value, indent=2, ensure_ascii=True, sort_keys=True) + "\n"
    ).encode("utf-8")


def jsonl_bytes(values: list[dict[str, Any]]) -> bytes:
    return b"".join(
        (
            json.dumps(value, ensure_ascii=True, separators=(",", ":"), sort_keys=True)
            + "\n"
        ).encode("utf-8")
        for value in values
    )


def read_json(path: Path) -> dict[str, Any]:
    try:
        value = json.loads(path.read_text(encoding="utf-8"))
    except (OSError, UnicodeError, json.JSONDecodeError) as error:
        raise DecompositionError(f"invalid JSON {path}: {error}") from error
    if not isinstance(value, dict):
        raise DecompositionError(f"expected JSON object: {path}")
    return value


def read_jsonl(path: Path) -> list[dict[str, Any]]:
    records: list[dict[str, Any]] = []
    try:
        with path.open("r", encoding="utf-8") as stream:
            for line_number, line in enumerate(stream, start=1):
                if not line.strip():
                    continue
                value = json.loads(line)
                if not isinstance(value, dict):
                    raise DecompositionError(
                        f"expected object at {path}:{line_number}"
                    )
                records.append(value)
    except (OSError, UnicodeError, json.JSONDecodeError) as error:
        raise DecompositionError(f"invalid JSONL {path}: {error}") from error
    return records


def repo_path(repo: Path, value: Any, *, field: str) -> Path:
    if not isinstance(value, str) or not value or "\\" in value:
        raise DecompositionError(f"{field}: expected a non-empty POSIX path")
    pure = PurePosixPath(value)
    if pure.is_absolute() or ".." in pure.parts or "." in pure.parts:
        raise DecompositionError(f"{field}: unsafe repository path")
    path = (repo / Path(*pure.parts)).resolve()
    try:
        path.relative_to(repo.resolve())
    except ValueError as error:
        raise DecompositionError(f"{field}: path escapes repository") from error
    return path


def child_path(root: Path, value: Any, *, field: str) -> Path:
    if not isinstance(value, str) or not value or "\\" in value:
        raise DecompositionError(f"{field}: expected a relative POSIX path")
    pure = PurePosixPath(value)
    if pure.is_absolute() or ".." in pure.parts or "." in pure.parts:
        raise DecompositionError(f"{field}: unsafe child path")
    path = (root / Path(*pure.parts)).resolve()
    try:
        path.relative_to(root.resolve())
    except ValueError as error:
        raise DecompositionError(f"{field}: path escapes evidence root") from error
    return path


def relative_path(repo: Path, path: Path) -> str:
    return path.resolve().relative_to(repo.resolve()).as_posix()


def file_record(repo: Path, path: Path) -> dict[str, Any]:
    if not path.is_file():
        raise DecompositionError(f"missing artifact: {relative_path(repo, path)}")
    size = path.stat().st_size
    if size <= 0:
        raise DecompositionError(f"empty artifact: {relative_path(repo, path)}")
    return {
        "path": relative_path(repo, path),
        "sha256": sha256_file(path),
        "size": size,
    }


def elf_identity(path: Path) -> dict[str, Any]:
    try:
        with path.open("rb") as stream:
            header = stream.read(64)
    except OSError as error:
        raise DecompositionError(f"cannot read ELF {path}: {error}") from error
    if len(header) < 64 or header[:4] != b"\x7fELF":
        raise DecompositionError(f"not an ELF file: {path}")
    if header[4] != 2 or header[5] != 1:
        raise DecompositionError(f"ELF must be 64-bit little-endian: {path}")
    elf_type, machine = struct.unpack_from("<HH", header, 16)
    if elf_type != 1 or machine != 183:
        raise DecompositionError(
            f"ELF must be AArch64 ET_REL (type=1 machine=183): {path}"
        )
    return {
        "class": "ELF64",
        "endianness": "little",
        "machine": "AArch64",
        "type": "ET_REL",
    }


def validate_published_evidence(
    evidence_root: Path, evidence_manifest: dict[str, Any]
) -> dict[str, dict[str, Any]]:
    records = evidence_manifest.get("derived_files")
    if not isinstance(records, list):
        raise DecompositionError("EVIDENCE_MANIFEST.json lacks derived_files")
    if evidence_manifest.get("derived_file_count") != len(records):
        raise DecompositionError("EVIDENCE_MANIFEST.json derived_file_count mismatch")
    indexed: dict[str, dict[str, Any]] = {}
    for index, record in enumerate(records):
        if not isinstance(record, dict):
            raise DecompositionError(f"derived_files[{index}] is not an object")
        value = record.get("path")
        path = child_path(evidence_root, value, field=f"derived_files[{index}].path")
        key = path.relative_to(evidence_root).as_posix()
        if key in indexed:
            raise DecompositionError(f"duplicate evidence record: {key}")
        if not path.is_file():
            raise DecompositionError(f"missing published evidence: {key}")
        expected_size = record.get("size")
        expected_hash = record.get("sha256")
        if path.stat().st_size != expected_size:
            raise DecompositionError(f"published evidence size mismatch: {key}")
        if sha256_file(path) != expected_hash:
            raise DecompositionError(f"published evidence SHA-256 mismatch: {key}")
        indexed[key] = record
    return indexed


def analysis_environment(repo: Path) -> dict[str, Any]:
    lock_path = repo / "reproducible_environment" / "environment.lock.json"
    lock = read_json(lock_path)
    ghidra = lock.get("ghidra")
    if not isinstance(ghidra, dict) or not ghidra.get("version"):
        raise DecompositionError("environment lock lacks the pinned Ghidra identity")
    return {
        "ghidra": {
            "asset": ghidra.get("asset"),
            "release": ghidra.get("release"),
            "sha256": ghidra.get("sha256"),
            "version": ghidra.get("version"),
        },
        "lock": file_record(repo, lock_path),
        "provenance_claim": (
            "Pinned expected environment; not an independent attestation of the "
            "historical Ghidra invocation"
        ),
    }


def require_published(
    evidence_root: Path,
    published: dict[str, dict[str, Any]],
    path: Path,
) -> None:
    key = path.resolve().relative_to(evidence_root.resolve()).as_posix()
    if key not in published:
        raise DecompositionError(f"artifact is not hash-covered by evidence manifest: {key}")


def analyze_target(repo: Path, target: dict[str, Any]) -> dict[str, Any]:
    driver = target.get("driver")
    role = target.get("role")
    if not isinstance(driver, str) or not driver.startswith(("zte_", "zlog_")):
        raise DecompositionError(f"invalid driver target: {driver!r}")
    if not isinstance(role, str) or not role:
        raise DecompositionError(f"{driver}: role is required")

    stock = repo_path(repo, target.get("stock_path"), field=f"{driver}.stock_path")
    candidate = repo_path(
        repo, target.get("candidate_path"), field=f"{driver}.candidate_path"
    )
    evidence_root = repo_path(
        repo, target.get("evidence_root"), field=f"{driver}.evidence_root"
    )
    if not evidence_root.is_dir():
        raise DecompositionError(f"{driver}: evidence root is missing")
    stock_record = file_record(repo, stock)
    stock_record["elf"] = elf_identity(stock)
    candidate_record = file_record(repo, candidate)
    candidate_record["elf"] = elf_identity(candidate)

    evidence_manifest_path = evidence_root / "EVIDENCE_MANIFEST.json"
    evidence_manifest = read_json(evidence_manifest_path)
    if evidence_manifest.get("driver") != driver:
        raise DecompositionError(f"{driver}: evidence manifest driver mismatch")
    if evidence_manifest.get("stock", {}).get("sha256") != stock_record["sha256"]:
        raise DecompositionError(f"{driver}: stock SHA-256 differs from evidence manifest")
    published = validate_published_evidence(evidence_root, evidence_manifest)

    ghidra_root = evidence_root / "ghidra_stock"
    assembly_root = evidence_root / "stock_assembly"
    for name in REQUIRED_GHIDRA_FILES:
        path = ghidra_root / name
        if not path.is_file():
            raise DecompositionError(f"{driver}: missing Ghidra artifact {name}")
        require_published(evidence_root, published, path)

    ghidra_manifest = read_json(ghidra_root / "manifest.json")
    if ghidra_manifest.get("program") != f"{driver}.ko":
        raise DecompositionError(f"{driver}: Ghidra program identity mismatch")
    if ghidra_manifest.get("language") != "AARCH64:LE:64:v8A":
        raise DecompositionError(f"{driver}: unexpected Ghidra language")
    if ghidra_manifest.get("executable_md5") != md5_file(stock):
        raise DecompositionError(f"{driver}: Ghidra MD5 does not bind to stock ELF")

    functions_path = ghidra_root / "functions.jsonl"
    functions = read_jsonl(functions_path)
    if ghidra_manifest.get("function_count") != len(functions):
        raise DecompositionError(f"{driver}: Ghidra function_count mismatch")
    if evidence_manifest.get("ghidra_function_count") != len(functions):
        raise DecompositionError(f"{driver}: evidence Ghidra count mismatch")

    assembly_manifest_path = assembly_root / "manifest.json"
    require_published(evidence_root, published, assembly_manifest_path)
    assembly_manifest = read_json(assembly_manifest_path)
    if assembly_manifest.get("passed") is not True:
        raise DecompositionError(f"{driver}: assembly manifest is not PASS")
    if assembly_manifest.get("source", {}).get("sha256") != stock_record["sha256"]:
        raise DecompositionError(f"{driver}: assembly is not bound to stock SHA-256")
    if (
        assembly_manifest.get("function_inventory", {}).get("sha256")
        != sha256_file(functions_path)
    ):
        raise DecompositionError(f"{driver}: assembly inventory hash mismatch")
    assembly_records = assembly_manifest.get("records")
    if not isinstance(assembly_records, list):
        raise DecompositionError(f"{driver}: assembly records are missing")
    if evidence_manifest.get("assembly_function_count") != len(assembly_records):
        raise DecompositionError(f"{driver}: evidence assembly count mismatch")
    assembly_by_id: dict[str, dict[str, Any]] = {}
    for record in assembly_records:
        if not isinstance(record, dict):
            raise DecompositionError(f"{driver}: invalid assembly record")
        function_id = record.get("function_id")
        if not isinstance(function_id, str) or function_id in assembly_by_id:
            raise DecompositionError(f"{driver}: duplicate/invalid assembly identity")
        assembly_by_id[function_id] = record

    aggregate_pseudocode = ghidra_root / "pseudocode.c"
    index_records: list[dict[str, Any]] = []
    function_ids: set[str] = set()
    decompiled_paths: set[Path] = set()
    pcode_paths: set[Path] = set()
    assembly_paths: set[Path] = set()
    for ordinal, function in enumerate(functions):
        name = function.get("name")
        entry = function.get("entry")
        if not isinstance(name, str) or not name or not isinstance(entry, str) or not entry:
            raise DecompositionError(f"{driver}: invalid function identity at ordinal {ordinal}")
        entry = entry.lower().removeprefix("0x")
        function_id = f"{name}@{entry}"
        if function_id in function_ids:
            raise DecompositionError(f"{driver}: duplicate function identity {function_id}")
        function_ids.add(function_id)
        if function.get("decompiled") is not True or function.get("decompiler_error"):
            raise DecompositionError(f"{driver}: decompiler did not complete {function_id}")

        decompiled = child_path(
            ghidra_root,
            function.get("decompiled_file"),
            field=f"{function_id}.decompiled_file",
        )
        pcode = child_path(
            ghidra_root,
            function.get("pcode_file"),
            field=f"{function_id}.pcode_file",
        )
        if decompiled in decompiled_paths or pcode in pcode_paths:
            raise DecompositionError(f"{driver}: function artifacts are reused by {function_id}")
        decompiled_paths.add(decompiled)
        pcode_paths.add(pcode)
        require_published(evidence_root, published, decompiled)
        require_published(evidence_root, published, pcode)
        decompiled_record = file_record(repo, decompiled)
        pcode_record = file_record(repo, pcode)
        pcode_record["record_count"] = len(read_jsonl(pcode))
        if pcode_record["record_count"] <= 0:
            raise DecompositionError(f"{driver}: empty P-Code stream for {function_id}")

        assembly = assembly_by_id.get(function_id)
        if assembly is None:
            raise DecompositionError(f"{driver}: no assembly for {function_id}")
        if assembly.get("complete") is not True or assembly.get("found") is not True:
            raise DecompositionError(f"{driver}: incomplete assembly for {function_id}")
        if str(assembly.get("ghidra_entry", "")).lower().removeprefix("0x") != entry:
            raise DecompositionError(f"{driver}: assembly entry mismatch for {function_id}")
        assembly_path = child_path(
            assembly_root,
            assembly.get("file"),
            field=f"{function_id}.assembly_file",
        )
        if assembly_path in assembly_paths:
            raise DecompositionError(f"{driver}: assembly file reused by {function_id}")
        assembly_paths.add(assembly_path)
        require_published(evidence_root, published, assembly_path)
        assembly_file_record = file_record(repo, assembly_path)
        if assembly_file_record["sha256"] != assembly.get("sha256"):
            raise DecompositionError(f"{driver}: assembly SHA-256 mismatch for {function_id}")
        if assembly_file_record["size"] != assembly.get("size"):
            raise DecompositionError(f"{driver}: assembly size mismatch for {function_id}")
        assembly_file_record.update(
            {
                "range_source": assembly.get("range_source"),
                "section": assembly.get("section"),
                "symbol_size": assembly.get("symbol_size"),
                "symbol_start": assembly.get("symbol_start"),
            }
        )
        index_records.append(
            {
                "assembly": assembly_file_record,
                "body_bytes": function.get("body_bytes"),
                "decompiled_c": decompiled_record,
                "entry": entry,
                "function_id": function_id,
                "name": name,
                "ordinal": ordinal,
                "pcode": pcode_record,
                "prototype": function.get("prototype"),
            }
        )

    actual_decompiled = set((ghidra_root / "decompiled").glob("*.c"))
    actual_pcode = set((ghidra_root / "pcode").glob("*.jsonl"))
    actual_assembly = set(assembly_root.glob("*.asm"))
    if actual_decompiled != decompiled_paths:
        raise DecompositionError(f"{driver}: decompiled file set is not bijective")
    if actual_pcode != pcode_paths:
        raise DecompositionError(f"{driver}: P-Code file set is not bijective")
    if actual_assembly != assembly_paths:
        raise DecompositionError(f"{driver}: assembly file set is not bijective")
    if set(assembly_by_id) != function_ids:
        raise DecompositionError(f"{driver}: assembly identities are not bijective")
    if len(index_records) != len(functions):
        raise DecompositionError(f"{driver}: function crosswalk is incomplete")

    index_path = evidence_root / INDEX_NAME
    manifest_path = evidence_root / MANIFEST_NAME
    index_data = jsonl_bytes(index_records)
    index_record = {
        "path": relative_path(repo, index_path),
        "sha256": hashlib.sha256(index_data).hexdigest(),
        "size": len(index_data),
    }
    manifest = {
        "analysis_environment": analysis_environment(repo),
        "candidate": candidate_record,
        "claims": {
            "behavioral_equivalence": "NOT_PROVEN",
            "hardware_validation": "DEFERRED",
            "source_recovery": "DECOMPILER_OUTPUT_IS_EVIDENCE_NOT_SOURCE",
        },
        "coverage": {
            "assembly": len(assembly_paths),
            "bijection": True,
            "decompiled_c": len(decompiled_paths),
            "functions": len(functions),
            "pcode": len(pcode_paths),
        },
        "driver": driver,
        "evidence_manifest": file_record(repo, evidence_manifest_path),
        "function_index": index_record,
        "ghidra": {
            "aggregate_pseudocode": file_record(repo, aggregate_pseudocode),
            "function_inventory": file_record(repo, functions_path),
            "manifest": file_record(repo, ghidra_root / "manifest.json"),
        },
        "role": role,
        "schema_version": SCHEMA_VERSION,
        "status": "PASS",
        "stock": stock_record,
        "stock_assembly_manifest": file_record(repo, assembly_manifest_path),
    }
    return {
        "driver": driver,
        "role": role,
        "status": "PASS",
        "function_count": len(functions),
        "stock_sha256": stock_record["sha256"],
        "candidate_sha256": candidate_record["sha256"],
        "index_path": index_path,
        "index_data": index_data,
        "manifest_path": manifest_path,
        "manifest_data": json_bytes(manifest),
        "manifest": manifest,
    }


def build_report(
    *,
    repo: Path,
    targets: dict[str, Any],
    analyses: list[dict[str, Any]],
    scope_errors: list[str],
) -> dict[str, Any]:
    results = []
    for analysis in analyses:
        if analysis.get("status") == "PASS":
            manifest = analysis["manifest"]
            results.append(
                {
                    "candidate_sha256": analysis["candidate_sha256"],
                    "coverage": manifest["coverage"],
                    "driver": analysis["driver"],
                    "function_index": manifest["function_index"],
                    "manifest": relative_path(repo, analysis["manifest_path"]),
                    "role": analysis["role"],
                    "status": "PASS",
                    "stock_sha256": analysis["stock_sha256"],
                }
            )
        else:
            results.append(analysis)
    failures = scope_errors + [
        f"{item.get('driver', 'unknown')}: {error}"
        for item in results
        for error in item.get("errors", [])
    ]
    return {
        "analysis_environment": analysis_environment(repo),
        "claims": {
            "behavioral_equivalence": "NOT_PROVEN",
            "hardware_validation": "DEFERRED",
            "meaning": "PASS proves complete hash-bound decomposition evidence only",
        },
        "drivers": results,
        "failures": failures,
        "future_targets": targets.get("future_targets", []),
        "schema_version": SCHEMA_VERSION,
        "status": "PASS" if not failures else "FAIL",
        "summary": {
            "assembly_functions": sum(
                item.get("coverage", {}).get("assembly", 0) for item in results
            ),
            "decompiled_functions": sum(
                item.get("coverage", {}).get("decompiled_c", 0) for item in results
            ),
            "functions": sum(
                item.get("coverage", {}).get("functions", 0) for item in results
            ),
            "modules": len(results),
            "passed_modules": sum(item.get("status") == "PASS" for item in results),
            "pcode_functions": sum(
                item.get("coverage", {}).get("pcode", 0) for item in results
            ),
        },
        "target_contract": TARGETS_PATH.as_posix(),
    }


def render_markdown(report: dict[str, Any]) -> str:
    lines = [
        "# Auditoria de Decomposicao dos Modulos",
        "",
        f"Estado: `{report['status']}`",
        "",
        "| Modulo | Papel | Funcoes | Pseudocodigo C | P-Code | Assembly | Estado |",
        "|---|---|---:|---:|---:|---:|---|",
    ]
    for item in report["drivers"]:
        coverage = item.get("coverage", {})
        lines.append(
            f"| `{item.get('driver', '')}` | `{item.get('role', '')}` | "
            f"{coverage.get('functions', 0)} | {coverage.get('decompiled_c', 0)} | "
            f"{coverage.get('pcode', 0)} | {coverage.get('assembly', 0)} | "
            f"`{item.get('status', 'FAIL')}` |"
        )
    lines.extend(
        (
            "",
            "`PASS` prova somente que cada funcao stock possui uma identidade unica "
            "e evidencias hashadas de pseudocodigo C, P-Code e Assembly AArch64.",
            "",
            "Esse resultado nao prova equivalencia comportamental, recuperacao do "
            "fonte original ou funcionamento no hardware. A validacao de hardware "
            "permanece `DEFERRED`.",
            "",
        )
    )
    if report["failures"]:
        lines.extend(("## Falhas", ""))
        lines.extend(f"- {failure}" for failure in report["failures"])
        lines.append("")
    return "\n".join(lines)


def load_targets(repo: Path) -> dict[str, Any]:
    payload = read_json(repo / TARGETS_PATH)
    if payload.get("schema_version") != SCHEMA_VERSION:
        raise DecompositionError("unsupported target contract schema")
    values = payload.get("targets")
    if not isinstance(values, list) or not values:
        raise DecompositionError("target contract has no targets")
    names = [item.get("driver") for item in values if isinstance(item, dict)]
    if len(names) != len(values) or len(names) != len(set(names)):
        raise DecompositionError("target contract has duplicate/invalid drivers")
    return payload


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--repo-root", type=Path, default=Path(__file__).resolve().parents[2]
    )
    parser.add_argument("--driver", action="append", dest="drivers")
    mode = parser.add_mutually_exclusive_group()
    mode.add_argument("--write", action="store_true", help="write canonical indexes")
    mode.add_argument("--check", action="store_true", help="verify canonical indexes")
    parser.add_argument("--output", type=Path)
    parser.add_argument("--markdown", type=Path)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    repo = args.repo_root.resolve()
    try:
        targets_payload = load_targets(repo)
        all_targets = targets_payload["targets"]
        requested = set(args.drivers or [])
        known = {item["driver"] for item in all_targets}
        unknown = requested - known
        if unknown:
            raise DecompositionError(f"unknown module targets: {sorted(unknown)}")
        selected = [
            item for item in all_targets if not requested or item["driver"] in requested
        ]
        scope_errors: list[str] = []
        if not requested:
            reconstructed_root = repo / "kernel_development" / "drivers" / "reconstructed"
            discovered = {
                path.name
                for path in reconstructed_root.iterdir()
                if path.is_dir() and (path / f"{path.name}.ko").is_file()
            }
            if discovered != known:
                scope_errors.append(
                    "target set drift: expected "
                    f"{sorted(known)}, discovered {sorted(discovered)}"
                )

        analyses: list[dict[str, Any]] = []
        for target in selected:
            driver = target["driver"]
            try:
                analysis = analyze_target(repo, target)
            except (OSError, UnicodeError, DecompositionError) as error:
                analysis = {
                    "driver": driver,
                    "role": target.get("role", "unknown"),
                    "status": "FAIL",
                    "errors": [str(error)],
                }
            analyses.append(analysis)

        input_failures = [item for item in analyses if item.get("status") != "PASS"]
        if args.write and not input_failures and not scope_errors:
            for analysis in analyses:
                analysis["index_path"].write_bytes(analysis["index_data"])
                analysis["manifest_path"].write_bytes(analysis["manifest_data"])
        elif not args.write:
            for analysis in analyses:
                if analysis.get("status") != "PASS":
                    continue
                mismatches = []
                for path_key, data_key in (
                    ("index_path", "index_data"),
                    ("manifest_path", "manifest_data"),
                ):
                    path = analysis[path_key]
                    if not path.is_file():
                        mismatches.append(f"missing canonical output {relative_path(repo, path)}")
                    elif path.read_bytes() != analysis[data_key]:
                        mismatches.append(f"stale canonical output {relative_path(repo, path)}")
                if mismatches:
                    analysis["status"] = "FAIL"
                    analysis["errors"] = mismatches

        report = build_report(
            repo=repo,
            targets=targets_payload,
            analyses=analyses,
            scope_errors=scope_errors,
        )
        output = args.output
        markdown = args.markdown
        if args.write and not requested:
            output = output or (repo / DEFAULT_REPORT)
            markdown = markdown or (repo / DEFAULT_MARKDOWN)
        if output:
            output.parent.mkdir(parents=True, exist_ok=True)
            output.write_bytes(json_bytes(report))
        if markdown:
            markdown.parent.mkdir(parents=True, exist_ok=True)
            markdown.write_text(render_markdown(report), encoding="utf-8")
        print(json.dumps(report["summary"], sort_keys=True))
        if report["status"] == "PASS":
            print("PASS: every selected module has a hash-bound 1:1 function decomposition")
            return 0
        for failure in report["failures"]:
            print(f"FAIL: {failure}", file=sys.stderr)
        return 1
    except (OSError, UnicodeError, DecompositionError, json.JSONDecodeError) as error:
        print(f"FAIL: {error}", file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
