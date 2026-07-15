#!/usr/bin/env python3
"""Resolve plausible C signatures against a stock KCFI type identifier."""

from __future__ import annotations

import argparse
import hashlib
import itertools
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path


TYPE_PREAMBLE = """/* Generated KCFI signature probe. */
typedef _Bool bool;
typedef unsigned char u8;
typedef signed char s8;
typedef unsigned short u16;
typedef signed short s16;
typedef unsigned int u32;
typedef signed int s32;
typedef unsigned long size_t;
typedef signed long ssize_t;
typedef unsigned long long u64;
struct syna_tcm;
struct syna_tcm_dev;
struct syna_tcm_device;
struct syna_tcm_hcd;
struct syna_tcm_core;
struct syna_tcm_core_device;
struct syna_tcm_data;
struct syna_tcm_driver;
struct syna_tcm_instance;
struct syna_tcm_module;
struct syna_tcm_v1;
struct tcm_dev;
struct tcm_device;
struct tcm_hcd;
struct touchcomm_dev;
struct syna_dev;
struct ztp_device;
struct tpd_classdev_t;
struct touchpanel_data;
struct touchpanel_operations;
struct zte_tp_data;
struct zte_tp_device;
struct tpd_data;
struct zlog_client;
struct zlog_mod_info;
#define PROBE __attribute__((__noinline__, __used__))
"""


