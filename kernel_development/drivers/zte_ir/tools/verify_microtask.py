#!/usr/bin/env python3
"""Compile one isolated kernel microtask and audit its GKI dependencies."""

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


def run(arguments: list[str], timeout: int = 120) -> dict[str, Any]:
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


def inside(root: Path, path: Path) -> Path:
    resolved = path.resolve() if path.is_absolute() else (root / path).resolve()
    if resolved != root and root not in resolved.parents:
        raise ValueError(f"path escapes curated root: {path}")
    return resolved


def parse_symvers(text: str) -> dict[str, dict[str, str]]:
    symbols = {}
    for line in text.splitlines():
        fields = line.split("\t")
        if len(fields) < 4:
            continue
        symbols[fields[1]] = {
            "crc": fields[0],
            "provider": fields[2],
            "export": fields[3],
            "namespace": fields[4] if len(fields) > 4 else "",
        }
    return symbols


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--curated-root", type=Path, required=True)
    parser.add_argument("--unit", type=Path, required=True)
    parser.add_argument("--implementation", type=Path)
    parser.add_argument("--object", type=Path, required=True)
    parser.add_argument("--function", required=True)
    parser.add_argument("--debug-token")
    parser.add_argument("--expected-symbol", action="append", default=[])
    parser.add_argument("--report", type=Path, required=True)
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--source-volume", default="nubia_sm8850_kernel_src")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    root = args.curated_root.resolve()
    unit = inside(root, args.unit)
    implementation = inside(root, args.implementation or args.unit)
    output_object = inside(root, args.object)
    report = inside(root, args.report)
    if not unit.is_file():
        raise ValueError(f"compile unit not found: {unit}")
    if not implementation.is_file():
        raise ValueError(f"implementation source not found: {implementation}")

    unit_in_container = "/work/curated/" + unit.relative_to(root).as_posix()
    object_in_container = "/work/curated/" + output_object.relative_to(root).as_posix()
    output_object.parent.mkdir(parents=True, exist_ok=True)
    clang = f"/work/toolchains/{args.clang_revision}/bin/clang"
    common = "/work/src/kernel/kernel_platform/common"
    compile_command = [
        "docker",
        "run",
        "--rm",
        "-v",
        f"{args.source_volume}:/work/src:ro",
        "-v",
        f"{args.toolchain_volume}:/work/toolchains:ro",
        "-v",
        f"{root}:/work/curated",
        "-w",
        common,
        args.image,
        clang,
        "-c",
        "--target=aarch64-linux-gnu",
        "-nostdinc",
        "-D__KERNEL__",
        "-DMODULE",
        '-DKBUILD_MODFILE="zte_ir_microtask"',
        '-DKBUILD_BASENAME="compile_probe"',
        '-DKBUILD_MODNAME="zte_ir_microtask"',
        "-D__KBUILD_MODNAME=kmod_zte_ir_microtask",
        "-std=gnu11",
        "-O2",
        "-fshort-wchar",
        "-funsigned-char",
        "-fno-common",
        "-fno-PIE",
        "-fno-strict-aliasing",
        "-fno-strict-overflow",
        "-fno-delete-null-pointer-checks",
        "-ftrivial-auto-var-init=zero",
        "-fstrict-flex-arrays=3",
        "-fstack-protector-strong",
        "-fno-omit-frame-pointer",
        "-fno-optimize-sibling-calls",
        "-mgeneral-regs-only",
        "-mbranch-protection=pac-ret",
        "-mstack-protector-guard=sysreg",
        "-mstack-protector-guard-reg=sp_el0",
        "-mstack-protector-guard-offset=1808",
        "-ffixed-x18",
        "-fsanitize=kcfi",
        "-fsanitize-cfi-icall-experimental-normalize-integers",
        "-falign-functions=4",
        "-Wall",
        "-Wextra",
        "-Werror",
        "-Wno-sign-compare",
        "-Wno-unused-function",
        "-Wno-unused-parameter",
        "-I./arch/arm64/include",
        "-I./arch/arm64/include/generated",
        "-I./include",
        "-I./arch/arm64/include/uapi",
        "-I./arch/arm64/include/generated/uapi",
        "-I./include/uapi",
        "-I./include/generated/uapi",
        "-I/work/curated/headers",
        "-include",
        "./include/linux/compiler-version.h",
        "-include",
        "./include/linux/kconfig.h",
        "-include",
        "./include/linux/compiler_types.h",
        unit_in_container,
        "-o",
        object_in_container,
    ]
    compile_result = run(compile_command)
    require_success(compile_result, "microtask compilation")

    llvm_nm = f"/work/toolchains/{args.clang_revision}/bin/llvm-nm"
    nm_command = [
        "docker",
        "run",
        "--rm",
        "-v",
        f"{args.toolchain_volume}:/work/toolchains:ro",
        "-v",
        f"{root}:/work/curated:ro",
        args.image,
        llvm_nm,
        "-an",
        object_in_container,
    ]
    nm_result = run(nm_command)
    require_success(nm_result, "llvm-nm audit")
    undefined = sorted(
        match.group(1)
        for line in nm_result["stdout"].splitlines()
        if (match := re.search(r"\bU\s+([^\s]+)$", line))
    )
    function_defined = bool(
        re.search(
            rf"^[0-9a-fA-F]+\s+[tT]\s+{re.escape(args.function)}$",
            nm_result["stdout"],
            flags=re.MULTILINE,
        )
    )

    llvm_objdump = f"/work/toolchains/{args.clang_revision}/bin/llvm-objdump"
    objdump_command = [
        "docker",
        "run",
        "--rm",
        "-v",
        f"{args.toolchain_volume}:/work/toolchains:ro",
        "-v",
        f"{root}:/work/curated:ro",
        args.image,
        llvm_objdump,
        "-dr",
        f"--disassemble-symbols={args.function}",
        object_in_container,
    ]
    objdump_result = run(objdump_command)
    require_success(objdump_result, "llvm-objdump audit")

    symvers_command = [
        "docker",
        "run",
        "--rm",
        "-v",
        f"{args.source_volume}:/work/src:ro",
        args.image,
        "cat",
        "/work/src/kernel/kernel_platform/common/Module.symvers",
    ]
    symvers_result = run(symvers_command)
    require_success(symvers_result, "Module.symvers read")
    symvers = parse_symvers(symvers_result["stdout"])
    dependencies = [
        {"symbol": symbol, **symvers[symbol]}
        for symbol in undefined
        if symbol in symvers
    ]
    module_linker_symbols = sorted(set(undefined) & MODULE_LINKER_SYMBOLS)
    unresolved = sorted(
        symbol
        for symbol in undefined
        if symbol not in symvers and symbol not in MODULE_LINKER_SYMBOLS
    )
    missing_expected = sorted(set(args.expected_symbol) - set(undefined))
    namespaces = sorted(
        {dependency["namespace"] for dependency in dependencies if dependency["namespace"]}
    )
    implementation_text = implementation.read_text(encoding="utf-8")
    source_contains_function = args.function in implementation_text
    source_contains_debug = (
        not args.debug_token or args.debug_token in implementation_text
    )
    passed = (
        function_defined
        and source_contains_function
        and source_contains_debug
        and not unresolved
        and not missing_expected
        and not namespaces
        and output_object.is_file()
    )
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "passed": passed,
        "function": args.function,
        "function_defined": function_defined,
        "source": {
            "path": str(implementation),
            "sha256": sha256_file(implementation),
            "contains_function": source_contains_function,
            "required_debug_token": args.debug_token,
            "contains_required_debug_token": source_contains_debug,
        },
        "compile_unit": {
            "path": str(unit),
            "sha256": sha256_file(unit),
        },
        "object": {
            "path": str(output_object),
            "size": output_object.stat().st_size,
            "sha256": sha256_file(output_object),
        },
        "compiler": {
            "clang_revision": args.clang_revision,
            "flags": [
                "-fsanitize=kcfi",
                "-fsanitize-cfi-icall-experimental-normalize-integers",
            ],
            "command": compile_command,
            "stdout": compile_result["stdout"],
            "stderr": compile_result["stderr"],
        },
        "undefined_symbols": undefined,
        "dependencies": dependencies,
        "module_linker_symbols": module_linker_symbols,
        "unresolved_symbols": unresolved,
        "missing_expected_symbols": missing_expected,
        "required_module_import_ns": namespaces,
        "nm": nm_result["stdout"],
        "disassembly": objdump_result["stdout"],
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
                "function": args.function,
                "passed": passed,
                "undefined_symbols": undefined,
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
