#!/usr/bin/env python3
"""Independently audit reconstructed vendor modules without touching a device.

This tool deliberately has no ADB, fastboot, insmod, rmmod, or partition-write
code. It validates the evidence chain, replays out-of-tree builds in a fresh
workspace, and records exactly what is still unproven. A source tree is never
called "100% reconstructed" merely because it contains a .ko or a STATUS.md.
"""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import re
import shutil
import struct
import subprocess
import sys
from pathlib import Path
from typing import Any


ELF_HEADER = struct.Struct("<16sHHIQQQIHHHHHH")
SECTION_HEADER = struct.Struct("<IIQQQQIIQQ")
SYMBOL = struct.Struct("<IBBHQQ")
EM_AARCH64 = 183
ET_REL = 1
SHT_SYMTAB = 2
SHN_UNDEF = 0
STB_GLOBAL = 1
STB_WEAK = 2
REQUIRED_GHIDRA_FILES = (
    "manifest.json",
    "functions.jsonl",
    "calls.jsonl",
    "externals.jsonl",
    "symbols.jsonl",
    "strings.jsonl",
    "memory_blocks.jsonl",
    "pseudocode.c",
)
MODINFO_KEYS = {"license", "vermagic", "alias", "depends", "import_ns"}


def default_engineering_root(script: Path) -> Path:
    local_root = script.resolve().parents[2]
    if local_root.name.casefold() == "engenharia":
        return local_root
    return script.resolve().parents[3] / "kernel-docker-workspace" / "engenharia"


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def file_record(path: Path | None) -> dict[str, Any]:
    if path is None or not path.is_file():
        return {"path": str(path) if path else None, "exists": False}
    return {
        "path": str(path),
        "exists": True,
        "size": path.stat().st_size,
        "sha256": sha256_file(path),
    }


def read_json(path: Path) -> Any:
    return json.loads(path.read_text(encoding="utf-8"))


def resolve_target_kernel_manifest(curated_root: Path, explicit: Path | None) -> Path:
    if explicit is not None:
        return explicit.resolve()
    return (curated_root.resolve().parent / "config" / "target_kernel.json").resolve()


def read_jsonl(path: Path) -> list[dict[str, Any]]:
    records: list[dict[str, Any]] = []
    for line_number, line in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
        if not line.strip():
            continue
        value = json.loads(line)
        if not isinstance(value, dict):
            raise ValueError(f"{path}:{line_number} is not a JSON object")
        records.append(value)
    return records


def parse_elf(path: Path) -> dict[str, Any]:
    data = path.read_bytes()
    if len(data) < ELF_HEADER.size:
        raise ValueError("ELF header is truncated")
    header = ELF_HEADER.unpack_from(data)
    ident = header[0]
    if ident[:4] != b"\x7fELF":
        raise ValueError("not an ELF file")
    if ident[4] != 2 or ident[5] != 1:
        raise ValueError("expected ELF64 little-endian")
    section_offset = header[6]
    section_entry_size = header[11]
    section_count = header[12]
    if section_entry_size < SECTION_HEADER.size or section_count == 0:
        raise ValueError("invalid ELF section table")

    sections: list[tuple[int, int, int, int, int, int, int, int, int, int]] = []
    for index in range(section_count):
        offset = section_offset + index * section_entry_size
        if offset + SECTION_HEADER.size > len(data):
            raise ValueError("ELF section table exceeds file size")
        sections.append(SECTION_HEADER.unpack_from(data, offset))

    def section_bytes(index: int) -> bytes:
        _name, _type, _flags, _addr, offset, size, _link, _info, _align, _entsize = sections[index]
        end = offset + size
        if end > len(data):
            raise ValueError(f"ELF section {index} exceeds file size")
        return data[offset:end]

    undefined: set[str] = set()
    for section_index, section in enumerate(sections):
        _name, section_type, _flags, _addr, _offset, size, link, _info, _align, entry_size = section
        if section_type != SHT_SYMTAB:
            continue
        if link >= len(sections):
            raise ValueError("ELF symbol table references an invalid string table")
        if entry_size < SYMBOL.size or size % entry_size:
            raise ValueError("ELF symbol table entry size is invalid")
        strings = section_bytes(link)
        raw = section_bytes(section_index)
        for offset in range(0, len(raw), entry_size):
            name_offset, info, _other, section_index, _value, _size = SYMBOL.unpack_from(raw, offset)
            bind = info >> 4
            if section_index != SHN_UNDEF or bind not in {STB_GLOBAL, STB_WEAK}:
                continue
            if name_offset >= len(strings):
                raise ValueError("ELF symbol name offset is invalid")
            end = strings.find(b"\0", name_offset)
            if end < 0:
                raise ValueError("ELF symbol name is unterminated")
            name = strings[name_offset:end].decode("utf-8", errors="replace")
            if name:
                undefined.add(name)

    return {
        "elf_type": header[1],
        "machine": header[2],
        "undefined_symbols": sorted(undefined),
    }


