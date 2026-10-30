#!/usr/bin/env python3
"""Run sanitizer and lifetime stress checks for the hardened awrw callback pair."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from pathlib import Path


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo-root", required=True, type=Path)
    parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
    parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
    parser.add_argument("--clang-revision", default="clang-r536225")
    args = parser.parse_args()

    repo = args.repo_root.resolve()
    here = Path(__file__).resolve().parent
    relative = here.relative_to(repo).as_posix()
    output = here / "output"
    output.mkdir(parents=True, exist_ok=True)

    shell = r"""set -eu
gcc -std=gnu11 -O1 -g -fno-omit-frame-pointer -pthread   -fsanitize=address,undefined -I include awrw_show_harness.c   -o /tmp/awrw_show_harness 2> output/asan_build.stderr.log
gcc --version | head -n 1 > output/compiler_version.txt
/tmp/awrw_show_harness > output/guarded_run_1.json
/tmp/awrw_show_harness > output/guarded_run_2.json
cmp output/guarded_run_1.json output/guarded_run_2.json
ASAN_OPTIONS=detect_leaks=0:halt_on_error=1 /tmp/awrw_show_harness   --probe-zero-state > output/zero_count_probe.json 2> output/zero_count_probe.stderr.log
ASAN_OPTIONS=detect_leaks=0:halt_on_error=1 /tmp/awrw_show_harness   --probe-820 > output/count820_probe.json 2> output/count820_probe.stderr.log
ASAN_OPTIONS=detect_leaks=0:halt_on_error=1 /tmp/awrw_show_harness   --stress-lifetime > output/asan_lifetime_stress.json 2> output/asan_lifetime_stress.stderr.log
if grep -q 'AddressSanitizer' output/zero_count_probe.stderr.log; then exit 1; fi
if grep -q 'AddressSanitizer' output/asan_lifetime_stress.stderr.log; then exit 1; fi
set +e
gcc -std=gnu11 -O1 -g -fno-omit-frame-pointer -pthread   -fsanitize=thread -I include awrw_show_harness.c   -o /tmp/awrw_show_tsan 2> output/tsan_build.stderr.log
build_rc=$?
if [ "$build_rc" -eq 0 ]; then
  TSAN_OPTIONS=halt_on_error=1 /tmp/awrw_show_tsan --stress-lifetime     > output/tsan_lifetime_stress.json 2> output/tsan_lifetime_stress.stderr.log
  tsan_rc=$?
else
  tsan_rc=125
fi
set -e
printf '{"tsan_build_rc":%s,"tsan_run_rc":%s}
' "$build_rc" "$tsan_rc"   > output/tsan_status.json
"""
    command = [
        "docker", "run", "--rm",
        "-v", f"{repo}:/workspace",
        "-v", f"{args.toolchain_volume}:/work/toolchains:ro",
        "-e", f"PATH=/work/toolchains/{args.clang_revision}/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
        "-w", f"/workspace/{relative}",
        args.image, "sh", "-c", shell,
    ]
    completed = subprocess.run(command, text=True, capture_output=True, check=False)
    (output / "docker.stdout.log").write_text(completed.stdout, encoding="utf-8")
    (output / "docker.stderr.log").write_text(completed.stderr, encoding="utf-8")
    if completed.returncode != 0:
        print(json.dumps({
            "status": "FAIL",
            "returncode": completed.returncode,
            "stdout": completed.stdout[-3000:],
            "stderr": completed.stderr[-3000:],
        }, sort_keys=True))
        return completed.returncode or 1

    guarded = (output / "guarded_run_1.json").read_text(encoding="utf-8").strip()
    guarded_repeat = (output / "guarded_run_2.json").read_text(encoding="utf-8").strip()
    guarded_result = json.loads(guarded)
    zero_result = json.loads((output / "zero_count_probe.json").read_text(encoding="utf-8"))
    count820_result = json.loads((output / "count820_probe.json").read_text(encoding="utf-8"))
    asan_stress = json.loads((output / "asan_lifetime_stress.json").read_text(encoding="utf-8"))
    tsan_status = json.loads((output / "tsan_status.json").read_text(encoding="utf-8"))
    tsan_result = None
    tsan_stderr = output / "tsan_lifetime_stress.stderr.log"
    if tsan_status["tsan_run_rc"] == 0:
        tsan_result = json.loads((output / "tsan_lifetime_stress.json").read_text(encoding="utf-8"))

    passed = (
        guarded == guarded_repeat
        and guarded_result.get("status") == "PASS"
        and zero_result.get("status") == "PASS"
        and count820_result.get("status") == "PASS"
        and asan_stress.get("status") == "PASS"
    )
    result = {
        "schema_version": "1.0",
        "status": "PASS" if passed else "FAIL",
        "mode": "host-only in pinned Docker image; no device access",
        "docker_image": args.image,
        "toolchain_volume": args.toolchain_volume,
        "compiler": (output / "compiler_version.txt").read_text(encoding="utf-8").strip(),
        "source_hashes": {
            "awrw_show": sha256(repo / "kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_107_awrw_show.c"),
            "awrw_store": sha256(repo / "kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_108_awrw_store.c"),
        },
        "guarded_differential_runs": 2,
        "guarded": guarded_result,
        "zero_count_asan_probe": zero_result,
        "count820_boundary_probe": count820_result,
        "asan_lifetime_stress": asan_stress,
        "tsan": {
            "status": "PASS" if tsan_result is not None else "UNAVAILABLE_OR_UNSUPPORTED",
            "build_returncode": tsan_status["tsan_build_rc"],
            "run_returncode": tsan_status["tsan_run_rc"],
            "result": tsan_result,
            "stderr": tsan_stderr.read_text(encoding="utf-8", errors="replace")[-3000:] if tsan_stderr.exists() else "",
        },
        "limitations": [
            "The threaded writer models the awrw_store pointer replacement/free critical section using the same per-device lock; it is not an execution of the ARM64 awrw_store callback.",
            "This host harness does not replace target-kernel KASAN/KCSAN or hardware validation.",
        ],
    }
    (output / "harness_result.json").write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({
        "status": result["status"],
        "differential_cases": guarded_result.get("differential_cases"),
        "zero_count": zero_result,
        "asan_lifetime_stress": asan_stress,
        "tsan_status": result["tsan"]["status"],
    }, sort_keys=True))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())
