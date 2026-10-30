#!/usr/bin/env python3
"""Build and run the awrw_show host differential/sanitizer harness in Docker."""

from __future__ import annotations

import argparse
import datetime as dt
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
    parser.add_argument("--candidate-module", required=True, type=Path)
    parser.add_argument("--stock-module", required=True, type=Path)
    args = parser.parse_args()

    repo = args.repo_root.resolve()
    here = Path(__file__).resolve().parent
    relative = here.relative_to(repo).as_posix()
    output = here / "output"
    output.mkdir(parents=True, exist_ok=True)

    shell = r'''set -eu
gcc -std=gnu11 -O1 -g -fno-omit-frame-pointer \
  -fsanitize=address,undefined -I include awrw_show_harness.c \
  -o /tmp/awrw_show_harness 2> output/build.stderr.log
gcc --version | head -n 1 > output/compiler_version.txt
/tmp/awrw_show_harness > output/guarded_run_1.json
/tmp/awrw_show_harness > output/guarded_run_2.json
cmp output/guarded_run_1.json output/guarded_run_2.json
set +e
ASAN_OPTIONS=detect_leaks=0:halt_on_error=1 /tmp/awrw_show_harness \
  --probe-zero-state > output/conditional_zero_state.stdout.log 2> output/conditional_zero_state.stderr.log
zero_rc=$?
ASAN_OPTIONS=detect_leaks=0:halt_on_error=1 /tmp/awrw_show_harness \
  --probe-820 > output/count820_probe.stdout.log 2> output/count820_probe.stderr.log
large_rc=$?
set -e
test "$zero_rc" -ne 0
test "$large_rc" -eq 0
grep -q 'AddressSanitizer' output/conditional_zero_state.stderr.log
if grep -q 'AddressSanitizer' output/count820_probe.stderr.log; then exit 1; fi
printf '{"status":"PASS","conditional_zero_state_exit":%s,"count820_probe_exit":%s,"count820_probe":%s}\n' \
  "$zero_rc" "$large_rc" "$(cat output/hazard_820.stdout.log)" > output/sanitizer_hazards.json
'''
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
        print(json.dumps({"status": "FAIL", "returncode": completed.returncode,
                          "stdout": completed.stdout[-2000:],
                          "stderr": completed.stderr[-2000:]}, sort_keys=True))
        return completed.returncode or 1

    first = (output / "guarded_run_1.json").read_text(encoding="utf-8").strip()
    second = (output / "guarded_run_2.json").read_text(encoding="utf-8").strip()
    run_result = json.loads(first)
    sanitizer_result = json.loads(
        (output / "sanitizer_hazards.json").read_text(encoding="utf-8")
    )
    if first != second or run_result.get("status") != "PASS":
        raise SystemExit("guarded differential runs were not stable and passing")
    if sanitizer_result.get("status") != "PASS":
        raise SystemExit("stock boundary hazards were not detected by ASan")

    result = {
        "schema_version": "1.0",
        "status": "PASS",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "mode": "host-only; never device",
        "docker_image": args.image,
        "toolchain_volume": args.toolchain_volume,
        "compiler": (output / "compiler_version.txt").read_text(encoding="utf-8").strip(),
        "candidate_source": "kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_107_awrw_show.c",
        "candidate_source_sha256": sha256(repo / "kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_107_awrw_show.c"),
        "candidate_module_sha256": sha256(args.candidate_module.resolve()),
        "stock_module_sha256": sha256(args.stock_module.resolve()),
        "sanitizers": ["AddressSanitizer", "UndefinedBehaviorSanitizer"],
        "guarded_differential_runs": 2,
        "guarded_run_output_sha256": sha256(output / "guarded_run_1.json"),
        "guarded_results": run_result,
        "sanitizer_observations": sanitizer_result,
        "conditional_zero_state_stderr_sha256": sha256(output / "conditional_zero_state.stderr.log"),
        "count820_probe_stderr_sha256": sha256(output / "count820_probe.stderr.log"),
        "limitations": [
            "The zero-count ASan case intentionally reproduces the stock one-byte underwrite.",
            "The count-820 case uses a 4096-byte allocation; the target-kernel size guard returns before an out-of-page write.",
            "This host harness does not prove concurrent show/store lifetime safety.",
        ],
    }
    result_path = output / "harness_result.json"
    result_path.write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"status": result["status"],
                      "differential_cases": run_result["differential_cases"],
                      "candidate_module_sha256": result["candidate_module_sha256"],
                      "sanitizer_hazards": sanitizer_result}, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
