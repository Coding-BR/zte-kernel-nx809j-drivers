#!/usr/bin/env python3
"""Prepare a clean NX809J source volume and its pinned out-of-tree Kbuild tree."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import subprocess
import sys
from pathlib import Path
from typing import Any

ROOT = Path(__file__).resolve().parents[2]


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def run(command: list[str]) -> subprocess.CompletedProcess[str]:
    result = subprocess.run(command, capture_output=True, text=True, check=False)
    if result.returncode:
        raise RuntimeError(
            f"command failed ({result.returncode}): {command!r}\n"
            f"stdout:\n{result.stdout[-5000:]}\nstderr:\n{result.stderr[-5000:]}"
        )
    return result


def volume_exists(name: str) -> bool:
    return subprocess.run(
        ["docker", "volume", "inspect", name],
        capture_output=True,
        text=True,
        check=False,
    ).returncode == 0


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--seed-source-volume", required=True)
    parser.add_argument("--source-volume", required=True)
    parser.add_argument("--bindgen-volume", default="nx809j_bindgen_0695")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--kernel-image-file", type=Path)
    parser.add_argument(
        "--manifest",
        type=Path,
        default=ROOT / "kernel_development" / "config" / "target_kernel.json",
    )
    parser.add_argument("--repo-root", type=Path, default=ROOT)
    parser.add_argument(
        "--output",
        type=Path,
        default=ROOT / "reverse_engineering" / "validation" / "kernel_source"
        / "target_kernel_source_20261030.json",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    manifest = json.loads(args.manifest.read_text(encoding="utf-8"))
    provenance: dict[str, Any] = manifest["source_provenance"]
    repo_root = args.repo_root.resolve()

    image_id = run(
        ["docker", "image", "inspect", "--format", "{{.Id}}", args.image]
    ).stdout.strip()
    if image_id != manifest["docker_image_id"]:
        raise RuntimeError(
            f"Docker image ID mismatch: expected {manifest['docker_image_id']}, got {image_id}"
        )
    if not volume_exists(args.seed_source_volume):
        raise RuntimeError(f"seed Docker volume does not exist: {args.seed_source_volume}")
    if volume_exists(args.source_volume):
        raise RuntimeError(
            f"refusing to overwrite existing source volume {args.source_volume}; choose a new name"
        )
    if not volume_exists(args.bindgen_volume):
        raise RuntimeError(f"pinned bindgen volume does not exist: {args.bindgen_volume}")

    for key in (
        "config_asset",
        "module_symvers_asset",
        "localversion_asset",
        "build_info_asset",
        "build_log_asset",
    ):
        path = repo_root / provenance[key]
        actual = sha256(path)
        expected = provenance[f"{key}_sha256"]
        if actual != expected:
            raise RuntimeError(f"{key} hash mismatch: expected {expected}, got {actual} ({path})")

    info_text = (repo_root / provenance["build_info_asset"]).read_text(encoding="utf-8")
    for value in (provenance["commit"], provenance["release_tag"]):
        if value not in info_text:
            raise RuntimeError(f"build-info does not contain pinned provenance value {value}")

    image_report_path = args.output.resolve().with_name("target_kernel_image_20261030.json")
    image_verifier = ROOT / "workspace_tools" / "reconstruction_pipeline" / "verify_target_kernel_image.py"
    image_command = [
        sys.executable, str(image_verifier),
        "--manifest", str(args.manifest.resolve()),
        "--output", str(image_report_path),
    ]
    if args.kernel_image_file:
        image_command.extend(["--image-file", str(args.kernel_image_file.resolve())])
    run(image_command)
    image_attestation = json.loads(image_report_path.read_text(encoding="utf-8"))

    run(["docker", "volume", "create", args.source_volume])
    source_repo = provenance["repository"]
    source_commit = provenance["commit"]
    clang_revision = manifest["toolchain"]
    config_name = Path(provenance["config_asset"]).name
    symvers_name = Path(provenance["module_symvers_asset"]).name
    localversion_name = Path(provenance["localversion_asset"]).name
    localversion_build_path = provenance["localversion_build_path"]

    container_script = f"""
