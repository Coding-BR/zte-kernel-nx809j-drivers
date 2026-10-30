#!/usr/bin/env python3
"""Run the aw8693x_rtp_get_fifo_afi contract and seeded source mutants."""
from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import re
import subprocess
import tempfile
from pathlib import Path

IMAGE = "nubia-sm8850-kernel-builder:latest"
FAILURE = "FAIL: return bit, mode-gated FIFO writes, register, transfer length, or call count mismatch"
MUTATIONS = {
    "mutant_mode_predicate": ("haptic->rtp_mode == 1U", "haptic->rtp_mode == 0U"),
    "mutant_register": ("haptic, 0x02U, &data, 1U", "haptic, 0x03U, &data, 1U"),
    "mutant_length": ("&data, 1U", "&data, 2U"),
    "mutant_fifo_value": ("0x005bU", "0x005aU"),
    "mutant_return_bit": ("data >> 3", "data >> 2"),
}


def digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo-root", type=Path, required=True)
    parser.add_argument(
        "--candidate-source",
        default="kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_051_aw8693x_rtp_get_fifo_afi.c",
    )
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()

    repo = args.repo_root.resolve(strict=True)
    source = (repo / args.candidate_source).resolve(strict=True)
    source.relative_to(repo)
    harness_dir = Path(__file__).resolve().parent
    harness_relative = harness_dir.relative_to(repo).as_posix()
    original = source.read_text(encoding="utf-8")
    variants = {"baseline": original}
    for name, (old, new) in MUTATIONS.items():
        if old not in original:
            raise ValueError(f"mutation anchor missing: {name}")
        variants[name] = original.replace(old, new, 1)

    image_id = subprocess.run(
        ["docker", "image", "inspect", "--format", "{{.Id}}", IMAGE],
        check=True,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
    ).stdout.strip()
    output_path = args.output or harness_dir / "harness_result.json"

    with tempfile.TemporaryDirectory(prefix="aw8693x-fifo-afi-") as temporary:
        work = Path(temporary).resolve()
        for name, text in variants.items():
            (work / f"{name}.c").write_text(text, encoding="utf-8")

        cases = " ".join(variants)
        script = "\n".join(
            [
                "set -eu",
                f"cd /repo/{harness_relative}",
                f"for case in {cases}; do",
                "  gcc -std=gnu11 -O1 -g -Wall -Wextra -Werror "
                "-fsanitize=address,undefined -fno-omit-frame-pointer "
                "-I include -DCANDIDATE_SOURCE=/work/$case.c "
                "aw8693x_rtp_get_fifo_afi_harness.c -o /work/$case",
                "done",
                f"for case in {cases}; do",
                "  set +e",
                "  output=$(ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 "
                "UBSAN_OPTIONS=halt_on_error=1 /work/$case 2>&1)",
                "  status=$?",
                "  set -e",
                "  printf 'CASE_RESULT:%s:%s\\n%s\\nCASE_END\\n' "
                '"$case" "$status" "$output"',
                "done",
            ]
        )
        process = subprocess.run(
            [
                "docker",
                "run",
                "--rm",
                "--mount",
                f"type=bind,source={repo},target=/repo,readonly",
                "--mount",
                f"type=bind,source={work},target=/work",
                IMAGE,
                "bash",
                "-lc",
                script,
            ],
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
        )

    parsed = {
        match.group(1): {
            "returncode": int(match.group(2)),
            "output": match.group(3),
        }
        for match in re.finditer(
            r"CASE_RESULT:([a-z0-9_]+):(-?[0-9]+)\n(.*?)\nCASE_END",
            process.stdout,
            re.DOTALL,
        )
    }
    results = {}
    for name in variants:
        found = parsed.get(name)
        passed = bool(
            process.returncode == 0
            and found
            and (
                found["returncode"] == 0
                and found["output"].startswith("PASS:")
                if name == "baseline"
                else found["returncode"] != 0 and FAILURE in found["output"]
            )
        )
        results[name] = {
            "passed": passed,
            "observed_returncode": found["returncode"] if found else None,
            "output": found["output"] if found else "case output missing",
        }

    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "passed": all(item["passed"] for item in results.values()),
        "scope": "host-only wrapper contract; no kernel or physical device execution",
        "candidate_source": source.relative_to(repo).as_posix(),
        "candidate_source_sha256": digest(source.read_bytes()),
        "harness_source_sha256": digest(
            (harness_dir / "aw8693x_rtp_get_fifo_afi_harness.c").read_bytes()
        ),
        "harness_runner_sha256": digest(Path(__file__).read_bytes()),
        "docker_image": IMAGE,
        "docker_image_id": image_id,
        "sanitizers": ["AddressSanitizer", "UndefinedBehaviorSanitizer"],
        "cases": results,
        "docker_output_tail": process.stdout[-4000:],
    }
    output_path = output_path.resolve()
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"passed": payload["passed"], "output": str(output_path)}))
    return 0 if payload["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())