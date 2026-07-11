from __future__ import annotations

import fnmatch
import re
import shutil
import tarfile
from dataclasses import dataclass
from pathlib import Path
from typing import Any

from .adb_client import AdbClient
from .util import file_record, sha256_file, write_json, write_text


MODULE_INFO_KEYS = {
    "alias",
    "author",
    "depends",
    "description",
    "firmware",
    "import_ns",
    "intree",
    "license",
    "name",
    "parm",
    "parmtype",
    "retpoline",
    "srcversion",
    "vermagic",
}


@dataclass(frozen=True)
class ModuleArtifact:
    name: str
    remote_path: str
    local_path: Path
    size: int
    sha256: str
    modinfo: dict[str, list[str]]

    def as_dict(self, run_root: Path) -> dict[str, Any]:
        return {
            "name": self.name,
            "remote_path": self.remote_path,
            "local_path": self.local_path.relative_to(run_root).as_posix(),
            "size": self.size,
            "sha256": self.sha256,
            "modinfo": self.modinfo,
        }


@dataclass
class AcquisitionResult:
    device: dict[str, Any]
    modules: list[ModuleArtifact]
    dependencies: list[ModuleArtifact]
    partitions: list[dict[str, Any]]
    snapshot_failures: list[dict[str, Any]]
    live_tree_directory: Path | None


def extract_modinfo(module_path: Path) -> dict[str, list[str]]:
    data = module_path.read_bytes()
    output: dict[str, list[str]] = {}
    for chunk in data.split(b"\x00"):
        if b"=" not in chunk:
            continue
        printable = re.search(rb"[\x20-\x7e]+$", chunk)
        if not printable:
            continue
        text = printable.group(0).decode("utf-8", errors="replace")
        key, _, value = text.partition("=")
        if key in MODULE_INFO_KEYS and value:
            output.setdefault(key, []).append(value)
    return output


def _safe_extract_tar(archive: Path, destination: Path) -> None:
    destination.mkdir(parents=True, exist_ok=True)
    root = destination.resolve()
    with tarfile.open(archive, mode="r:*") as source:
        for member in source.getmembers():
            target = (destination / member.name).resolve()
            if not target.is_relative_to(root):
                raise RuntimeError(f"Unsafe path in device-tree archive: {member.name}")
        source.extractall(destination, filter="data")


def _capture_snapshot(
    adb: AdbClient,
    destination: Path,
    command: str,
) -> dict[str, Any] | None:
    result = adb.shell(command, timeout=300, check=False)
    write_text(destination, result.stdout)
    if result.returncode == 0:
        return None
    failure = {
        "path": destination.as_posix(),
        "command": command,
        "returncode": result.returncode,
        "stderr": result.stderr.strip(),
    }
    write_text(destination.with_suffix(destination.suffix + ".error.txt"), result.stderr)
    return failure


def acquire_direct_dependencies(
    adb: AdbClient,
    run_root: Path,
    modules: list[ModuleArtifact],
    inventory: list[str],
) -> tuple[list[ModuleArtifact], list[str]]:
    acquisition = run_root / "01_acquisition"
    normalized = run_root / "02_normalized"
    inventory_by_name = {Path(remote).name: remote for remote in inventory}
    selected_names = {module.name for module in modules}
    dependency_names: set[str] = set()
    for module in modules:
        for depends_value in module.modinfo.get("depends", []):
            dependency_names.update(
                f"{name.strip()}.ko"
                for name in depends_value.split(",")
                if name.strip()
            )

    dependencies: list[ModuleArtifact] = []
    missing_dependencies: list[str] = []
    for name in sorted(dependency_names - selected_names):
        remote_path = inventory_by_name.get(name)
        if not remote_path:
            missing_dependencies.append(name)
            continue
        local_path = acquisition / "dependencies" / name
        print(f"[ADB] extracting direct dependency {name}", flush=True)
        adb.pull_file(remote_path, local_path)
        metadata = extract_modinfo(local_path)
        record = ModuleArtifact(
            name=name,
            remote_path=remote_path,
            local_path=local_path,
            size=local_path.stat().st_size,
            sha256=sha256_file(local_path),
            modinfo=metadata,
        )
        dependencies.append(record)
        write_json(normalized / "modules" / name / "modinfo.json", metadata)
    return dependencies, missing_dependencies


def acquire_ramdisk_dependencies(
    run_root: Path,
    module_directory: Path,
    missing_names: list[str],
) -> tuple[list[ModuleArtifact], list[str]]:
    acquisition = run_root / "01_acquisition"
    normalized = run_root / "02_normalized"
    dependencies: list[ModuleArtifact] = []
    still_missing: list[str] = []
    for name in missing_names:
        source = module_directory / name
        if not source.is_file():
            still_missing.append(name)
            continue
        destination = acquisition / "dependencies" / name
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(source, destination)
        metadata = extract_modinfo(destination)
        record = ModuleArtifact(
            name=name,
            remote_path=f"vendor_boot_ramdisk:/lib/modules/{name}",
            local_path=destination,
            size=destination.stat().st_size,
            sha256=sha256_file(destination),
            modinfo=metadata,
        )
        dependencies.append(record)
        write_json(normalized / "modules" / name / "modinfo.json", metadata)
        print(f"[BOOT] recovered ramdisk dependency {name}", flush=True)
    return dependencies, still_missing