def sha256_file(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def touch_signatures() -> list[str]:
    signatures: list[str] = []
    for active, x_type, y_type, slot in itertools.product(
        ("bool", "int", "u32", "u8"),
        ("int", "u32", "u16", "s16"),
        ("int", "u32", "u16", "s16"),
        ("u32", "int", "u8"),
    ):
        signatures.append(f"void ({active}, {x_type}, {y_type}, {slot})")
    return signatures


def game_signatures() -> list[str]:
    signatures: list[str] = []
    for return_type, tcm, config_id, length, data, delay in itertools.product(
        ("int", "u32", "long"),
        (
            "struct syna_tcm *",
            "struct syna_tcm_dev *",
            "struct syna_tcm_device *",
            "struct syna_tcm_hcd *",
            "struct syna_tcm_core *",
            "struct syna_tcm_core_device *",
            "struct syna_tcm_data *",
            "struct syna_tcm_driver *",
            "struct syna_tcm_instance *",
            "struct syna_tcm_module *",
            "struct syna_tcm_v1 *",
            "struct tcm_dev *",
            "struct tcm_device *",
            "struct tcm_hcd *",
            "struct touchcomm_dev *",
            "struct syna_dev *",
            "void *",
            "long",
            "unsigned long",
        ),
        ("u8", "s8", "char", "int", "u32"),
        ("int", "u32", "u16"),
        (
            "u8 *", "const u8 *", "s8 *", "const s8 *",
            "char *", "const char *", "void *", "const void *",
        ),
        ("int", "u32", "u16"),
    ):
        signatures.append(
            f"{return_type} ({tcm}, {config_id}, {length}, {data}, {delay})"
        )
    return signatures


def string_signatures() -> list[str]:
    signatures: list[str] = []
    for return_type, device, source, length in itertools.product(
        ("u8 *", "char *", "s8 *", "void *"),
        (
            "long", "unsigned long", "void *",
            "struct ztp_device *", "struct tpd_classdev_t *",
            "struct touchpanel_data *", "struct touchpanel_operations *",
            "struct zte_tp_data *", "struct zte_tp_device *",
            "struct tpd_data *", "struct syna_dev *",
        ),
        (
            "char *", "const char *", "u8 *", "const u8 *",
            "s8 *", "const s8 *", "void *", "const void *",
        ),
        (
            "int *", "u32 *", "u16 *", "s16 *", "u8 *", "s8 *",
            "char *", "void *", "long *", "unsigned long *", "size_t *",
            "long long *", "unsigned long long *",
        ),
    ):
        signatures.append(f"{return_type} ({device}, {source}, {length})")
    return signatures


def zlog_signatures() -> list[str]:
    signatures: list[str] = []
    for return_type, client, event in itertools.product(
        ("void", "int", "long", "ssize_t", "u32", "size_t"),
        (
            "struct zlog_client *", "const struct zlog_client *",
            "struct zlog_mod_info *", "void *", "const void *",
            "long", "unsigned long",
        ),
        ("int", "s32", "u32", "long", "unsigned long", "size_t", "u64"),
    ):
        signatures.append(f"{return_type} ({client}, {event})")
    return signatures


def render_probe(signatures: list[str]) -> tuple[str, dict[str, str]]:
    lines = [TYPE_PREAMBLE]
    mapping: dict[str, str] = {}
    for index, signature in enumerate(signatures):
        name = f"probe_{index:04d}"
        return_type, parameters = signature.split(" (", 1)
        parameter_types = parameters[:-1].split(", ")
        declarations = [f"{kind} p{position}" for position, kind in enumerate(parameter_types)]
        uses = " ".join(f"(void)p{position};" for position in range(len(parameter_types)))
        return_statement = "" if return_type == "void" else " return 0;"
        lines.append(
            f"PROBE {return_type} {name}({', '.join(declarations)}) "
            f"{{ {uses}{return_statement} }}"
        )
        mapping[name] = signature
    return "\n".join(lines) + "\n", mapping


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("family", choices=("touch", "game", "string", "zlog"))
    parser.add_argument("target_type_id", help="KCFI hash such as 0xeb35dc7c")
    parser.add_argument("--engineering-root", type=Path,
                        default=Path(__file__).resolve().parents[1])
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--source-volume", default="nubia_sm8850_kernel_src")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()

    engineering_root = args.engineering_root.resolve()
    work_dir = engineering_root / "validation" / "zte_tpd" / "kcfi_bruteforce" / args.family
    work_dir.mkdir(parents=True, exist_ok=True)
    source_path = work_dir / f"{args.family}_probe.c"
    object_path = work_dir / f"{args.family}_probe.o"
    kcfi_path = work_dir / f"{args.family}_probe.kcfi.json"
    output = (args.output or work_dir / "match_report.json").resolve()

    if args.family == "touch":
        signatures = touch_signatures()
    elif args.family == "game":
        signatures = game_signatures()
    elif args.family == "string":
        signatures = string_signatures()
    else:
        signatures = zlog_signatures()
    source, mapping = render_probe(signatures)
    source_path.write_text(source, encoding="ascii")
    (work_dir / "Makefile").write_text(
        f"obj-m += {args.family}_probe.o\n", encoding="ascii"
    )

    container_work = f"/work/probe/{args.family}"
    command = [
        "docker", "run", "--rm",
        "-v", f"{args.source_volume}:/work/src:ro",
        "-v", f"{args.toolchain_volume}:/work/toolchains:ro",
        "-v", f"{work_dir.parent}:/work/probe",
        "-e", (
            f"PATH=/work/toolchains/{args.clang_revision}/bin:"
            "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
        ),
        "-w", "/work/src/kernel/kernel_platform/common",
        args.image,
        "make", "ARCH=arm64", "LLVM=1", "LLVM_IAS=1",
        f"M={container_work}", f"{args.family}_probe.o",
    ]
    build = subprocess.run(command, text=True, capture_output=True, check=False)
    if build.returncode == 0:
        extract_command = [
            "python", str(engineering_root / "tools" / "extract_kcfi.py"),
            str(object_path), "--output", str(kcfi_path),
        ]
        extract = subprocess.run(extract_command, text=True, capture_output=True, check=False)
    else:
        extract_command = []
        extract = subprocess.CompletedProcess([], 1, "", "build failed")

    records = []
    if extract.returncode == 0 and kcfi_path.is_file():
        records = json.loads(kcfi_path.read_text(encoding="utf-8")).get("records", [])
    target = args.target_type_id.lower()
    matches = [
        {
            "function": record["function"],
            "signature": mapping[record["function"]],
            "type_id": record["type_id"],
        }
        for record in records
        if record.get("type_id", "").lower() == target
    ]
    passed = build.returncode == 0 and extract.returncode == 0 and bool(matches)
    report = {
        "schema_version": "1.0",
        "mode": "offline_kbuild_kcfi_signature_search",
        "generated_utc": datetime.now(timezone.utc).isoformat(),
        "family": args.family,
        "target_type_id": target,
        "candidate_count": len(signatures),
        "matches": matches,
        "passed": passed,
        "probe_source": {
            "path": str(source_path),
            "sha256": sha256_file(source_path),
            "size": source_path.stat().st_size,
        },
        "build": {
            "command": command,
            "returncode": build.returncode,
            "stdout": build.stdout,
            "stderr": build.stderr,
        },
        "extract": {
            "command": extract_command,
            "returncode": extract.returncode,
            "stdout": extract.stdout,
            "stderr": extract.stderr,
            "report": str(kcfi_path),
        },
    }
    output.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps({
        "output": str(output), "passed": passed,
        "candidates": len(signatures), "matches": matches,
    }))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
