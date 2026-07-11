#!/usr/bin/env python3
"""Build and audit the integrated zte_ir out-of-tree kernel module."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import re
import subprocess
import sys
from pathlib import Path
from typing import Any


MODULE_LINKER_SYMBOLS = {"__this_module"}


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def run(arguments: list[str], timeout: int = 300) -> dict[str, Any]:
    completed = subprocess.run(
        arguments,
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
        timeout=timeout,
        check=False,
    )
    return {
        "argv": arguments,
        "returncode": completed.returncode,
        "stdout": completed.stdout,
        "stderr": completed.stderr,
    }


def require_success(result: dict[str, Any], label: str) -> None:
    if result["returncode"] != 0:
        detail = result["stderr"].strip() or result["stdout"].strip()
        raise RuntimeError(f"{label} failed with rc={result['returncode']}: {detail}")


def parse_symvers(text: str) -> dict[str, dict[str, str]]:
    records = {}
    for line in text.splitlines():
        fields = line.split("\t")
        if len(fields) < 4:
            continue
        records[fields[1]] = {
            "crc": fields[0],
            "provider": fields[2],
            "export": fields[3],
            "namespace": fields[4] if len(fields) > 4 else "",
        }
    return records


def parse_modinfo(text: str) -> dict[str, list[str]]:
    values: dict[str, list[str]] = {}
    for line in text.splitlines():
        match = re.search(r"\]\s+([^=\s]+)=(.*)$", line)
        if not match:
            continue
        values.setdefault(match.group(1), []).append(match.group(2))
    return values


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--curated-root", type=Path, required=True)
    parser.add_argument("--report", type=Path, required=True)
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--source-volume", default="nubia_sm8850_kernel_src")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    root = args.curated_root.resolve()
    module_dir = root / "implementation" / "final"
    module = module_dir / "zte_ir_reconstructed.ko"
    report = args.report.resolve() if args.report.is_absolute() else (root / args.report).resolve()
    if not (module_dir / "Makefile").is_file() or not (module_dir / "zte_ir_driver.c").is_file():
        raise ValueError("integrated module sources are missing")

    toolchain_bin = f"/work/toolchains/{args.clang_revision}/bin"
    environment_path = (
        f"{toolchain_bin}:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
    )
    docker_base = [
        "docker",
        "run",
        "--rm",
        "-v",
        f"{args.source_volume}:/work/src",
        "-v",
        f"{args.toolchain_volume}:/work/toolchains:ro",
        "-v",
        f"{root}:/work/curated",
        "-e",
        f"PATH={environment_path}",
        "-w",
        "/work/src/kernel/kernel_platform/common",
        args.image,
    ]
    make_arguments = [
        "make",
        "ARCH=arm64",
        "LLVM=1",
        "LLVM_IAS=1",
        "M=/work/curated/implementation/final",
    ]
    clean_result = run([*docker_base, *make_arguments, "clean"])
    require_success(clean_result, "external module clean")
    build_result = run([*docker_base, *make_arguments, "modules"])
    require_success(build_result, "external module build")
    if not module.is_file():
        raise RuntimeError(f"module output was not produced: {module}")
    first_build = {
        "size": module.stat().st_size,
        "sha256": sha256_file(module),
    }

    reproducibility_clean = run([*docker_base, *make_arguments, "clean"])
    require_success(reproducibility_clean, "reproducibility clean")
    reproducibility_build = run([*docker_base, *make_arguments, "modules"])
    require_success(reproducibility_build, "reproducibility build")
    if not module.is_file():
        raise RuntimeError("reproducibility build did not produce the module")
    second_build = {
        "size": module.stat().st_size,
        "sha256": sha256_file(module),
    }
    reproducible = first_build == second_build

    llvm_nm = f"{toolchain_bin}/llvm-nm"
    module_container = "/work/curated/implementation/final/zte_ir_reconstructed.ko"
    nm_result = run(
        [
            "docker",
            "run",
            "--rm",
            "-v",
            f"{args.toolchain_volume}:/work/toolchains:ro",
            "-v",
            f"{root}:/work/curated:ro",
            args.image,
            llvm_nm,
            "-u",
            module_container,
        ]
    )
    require_success(nm_result, "integrated module symbol audit")
    undefined = sorted(
        match.group(1)
        for line in nm_result["stdout"].splitlines()
        if (match := re.search(r"\bU\s+([^\s]+)$", line))
    )

    symvers_result = run(
        [
            "docker",
            "run",
            "--rm",
            "-v",
            f"{args.source_volume}:/work/src:ro",
            args.image,
            "cat",
            "/work/src/kernel/kernel_platform/common/Module.symvers",
        ]
    )
    require_success(symvers_result, "Module.symvers audit")
    symvers = parse_symvers(symvers_result["stdout"])
    dependencies = [
        {"symbol": symbol, **symvers[symbol]}
        for symbol in undefined
        if symbol in symvers
    ]
    unresolved = sorted(
        symbol
        for symbol in undefined
        if symbol not in symvers and symbol not in MODULE_LINKER_SYMBOLS
    )
    namespaces = sorted(
        {dependency["namespace"] for dependency in dependencies if dependency["namespace"]}
    )

    llvm_readelf = f"{toolchain_bin}/llvm-readelf"
    modinfo_result = run(
        [
            "docker",
            "run",
            "--rm",
            "-v",
            f"{args.toolchain_volume}:/work/toolchains:ro",
            "-v",
            f"{root}:/work/curated:ro",
            args.image,
            llvm_readelf,
            "-p",
            ".modinfo",
            module_container,
        ]
    )
    require_success(modinfo_result, "integrated module modinfo audit")
    modinfo = parse_modinfo(modinfo_result["stdout"])
    aliases = modinfo.get("alias", [])
    passed = (
        reproducible
        and not unresolved
        and not namespaces
        and modinfo.get("license") == ["GPL"]
        and any("zte,zte_ir" in alias for alias in aliases)
        and any(value.startswith("6.12.23") for value in modinfo.get("vermagic", []))
        and not modinfo.get("import_ns")
    )
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "passed": passed,
        "module": {
            "path": str(module),
            "size": module.stat().st_size,
            "sha256": sha256_file(module),
        },
        "toolchain": {
            "clang_revision": args.clang_revision,
            "docker_image": args.image,
        },
        "clean": clean_result,
        "build": build_result,
        "reproducibility": {
            "passed": reproducible,
            "first_build": first_build,
            "clean": reproducibility_clean,
            "build": reproducibility_build,
            "second_build": second_build,
        },
        "undefined_symbols": undefined,
        "dependencies": dependencies,
        "unresolved_symbols": unresolved,
        "required_module_import_ns": namespaces,
        "modinfo": modinfo,
        "modinfo_raw": modinfo_result["stdout"],
    }
    report.parent.mkdir(parents=True, exist_ok=True)
    report.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    print(
        json.dumps(
            {
                "module": str(module),
                "passed": passed,
                "sha256": payload["module"]["sha256"],
                "unresolved": unresolved,
                "namespaces": namespaces,
            },
            sort_keys=True,
        )
    )
    return 0 if passed else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, RuntimeError, ValueError, subprocess.SubprocessError) as exc:
        print(f"error: {exc}", file=sys.stderr)
        raise SystemExit(2)
