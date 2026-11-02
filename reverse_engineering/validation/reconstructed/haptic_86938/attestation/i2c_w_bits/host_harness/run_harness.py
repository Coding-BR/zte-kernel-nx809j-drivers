#!/usr/bin/env python3
"""Run the i2c_w_bits transaction contract and seeded mutants."""

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
EXPECTED_FAILURES = {
    "mutant_wrong_register": "FAIL: first I2C message register mismatch",
    "mutant_wrong_mask": "FAIL: masked byte mismatch",
    "mutant_missing_write": "FAIL: expected one byte write to the same register",
    "mutant_short_read_accepted": "FAIL: short read must return -6 and must not write",
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
            "haptic_86938_fn_039_i2c_w_bits.c"
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

    mutations = {
        "baseline": source_text,
        "mutant_wrong_register": source_text.replace(
            "reg_buffer[0] = reg;", "reg_buffer[0] = reg ^ 1;", 1
        ),
        "mutant_wrong_mask": source_text.replace(
            "data[0] = (data[0] & mask) | (value & ~mask);",
            "data[0] = (data[0] & mask) | (value & mask);",
            1,
        ),
        "mutant_missing_write": source_text.replace(
            "result = i2c_w_bytes(haptic, reg, data, 1);", "result = 0;", 1
        ),
        "mutant_short_read_accepted": source_text.replace(
            "if (result != 2) {", "if (result < 0) {", 1
        ),
    }
    if any(mutations[name] == source_text for name in EXPECTED_FAILURES):
        raise ValueError("a seeded mutation did not change the candidate source")

    image_result = subprocess.run(
        ["docker", "image", "inspect", "--format", "{{.Id}}", IMAGE],
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        check=True,
    )
    output_path = (args.output or harness_dir / "harness_result.json").resolve()
    case_results: dict[str, dict[str, Any]] = {}

    with tempfile.TemporaryDirectory(prefix="i2c-w-bits-") as temporary:
        build_dir = Path(temporary).resolve()
        for name, text in mutations.items():
            (build_dir / f"{name}.c").write_text(text, encoding="utf-8")

        repo_mount = f"type=bind,source={repo},target=/repo,readonly"
        build_mount = f"type=bind,source={build_dir},target=/work"
        container_script = "\n".join([
            "set -eu",
            f"cd /repo/{harness_rel}",
            "for case in baseline mutant_wrong_register mutant_wrong_mask mutant_missing_write mutant_short_read_accepted; do",
            "  gcc -std=gnu11 -O1 -g -Wall -Wextra -Werror \\",
            "      -fsanitize=address,undefined -fno-omit-frame-pointer \\",
            "      -I include -DCANDIDATE_SOURCE=/work/${case}.c \\",
            "      i2c_w_bits_harness.c -o /work/${case}",
            "done",
            "gcc --version | head -n 1",
            "for case in baseline mutant_wrong_register mutant_wrong_mask mutant_missing_write mutant_short_read_accepted; do",
            "  set +e",
            "  output=$(ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 \\",
            "           UBSAN_OPTIONS=halt_on_error=1 /work/${case} 2>&1)",
            "  status=$?",
            "  set -e",
            "  printf 'CASE_RESULT:%s:%s\\n%s\\nCASE_END\\n' \"$case\" \"$status\" \"$output\"",
            "done",
        ])
        docker_result = subprocess.run(
            [
                "docker", "run", "--rm", "--mount", repo_mount,
                "--mount", build_mount, IMAGE, "bash", "-lc", container_script,
            ],
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
        )
        parsed: dict[str, dict[str, Any]] = {}
        for match in re.finditer(
            r"CASE_RESULT:([a-z0-9_]+):(-?\d+)\n(.*?)\nCASE_END",
            docker_result.stdout,
            re.DOTALL,
        ):
            parsed[match.group(1)] = {
                "returncode": int(match.group(2)),
                "output": match.group(3),
            }

        for name in ("baseline", *EXPECTED_FAILURES.keys()):
            observed = parsed.get(name)
            expected_failure = EXPECTED_FAILURES.get(name)
            if name == "baseline":
                passed = bool(
                    docker_result.returncode == 0
                    and observed
                    and observed["returncode"] == 0
                    and observed["output"].startswith("PASS:")
                )
            else:
                passed = bool(
                    docker_result.returncode == 0
                    and observed
                    and observed["returncode"] != 0
                    and expected_failure in observed["output"]
                )
            case_results[name] = {
                "expected": "pass" if name == "baseline" else "reject with exact contract diagnostic",
                "expected_failure": expected_failure,
                "observed_returncode": observed["returncode"] if observed else None,
                "failure_diagnostic_matched": bool(
                    expected_failure and observed and expected_failure in observed["output"]
                ),
                "passed": passed,
                "output": observed["output"] if observed else "case output missing",
            }

    harness_source = harness_dir / "i2c_w_bits_harness.c"
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "passed": all(item["passed"] for item in case_results.values()),
        "scope": "host-only I2C read-modify-write contract; no kernel or physical device execution",
        "candidate_source": source_path.relative_to(repo).as_posix(),
        "candidate_source_sha256": sha256(source_path.read_bytes()),
        "harness_source_sha256": sha256(harness_source.read_bytes()),
        "harness_runner_sha256": sha256(Path(__file__).read_bytes()),
        "kcfi_signature": "int (struct aw_haptic *, u8, unsigned int, u8)",
        "docker_image": IMAGE,
        "docker_image_id": image_result.stdout.strip(),
        "sanitizers": ["AddressSanitizer", "UndefinedBehaviorSanitizer"],
        "cases": case_results,
        "docker_output_tail": docker_result.stdout[-4000:],
    }
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"passed": payload["passed"], "output": str(output_path)}, sort_keys=True))
    return 0 if payload["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