def acquire_device(
    adb: AdbClient,
    config: dict[str, Any],
    run_root: Path,
    module_patterns: list[str] | None = None,
    *,
    collect_partitions: bool = True,
    collect_live_tree: bool = True,
) -> AcquisitionResult:
    acquisition = run_root / "01_acquisition"
    normalized = run_root / "02_normalized"
    modules_dir = acquisition / "modules"
    modules_dir.mkdir(parents=True, exist_ok=True)

    require_root = bool(config.get("device", {}).get("require_root", True))
    identity = adb.require_root() if require_root else adb.text("id").strip()
    slot = adb.text("getprop ro.boot.slot_suffix").strip() or "_a"
    device = {
        "serial": adb.serial,
        "root_identity": identity,
        "product_device": adb.text("getprop ro.product.device").strip(),
        "product_model": adb.text("getprop ro.product.model").strip(),
        "build_fingerprint": adb.text("getprop ro.build.fingerprint").strip(),
        "build_type": adb.text("getprop ro.build.type").strip(),
        "slot_suffix": slot,
        "verified_boot_state": adb.text("getprop ro.boot.verifiedbootstate").strip(),
        "kernel_release": adb.text("uname -r").strip(),
        "kernel_version": adb.text("cat /proc/version").strip(),
    }
    write_json(run_root / "00_manifest" / "device.json", device)

    failures: list[dict[str, Any]] = []
    for relative_path, command in config["acquisition"].get("snapshots", {}).items():
        print(f"[ADB] snapshot {relative_path}", flush=True)
        failure = _capture_snapshot(adb, acquisition / "snapshots" / relative_path, command)
        if failure:
            failures.append(failure)

    roots = config["acquisition"]["module_roots"]
    find_roots = " ".join(roots)
    inventory_command = (
        f"find {find_roots} -type f -name '*.ko' 2>/dev/null | sort"
    )
    inventory = [line.strip() for line in adb.text(inventory_command).splitlines() if line.strip()]
    write_text(acquisition / "module_inventory.txt", "\n".join(inventory) + "\n")

    patterns = module_patterns or config["acquisition"]["module_patterns"]
    selected = [
        remote
        for remote in inventory
        if any(fnmatch.fnmatch(Path(remote).name, pattern) for pattern in patterns)
    ]
    if not selected:
        raise RuntimeError(f"No kernel modules matched patterns: {patterns}")

    modules: list[ModuleArtifact] = []
    for remote_path in selected:
        name = Path(remote_path).name
        local_path = modules_dir / name
        print(f"[ADB] extracting module {name}", flush=True)
        adb.pull_file(remote_path, local_path)
        metadata = extract_modinfo(local_path)
        record = ModuleArtifact(
            name=name,
            remote_path=remote_path,
            local_path=local_path,
            size=local_path.stat().st_size,
            sha256=sha256_file(local_path),
            modinfo=metadata,
        )
        modules.append(record)
        write_json(normalized / "modules" / name / "modinfo.json", metadata)

    dependencies, missing_dependencies = acquire_direct_dependencies(
        adb,
        run_root,
        modules,
        inventory,
    )

    tree_directory: Path | None = None
    if collect_live_tree and config["acquisition"].get("collect_live_device_tree", True):
        print("[ADB] extracting live device tree", flush=True)
        archive = acquisition / "device_tree" / "live_device_tree.tar"
        adb.stream("tar -C /sys/firmware/devicetree/base -cf - .", archive, timeout=900)
        tree_directory = acquisition / "device_tree" / "live"
        _safe_extract_tar(archive, tree_directory)

    partitions: list[dict[str, Any]] = []
    if collect_partitions and config["acquisition"].get("collect_partitions", True):
        for template in config["acquisition"].get("partitions", []):
            name = template.format(slot=slot)
            remote_path = f"/dev/block/by-name/{name}"
            if not adb.exists(remote_path):
                partitions.append({"name": name, "remote_path": remote_path, "status": "missing"})
                continue
            print(f"[ADB] extracting partition {name} (read-only)", flush=True)
            destination = acquisition / "partitions" / f"{name}.img"
            adb.pull_file(remote_path, destination, timeout=1800)
            partitions.append(
                {
                    "name": name,
                    "remote_path": remote_path,
                    "status": "captured",
                    **file_record(destination, run_root),
                }
            )

    write_json(
        run_root / "00_manifest" / "acquisition.json",
        {
            "module_patterns": patterns,
            "modules": [item.as_dict(run_root) for item in modules],
            "dependencies": [item.as_dict(run_root) for item in dependencies],
            "missing_dependencies": missing_dependencies,
            "partitions": partitions,
            "snapshot_failures": failures,
            "live_device_tree": (
                tree_directory.relative_to(run_root).as_posix() if tree_directory else None
            ),
        },
    )
    return AcquisitionResult(
        device,
        modules,
        dependencies,
        partitions,
        failures,
        tree_directory,
    )
