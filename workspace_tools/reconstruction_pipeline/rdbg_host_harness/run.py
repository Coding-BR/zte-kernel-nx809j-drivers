#!/usr/bin/env python3
"""Run the bounded rdbg init_module host oracle in the pinned Docker toolchain."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
from pathlib import Path
import re
import subprocess


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
DRIVER = ROOT / "kernel_development/drivers/reconstructed/rdbg"
SOURCE = DRIVER / "rdbg_fn_07_init_module.c"
CLEANUP_SOURCE = DRIVER / "rdbg_fn_01_cleanup_module.c"
MAP_PATH = DRIVER / "reconstruction_map.json"
CORE_REPORT = (
    ROOT
    / "reverse_engineering/validation/reconstructed/rdbg/attestation/"
    / "rdbg_init_module_microtask_20261028/protocol_core_v30/hard_protocol_report.json"
)
STOCK_CLEANUP_PSEUDOCODE = (
    ROOT
    / "reverse_engineering/validation/reconstructed/rdbg/offline_static/"
    / "ghidra_stock/rdbg.ko/decompiled/0007_00101974_cleanup_module.c"
)
STOCK_CLEANUP_ASSEMBLY = (
    ROOT
    / "reverse_engineering/validation/reconstructed/rdbg/offline_static/"
    / "stock_assembly/0007_cleanup_module_00101974.asm"
)
IMAGE = "nubia-sm8850-kernel-builder:latest"
EXPECTED_IMAGE_ID = (
    "sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390"
)
TOOLCHAIN_VOLUME = "nubia_sm8850_kernel_toolchains"
CLANG = "/work/toolchains/clang-r536225/bin/clang"


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def run(argv: list[str], *, timeout: int = 300) -> subprocess.CompletedProcess[str]:
    return subprocess.run(argv, capture_output=True, text=True, timeout=timeout)


def require_replacement(source: str, old: str, new: str, label: str) -> str:
    count = source.count(old)
    if count != 1:
        raise ValueError(f"{label}: expected one mutation point, found {count}")
    return source.replace(old, new, 1)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    output = args.output.resolve()
    if output.exists():
        raise SystemExit("Output must be a new directory")
    output.mkdir(parents=True)

    target_path = ROOT / "kernel_development/config/target_kernel.json"
    target = json.loads(target_path.read_text(encoding="utf-8"))
    if target.get("docker_image") != IMAGE or target.get("docker_image_id") != EXPECTED_IMAGE_ID:
        raise SystemExit("Target kernel manifest no longer matches the pinned Docker image")

    inspected = run(["docker", "image", "inspect", "--format", "{{.Id}}", IMAGE])
    if inspected.returncode or inspected.stdout.strip() != EXPECTED_IMAGE_ID:
        raise SystemExit("Installed Docker image identity differs from the target manifest")

    source_text = SOURCE.read_text(encoding="utf-8")
    mutations = {
        "wrong_count_errno": (SOURCE, require_replacement(
            source_text, "return -EDOM;", "return -EINVAL;", "wrong_count_errno"
        )),
        "wrong_success_result": (SOURCE, require_replacement(
            source_text,
            "if (devices_created)\n\t\t\treturn 0;",
            "if (devices_created)\n\t\t\treturn -EINVAL;",
            "wrong_success_result",
        )),
        "wrong_rollback_flag": (SOURCE, require_replacement(
            source_text,
            "device_initialized == 1)",
            "device_initialized == 0)",
            "wrong_rollback_flag",
        )),
        "wrong_cleanup_stride": (CLEANUP_SOURCE, require_replacement(
            CLEANUP_SOURCE.read_text(encoding="utf-8"),
            "#define RDBG_CLIENT_STRIDE 0x1c8",
            "#define RDBG_CLIENT_STRIDE 0x1c4",
            "wrong_cleanup_stride",
        )),
    }
    for name, (mutant_source, value) in mutations.items():
        mutant_dir = output / "mutants" / name
        mutant_dir.mkdir(parents=True)
        (mutant_dir / mutant_source.name).write_text(value, encoding="utf-8")

    repo_mount = f"{ROOT}:/work/repo:ro"
    harness_mount = f"{HERE}:/work/harness:ro"
    output_mount = f"{output}:/work/output"
    script = r"""
