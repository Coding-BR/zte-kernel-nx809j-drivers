#!/usr/bin/env python3
"""Verify evidence gates for a reconstructed driver without device operations."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import sys
from pathlib import Path

GATES = (
    ("0 - Segurança", "validation_plan.json", ("risk", "rollback")),
    ("1 - Stock", "stock_manifest.json", ("stock_sha256",)),
    ("4 - ABI", "abi_validation.json", ("document", "header_probe")),
    ("5 - Microtarefas", "microtask_validation.json", ("tests", "kcfi")),
    ("7 - Paridade", "parity_report.json", ("comparisons",)),
    ("8 - Revisão", "independent_review.json", ("implementer", "reviewer", "commands")),
    ("9 - Hardware", "hardware_validation.json", ("logs", "rollback_status")),
    ("10 - Promoção", "promotion_manifest.json", ("artifacts",)),
)


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def read_json(path: Path) -> dict:
    value = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(value, dict):
        raise ValueError("not a JSON object")
    return value


def find_run(engineering_root: Path) -> Path:
    candidates = sorted(
        (path for path in (engineering_root / "runs").glob("*") if path.is_dir()),
        key=lambda path: path.stat().st_mtime,
        reverse=True,
    )
    for candidate in candidates:
        if (candidate / "00_manifest" / "validation.json").is_file():
            return candidate
    raise ValueError("no completed engineering run was found")


def status_gate(name: str, path: Path, required: tuple[str, ...]) -> dict:
    blockers: list[str] = []
    if not path.is_file():
        blockers.append("missing: " + path.name)
        return {"name": name, "status": "INCOMPLETO", "evidence": [str(path)], "blockers": blockers}
    try:
        payload = read_json(path)
    except (OSError, ValueError, json.JSONDecodeError) as error:
        blockers.append("invalid evidence: " + str(error))
        payload = {}
    if payload.get("status") != "PASS":
        blockers.append("status is not PASS")
    for field in required:
        if not payload.get(field):
            blockers.append("missing field: " + field)
    if name == "8 - Revisão" and payload.get("reviewer") == payload.get("implementer"):
        blockers.append("reviewer equals implementer")
    if name == "9 - Hardware" and payload.get("rollback_status") != "PASS":
        blockers.append("rollback_status is not PASS")
    return {
        "name": name,
        "status": "PASS" if not blockers else "INCOMPLETO",
        "evidence": [str(path)],
        "blockers": blockers,
    }


def ghidra_gate(run_root: Path, driver: str) -> tuple[dict, list[str]]:
    export = run_root / "03_ghidra" / "exports" / (driver + ".ko")
    files = ("manifest.json", "functions.jsonl", "pseudocode.c")
    blockers = [name for name in files if not (export / name).is_file()]
    names: list[str] = []
    if not blockers:
        try:
            manifest = read_json(export / "manifest.json")
            records = [
                json.loads(line)
                for line in (export / "functions.jsonl").read_text(encoding="utf-8").splitlines()
                if line.strip()
            ]
            names = [item["name"] for item in records if isinstance(item.get("name"), str)]
            if manifest.get("function_count") != len(records):
                blockers.append("function count mismatch")
            if len(list((export / "pcode").glob("*.jsonl"))) != len(records):
                blockers.append("P-Code count mismatch")
            if len(list((export / "decompiled").glob("*.c"))) != len(records):
                blockers.append("pseudocode count mismatch")
        except (OSError, ValueError, json.JSONDecodeError) as error:
            blockers.append("invalid Ghidra export: " + str(error))
    return {
        "name": "2 - Ghidra",
        "status": "PASS" if not blockers else "INCOMPLETO",
        "evidence": [str(export)],
        "blockers": blockers,
    }, names


def map_gate(driver_root: Path, stock_sha: str | None, names: list[str]) -> dict:
    path = driver_root / "reconstruction_map.json"
    blockers: list[str] = []
    if not path.is_file():
        blockers.append("missing reconstruction_map.json")
        return {"name": "3 - Mapa", "status": "INCOMPLETO", "evidence": [str(path)], "blockers": blockers}
    try:
        payload = read_json(path)
        mappings = payload.get("mappings")
        if payload.get("stock_sha256") != stock_sha:
            blockers.append("stock SHA-256 mismatch")
        if not isinstance(mappings, list):
            blockers.append("mappings is not an array")
            mappings = []
        mapped = set()
        for item in mappings:
            if not isinstance(item, dict):
                blockers.append("invalid mapping")
                continue
            source = item.get("source_file")
            if item.get("status") != "reviewed":
                blockers.append("unreviewed mapping")
            if not isinstance(source, str) or not (driver_root / source).is_file():
                blockers.append("mapping source file is missing")
            mapped.add(item.get("stock_function"))
        missing = set(names) - mapped
        if missing:
            blockers.append(str(len(missing)) + " Ghidra functions unmapped")
    except (OSError, ValueError, json.JSONDecodeError) as error:
        blockers.append("invalid map: " + str(error))
    return {
        "name": "3 - Mapa",
        "status": "PASS" if not blockers else "INCOMPLETO",
        "evidence": [str(path)],
        "blockers": sorted(set(blockers)),
    }


def build_gate(audit: Path, driver: str) -> dict:
    blockers: list[str] = []
    if not audit.is_file():
        blockers.append("missing independent driver audit")
    else:
        try:
            records = read_json(audit).get("drivers", [])
            record = next((item for item in records if item.get("driver") == driver), None)
            if not isinstance(record, dict) or not str(record.get("status", "")).startswith("static_verified"):
                blockers.append("current independent audit is not static_verified")
        except (OSError, ValueError, json.JSONDecodeError) as error:
            blockers.append("invalid independent audit: " + str(error))
    return {"name": "6 - Build/KMI", "status": "PASS" if not blockers else "INCOMPLETO", "evidence": [str(audit)], "blockers": blockers}


def microtask_gate(evidence_root: Path, workspace_root: Path) -> dict:
    validation = evidence_root / "microtask_validation.json"
    audit = evidence_root / "microtask_audit.json"
    base = status_gate("5 - Microtarefas", validation, ("tests", "kcfi", "audit"))
    blockers = list(base["blockers"])
    if not audit.is_file():
        blockers.append("missing microtask_audit.json")
    else:
        try:
            payload = read_json(audit)
            if payload.get("passed") is not True:
                blockers.append("microtask audit is not passed")
        except (OSError, ValueError, json.JSONDecodeError) as error:
            blockers.append("invalid microtask audit: " + str(error))
    if validation.is_file():
        try:
            validation_payload = read_json(validation)
            audit_reference = validation_payload.get("audit")
            if not isinstance(audit_reference, str) or (
                workspace_root / audit_reference
            ).resolve() != audit.resolve():
                blockers.append("microtask validation does not reference the current audit")
        except (OSError, ValueError, json.JSONDecodeError):
            pass
    return {
        "name": "5 - Microtarefas",
        "status": "PASS" if not blockers else "INCOMPLETO",
        "evidence": [str(validation), str(audit)],
        "blockers": sorted(set(blockers)),
    }


def render(payload: dict) -> str:
    lines = [
        "# Verificação do Ciclo Obrigatório de LLM",
        "",
        "Driver: " + payload["driver"],
        "",
        "| Gate | Estado | Bloqueadores |",
        "|---|---|---|",
    ]
    for item in payload["gates"]:
        lines.append("| " + item["name"] + " | " + item["status"] + " | " + "<br>".join(item["blockers"]) + " |")
    lines.extend(["", "Veredito: " + payload["verdict"], ""])
    return chr(10).join(lines)


def parse_args() -> argparse.Namespace:
    engineering_root = Path(__file__).resolve().parents[1]
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--driver", required=True)
    parser.add_argument("--curated-root", type=Path, default=engineering_root / "curated")
    parser.add_argument("--run-root", type=Path)
    parser.add_argument("--evidence-root", type=Path, default=engineering_root / "validation")
    parser.add_argument("--audit", type=Path, default=engineering_root / "validation" / "driver_audit.json")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    curated_root = args.curated_root.resolve()
    engineering_root = curated_root.parent
    workspace_root = engineering_root.parent
    run_root = (args.run_root or find_run(engineering_root)).resolve()
    driver_root = curated_root / args.driver
    evidence_root = args.evidence_root.resolve() / args.driver
    stock = run_root / "01_acquisition" / "modules" / (args.driver + ".ko")
    stock_sha = sha256_file(stock) if stock.is_file() else None
    gates = []
    for name, filename, fields in GATES[:2]:
        gates.append(status_gate(name, evidence_root / filename, fields))
    ghidra, names = ghidra_gate(run_root, args.driver)
    gates.append(ghidra)
    gates.append(map_gate(driver_root, stock_sha, names))
    abi_name, abi_filename, abi_fields = GATES[2]
    gates.append(status_gate(abi_name, evidence_root / abi_filename, abi_fields))
    gates.append(microtask_gate(evidence_root, workspace_root))
    gates.append(build_gate(args.audit.resolve(), args.driver))
    for name, filename, fields in GATES[4:]:
        gates.append(status_gate(name, evidence_root / filename, fields))
    complete = all(item["status"] == "PASS" for item in gates)
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "driver": args.driver,
        "run_root": str(run_root),
        "gates": gates,
        "verdict": "100% DOS REQUISITOS OBSERVAVEIS COMPROVADOS" if complete else "INCOMPLETO: não autorizado a declarar 100%",
    }
    evidence_root.mkdir(parents=True, exist_ok=True)
    (evidence_root / "cycle_validation.json").write_text(json.dumps(payload, indent=2, ensure_ascii=False) + chr(10), encoding="utf-8")
    (evidence_root / "CYCLE_VALIDATION.md").write_text(render(payload), encoding="utf-8")
    print(json.dumps({"driver": args.driver, "verdict": payload["verdict"]}, ensure_ascii=False))
    return 0 if complete else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError) as error:
        print("error: " + str(error), file=sys.stderr)
        raise SystemExit(2)
