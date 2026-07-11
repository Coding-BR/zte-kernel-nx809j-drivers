from __future__ import annotations

import argparse
import traceback
from dataclasses import asdict
from pathlib import Path
from typing import Any

from . import __version__
from .acquisition import acquire_device, acquire_ramdisk_dependencies
from .adb_client import AdbClient
from .ghidra_runner import GhidraHeadless
from .report import (
    build_vendor_export_index,
    generate_document_index,
    generate_transition_document,
)
from .static_tools import DockerKernelTools
from .validation import validate_run_outputs, verify_hash_records
from .util import (
    file_record,
    host_facts,
    read_json,
    sha256_file,
    utc_iso,
    utc_timestamp,
    write_json,
    write_text,
)


ENGINEERING_ROOT = Path(__file__).resolve().parents[2]
DEFAULT_CONFIG = ENGINEERING_ROOT / "config" / "nx809j.json"


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Read-only NX809J kernel driver acquisition and Ghidra pipeline"
    )
    parser.add_argument("--config", type=Path, default=DEFAULT_CONFIG)
    parser.add_argument("--output-root", type=Path, default=ENGINEERING_ROOT / "runs")
    parser.add_argument("--run-id", default=None)
    parser.add_argument("--serial", default=None)
    parser.add_argument(
        "--modules",
        nargs="+",
        default=None,
        help="Filename patterns, for example zte_imem_info.ko zte_stats_info.ko",
    )
    parser.add_argument("--skip-partitions", action="store_true")
    parser.add_argument("--skip-device-tree", action="store_true")
    parser.add_argument("--skip-ghidra", action="store_true")
    parser.add_argument("--static-workers", type=int, default=4)
    return parser


def _evidence_files(run_root: Path) -> list[Path]:
    files: list[Path] = []
    excluded_parts = {
        ("01_acquisition", "device_tree", "live"),
        ("03_ghidra", "projects"),
    }
    for path in sorted(run_root.rglob("*")):
        if not path.is_file():
            continue
        relative = path.relative_to(run_root)
        if path.name in {"chain_of_custody.json", "SHA256SUMS.txt", "run.json"}:
            continue
        parts = relative.parts
        if any(parts[: len(prefix)] == prefix for prefix in excluded_parts):
            continue
        files.append(path)
    return files


def _write_chain_of_custody(run_root: Path) -> list[dict[str, Any]]:
    records = [file_record(path, run_root) for path in _evidence_files(run_root)]
    write_json(run_root / "00_manifest" / "chain_of_custody.json", records)
    lines = [f"{record['sha256']}  {record['path']}" for record in records]
    write_text(run_root / "00_manifest" / "SHA256SUMS.txt", "\n".join(lines) + "\n")
    return records


def _write_summary(
    run_root: Path,
    run_id: str,
    acquisition: Any,
    ghidra_results: list[Any],
    documents: list[Path],
) -> None:
    successful = sum(1 for result in ghidra_results if result.status == "success")
    failed = sum(1 for result in ghidra_results if result.status != "success")
    lines = [
        f"# Reverse Engineering Run {run_id}",
        "",
        f"- Device: `{acquisition.device['product_device']}` / `{acquisition.device['serial']}`",
        f"- Kernel observed: `{acquisition.device['kernel_release']}`",
        f"- Build fingerprint: `{acquisition.device['build_fingerprint']}`",
        f"- Modules acquired: `{len(acquisition.modules)}`",
        f"- Direct dependency modules acquired: `{len(acquisition.dependencies)}`",
        f"- Partitions acquired: `{sum(1 for item in acquisition.partitions if item['status'] == 'captured')}`",
        f"- Ghidra analyses successful: `{successful}`",
        f"- Ghidra analyses failed: `{failed}`",
        f"- Transition documents: `{len(documents)}`",
        "",
        "Every source artifact is read-only evidence from the device or the local kernel build "
        "reference. Verify `00_manifest/SHA256SUMS.txt` before comparing runs.",
        "",
    ]
    write_text(run_root / "RUN_SUMMARY.md", "\n".join(lines))