set -eu
/work/bindgen/bin/bindgen --version | grep -Fx 'bindgen {manifest["bindgen_version"]}'
test "$(sha256sum /work/bindgen/bin/bindgen | awk '{{print $1}}')" = '{manifest["bindgen_sha256"]}'
git clone --local --no-hardlinks /seed/kernel /work/src/kernel
cd /work/src/kernel
git remote set-url origin '{source_repo}'
test "$(git rev-parse HEAD)" = '{source_commit}'
mkdir -p target_build_inputs
cp "/repo/{provenance["config_asset"]}" "target_build_inputs/{config_name}"
cp "/repo/{provenance["module_symvers_asset"]}" target_build_inputs/Module.symvers
cp "/repo/{provenance["localversion_asset"]}" "{localversion_build_path}"
S=/work/src/kernel/kernel_platform/common
O=/work/src/kernel/.codex-kbuild/identity
mkdir -p "$O"
cp "target_build_inputs/{config_name}" "$O/.config"
cp target_build_inputs/Module.symvers "$O/Module.symvers"
export PATH=/work/bindgen/bin:/work/toolchains/clang-r536225/bin:/work/toolchains/rust-1.82.0/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export BINDGEN=/work/bindgen/bin/bindgen
export KBUILD_BUILD_TIMESTAMP='2000-01-01 00:00:00 UTC' KBUILD_BUILD_USER=codex KBUILD_BUILD_HOST=reproducible
make -s -C "$S" O="$O" ARCH=arm64 LLVM=1 LLVM_IAS=1 BINDGEN="$BINDGEN" modules_prepare
config_sha=$(sha256sum "$O/.config" | awk '{{print $1}}')
symvers_sha=$(sha256sum "$O/Module.symvers" | awk '{{print $1}}')
localversion_sha=$(sha256sum "$S/localversion.nx809j-target" | awk '{{print $1}}')
kernel_release=$(make -s -C "$S" O="$O" ARCH=arm64 LLVM=1 LLVM_IAS=1 kernelrelease)
clang_version=$(/work/toolchains/{clang_revision}/bin/clang --version | head -1)
clang_sha=$(sha256sum /work/toolchains/{clang_revision}/bin/clang.real | awk '{{print $1}}')
rust_toolchain=$(/work/toolchains/rust-1.82.0/bin/rustc --version)
rustc_sha=$(sha256sum /work/toolchains/rust-1.82.0/bin/rustc | awk '{{print $1}}')
test "$config_sha" = '{manifest["config_sha256"]}'
test "$symvers_sha" = '{manifest["module_symvers_sha256"]}'
test "$localversion_sha" = '{provenance["localversion_asset_sha256"]}'
test "$kernel_release" = '{manifest["kernel_release"]}'
test "$clang_version" = '{manifest["clang_version"]}'
test "$clang_sha" = '{manifest["clang_binary_sha256"]}'
test "$rust_toolchain" = '{manifest["rust_toolchain"]}'
test "$rustc_sha" = '{manifest["rustc_sha256"]}'
printf '%s\\n' \\
  "source_head=$(git rev-parse HEAD)" \\
  "source_repository=$(git config --get remote.origin.url)" \\
  "kernel_release=$kernel_release" \\
  "config_sha256=$config_sha" \\
  "module_symvers_sha256=$symvers_sha" \\
  "localversion_sha256=$localversion_sha" \\
  "bindgen_version=$(/work/bindgen/bin/bindgen --version)" \\
  "bindgen_sha256=$(sha256sum /work/bindgen/bin/bindgen | awk '{{print $1}}')" \\
  "clang_revision={clang_revision}" \\
  "clang_version=$clang_version" \\
  "clang_binary_sha256=$clang_sha" \\
  "rust_toolchain=$rust_toolchain" \\
  "rustc_sha256=$rustc_sha"
"""
    command = [
        "docker", "run", "--rm",
        "-v", f"{args.seed_source_volume}:/seed:ro",
        "-v", f"{args.source_volume}:/work/src",
        "-v", f"{repo_root}:/repo:ro",
        "-v", f"{args.toolchain_volume}:/work/toolchains:ro",
        "-v", f"{args.bindgen_volume}:/work/bindgen:ro",
        args.image, "bash", "-lc", container_script,
    ]
    output = run(command).stdout
    observed: dict[str, str] = {}
    for line in output.splitlines():
        key, separator, value = line.partition("=")
        if separator:
            observed[key] = value

    expected = {
        "source_head": source_commit,
        "source_repository": source_repo,
        "kernel_release": manifest["kernel_release"],
        "config_sha256": manifest["config_sha256"],
        "module_symvers_sha256": manifest["module_symvers_sha256"],
        "localversion_sha256": provenance["localversion_asset_sha256"],
        "bindgen_version": f"bindgen {manifest['bindgen_version']}",
        "bindgen_sha256": manifest["bindgen_sha256"],
        "clang_revision": manifest["toolchain"],
        "clang_version": manifest["clang_version"],
        "clang_binary_sha256": manifest["clang_binary_sha256"],
        "rust_toolchain": manifest["rust_toolchain"],
        "rustc_sha256": manifest["rustc_sha256"],
    }
    mismatches = {
        key: {"expected": value, "observed": observed.get(key)}
        for key, value in expected.items()
        if observed.get(key) != value
    }
    if mismatches:
        raise RuntimeError(f"prepared source volume failed identity checks: {mismatches}")

    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "status": "PREPARED",
        "source_seed_volume": args.seed_source_volume,
        "source_volume": args.source_volume,
        "docker_image": args.image,
        "docker_image_id": image_id,
        "bindgen_volume": args.bindgen_volume,
        "toolchain_volume": args.toolchain_volume,
        "source_provenance": provenance,
        "kernel_image_attestation": image_attestation,
        "observed": observed,
        "mismatches": {},
        "setup_command": command,
    }
    output_path = args.output.resolve()
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({
        "status": "PREPARED",
        "source_volume": args.source_volume,
        "kernel_release": observed["kernel_release"],
        "output": str(output_path),
    }, indent=2))
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, RuntimeError, KeyError, json.JSONDecodeError) as error:
        raise SystemExit(f"ERROR: {error}") from error