set -euo pipefail
clang=/work/toolchains/clang-r536225/bin/clang
module=/work/repo/kernel_development/drivers/reconstructed/rdbg
common=(-std=gnu11 -O1 -g -fno-omit-frame-pointer -fsanitize=address,undefined
        -ffile-prefix-map=/work/harness=. -ffile-prefix-map=/work/repo=.)
base_includes=(-I/work/harness/include -I/work/harness -I"$module")
mkdir -p /work/output/build_a /work/output/build_b
for build in build_a build_b; do
  "$clang" "${common[@]}" "${base_includes[@]}" \
    /work/harness/harness.c -o "/work/output/$build/rdbg_lifecycle_harness"
  sha256sum "/work/output/$build/rdbg_lifecycle_harness" > "/work/output/$build/binary.sha256"
  for replay in 1 2; do
    ASAN_OPTIONS=detect_leaks=1:abort_on_error=1 \
    UBSAN_OPTIONS=halt_on_error=1 \
      "/work/output/$build/rdbg_lifecycle_harness" \
      > "/work/output/$build/replay_${replay}.stdout" \
      2> "/work/output/$build/replay_${replay}.stderr"
  done
done
sha256sum "$clang" > /work/output/clang.sha256
"$clang" --version > /work/output/clang.version
for mutant in wrong_count_errno wrong_success_result wrong_rollback_flag wrong_cleanup_stride; do
  mutant_dir="/work/output/mutants/$mutant"
  "$clang" "${common[@]}" -I"$mutant_dir" "${base_includes[@]}" \
    /work/harness/harness.c -o "$mutant_dir/rdbg_lifecycle_harness"
  set +e
  ASAN_OPTIONS=detect_leaks=1:abort_on_error=1 \
  UBSAN_OPTIONS=halt_on_error=1 \
    "$mutant_dir/rdbg_lifecycle_harness" \
    > "$mutant_dir/replay.stdout" 2> "$mutant_dir/replay.stderr"
  result=$?
  set -e
  if [ "$result" -eq 0 ] || ! grep -q 'CHECK failed' "$mutant_dir/replay.stderr"; then
    echo "mutation was not detected by an oracle assertion: $mutant" >&2
    exit 20
  fi
  echo "DETECTED $mutant"
