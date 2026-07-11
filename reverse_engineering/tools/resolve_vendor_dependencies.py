from __future__ import annotations

import argparse
import sys
from dataclasses import asdict
from pathlib import Path


TOOLS_DIR = Path(__file__).resolve().parent
ENGINEERING_ROOT = TOOLS_DIR.parent
if str(TOOLS_DIR) not in sys.path:
    sys.path.insert(0, str(TOOLS_DIR))

from re_pipeline.acquisition import (  # noqa: E402
    AcquisitionResult,
    ModuleArtifact,
    acquire_direct_dependencies,
    acquire_ramdisk_dependencies,
)
from re_pipeline.adb_client import AdbClient  # noqa: E402
from re_pipeline.cli import _write_chain_of_custody, _write_summary  # noqa: E402
from re_pipeline.ghidra_runner import GhidraResult  # noqa: E402
from re_pipeline.report import (  # noqa: E402
    build_vendor_export_index,
    generate_document_index,
    generate_transition_document,
)
from re_pipeline.static_tools import DockerKernelTools  # noqa: E402
from re_pipeline import __version__  # noqa: E402
from re_pipeline.util import read_json, sha256_file, utc_iso, write_json, write_text  # noqa: E402
from re_pipeline.validation import validate_run_outputs, verify_hash_records  # noqa: E402


def _module_from_record(run_root: Path, record: dict) -> ModuleArtifact:
    return ModuleArtifact(
        name=record["name"],
        remote_path=record["remote_path"],
        local_path=run_root / record["local_path"],
        size=int(record["size"]),
        sha256=record["sha256"],
        modinfo=record.get("modinfo", {}),
    )


def _default_run() -> Path:
    latest = ENGINEERING_ROOT / "runs" / "LATEST.txt"
    if not latest.is_file():
        raise RuntimeError("No LATEST.txt exists; provide --run explicitly")
    return Path(latest.read_text(encoding="utf-8").strip())


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Enrich an existing run with direct vendor module dependencies"
    )
    parser.add_argument("--run", type=Path, default=None)
    parser.add_argument("--static-workers", type=int, default=4)
    arguments = parser.parse_args()

    run_root = (arguments.run or _default_run()).resolve()
    acquisition_path = run_root / "00_manifest" / "acquisition.json"
    acquisition_json = read_json(acquisition_path)
    effective_config_path = run_root / "00_manifest" / "effective_config.json"
    config = read_json(effective_config_path)
    current_config = read_json(ENGINEERING_ROOT / "config" / "nx809j.json")
    if not config.get("toolchain", {}).get("magiskboot"):
        config["toolchain"]["magiskboot"] = current_config["toolchain"]["magiskboot"]
        write_json(effective_config_path, config)
    device = read_json(run_root / "00_manifest" / "device.json")
    modules = [_module_from_record(run_root, item) for item in acquisition_json["modules"]]
    inventory = [
        line.strip()
        for line in (run_root / "01_acquisition" / "module_inventory.txt")
        .read_text(encoding="utf-8")
        .splitlines()
        if line.strip()
    ]

    adb = AdbClient(serial=device["serial"])
    dependencies, missing = acquire_direct_dependencies(adb, run_root, modules, inventory)
    tools = DockerKernelTools(config)
    ramdisk_modules = tools.unpack_vendor_boot(run_root, device["slot_suffix"])
    if ramdisk_modules and missing:
        recovered, missing = acquire_ramdisk_dependencies(run_root, ramdisk_modules, missing)
        dependencies.extend(recovered)
    acquisition_json["dependencies"] = [item.as_dict(run_root) for item in dependencies]
    acquisition_json["missing_dependencies"] = missing
    write_json(acquisition_path, acquisition_json)

    static_manifest_path = run_root / "00_manifest" / "static_analysis.json"
    static_manifest = read_json(static_manifest_path)
    static_manifest.update(
        tools.analyze_modules(run_root, dependencies, workers=arguments.static_workers)
    )
    write_json(static_manifest_path, static_manifest)

    vendor_exports = build_vendor_export_index(run_root / "02_normalized" / "modules")
    write_json(run_root / "02_normalized" / "vendor_export_index.json", vendor_exports)
    symvers = run_root / "02_normalized" / "kmi" / "Module.symvers"
    documents = [
        generate_transition_document(run_root, module, symvers, vendor_exports)
        for module in modules
    ]
    generate_document_index(run_root, modules)

    validation = validate_run_outputs(run_root, modules, expect_ghidra=True, expect_dts=True)
    write_json(run_root / "00_manifest" / "validation.json", validation)
    if validation["errors"]:
        raise RuntimeError(
            f"Validation failed with {len(validation['errors'])} error(s)"
        )

    ghidra_results = [
        GhidraResult(**item)
        for item in read_json(run_root / "00_manifest" / "ghidra.json")
    ]
    acquisition = AcquisitionResult(
        device=device,
        modules=modules,
        dependencies=dependencies,
        partitions=acquisition_json.get("partitions", []),
        snapshot_failures=acquisition_json.get("snapshot_failures", []),
        live_tree_directory=(
            run_root / acquisition_json["live_device_tree"]
            if acquisition_json.get("live_device_tree")
            else None
        ),
    )
    run_id = read_json(run_root / "00_manifest" / "run.json")["run_id"]
    _write_summary(run_root, run_id, acquisition, ghidra_results, documents)
    records = _write_chain_of_custody(run_root)
    hash_errors = verify_hash_records(run_root, records)
    if hash_errors:
        raise RuntimeError(
            f"Chain-of-custody verification failed with {len(hash_errors)} error(s)"
        )

    run_manifest_path = run_root / "00_manifest" / "run.json"
    run_manifest = read_json(run_manifest_path)
    if "original_pipeline_version" not in run_manifest:
        run_manifest["original_pipeline_version"] = run_manifest.get("pipeline_version")
    run_manifest.update(
        {
            "pipeline_version": __version__,
            "refreshed_at_utc": utc_iso(),
            "effective_config_sha256": sha256_file(effective_config_path),
            "dependency_count": len(dependencies),
            "missing_dependency_count": len(missing),
            "evidence_file_count": len(records),
            "validation_status": validation["status"],
            "chain_of_custody_verified": True,
        }
    )
    write_json(run_manifest_path, run_manifest)
    write_text(ENGINEERING_ROOT / "runs" / "LATEST.txt", str(run_root) + "\n")
    print(f"[DONE] enriched {run_root}")
    print(f"[DONE] dependencies={len(dependencies)} missing={len(missing)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
