#!/usr/bin/env python3
"""Materialize complete stock assembly evidence for one or all drivers.

This tool is offline with respect to the device. It reads preserved stock
modules and Ghidra inventories, then invokes extract_module_assembly.py in the
local Docker toolchain. Existing output is reused only when its input hashes,
function count, and completion state still match.
"""

from __future__ import annotations

import argparse
import datetime as dt
import json
import subprocess
import sys
import time
from pathlib import Path
from typing import Any

import audit_offline_reconstruction as audit


def reusable_manifest(
    path: Path, *, stock_sha: str, functions_sha: str, function_count: int
) -> bool:
    if not path.is_file():
        return False
    try:
        payload = audit.read_json(path)
    except (OSError, ValueError, json.JSONDecodeError):
        return False
    records = payload.get("records")
    return bool(
        payload.get("passed") is True
        and payload.get("source", {}).get("sha256") == stock_sha
        and payload.get("function_inventory", {}).get("sha256") == functions_sha
        and isinstance(records, list)
        and len(records) == function_count
        and all(isinstance(item, dict) and item.get("complete") is True for item in records)
    )


def materialize_driver(
    *,
    engineering_root: Path,
    driver: str,
    extractor: Path,
    image: str,
    toolchain_volume: str,
    clang_revision: str,
    force: bool,
) -> dict[str, Any]:
    run_root = audit.find_run(engineering_root, driver)
    if run_root is None:
        return {
            "driver": driver,
            "status": "INCOMPLETE",
            "blockers": ["no run contains both stock and Ghidra evidence"],
        }
    stock = run_root / "01_acquisition" / "modules" / f"{driver}.ko"
    functions = run_root / "03_ghidra" / "exports" / f"{driver}.ko" / "functions.jsonl"
    output_dir = engineering_root / "validation" / driver / "offline_static" / "stock_assembly"
    manifest = output_dir / "manifest.json"
    function_records = audit.read_jsonl(functions)
    stock_sha = audit.sha256_file(stock)
    functions_sha = audit.sha256_file(functions)
    if not force and reusable_manifest(
        manifest,
        stock_sha=stock_sha,
        functions_sha=functions_sha,
        function_count=len(function_records),
    ):
        return {
            "driver": driver,
            "status": "PASS",
            "action": "reused",
            "run_root": str(run_root),
            "manifest": str(manifest),
            "function_count": len(function_records),
            "stock_sha256": stock_sha,
            "functions_sha256": functions_sha,
        }
    command = [
        sys.executable,
        str(extractor),
        str(stock),
        "--functions-jsonl",
        str(functions),
        "--output-dir",
        str(output_dir),
        "--image",
        image,
        "--toolchain-volume",
        toolchain_volume,
        "--clang-revision",
        clang_revision,
    ]
    started = time.monotonic()
    completed = subprocess.run(
        command,
        check=False,
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
    )
    duration = round(time.monotonic() - started, 3)
    manifest_passed = False
    if manifest.is_file():
        try:
            manifest_passed = audit.read_json(manifest).get("passed") is True
        except (OSError, ValueError, json.JSONDecodeError):
            pass
    passed = completed.returncode == 0 and manifest_passed
    return {
        "driver": driver,
        "status": "PASS" if passed else "INCOMPLETE",
        "action": "generated",
        "run_root": str(run_root),
        "manifest": str(manifest),
        "function_count": len(function_records),
        "stock_sha256": stock_sha,
        "functions_sha256": functions_sha,
        "duration_seconds": duration,
        "command": command,
        "returncode": completed.returncode,
        "stdout": completed.stdout[-2000:],
        "stderr": completed.stderr[-4000:],
        "blockers": [] if passed else ["assembly extraction did not pass"],
    }


def render_markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Materializacao do Assembly Offline",
        "",
        f"Gerado em: `{payload['generated_utc']}`",
        "",
        "| Driver | Estado | Funcoes | Acao | Manifesto |",
        "|---|---|---:|---|---|",
    ]
    for item in payload["drivers"]:
        lines.append(
            f"| `{item['driver']}` | `{item['status']}` | "
            f"{item.get('function_count', 0)} | `{item.get('action', 'none')}` | "
            f"`{item.get('manifest', '')}` |"
        )
    lines.extend(
        (
            "",
            "Este relatorio prova somente a extracao integral de assembly dos "
            "artefatos stock registrados. Ele nao atesta a reconstrucao do driver.",
            "",
        )
    )
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    repo_root = audit.discover_repo_root()
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--engineering-root", type=Path)
    parser.add_argument("--driver", action="append", dest="drivers")
    parser.add_argument("--all", action="store_true")
    parser.add_argument("--force", action="store_true")
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    parser.add_argument(
        "--output",
        type=Path,
        default=repo_root / "reverse_engineering" / "validation" / "OFFLINE_ASSEMBLY_MATERIALIZATION.json",
    )
    parser.add_argument(
        "--markdown",
        type=Path,
        default=repo_root / "reverse_engineering" / "validation" / "OFFLINE_ASSEMBLY_MATERIALIZATION.md",
    )
    parser.add_argument("--allow-incomplete", action="store_true")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    repo_root = audit.discover_repo_root()
    engineering_root = audit.discover_engineering_root(args.engineering_root, repo_root)
    if args.all:
        drivers = sorted(
            path.name
            for path in (engineering_root / "curated").iterdir()
            if path.is_dir() and path.name.startswith("zte_")
        )
    else:
        drivers = sorted(set(args.drivers or []))
    if not drivers:
        raise ValueError("pass --all or at least one --driver")
    extractor = Path(__file__).with_name("extract_module_assembly.py").resolve()
    results = []
    for driver in drivers:
        print(f"[assembly] {driver}", flush=True)
        results.append(
            materialize_driver(
                engineering_root=engineering_root,
                driver=driver,
                extractor=extractor,
                image=args.image,
                toolchain_volume=args.toolchain_volume,
                clang_revision=args.clang_revision,
                force=args.force,
            )
        )
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "offline_read_only_stock_inputs",
        "engineering_root": str(engineering_root),
        "drivers": results,
        "summary": {
            "passed": [item["driver"] for item in results if item["status"] == "PASS"],
            "incomplete": [
                item["driver"] for item in results if item["status"] != "PASS"
            ],
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
    complete = not payload["summary"]["incomplete"]
    return 0 if complete or args.allow_incomplete else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError, subprocess.SubprocessError) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(2)
