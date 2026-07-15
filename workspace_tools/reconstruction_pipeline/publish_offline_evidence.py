#!/usr/bin/env python3
"""Publish derived offline evidence into the repository without stock modules."""

from __future__ import annotations

import argparse
import datetime as dt
import json
import shutil
import sys
from pathlib import Path
from typing import Any

import audit_offline_reconstruction as audit


def ensure_within(path: Path, root: Path) -> None:
    resolved = path.resolve()
    root = root.resolve()
    if resolved == root or root not in resolved.parents:
        raise ValueError(f"publication target escapes repository: {resolved}")


def replace_tree(source: Path, target: Path, repo_root: Path) -> None:
    ensure_within(target, repo_root)
    if not source.is_dir():
        raise ValueError(f"evidence source is missing: {source}")
    if target.exists():
        shutil.rmtree(target)
    shutil.copytree(source, target)


def evidence_records(root: Path) -> list[dict[str, Any]]:
    records = []
    for path in sorted(item for item in root.rglob("*") if item.is_file()):
        if path.name == "EVIDENCE_MANIFEST.json" and path.parent == root:
            continue
        if path.suffix == ".ko":
            raise ValueError(f"stock/candidate module must not enter evidence package: {path}")
        records.append(
            {
                "path": path.relative_to(root).as_posix(),
                "size": path.stat().st_size,
                "sha256": audit.sha256_file(path),
            }
        )
    return records


def publish_driver(
    engineering_root: Path, repo_root: Path, driver: str
) -> dict[str, Any]:
    run_root = audit.find_run(engineering_root, driver)
    if run_root is None:
        return {
            "driver": driver,
            "status": "INCOMPLETE",
            "blockers": ["no run contains stock and Ghidra evidence"],
        }
    stock = run_root / "01_acquisition" / "modules" / f"{driver}.ko"
    ghidra_source = run_root / "03_ghidra" / "exports" / f"{driver}.ko"
    assembly_source = (
        engineering_root / "validation" / driver / "offline_static" / "stock_assembly"
    )
    assembly_manifest = assembly_source / "manifest.json"
    if not assembly_manifest.is_file() or audit.read_json(assembly_manifest).get("passed") is not True:
        return {
            "driver": driver,
            "status": "INCOMPLETE",
            "blockers": ["complete assembly manifest is missing"],
        }
    destination = (
        repo_root
        / "reverse_engineering"
        / "validation"
        / "reconstructed"
        / driver
        / "offline_static"
    )
    destination.mkdir(parents=True, exist_ok=True)
    previous_manifest: dict[str, Any] = {}
    previous_manifest_path = destination / "EVIDENCE_MANIFEST.json"
    if previous_manifest_path.is_file():
        try:
            previous_manifest = audit.read_json(previous_manifest_path)
        except (OSError, ValueError, json.JSONDecodeError):
            previous_manifest = {}
    replace_tree(ghidra_source, destination / "ghidra_stock", repo_root)
    replace_tree(assembly_source, destination / "stock_assembly", repo_root)
    records = evidence_records(destination)
    ghidra_functions = audit.read_jsonl(destination / "ghidra_stock" / "functions.jsonl")
    assembly_records = audit.read_json(
        destination / "stock_assembly" / "manifest.json"
    ).get("records", [])
    manifest = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "driver": driver,
        "source_run": run_root.name,
        "stock": {
            "size": stock.stat().st_size,
            "sha256": audit.sha256_file(stock),
            "binary_published": False,
        },
        "ghidra_function_count": len(ghidra_functions),
        "assembly_function_count": len(assembly_records),
        "derived_file_count": len(records),
        "derived_files": records,
    }
    previous_without_time = {
        key: value for key, value in previous_manifest.items() if key != "generated_utc"
    }
    current_without_time = {
        key: value for key, value in manifest.items() if key != "generated_utc"
    }
    if previous_without_time == current_without_time and previous_manifest.get("generated_utc"):
        manifest["generated_utc"] = previous_manifest["generated_utc"]
    manifest_path = destination / "EVIDENCE_MANIFEST.json"
    manifest_path.write_text(
        json.dumps(manifest, indent=2, ensure_ascii=False, sort_keys=True) + "\n",
        encoding="utf-8",
    )
    return {
        "driver": driver,
        "status": "PASS",
        "destination": str(destination),
        "manifest": str(manifest_path),
        "stock_sha256": manifest["stock"]["sha256"],
        "ghidra_function_count": len(ghidra_functions),
        "assembly_function_count": len(assembly_records),
        "derived_file_count": len(records) + 1,
    }


def render_markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Publicacao de Evidencias Offline",
        "",
        "Os pacotes contem somente analise derivada. Os modulos `.ko` stock nao "
        "foram publicados.",
        "",
        "| Driver | Estado | Ghidra | Assembly | Arquivos derivados |",
        "|---|---|---:|---:|---:|",
    ]
    for item in payload["drivers"]:
        lines.append(
            f"| `{item['driver']}` | `{item['status']}` | "
            f"{item.get('ghidra_function_count', 0)} | "
            f"{item.get('assembly_function_count', 0)} | "
            f"{item.get('derived_file_count', 0)} |"
        )
    lines.append("")
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    repo_root = audit.discover_repo_root()
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--engineering-root", type=Path)
    parser.add_argument("--driver", action="append", dest="drivers")
    parser.add_argument("--all", action="store_true")
    parser.add_argument(
        "--output",
        type=Path,
        default=repo_root / "reverse_engineering" / "validation" / "OFFLINE_EVIDENCE_PUBLICATION.json",
    )
    parser.add_argument(
        "--markdown",
        type=Path,
        default=repo_root / "reverse_engineering" / "validation" / "OFFLINE_EVIDENCE_PUBLICATION.md",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    repo_root = audit.discover_repo_root()
    engineering_root = audit.discover_engineering_root(args.engineering_root, repo_root)
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
    results = []
    for driver in drivers:
        print(f"[publish] {driver}", flush=True)
        results.append(publish_driver(engineering_root, repo_root, driver))
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "derived_evidence_only",
        "stock_modules_published": False,
        "drivers": results,
        "summary": {
            "passed": [item["driver"] for item in results if item["status"] == "PASS"],
            "incomplete": [item["driver"] for item in results if item["status"] != "PASS"],
            "ghidra_functions": sum(item.get("ghidra_function_count", 0) for item in results),
            "assembly_functions": sum(item.get("assembly_function_count", 0) for item in results),
        },
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(
        json.dumps(payload, indent=2, ensure_ascii=False, sort_keys=True) + "\n",
        encoding="utf-8",
    )
    args.markdown.parent.mkdir(parents=True, exist_ok=True)
    args.markdown.write_text(render_markdown(payload), encoding="utf-8")
    print(json.dumps(payload["summary"], ensure_ascii=False, sort_keys=True))
    return 0 if not payload["summary"]["incomplete"] else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(2)