def main(argv: list[str] | None = None) -> int:
    arguments = build_parser().parse_args(argv)
    config_path = arguments.config.resolve()
    config = read_json(config_path)
    run_id = arguments.run_id or f"NX809J-{utc_timestamp()}"
    run_root = arguments.output_root.resolve() / run_id
    if run_root.exists() and any(run_root.iterdir()):
        raise RuntimeError(f"Run directory already exists and is not empty: {run_root}")
    for directory in (
        "00_manifest",
        "01_acquisition",
        "02_normalized",
        "03_ghidra",
        "04_documents",
        "05_logs",
    ):
        (run_root / directory).mkdir(parents=True, exist_ok=True)

    if arguments.serial:
        config.setdefault("device", {})["serial"] = arguments.serial
    write_json(run_root / "00_manifest" / "effective_config.json", config)
    manifest: dict[str, Any] = {
        "schema_version": 1,
        "pipeline_version": __version__,
        "run_id": run_id,
        "started_at_utc": utc_iso(),
        "status": "running",
        "config_source": str(config_path),
        "config_sha256": sha256_file(config_path),
        "effective_config_sha256": sha256_file(
            run_root / "00_manifest" / "effective_config.json"
        ),
        "host": host_facts(),
    }
    write_json(run_root / "00_manifest" / "run.json", manifest)
    print(f"[RUN] {run_id}", flush=True)
    print(f"[RUN] output {run_root}", flush=True)

    try:
        adb = AdbClient(serial=config.get("device", {}).get("serial"))
        acquisition = acquire_device(
            adb,
            config,
            run_root,
            arguments.modules,
            collect_partitions=not arguments.skip_partitions,
            collect_live_tree=not arguments.skip_device_tree,
        )

        tools = DockerKernelTools(config)
        ramdisk_modules = tools.unpack_vendor_boot(
            run_root,
            acquisition.device["slot_suffix"],
        )
        acquisition_manifest_path = run_root / "00_manifest" / "acquisition.json"
        acquisition_manifest = read_json(acquisition_manifest_path)
        missing_dependencies = acquisition_manifest.get("missing_dependencies", [])
        if ramdisk_modules and missing_dependencies:
            recovered, missing_dependencies = acquire_ramdisk_dependencies(
                run_root,
                ramdisk_modules,
                missing_dependencies,
            )
            acquisition.dependencies.extend(recovered)
            acquisition_manifest["dependencies"] = [
                item.as_dict(run_root) for item in acquisition.dependencies
            ]
            acquisition_manifest["missing_dependencies"] = missing_dependencies
            write_json(acquisition_manifest_path, acquisition_manifest)
        print("[KMI] exporting local Module.symvers", flush=True)
        symvers_path = tools.export_module_symvers(run_root)
        if acquisition.live_tree_directory:
            print("[DTC] compiling live filesystem tree to DTS", flush=True)
            tools.compile_live_dts(run_root, acquisition.live_tree_directory)
        static_results = tools.analyze_modules(
            run_root,
            acquisition.modules + acquisition.dependencies,
            workers=arguments.static_workers,
        )
        write_json(run_root / "00_manifest" / "static_analysis.json", static_results)
        vendor_exports = build_vendor_export_index(run_root / "02_normalized" / "modules")
        write_json(run_root / "02_normalized" / "vendor_export_index.json", vendor_exports)

        ghidra_results = []
        documents: list[Path] = []
        if not arguments.skip_ghidra:
            ghidra = GhidraHeadless(config, ENGINEERING_ROOT / "ghidra_scripts")
            ghidra_results = ghidra.analyze_all(run_root, acquisition.modules)
            write_json(
                run_root / "00_manifest" / "ghidra.json",
                [asdict(result) for result in ghidra_results],
            )
            for module, result in zip(acquisition.modules, ghidra_results, strict=True):
                if result.status != "success":
                    continue
                print(f"[DOC] generating transition document for {module.name}", flush=True)
                documents.append(
                    generate_transition_document(
                        run_root,
                        module,
                        symvers_path,
                        vendor_exports,
                    )
                )
            failed_modules = [
                result.module for result in ghidra_results if result.status != "success"
            ]
            if failed_modules:
                raise RuntimeError(
                    "Ghidra failed to export: " + ", ".join(failed_modules)
                )
            generate_document_index(run_root, acquisition.modules)

        validation = validate_run_outputs(
            run_root,
            acquisition.modules,
            expect_ghidra=not arguments.skip_ghidra,
            expect_dts=not arguments.skip_device_tree,
        )
        write_json(run_root / "00_manifest" / "validation.json", validation)
        if validation["errors"]:
            raise RuntimeError(
                f"Output validation failed with {len(validation['errors'])} error(s)"
            )

        _write_summary(run_root, run_id, acquisition, ghidra_results, documents)
        records = _write_chain_of_custody(run_root)
        hash_errors = verify_hash_records(run_root, records)
        if hash_errors:
            raise RuntimeError(
                f"Chain-of-custody verification failed with {len(hash_errors)} error(s)"
            )
        manifest.update(
            {
                "finished_at_utc": utc_iso(),
                "status": "complete",
                "device_serial": acquisition.device["serial"],
                "module_count": len(acquisition.modules),
                "dependency_count": len(acquisition.dependencies),
                "document_count": len(documents),
                "evidence_file_count": len(records),
                "validation_status": validation["status"],
                "chain_of_custody_verified": True,
            }
        )
        write_json(run_root / "00_manifest" / "run.json", manifest)
        write_text(arguments.output_root.resolve() / "LATEST.txt", str(run_root) + "\n")
        print(f"[DONE] RUN_ROOT={run_root}", flush=True)
        return 0
    except Exception as error:
        manifest.update(
            {
                "finished_at_utc": utc_iso(),
                "status": "failed",
                "error": str(error),
            }
        )
        write_json(run_root / "00_manifest" / "run.json", manifest)
        write_text(run_root / "05_logs" / "pipeline_exception.log", traceback.format_exc())
        print(f"[FAILED] {error}", flush=True)
        print(f"[FAILED] details: {run_root / '05_logs' / 'pipeline_exception.log'}", flush=True)
        return 1
