#!/usr/bin/env python3
"""Build zte_tpd reproducibly in two independent Linux container filesystems."""

from __future__ import annotations

import argparse
import hashlib
import json
import re
import shutil
import subprocess
import time
from datetime import datetime, timezone
from pathlib import Path


GENERATED_NAMES = {
    "Module.symvers",
    "modules.order",
    "zte_tpd.ko",
    "zte_tpd.mod",
    "zte_tpd.mod.c",
    "zte_tpd.o",
}
GENERATED_SUFFIXES = (".o", ".ko", ".mod", ".cmd")
DIAGNOSTIC_RE = re.compile(r"warning:|error:|clock skew", re.IGNORECASE)


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def source_files(root: Path) -> list[Path]:
    files = []
    for path in root.rglob("*"):
        if not path.is_file() or path.name in GENERATED_NAMES:
            continue
        if path.name.startswith(".") and path.name.endswith(".cmd"):
            continue
        if path.suffix in GENERATED_SUFFIXES:
            continue
        files.append(path)
    return sorted(files, key=lambda path: path.relative_to(root).as_posix())


def source_tree_record(root: Path) -> dict[str, object]:
    records = []
    aggregate = hashlib.sha256()
    for path in source_files(root):
        relative = path.relative_to(root).as_posix()
        digest = sha256_file(path)
        size = path.stat().st_size
        records.append({"path": relative, "size": size, "sha256": digest})
        aggregate.update(relative.encode("utf-8"))
        aggregate.update(b"\0")
        aggregate.update(digest.encode("ascii"))
        aggregate.update(b"\n")
    return {
        "path": str(root),
        "file_count": len(records),
        "manifest_sha256": aggregate.hexdigest(),
        "files": records,
    }


