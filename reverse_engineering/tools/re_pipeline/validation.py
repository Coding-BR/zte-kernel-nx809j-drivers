from __future__ import annotations

import json
from pathlib import Path
from typing import Any

from .acquisition import ModuleArtifact
from .util import sha256_file


EXPECTED_DOCUMENT_HEADINGS = [
    "## 1. Mapeamento de Assinaturas (Conformidade GKI 6.12.23)",
    "## 2. Estrutura de Dados Estrita e Offsets (Arquivos .h)",
    "## 3. Prompts de Execução Isolada (Micro-Tarefas)",
]

REQUIRED_GHIDRA_FILES = [
    "manifest.json",
    "functions.jsonl",
    "calls.jsonl",
    "externals.jsonl",
    "symbols.jsonl",
    "strings.jsonl",
    "memory_blocks.jsonl",
    "pseudocode.c",
]


def _validate_jsonl(path: Path, *, first_record_only: bool = False) -> int:
    count = 0
    with path.open("r", encoding="utf-8", errors="strict") as stream:
        for line_number, line in enumerate(stream, 1):
            if not line.strip():
                continue
            try:
                json.loads(line)
            except json.JSONDecodeError as error:
                raise RuntimeError(f"Invalid JSONL {path}:{line_number}: {error}") from error
            count += 1
            if first_record_only:
                break
    return count


def validate_run_outputs(
    run_root: Path,
    modules: list[ModuleArtifact],
    *,
    expect_ghidra: bool = True,
    expect_dts: bool = True,
) -> dict[str, Any]:
    errors: list[str] = []
    warnings: list[str] = []
    module_results: list[dict[str, Any]] = []

    if expect_dts:
        dts = run_root / "02_normalized" / "device_tree" / "live.dts"
        if not dts.is_file() or dts.stat().st_size == 0:
            errors.append("Live DTS is missing or empty")
    if expect_ghidra and not (run_root / "04_documents" / "INDEX.md").is_file():
        errors.append("Document index is missing")

    dtc_log = run_root / "05_logs" / "dtc_warnings.log"
    if dtc_log.is_file():
        warning_lines = sum(1 for line in dtc_log.read_text(encoding="utf-8").splitlines() if line)
        if warning_lines:
            warnings.append(
                f"dtc emitted {warning_lines} warning lines while converting the live filesystem tree"
            )

    for module in modules:
        result: dict[str, Any] = {"module": module.name, "errors": [], "warnings": []}
        if not module.local_path.is_file():
            result["errors"].append("Acquired module file is missing")
        elif sha256_file(module.local_path) != module.sha256:
            result["errors"].append("Acquired module SHA-256 does not match manifest")

        if expect_ghidra:
            export = run_root / "03_ghidra" / "exports" / module.name
            for filename in REQUIRED_GHIDRA_FILES:
                path = export / filename
                if not path.is_file():
                    result["errors"].append(f"Missing Ghidra export: {filename}")
            if not result["errors"]:
                try:
                    manifest = json.loads((export / "manifest.json").read_text(encoding="utf-8"))
                    function_count = _validate_jsonl(export / "functions.jsonl")
                    _validate_jsonl(export / "calls.jsonl")
                    _validate_jsonl(export / "externals.jsonl")
                    _validate_jsonl(export / "symbols.jsonl")
                    _validate_jsonl(export / "strings.jsonl")
                    _validate_jsonl(export / "memory_blocks.jsonl")
                    pcode_files = sorted((export / "pcode").glob("*.jsonl"))
                    decompiled_files = sorted((export / "decompiled").glob("*.c"))
                    if manifest.get("function_count") != function_count:
                        result["errors"].append("Ghidra manifest/function JSONL count mismatch")
                    if len(pcode_files) != function_count:
                        result["errors"].append("P-Code file count does not match function count")
                    if len(decompiled_files) != function_count:
                        result["errors"].append("Pseudocode file count does not match function count")
                    for pcode in pcode_files:
                        _validate_jsonl(pcode, first_record_only=True)
                except Exception as error:
                    result["errors"].append(str(error))

            console = run_root / "05_logs" / "ghidra" / module.name / "console.log"
            if not console.is_file():
                result["errors"].append("Ghidra console log is missing")
            else:
                console_text = console.read_text(encoding="utf-8", errors="replace")
                if "SCRIPT ERROR" in console_text or "Exception in thread" in console_text:
                    result["errors"].append("Ghidra console contains a script/runtime error")

            document = run_root / "04_documents" / module.name / "DOCUMENTO_TRANSICAO.md"
            if not document.is_file():
                result["errors"].append("Transition document is missing")
            else:
                headings = [
                    line for line in document.read_text(encoding="utf-8").splitlines()
                    if line.startswith("## ")
                ]
                if headings != EXPECTED_DOCUMENT_HEADINGS:
                    result["errors"].append(
                        "Transition document does not contain exactly the three required sections"
                    )
            for context_name in ("dts_context.json", "dts_context.dts"):
                if not (run_root / "04_documents" / module.name / context_name).is_file():
                    result["errors"].append(f"Missing per-module DTS artifact: {context_name}")

        module_results.append(result)
        errors.extend(f"{module.name}: {message}" for message in result["errors"])
        warnings.extend(f"{module.name}: {message}" for message in result["warnings"])

    return {
        "status": "pass" if not errors else "fail",
        "errors": errors,
        "warnings": warnings,
        "module_count": len(modules),
        "modules": module_results,
    }


def verify_hash_records(run_root: Path, records: list[dict[str, Any]]) -> list[str]:
    errors: list[str] = []
    for record in records:
        path = run_root / record["path"]
        if not path.is_file():
            errors.append(f"Missing hashed evidence: {record['path']}")
            continue
        if path.stat().st_size != record["size"]:
            errors.append(f"Size mismatch: {record['path']}")
            continue
        if sha256_file(path) != record["sha256"]:
            errors.append(f"SHA-256 mismatch: {record['path']}")
    return errors