def parse_modinfo(path: Path) -> dict[str, list[str]]:
    values: dict[str, list[str]] = {}
    for field in path.read_bytes().split(b"\0"):
        text = field.decode("utf-8", errors="ignore")
        key, separator, value = text.partition("=")
        if separator and key in MODINFO_KEYS:
            values.setdefault(key, []).append(value)
    return {key: sorted(set(value)) for key, value in sorted(values.items())}


def command_record(command: list[str], *, timeout: int = 900) -> dict[str, Any]:
    completed = subprocess.run(
        command,
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
        timeout=timeout,
        check=False,
    )
    return {
        "argv": command,
        "returncode": completed.returncode,
        "stdout": completed.stdout[-6000:],
        "stderr": completed.stderr[-6000:],
    }


def find_run(engineering_root: Path, drivers: list[str]) -> Path:
    required = drivers
    candidates = sorted(
        (path for path in (engineering_root / "runs").glob("*") if path.is_dir()),
        key=lambda path: path.stat().st_mtime,
        reverse=True,
    )
    for candidate in candidates:
        validation = candidate / "00_manifest" / "validation.json"
        if not validation.is_file():
            continue
        if all(
            (candidate / "01_acquisition" / "modules" / f"{driver}.ko").is_file()
            and (
                candidate
                / "03_ghidra"
                / "exports"
                / f"{driver}.ko"
                / "functions.jsonl"
            ).is_file()
            for driver in required
        ):
            return candidate
    requested = ", ".join(required) or "no regular drivers"
    raise ValueError(
        "no engineering run contains stock and Ghidra evidence for all requested "
        f"drivers ({requested}); pass --run-root explicitly"
    )


def ghidra_check(run_root: Path, module_name: str) -> tuple[dict[str, Any], list[str]]:
    export = run_root / "03_ghidra" / "exports" / f"{module_name}.ko"
    document = run_root / "04_documents" / f"{module_name}.ko" / "DOCUMENTO_TRANSICAO.md"
    errors: list[str] = []
    for filename in REQUIRED_GHIDRA_FILES:
        if not (export / filename).is_file():
            errors.append(f"Ghidra export missing: {filename}")
    records: list[dict[str, Any]] = []
    manifest: dict[str, Any] = {}
    if not errors:
        try:
            manifest = read_json(export / "manifest.json")
            records = read_jsonl(export / "functions.jsonl")
            if manifest.get("function_count") != len(records):
                errors.append("Ghidra manifest/function count mismatch")
            pcode_count = len(list((export / "pcode").glob("*.jsonl")))
            decompiled_count = len(list((export / "decompiled").glob("*.c")))
            if pcode_count != len(records):
                errors.append("Ghidra P-Code count does not match function count")
            if decompiled_count != len(records):
                errors.append("Ghidra decompiled count does not match function count")
        except (OSError, ValueError, json.JSONDecodeError) as error:
            errors.append(f"invalid Ghidra export: {error}")
    if not document.is_file():
        errors.append("transition document is missing")
    names = sorted(
        record["name"]
        for record in records
        if isinstance(record.get("name"), str) and record["name"]
    )
    return (
        {
            "export": str(export),
            "document": str(document),
            "function_count": len(records),
            "function_names": names,
            "manifest": manifest,
            "passed": not errors,
        },
        errors,
    )


