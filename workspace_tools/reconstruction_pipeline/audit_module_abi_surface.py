#!/usr/bin/env python3
"""Audit a kernel module's public ABI against stock and the Docker target."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import struct
import subprocess
from pathlib import Path
from typing import Any

try:
    from .audit_driver_symbol_inventory import exported_names, run_llvm_nm
    from .manage_reference_modules import elf_identity, module_info
except ImportError:
    from audit_driver_symbol_inventory import exported_names, run_llvm_nm
    from manage_reference_modules import elf_identity, module_info


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def normalized_dependencies(info: dict[str, list[str]]) -> set[str]:
    result: set[str] = set()
    for value in info.get("depends", []):
        result.update(item.strip() for item in value.split(",") if item.strip())
    return result


def normalized_values(info: dict[str, list[str]], key: str) -> set[str]:
    return set(info.get(key, []))


def parse_module_symvers(text: str) -> dict[str, set[int]]:
    result: dict[str, set[int]] = {}
    for line in text.splitlines():
        fields = line.split()
        if len(fields) < 2 or not fields[0].startswith("0x"):
            continue
        try:
            crc = int(fields[0], 16)
        except ValueError:
            continue
        result.setdefault(fields[1], set()).add(crc)
    return result


def merge_symvers(*tables: dict[str, set[int]]) -> dict[str, set[int]]:
    result: dict[str, set[int]] = {}
    for table in tables:
        for name, crcs in table.items():
            result.setdefault(name, set()).update(crcs)
    return result


def load_target_symvers(
    *,
    source_volume: str,
    image: str,
    path: str = "/work/src/kernel/kernel_platform/common/Module.symvers",
) -> tuple[str, str]:
    command = [
        "docker",
        "run",
        "--rm",
        "-v",
        f"{source_volume}:/work/src:ro",
        image,
        "bash",
        "-lc",
        f"cat {path}",
    ]
    completed = subprocess.run(command, check=True, capture_output=True, text=True)
    return completed.stdout, " ".join(command)


def elf_version_records(data: bytes) -> dict[str, int]:
    if len(data) < 64 or data[:4] != b"\x7fELF" or data[4] != 2 or data[5] != 1:
        return {}
    section_header_offset = int.from_bytes(data[40:48], "little")
    section_header_size = int.from_bytes(data[58:60], "little")
    section_count = int.from_bytes(data[60:62], "little")
    section_name_index = int.from_bytes(data[62:64], "little")
    sections: list[tuple[int, int, int]] = []
    for index in range(section_count):
        offset = section_header_offset + index * section_header_size
        if offset + 64 > len(data):
            return {}
        fields = struct.unpack_from("<IIQQQQIIQQ", data, offset)
        sections.append((fields[0], fields[4], fields[5]))
    if section_name_index >= len(sections):
        return {}
    name_index, name_offset, name_size = sections[section_name_index]
    del name_index
    names = data[name_offset : name_offset + name_size]
    by_name: dict[str, tuple[int, int]] = {}
    for index, offset, size in sections:
        end = names.find(b"\0", index)
        if end >= 0:
            by_name[names[index:end].decode("utf-8", errors="replace")] = (offset, size)
    if "__version_ext_names" not in by_name or "__version_ext_crcs" not in by_name:
        return {}
    names_offset, names_size = by_name["__version_ext_names"]
    crcs_offset, crcs_size = by_name["__version_ext_crcs"]
    names_blob = data[names_offset : names_offset + names_size]
    crcs_blob = data[crcs_offset : crcs_offset + crcs_size]
    records: dict[str, int] = {}
    for index, name in enumerate(names_blob.split(b"\0")):
        if not name or index * 4 + 4 > len(crcs_blob):
            continue
        records[name.decode("utf-8", errors="replace")] = int.from_bytes(
            crcs_blob[index * 4 : index * 4 + 4], "little"
        )
    return records


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--stock", type=Path, required=True)
    parser.add_argument("--candidate", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--target-source-volume", default="nubia_sm8850_kernel_src")
    parser.add_argument("--target-vermagic", required=True)
    parser.add_argument(
        "--supplemental-symvers",
        action="append",
        type=Path,
        default=[],
        help="Additional vendor Module.symvers files used by the Docker build.",
    )
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    parser.add_argument("--strict", action="store_true")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    stock = args.stock.resolve()
    candidate = args.candidate.resolve()
    for path in (stock, candidate):
        if not path.is_file():
            raise FileNotFoundError(path)
    options = {
        "image": args.image,
        "toolchain_volume": args.toolchain_volume,
        "clang_revision": args.clang_revision,
    }
    stock_defined = run_llvm_nm(stock, defined=True, **options)
    candidate_defined = run_llvm_nm(candidate, defined=True, **options)
    stock_undefined = run_llvm_nm(stock, defined=False, **options)
    candidate_undefined = run_llvm_nm(candidate, defined=False, **options)
    stock_imports = {item["name"] for item in stock_undefined}
    candidate_imports = {item["name"] for item in candidate_undefined}
    stock_exports = exported_names(stock_defined)
    candidate_exports = exported_names(candidate_defined)
    stock_info = module_info(stock.read_bytes())
    candidate_data = candidate.read_bytes()
    candidate_info = module_info(candidate_data)
    target_symvers, target_command = load_target_symvers(
        source_volume=args.target_source_volume, image=args.image
    )
    target_tables = [parse_module_symvers(target_symvers)]
    supplemental_records: list[dict[str, Any]] = []
    for path in args.supplemental_symvers:
        resolved = path.resolve()
        text = resolved.read_text(encoding="utf-8")
        target_tables.append(parse_module_symvers(text))
        supplemental_records.append(
            {
                "path": str(resolved),
                "sha256": hashlib.sha256(text.encode()).hexdigest(),
                "symbol_count": len(parse_module_symvers(text)),
            }
        )
    target_crc = merge_symvers(*target_tables)
    candidate_crc = elf_version_records(candidate_data)
    candidate_import_crc = {
        name: candidate_crc[name]
        for name in candidate_imports
        if name in candidate_crc
    }
    target_crc_missing = sorted(name for name in candidate_imports if name not in target_crc)
    target_crc_mismatch = sorted(
        name
        for name, crc in candidate_import_crc.items()
        if name not in target_crc or crc not in target_crc[name]
    )
    missing_exports = sorted(stock_exports - candidate_exports)
    unexpected_exports = sorted(candidate_exports - stock_exports)
    missing_imports = sorted(stock_imports - candidate_imports)
    unexpected_imports = sorted(candidate_imports - stock_imports)
    checks = {
        "candidate_is_aarch64_relocatable": elf_identity(candidate_data)["aarch64_relocatable"],
        "aliases_match": normalized_values(stock_info, "alias")
        == normalized_values(candidate_info, "alias"),
        "exports_match": not missing_exports and not unexpected_exports,
        "imports_match": not missing_imports and not unexpected_imports,
        "metadata_match": all(
            normalized_values(stock_info, key) == normalized_values(candidate_info, key)
            for key in ("name", "author", "description", "license")
        ),
        "depends_set_match": normalized_dependencies(stock_info)
        == normalized_dependencies(candidate_info),
        "target_vermagic_match": normalized_values(candidate_info, "vermagic")
        == {args.target_vermagic},
        "target_modversions_match": not target_crc_missing and not target_crc_mismatch,
    }
    passed = all(checks.values())
    payload: dict[str, Any] = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "offline_docker_target_abi_kmi",
        "stock": {
            "path": str(stock),
            "sha256": sha256_file(stock),
            "elf": elf_identity(stock.read_bytes()),
            "modinfo": stock_info,
        },
        "candidate": {
            "path": str(candidate),
            "sha256": sha256_file(candidate),
            "elf": elf_identity(candidate_data),
            "modinfo": candidate_info,
        },
        "target": {
            "source_volume": args.target_source_volume,
            "module_symvers_sha256": hashlib.sha256(target_symvers.encode()).hexdigest(),
            "module_symvers_command": target_command,
            "supplemental_symvers": supplemental_records,
            "vermagic": args.target_vermagic,
            "candidate_import_crc_count": len(candidate_import_crc),
            "missing_crc_symbols": target_crc_missing,
            "mismatched_crc_symbols": target_crc_mismatch,
        },
        "deltas": {
            "missing_exports": missing_exports,
            "unexpected_exports": unexpected_exports,
            "missing_imports": missing_imports,
            "unexpected_imports": unexpected_imports,
            "stock_candidate_vermagic_equal": normalized_values(stock_info, "vermagic")
            == normalized_values(candidate_info, "vermagic"),
            "stock_depends": sorted(normalized_dependencies(stock_info)),
            "candidate_depends": sorted(normalized_dependencies(candidate_info)),
        },
        "checks": checks,
        "passed": passed,
        "limitations": [
            "Stock and target vermagic are intentionally not required to be byte-equal.",
            "This validates nominal ABI/KMI compatibility, not runtime hardware behavior.",
        ],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({"output": str(args.output), "passed": passed}, sort_keys=True))
    return 0 if passed or not args.strict else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, subprocess.SubprocessError, json.JSONDecodeError) as error:
        print(f"error: {error}")
        raise SystemExit(2)
