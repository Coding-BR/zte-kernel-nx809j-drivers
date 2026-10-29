#!/usr/bin/env python3
"""Run a pinned Docker host harness and seeded callback/locking mutants."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import re
import subprocess
import tempfile
from pathlib import Path
from typing import Any


IMAGE = "nubia-sm8850-kernel-builder:latest"
CASES = (
    "baseline",
    "mutant_missing_lock",
    "mutant_callback_after_unlock",
    "mutant_wrong_callback_argument",
    "mutant_wrong_return",
)


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def run(args: list[str]) -> subprocess.CompletedProcess[str]:
    return subprocess.run(args, text=True, stdout=subprocess.PIPE,
                          stderr=subprocess.STDOUT, check=True)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo-root", type=Path, required=True)
    parser.add_argument(
        "--candidate-source",
        default="kernel_development/drivers/reconstructed/haptic_86938/"
                "haptic_86938_fn_037_aw_i2c_suspend.c",
    )
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()

    repo = args.repo_root.resolve(strict=True)
    source_path = (repo / args.candidate_source).resolve(strict=True)
    source_path.relative_to(repo)
    harness_dir = Path(__file__).resolve().parent
    harness_rel = harness_dir.relative_to(repo).as_posix()
    source_text = source_path.read_text(encoding="utf-8")

    mutations = {
        "baseline": source_text,
        "mutant_missing_lock": source_text.replace(
            "\tmutex_lock(lock);\n", "", 1
        ),
        "mutant_callback_after_unlock": source_text.replace(
            "\tfunc_list->stop(haptic);\n\tmutex_unlock(lock);\n",
            "\tmutex_unlock(lock);\n\tfunc_list->stop(haptic);\n",
            1,
        ),
        "mutant_wrong_callback_argument": source_text.replace(
            "\tfunc_list->stop(haptic);\n",
            "\tfunc_list->stop(NULL);\n",
            1,
        ),
        "mutant_wrong_return": source_text.replace(
            "\treturn 0;\n", "\treturn -5;\n", 1
        ),
    }
    if any(mutations[name] == source_text for name in CASES[1:]):
        raise ValueError("a seeded mutation did not change the candidate source")

    image_id = run(["docker", "image", "inspect", "--format", "{{.Id}}", IMAGE]).stdout.strip()
    output_path = (args.output or harness_dir / "harness_result.json").resolve()
    case_results: dict[str, dict[str, Any]] = {}

    with tempfile.TemporaryDirectory(prefix="aw-i2c-suspend-") as temporary:
        build_dir = Path(temporary).resolve()
        for name, text in mutations.items():
            build_dir.joinpath(f"{name}.c").write_text(text, encoding="utf-8")

        repo_mount = f"type=bind,source={repo},target=/repo,readonly"
        build_mount = f"type=bind,source={build_dir},target=/work"
        container_script = "\n".join([
            "set -eu",
            f"cd /repo/{harness_rel}",
            "for case in " + " ".join(CASES) + "; do",
            "  gcc -std=gnu11 -O1 -g -Wall -Wextra -Werror \\",
            "      -fsanitize=address,undefined -fno-omit-frame-pointer \\",
            "      -I include -DCANDIDATE_SOURCE=/work/${case}.c \\",
            "      aw_i2c_suspend_harness.c -o /work/${case}",
            "done",
            "gcc --version | head -n 1",
            "for case in " + " ".join(CASES) + "; do",
            "  set +e",
            "  output=$(ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 \\",
            "           UBSAN_OPTIONS=halt_on_error=1 /work/${case} 2>&1)",
            "  status=$?",
            "  set -e",
            "  printf 'CASE_RESULT:%s:%s\\n%s\\nCASE_END\\n' \"$case\" \"$status\" \"$output\"",
            "done",
        ])
        docker_result = subprocess.run(
            ["docker", "run", "--rm", "--mount", repo_mount,
             "--mount", build_mount, IMAGE, "bash", "-lc", container_script],
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
        )
        raw_output = docker_result.stdout
        parsed: dict[str, dict[str, Any]] = {}
        for match in re.finditer(
            r"CASE_RESULT:([a-z0-9_]+):(-?\d+)\n(.*?)\nCASE_END",
            raw_output,
            re.DOTALL,
        ):
            parsed[match.group(1)] = {
                "returncode": int(match.group(2)),
                "output": match.group(3),
            }

        for name in CASES:
            observed = parsed.get(name)
            passed = bool(
                docker_result.returncode == 0
                and observed
                and (
                    observed["returncode"] == 0
                    and observed["output"].startswith("PASS:")
                    if name == "baseline"
                    else observed["returncode"] != 0
                )
            )
            case_results[name] = {
                "expected": "pass" if name == "baseline" else "rejected",
                "observed_returncode": observed["returncode"] if observed else None,
                "passed": passed,
                "output": observed["output"] if observed else "case output missing",
            }

    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "passed": all(item["passed"] for item in case_results.values()),
        "scope": "host-only lock/callback contract; no kernel, KCFI, or hardware execution",
        "candidate_source": source_path.relative_to(repo).as_posix(),
        "candidate_source_sha256": sha256(source_path.read_bytes()),
        "harness_source_sha256": sha256(
            Path(__file__).with_name("aw_i2c_suspend_harness.c").read_bytes()
        ),
        "stock_offsets": {
            "device_driver_data": "0x98",
            "haptic_mutex": "0x2f0",
            "operations_table": "0x5c8",
            "stop_callback_slot": "0x38",
        },
        "docker_image": IMAGE,
        "docker_image_id": image_id,
        "sanitizers": ["AddressSanitizer", "UndefinedBehaviorSanitizer"],
        "cases": case_results,
        "docker_output_tail": raw_output[-4000:],
    }
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"passed": payload["passed"], "output": str(output_path)}, sort_keys=True))
    return 0 if payload["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