done
cat /work/output/build_a/replay_1.stdout
cat /work/output/build_b/replay_1.stdout
sha256sum /work/output/build_a/rdbg_lifecycle_harness /work/output/build_b/rdbg_lifecycle_harness
"$clang" --version | head -n 1
"$clang" --print-target-triple
"""
    docker_cmd = [
        "docker",
        "run",
        "--rm",
        "-v",
        repo_mount,
        "-v",
        harness_mount,
        "-v",
        output_mount,
        "-v",
        f"{TOOLCHAIN_VOLUME}:/work/toolchains:ro",
        "-w",
        "/work/harness",
        "-e",
        "ASAN_OPTIONS=detect_leaks=1:abort_on_error=1",
        "-e",
        "UBSAN_OPTIONS=halt_on_error=1",
        IMAGE,
        "/bin/bash",
        "-lc",
        script,
    ]
    result = run(docker_cmd, timeout=600)
    (output / "docker.stdout").write_text(result.stdout, encoding="utf-8")
    (output / "docker.stderr").write_text(result.stderr, encoding="utf-8")
    if result.returncode:
        (output / "runner_failure.json").write_text(
            json.dumps(
                {
                    "returncode": result.returncode,
                    "stdout": result.stdout,
                    "stderr": result.stderr,
                    "argv": docker_cmd,
                },
                indent=2,
            )
            + "\n",
            encoding="utf-8",
        )
        raise SystemExit(result.returncode)

    build_hashes = [
        (output / build / "binary.sha256").read_text(encoding="utf-8").split()[0]
        for build in ("build_a", "build_b")
    ]
    replay_outputs = [
        (output / build / f"replay_{replay}.stdout").read_text(encoding="utf-8").strip()
        for build in ("build_a", "build_b")
        for replay in (1, 2)
    ]
    replay_assertions = []
    for replay_output in replay_outputs:
        match = re.fullmatch(
            r"PASS cases=10 assertions=(\d+) promotion_authorized=false",
            replay_output,
        )
        if match is None:
            raise SystemExit("baseline replay did not satisfy the ten-case oracle")
        replay_assertions.append(int(match.group(1)))
    if len(set(build_hashes)) != 1 or len(set(replay_assertions)) != 1:
        raise SystemExit("baseline builds/replays are not byte-stable or did not pass")

    report = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "driver": "rdbg",
        "functions": ["init_module@00101638", "cleanup_module@00101974"],
        "status": "PASS_HOST_HARNESS_BOUNDED",
        "promotion_authorized": False,
        "source_path": SOURCE.relative_to(ROOT).as_posix(),
        "source_sha256": sha256(SOURCE),
        "cleanup_source_path": CLEANUP_SOURCE.relative_to(ROOT).as_posix(),
        "cleanup_source_sha256": sha256(CLEANUP_SOURCE),
        "candidate_module_sha256": sha256(DRIVER / "rdbg.ko"),
        "reconstruction_map_path": MAP_PATH.relative_to(ROOT).as_posix(),
        "reconstruction_map_sha256": sha256(MAP_PATH),
        "core_gate_report_path": CORE_REPORT.relative_to(ROOT).as_posix(),
        "core_gate_report_sha256": sha256(CORE_REPORT),
        "stock_cleanup_evidence": {
            STOCK_CLEANUP_PSEUDOCODE.relative_to(ROOT).as_posix(): sha256(STOCK_CLEANUP_PSEUDOCODE),
            STOCK_CLEANUP_ASSEMBLY.relative_to(ROOT).as_posix(): sha256(STOCK_CLEANUP_ASSEMBLY),
        },
        "harness_input_sha256": {
            path.relative_to(HERE).as_posix(): sha256(path)
            for path in [HERE / "run.py", HERE / "harness.c", HERE / "rdbg_host_shim.h"]
            + sorted((HERE / "include").rglob("*.h"))
        },
        "target_manifest_sha256": sha256(target_path),
        "docker_image": IMAGE,
        "docker_image_id": EXPECTED_IMAGE_ID,
        "toolchain_volume": TOOLCHAIN_VOLUME,
        "compiler_sha256": (output / "clang.sha256").read_text(encoding="utf-8").split()[0],
        "compiler_version": (output / "clang.version").read_text(encoding="utf-8").splitlines()[0],
        "baseline_build_sha256": build_hashes[0],
        "baseline_replays": 4,
        "cases": 10,
        "assertions_per_replay": replay_assertions[0],
        "mutation_controls": [
            {
                "name": name,
                "source_path": mutant_source.relative_to(ROOT).as_posix(),
                "detected_by_oracle": True,
                "source_sha256": sha256(output / "mutants" / name / mutant_source.name),
            }
            for name, (mutant_source, _) in mutations.items()
        ],
        "observed_failure_paths": [
            "platform_driver_register failure returns without freeing the clients allocation",
            "alloc_chrdev_region failure frees clients but leaves the registered platform driver active",
        ],
        "stock_confirmed_module_exit_effects": [
            "cleanup_module destroys initialized device minors, destroys the class, deletes the cdev, calls unregister_chrdev_region with count=1, then frees clients",
            "cleanup_module does not call platform_driver_unregister",
        ],
        "limitations": [
            "Host stubs model API results and call order; they do not test kernel concurrency, real platform probing, or hardware.",
            "The failure-path allocation is released by the harness after asserting the observed source behavior so LeakSanitizer can still check harness-owned memory.",
            "This report does not establish stock-candidate semantic equivalence or satisfy the independent-review, KMI, KUnit/lockdep/KCSAN, or hardware gates.",
        ],
    }
    (output / "host_harness_report.json").write_text(
        json.dumps(report, indent=2, ensure_ascii=False) + "\n", encoding="utf-8"
    )
    print(json.dumps(report, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
