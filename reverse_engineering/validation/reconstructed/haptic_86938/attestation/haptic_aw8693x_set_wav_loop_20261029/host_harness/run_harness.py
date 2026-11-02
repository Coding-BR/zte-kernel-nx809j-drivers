#!/usr/bin/env python3
"""Run the aw8693x_set_wav_loop contract and seeded source mutants."""

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
FAILURE = "FAIL: index, mask, loop value, or call count mismatch"
MUTATIONS = {
    "mutant_wrong_register": ("0x12U", "0x13U"),
    "mutant_wrong_even_mask": ("0xffffff0fU", "0xffffff1fU"),
    "mutant_wrong_odd_mask": ("0xfffffff0U", "0xffffff00U"),
    "mutant_wrong_shift": ("loop_value <<= 4;", "loop_value <<= 3;"),
    "mutant_wrong_branch": ("(index & 1U) == 0U", "(index & 1U) != 0U"),
}


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo-root", type=Path, required=True)
    parser.add_argument(
        "--candidate-source",
        default=(
            "kernel_development/drivers/reconstructed/haptic_86938/"
            "haptic_86938_fn_043_aw8693x_set_wav_loop.c"
        ),
    )
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()

    repo = args.repo_root.resolve(strict=True)
    source_path = (repo / args.candidate_source).resolve(strict=True)
    source_path.relative_to(repo)
    harness_dir = Path(__file__).resolve().parent
    harness_rel = harness_dir.relative_to(repo).as_posix()
    source_text = source_path.read_text(encoding="utf-8")
    cases = {"baseline": source_text}
    for name, (old, new) in MUTATIONS.items():
        if old not in source_text:
            raise ValueError(f"mutation anchor missing for {name}: {old}")
        cases[name] = source_text.replace(old, new, 1)
        if cases[name] == source_text:
            raise ValueError(f"mutation made no change: {name}")

    image = subprocess.run(
        ["docker", "image", "inspect", "--format", "{{.Id}}", IMAGE],
        check=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
    ).stdout.strip()

    output = args.output or harness_dir / "harness_result.json"
    results: dict[str, dict[str, Any]] = {}
    with tempfile.TemporaryDirectory(prefix="aw8693x-wav-loop-") as tmp:
        build = Path(tmp).resolve()
        for name, text in cases.items():
            (build / f"{name}.c").write_text(text, encoding="utf-8")
        script = "\n".join([
            "set -eu",
            f"cd /repo/{harness_rel}",
            "for case in baseline mutant_wrong_register mutant_wrong_even_mask mutant_wrong_odd_mask mutant_wrong_shift mutant_wrong_branch; do",
            "  gcc -std=gnu11 -O1 -g -Wall -Wextra -Werror -fsanitize=address,undefined -fno-omit-frame-pointer -I include -DCANDIDATE_SOURCE=/work/$case.c aw8693x_set_wav_loop_harness.c -o /work/$case",
            "done",
            "gcc --version | head -n 1",
            "for case in baseline mutant_wrong_register mutant_wrong_even_mask mutant_wrong_odd_mask mutant_wrong_shift mutant_wrong_branch; do",
            "  set +e",
            "  output=$(ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 UBSAN_OPTIONS=halt_on_error=1 /work/$case 2>&1)",
            "  status=$?",
            "  set -e",
            "  printf 'CASE_RESULT:%s:%s\\n%s\\nCASE_END\\n' \"$case\" \"$status\" \"$output\"",
            "done",
        ])
        docker = subprocess.run(
            [
                "docker", "run", "--rm",
                "--mount", f"type=bind,source={repo},target=/repo,readonly",
                "--mount", f"type=bind,source={build},target=/work",
                IMAGE, "bash", "-lc", script,
            ],
            text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
        )

    parsed: dict[str, dict[str, Any]] = {}
    for match in re.finditer(
        r"CASE_RESULT:([a-z0-9_]+):(-?[0-9]+)\n(.*?)\nCASE_END",
        docker.stdout, re.DOTALL,
    ):
        parsed[match.group(1)] = {
            "returncode": int(match.group(2)),
            "output": match.group(3),
        }

    for name in cases:
        observed = parsed.get(name)
        if name == "baseline":
            passed = bool(
                docker.returncode == 0 and observed
                and observed["returncode"] == 0
                and observed["output"].startswith("PASS:")
            )
        else:
            passed = bool(
                docker.returncode == 0 and observed
                and observed["returncode"] != 0
                and FAILURE in observed["output"]
            )
        results[name] = {
            "passed": passed,
            "observed_returncode": observed["returncode"] if observed else None,
            "output": observed["output"] if observed else "case output missing",
        }

    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "passed": all(item["passed"] for item in results.values()),
        "scope": "host-only wrapper argument contract; no kernel or physical device execution",
        "candidate_source": source_path.relative_to(repo).as_posix(),
        "candidate_source_sha256": sha256(source_path.read_bytes()),
        "harness_source_sha256": sha256(
            (harness_dir / "aw8693x_set_wav_loop_harness.c").read_bytes()
        ),
        "harness_runner_sha256": sha256(Path(__file__).read_bytes()),
        "docker_image": IMAGE,
        "docker_image_id": image,
        "sanitizers": ["AddressSanitizer", "UndefinedBehaviorSanitizer"],
        "cases": results,
        "docker_output_tail": docker.stdout[-4000:],
    }
    output = output.resolve()
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"passed": payload["passed"], "output": str(output)}, sort_keys=True))
    return 0 if payload["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())