def reconstruction_map_check(
    driver_dir: Path, stock_sha256: str | None, ghidra_names: list[str]
) -> tuple[dict[str, Any], list[str]]:
    path = driver_dir / "reconstruction_map.json"
    errors: list[str] = []
    result: dict[str, Any] = {"path": str(path), "exists": path.is_file(), "passed": False}
    if not path.is_file():
        return result, ["reconstruction_map.json is missing"]
    try:
        payload = read_json(path)
        mappings = payload.get("mappings")
        if payload.get("stock_sha256") != stock_sha256:
            errors.append("reconstruction map stock SHA-256 does not match acquired module")
        if not isinstance(mappings, list):
            errors.append("reconstruction map has no mappings array")
            mappings = []
        mapped_names: set[str] = set()
        for index, mapping in enumerate(mappings):
            if not isinstance(mapping, dict):
                errors.append(f"mapping {index} is not an object")
                continue
            stock_name = mapping.get("stock_function")
            source_file = mapping.get("source_file")
            source_function = mapping.get("source_function")
            status = mapping.get("status")
            evidence = mapping.get("evidence")
            if not all(isinstance(value, str) and value for value in (stock_name, source_file, source_function)):
                errors.append(f"mapping {index} lacks stock_function/source_file/source_function")
                continue
            if not (driver_dir / source_file).is_file():
                errors.append(f"mapping {index} refers to missing source file: {source_file}")
            if status != "reviewed":
                errors.append(f"mapping {index} is not independently reviewed")
            if not isinstance(evidence, list) or not evidence or not all(
                isinstance(item, str) and item.strip() for item in evidence
            ):
                errors.append(f"mapping {index} has no review evidence")
            mapped_names.add(stock_name)
        unmapped = sorted(set(ghidra_names) - mapped_names)
        if unmapped:
            errors.append(f"reconstruction map leaves {len(unmapped)} Ghidra functions unmapped")
        result.update(
            {
                "stock_sha256": payload.get("stock_sha256"),
                "mapped_functions": len(mapped_names),
                "unmapped_functions": unmapped,
            }
        )
    except (OSError, ValueError, json.JSONDecodeError) as error:
        errors.append(f"invalid reconstruction map: {error}")
    result["passed"] = not errors
    return result, errors


def build_twice(
    *,
    driver: str,
    driver_dir: Path,
    work_root: Path,
    image: str,
    source_volume: str,
    toolchain_volume: str,
    clang_revision: str,
) -> tuple[dict[str, Any], Path | None, list[str]]:
    errors: list[str] = []
    work_dir = work_root / driver
    if work_dir.exists():
        shutil.rmtree(work_dir)
    shutil.copytree(
        driver_dir,
        work_dir,
        ignore=shutil.ignore_patterns(
            "*.o", "*.ko", "*.mod", "*.mod.c", "*.mod.o", "Module.symvers",
            "modules.order", "built-in.a", ".tmp_versions", "__pycache__",
        ),
    )
    toolchain_bin = f"/work/toolchains/{clang_revision}/bin"
    base = [
        "docker", "run", "--rm",
        "-v", f"{source_volume}:/work/src:ro",
        "-v", f"{toolchain_volume}:/work/toolchains:ro",
        "-v", f"{work_root}:/work/validation",
        "-e", f"PATH={toolchain_bin}:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
        "-w", "/work/src/kernel/kernel_platform/common",
        image,
        "make", "ARCH=arm64", "LLVM=1", "LLVM_IAS=1", f"M=/work/validation/{driver}",
        f"KCFLAGS=-ffile-prefix-map=/work/validation/{driver}=/zte_tpd",
    ]
    extra_symvers = work_dir / "vendor.Module.symvers"
    if extra_symvers.is_file():
        base.append(f"KBUILD_EXTRA_SYMBOLS=/work/validation/{driver}/vendor.Module.symvers")
    commands = {
        "clean_first": command_record([*base, "clean"]),
        "build_first": command_record([*base, "modules"]),
    }
    module = work_dir / f"{driver}.ko"
    first = file_record(module)
    if commands["build_first"]["returncode"] != 0 or not module.is_file():
        errors.append("fresh first build failed")
        return ({"commands": commands, "first_build": first, "passed": False}, None, errors)

    commands["clean_second"] = command_record([*base, "clean"])
    commands["build_second"] = command_record([*base, "modules"])
    second = file_record(module)
    if commands["build_second"]["returncode"] != 0 or not module.is_file():
        errors.append("fresh second build failed")
    reproducible = first.get("sha256") == second.get("sha256") and first.get("size") == second.get("size")
    if not reproducible:
        errors.append("two clean builds are not reproducible")
    return (
        {
            "work_dir": str(work_dir),
            "commands": commands,
            "first_build": first,
            "second_build": second,
            "reproducible": reproducible,
            "passed": not errors,
        },
        module if module.is_file() else None,
        errors,
    )


