#!/usr/bin/env python3
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
FAILURE = "FAIL: signed qualification, I2C contract, return code, or printk mismatch"
MUTATIONS = {
    "mutant_register": ("100U, data", "101U, data"),
    "mutant_length": ("data, 1U", "data, 2U"),
    "mutant_signed_boundary": ("(s8)data[0] >= 0", "(s8)data[0] > 0"),
    "mutant_return": ("return -ERANGE;", "return -EINVAL;"),
    "mutant_log_level": ("\\0016[%s]", "\\0013[%s]"),
    "mutant_log_line": ("313,", "314,"),
    "mutant_log_function": ('"aw8693x_check_qualify"', '"aw8693x_check_qualify_bad"'),
}


def digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo-root", type=Path, required=True)
    parser.add_argument(
        "--candidate-source",
        default="kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_059_aw8693x_check_qualify.c",
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
    output_path = args.output or (harness_dir / "harness_result.json")

    with tempfile.TemporaryDirectory(prefix="aw8693x-check-qualify-") as temp_dir:
        work = Path(temp_dir).resolve()
        for name, source_text in variants.items():
            (work / f"{name}.c").write_text(source_text, encoding="utf-8")
        names = " ".join(variants)
        script = "\n".join(
            [
                "set -eu",
                f"cd /repo/{harness_relative}",
                f"for case in {names}; do gcc -std=gnu11 -O1 -g -Wall -Wextra -Werror -fsanitize=address,undefined -fno-omit-frame-pointer -I include -DCANDIDATE_SOURCE=/work/$case.c aw8693x_check_qualify_harness.c -o /work/$case; done",
                f"for case in {names}; do set +e; output=$(ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 UBSAN_OPTIONS=halt_on_error=1 /work/$case 2>&1); status=$?; set -e; printf 'CASE_RESULT:%s:%s\\n%s\\nCASE_END\\n' \"$case\" \"$status\" \"$output\"; done",
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
        match.group(1): {"returncode": int(match.group(2)), "output": match.group(3)}
        for match in re.finditer(
            r"CASE_RESULT:([a-z0-9_]+):(-?[0-9]+)\n(.*?)\nCASE_END",
            process.stdout,
            re.DOTALL,
        )
    }
    results: dict[str, dict[str, Any]] = {}
    for name in variants:
        case = parsed.get(name)
        passed = bool(
            process.returncode == 0
            and case
            and (
                case["returncode"] == 0 and case["output"].startswith("PASS:")
                if name == "baseline"
                else case["returncode"] != 0 and FAILURE in case["output"]
            )
        )
        results[name] = {
            "passed": passed,
            "observed_returncode": case["returncode"] if case else None,
            "output": case["output"] if case else "case output missing",
        }

    result = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "passed": all(item["passed"] for item in results.values()),
        "scope": "host-only I2C/sysfs qualification wrapper contract; no kernel or physical device execution",
        "candidate_source": source.relative_to(repo).as_posix(),
        "candidate_source_sha256": digest(source.read_bytes()),
        "harness_source_sha256": digest((harness_dir / "aw8693x_check_qualify_harness.c").read_bytes()),
        "harness_runner_sha256": digest(Path(__file__).read_bytes()),
        "docker_image": IMAGE,
        "docker_image_id": image_id,
        "sanitizers": ["AddressSanitizer", "UndefinedBehaviorSanitizer"],
        "cases": results,
        "docker_output_tail": process.stdout[-4000:],
    }
    output_path = output_path.resolve()
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"passed": result["passed"], "output": str(output_path)}, sort_keys=True))
    return 0 if result["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