def diagnostics(path: Path) -> list[str]:
    if not path.is_file():
        return [f"missing log: {path}"]
    return [
        line
        for line in path.read_text(encoding="utf-8", errors="replace").splitlines()
        if DIAGNOSTIC_RE.search(line)
    ]


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    script_root = Path(__file__).resolve().parents[2]
    parser.add_argument(
        "--engineering-root",
        type=Path,
        default=script_root.parent / "kernel-docker-workspace" / "engenharia",
    )
    parser.add_argument("--label", required=True)
    parser.add_argument("--audit-name", required=True)
    parser.add_argument("--cycles", type=int, default=2)
    parser.add_argument("--parallelism", type=int, default=8)
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--source-volume", default="nubia_sm8850_kernel_src")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()
    if not re.fullmatch(r"[A-Za-z0-9_.-]+", args.label):
        parser.error("--label must contain only letters, digits, dot, underscore or dash")
    if not re.fullmatch(r"[A-Za-z0-9_.-]+", args.audit_name):
        parser.error("--audit-name must contain only letters, digits, dot, underscore or dash")
    if args.cycles < 2:
        parser.error("--cycles must be at least 2")
    if args.parallelism < 1:
        parser.error("--parallelism must be at least 1")

    root = args.engineering_root.resolve()
    curated = root / "curated" / "zte_tpd"
    if not curated.is_dir():
        raise FileNotFoundError(f"missing curated source tree: {curated}")
    if not (curated / "vendor.Module.symvers").is_file():
        raise FileNotFoundError(f"missing vendor.Module.symvers: {curated}")

    generated = datetime.now(timezone.utc)
    run_id = generated.strftime("%Y%m%dT%H%M%SZ")
    run_root = root / "validation" / "zte_tpd" / "canonical_builds" / args.label / run_id
    run_root.mkdir(parents=True, exist_ok=False)
    module_path = f"/work/engineering/validation/{args.audit_name}/zte_tpd"
    source_record = source_tree_record(curated)
    cycle_records = []

    for cycle in range(1, args.cycles + 1):
        cycle_root = run_root / f"cycle_{cycle}"
        cycle_root.mkdir()
        clean_log = cycle_root / "clean.log"
        build_log = cycle_root / "build.log"
        artifact = cycle_root / "zte_tpd.ko"
        shell = f"""
set -euo pipefail
export PATH=/work/toolchains/{args.clang_revision}/bin:$PATH
MODULE={module_path}
mkdir -p "$(dirname "$MODULE")"
cp -a /host/curated/zte_tpd "$MODULE"
find "$MODULE" -type f -exec touch -d @946684800 {{}} +
make -C /work/src/kernel/kernel_platform/common LLVM=1 LLVM_IAS=1 ARCH=arm64 M="$MODULE" clean > /out/clean.log 2>&1
make -C /work/src/kernel/kernel_platform/common LLVM=1 LLVM_IAS=1 ARCH=arm64 M="$MODULE" KBUILD_EXTRA_SYMBOLS="$MODULE/vendor.Module.symvers" modules -j{args.parallelism} > /out/build.log 2>&1
cp "$MODULE/zte_tpd.ko" /out/zte_tpd.ko
""".strip()
        command = [
            "docker",
            "run",
            "--rm",
            "-v",
            f"{args.source_volume}:/work/src",
            "-v",
            f"{args.toolchain_volume}:/work/toolchains:ro",
            "-v",
            f"{root}:/host:ro",
            "-v",
            f"{cycle_root}:/out",
            args.image,
            "bash",
            "-lc",
            shell,
        ]
        started = time.monotonic()
        completed = subprocess.run(command, text=True, capture_output=True, check=False)
        duration = round(time.monotonic() - started, 3)
        cycle_diagnostics = diagnostics(clean_log) + diagnostics(build_log)
        artifact_exists = artifact.is_file()
        accepted = completed.returncode == 0 and artifact_exists and not cycle_diagnostics
        cycle_records.append(
            {
                "cycle": cycle,
                "accepted": accepted,
                "returncode": completed.returncode,
                "duration_seconds": duration,
                "artifact": {
                    "path": str(artifact),
                    "size": artifact.stat().st_size if artifact_exists else None,
                    "sha256": sha256_file(artifact) if artifact_exists else None,
                },
                "clean_log": {
                    "path": str(clean_log),
                    "sha256": sha256_file(clean_log) if clean_log.is_file() else None,
                },
                "build_log": {
                    "path": str(build_log),
                    "sha256": sha256_file(build_log) if build_log.is_file() else None,
                },
                "diagnostics": cycle_diagnostics,
                "docker_stdout": completed.stdout,
                "docker_stderr": completed.stderr,
            }
        )

    accepted = all(record["accepted"] for record in cycle_records)
    hashes = [record["artifact"]["sha256"] for record in cycle_records]
    sizes = [record["artifact"]["size"] for record in cycle_records]
    reproducible = accepted and len(set(hashes)) == 1 and len(set(sizes)) == 1
    promoted = None
    if reproducible:
        promoted = root / "validation" / args.audit_name / "zte_tpd" / "zte_tpd.ko"
        promoted.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(cycle_records[-1]["artifact"]["path"], promoted)

    output = (
        args.output
        or root / "validation" / "zte_tpd" / f"build_{args.label}_report.json"
    ).resolve()
    report = {
        "schema_version": "1.0",
        "generated_utc": generated.isoformat(),
        "mode": "offline_independent_linux_filesystem_canonical_build",
        "label": args.label,
        "passed": reproducible,
        "reproducible": reproducible,
        "cycles_requested": args.cycles,
        "cycles_accepted": sum(record["accepted"] for record in cycle_records),
        "parallelism": args.parallelism,
        "module_path": module_path,
        "container": args.image,
        "toolchain": args.clang_revision,
        "target": "AArch64 ARCH=arm64 LLVM=1 LLVM_IAS=1 KBUILD_EXTRA_SYMBOLS=vendor.Module.symvers",
        "output_filesystem": "independent ephemeral container Linux filesystem",
        "source_tree": source_record,
        "cycles": cycle_records,
        "candidate": {
            "path": str(promoted) if promoted else None,
            "size": promoted.stat().st_size if promoted else None,
            "sha256": sha256_file(promoted) if promoted else None,
        },
        "notes": [
            "Every cycle starts in a new container and copies the curated source into the same canonical M= path.",
            "Input mtimes are normalized before make clean to prevent host bind-mount clock skew.",
            "A cycle is rejected on nonzero exit, missing artifact, warning, error or clock-skew text.",
            "Promotion occurs only when every accepted cycle produces identical artifact bytes and size.",
        ],
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(
        json.dumps(
            {
                "output": str(output),
                "passed": reproducible,
                "cycles": args.cycles,
                "sha256": report["candidate"]["sha256"],
                "size": report["candidate"]["size"],
            }
        )
    )
    return 0 if reproducible else 1


if __name__ == "__main__":
    raise SystemExit(main())