def validate_regular_driver(
    *,
    driver: str,
    curated_root: Path,
    run_root: Path,
    work_root: Path,
    rebuild: bool,
    image: str,
    source_volume: str,
    toolchain_volume: str,
    clang_revision: str,
    target_kernel: dict[str, Any] | None,
    promote_fresh: bool,
) -> dict[str, Any]:
    driver_dir = curated_root / driver
    stock = run_root / "01_acquisition" / "modules" / f"{driver}.ko"
    candidate = driver_dir / f"{driver}.ko"
    errors: list[str] = []
    warnings: list[str] = []
    checks: dict[str, Any] = {}

    checks["source_directory"] = driver_dir.is_dir()
    checks["makefile"] = (driver_dir / "Makefile").is_file()
    checks["source_files"] = len(
        [path for path in driver_dir.rglob("*.c") if not path.name.endswith(".mod.c")]
    )
    if not checks["source_directory"] or not checks["makefile"] or not checks["source_files"]:
        errors.append("driver source tree or Makefile is incomplete")
    if not stock.is_file():
        errors.append("acquired stock module is missing from the engineering run")
    if not candidate.is_file():
        errors.append("current reconstructed .ko is missing")

    ghidra, ghidra_errors = ghidra_check(run_root, driver)
    checks["ghidra_export"] = ghidra["passed"]
    errors.extend(ghidra_errors)
    stock_record = file_record(stock)
    candidate_record = file_record(candidate)

    map_result, map_errors = reconstruction_map_check(
        driver_dir, stock_record.get("sha256"), ghidra["function_names"]
    )
    checks["function_traceability"] = map_result["passed"]
    warnings.extend(map_errors)

    build_result: dict[str, Any] = {"requested": rebuild, "passed": False}
    fresh_module: Path | None = None
    if rebuild and driver_dir.is_dir() and (driver_dir / "Makefile").is_file():
        build_result, fresh_module, build_errors = build_twice(
            driver=driver,
            driver_dir=driver_dir,
            work_root=work_root,
            image=image,
            source_volume=source_volume,
            toolchain_volume=toolchain_volume,
            clang_revision=clang_revision,
        )
        errors.extend(build_errors)
    elif not rebuild:
        warnings.append("fresh independent rebuild was not requested")
    checks["reproducible_build"] = bool(build_result.get("passed"))

    metadata: dict[str, Any] = {}
    if stock.is_file() and fresh_module is not None:
        try:
            stock_elf = parse_elf(stock)
            fresh_elf = parse_elf(fresh_module)
            stock_modinfo = parse_modinfo(stock)
            fresh_modinfo = parse_modinfo(fresh_module)
            stock_vermagic_match = stock_modinfo.get("vermagic") == fresh_modinfo.get("vermagic")
            target_vermagic = target_kernel.get("vermagic") if target_kernel else None
            target_vermagic_match = bool(
                target_kernel
                and target_kernel.get("status") == "PASS"
                and target_vermagic in fresh_modinfo.get("vermagic", [])
            )
            metadata = {
                "stock": {"elf": stock_elf, "modinfo": stock_modinfo},
                "fresh": {"elf": fresh_elf, "modinfo": fresh_modinfo},
                "aarch64_rel": (
                    stock_elf["machine"] == EM_AARCH64
                    and fresh_elf["machine"] == EM_AARCH64
                    and stock_elf["elf_type"] == ET_REL
                    and fresh_elf["elf_type"] == ET_REL
                ),
                "vermagic_match": stock_vermagic_match,
                "target_vermagic": target_vermagic,
                "target_vermagic_match": target_vermagic_match,
                "vermagic_accepted": stock_vermagic_match or target_vermagic_match,
                "alias_match": stock_modinfo.get("alias", []) == fresh_modinfo.get("alias", []),
                "namespace_match": stock_modinfo.get("import_ns", []) == fresh_modinfo.get("import_ns", []),
                "undefined_symbols_match": stock_elf["undefined_symbols"] == fresh_elf["undefined_symbols"],
                "unexpected_imports": sorted(
                    set(fresh_elf["undefined_symbols"]) - set(stock_elf["undefined_symbols"])
                ),
                "missing_imports": sorted(
                    set(stock_elf["undefined_symbols"]) - set(fresh_elf["undefined_symbols"])
                ),
                "candidate_matches_fresh": candidate_record.get("sha256") == sha256_file(fresh_module),
            }
            promotable = all(
                metadata[key]
                for key in (
                    "aarch64_rel",
                    "alias_match",
                    "namespace_match",
                    "undefined_symbols_match",
                    "vermagic_accepted",
                )
            )
            if promote_fresh and promotable:
                shutil.copy2(fresh_module, candidate)
                candidate_record = file_record(candidate)
                metadata["candidate_matches_fresh"] = (
                    candidate_record.get("sha256") == sha256_file(fresh_module)
                )
                metadata["fresh_promoted"] = True
            else:
                metadata["fresh_promoted"] = False
            for key in (
                "aarch64_rel",
                "vermagic_accepted",
                "alias_match",
                "namespace_match",
                "undefined_symbols_match",
                "candidate_matches_fresh",
            ):
                checks[key] = metadata[key]
                if not metadata[key]:
                    errors.append(f"module parity check failed: {key}")
        except (OSError, ValueError) as error:
            errors.append(f"ELF/modinfo audit failed: {error}")
    else:
        for key in (
            "aarch64_rel",
            "vermagic_accepted",
            "alias_match",
            "namespace_match",
            "undefined_symbols_match",
            "candidate_matches_fresh",
        ):
            checks[key] = False

    complete = not errors and map_result["passed"] and build_result.get("passed", False)
    status = "static_verified" if complete else "incomplete_or_failed"
    return {
        "driver": driver,
        "status": status,
        "hardware_verified": False,
        "stock": stock_record,
        "candidate": candidate_record,
        "ghidra": ghidra,
        "traceability": map_result,
        "build": build_result,
        "metadata": metadata,
        "checks": checks,
        "errors": errors,
        "warnings": warnings,
    }


def render_markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Auditoria Independente de Reconstrução de Drivers",
        "",
        "Esta auditoria é offline. Ela não executa ADB, fastboot, insmod, rmmod ou escrita de partições.",
        "",
        f"- Gerado em: `{payload['generated_utc']}`",
        f"- Run de evidência: `{payload['run_root']}`",
        f"- Rebuild limpo: `{'sim' if payload['rebuild_requested'] else 'não'}`",
        f"- Manifesto do kernel alvo: `{payload['target_kernel_manifest'] or 'não fornecido'}`",
        "",
        "| Driver | Resultado estático | Hardware | Evidência que falta |",
        "|---|---|---|---|",
    ]
    for result in payload["drivers"]:
        missing = result["errors"] + result["warnings"]
        detail = "<br>".join(missing[:3]) if missing else "nenhuma"
        lines.append(
            f"| `{result['driver']}` | `{result['status']}` | "
            f"`{'validado' if result['hardware_verified'] else 'não executado'}` | {detail} |"
        )
    lines.extend(
        [
            "",
            "`static_verified` exige cadeia de evidência, build reproduzível, paridade ELF/modinfo/KMI e mapa completo de funções Ghidra para o fonte. `hardware_verified` exige um teste controlado específico do driver, com rollback e logs. Nenhum dos dois, isoladamente, autoriza afirmar equivalência funcional absoluta.",
            "",
        ]
    )
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    engineering_root = default_engineering_root(Path(__file__))
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--curated-root", type=Path, default=engineering_root / "curated")
    parser.add_argument("--run-root", type=Path)
    parser.add_argument("--driver", action="append", dest="drivers")
    parser.add_argument("--rebuild", action="store_true", help="perform two clean Docker builds per regular driver")
    parser.add_argument("--work-root", type=Path, default=engineering_root / "validation" / "work")
    parser.add_argument("--output", type=Path, default=engineering_root / "validation" / "driver_audit.json")
    parser.add_argument("--markdown", type=Path, default=engineering_root / "validation" / "DRIVER_AUDIT.md")
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--source-volume", default="nubia_sm8850_kernel_src")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    parser.add_argument(
        "--target-kernel-manifest",
        type=Path,
        default=None,
        help=(
            "target-kernel evidence used to justify OEM vermagic differences; "
            "defaults to <curated-root>/../config/target_kernel.json"
        ),
    )
    parser.add_argument(
        "--promote-fresh",
        action="store_true",
        help="replace the curated .ko only after fresh build/KMI/target checks pass",
    )
    parser.add_argument("--strict", action="store_true", help="return nonzero unless every driver is static-verified")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    curated_root = args.curated_root.resolve()
    engineering_root = curated_root.parent
    drivers = args.drivers or sorted(
        path.name
        for path in curated_root.iterdir()
        if path.is_dir()
        and path.name.startswith(("zte_", "zlog_"))
        and (path / "STATUS.md").is_file()
    )
    run_root = (args.run_root or find_run(engineering_root, drivers)).resolve()
    target_manifest = resolve_target_kernel_manifest(
        args.curated_root,
        args.target_kernel_manifest,
    )
    target_kernel = None
    if target_manifest.is_file():
        target_kernel = read_json(target_manifest)
    results: list[dict[str, Any]] = []
    for driver in drivers:
        results.append(
            validate_regular_driver(
                driver=driver,
                curated_root=curated_root,
                run_root=run_root,
                work_root=args.work_root.resolve(),
                rebuild=args.rebuild,
                image=args.image,
                source_volume=args.source_volume,
                toolchain_volume=args.toolchain_volume,
                clang_revision=args.clang_revision,
                target_kernel=target_kernel,
                promote_fresh=args.promote_fresh,
            )
        )
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "offline-only",
        "run_root": str(run_root),
        "rebuild_requested": args.rebuild,
        "target_kernel_manifest": str(target_manifest) if target_kernel else None,
        "promote_fresh_requested": args.promote_fresh,
        "drivers": results,
        "summary": {
            "driver_count": len(results),
            "static_verified": [
                result["driver"]
                for result in results
                if result["status"].startswith("static_verified")
            ],
            "hardware_verified": [
                result["driver"] for result in results if result["hardware_verified"]
            ],
            "not_ready_for_100_percent_claim": [
                result["driver"] for result in results if not result["hardware_verified"]
            ],
        },
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    args.markdown.parent.mkdir(parents=True, exist_ok=True)
    args.markdown.write_text(render_markdown(payload), encoding="utf-8")
    print(
        json.dumps(
            {
                "output": str(args.output),
                "markdown": str(args.markdown),
                "static_verified": payload["summary"]["static_verified"],
                "hardware_verified": payload["summary"]["hardware_verified"],
            },
            sort_keys=True,
        )
    )
    if args.strict and any(not result["status"].startswith("static_verified") for result in results):
        return 1
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError, subprocess.SubprocessError) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(2)
