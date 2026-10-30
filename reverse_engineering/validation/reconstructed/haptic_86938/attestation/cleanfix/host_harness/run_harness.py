#!/usr/bin/env python3
"""Run a bounded sanitizer harness and seeded mutants in the pinned Docker image."""

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
    "mutant_missing_first_clear",
    "mutant_missing_first_sentinel",
    "mutant_wrong_first_link_step",
)


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def run(args: list[str], *, check: bool = True) -> subprocess.CompletedProcess[str]:
    return subprocess.run(args, text=True, stdout=subprocess.PIPE,
                          stderr=subprocess.STDOUT, check=check)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo-root", type=Path, required=True)
    parser.add_argument(
        "--candidate-source",
        default="kernel_development/drivers/reconstructed/haptic_86938/"
                "haptic_86938_fn_036_richtap_clean_buf.c",
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
        "mutant_missing_first_clear": source_text.replace(
            "\tmemset(puVar1->data, 0, 1000);\n", "", 1
        ),
        "mutant_missing_first_sentinel": source_text.replace(
            "\tpuVar1->state = 0xff;\n", "", 1
        ),
        "mutant_wrong_first_link_step": source_text.replace(
            "\tpuVar1 = puVar2->next;\n", "\tpuVar1 = puVar2;\n", 1
        ),
    }
    if any(mutations[name] == source_text for name in CASES[1:]):
        raise ValueError("a seeded mutation did not change the candidate source")

    image_id_result = run(["docker", "image", "inspect", "--format", "{{.Id}}", IMAGE])
    image_id = image_id_result.stdout.strip()
    output_path = (args.output or harness_dir / "harness_result.json").resolve()

    case_results: dict[str, dict[str, Any]] = {}
    with tempfile.TemporaryDirectory(prefix="haptic-cleanbuf-") as temporary:
        build_dir = Path(temporary).resolve()
        for name, text in mutations.items():
            build_dir.joinpath(f"{name}.c").write_text(text, encoding="utf-8")

        repo_mount = f"type=bind,source={repo},target=/repo,readonly"
        build_mount = f"type=bind,source={build_dir},target=/work"
        container_script = "\n".join(
            [
                "set -eu",
                f"cd /repo/{harness_rel}",
                "for case in " + " ".join(CASES) + "; do",
                "  gcc -std=gnu11 -O1 -g -Wall -Wextra -Werror \\",
                "      -fsanitize=address,undefined -fno-omit-frame-pointer \\",
                "      -I include -DCANDIDATE_SOURCE=/work/${case}.c \\",
                "      clean_buf_harness.c -o /work/${case}",
                "done",
                "gcc --version | head -n 1",
                "for case in " + " ".join(CASES) + "; do",
                "  set +e",
                "  output=$(ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 \\",
                "           UBSAN_OPTIONS=halt_on_error=1 /work/${case} 2>&1)",
                "  status=$?",
                "  set -e",
                "  printf 'CASE_RESULT:%s:%s\\n%s\\nCASE_END\\n' \\",
                "         \"$case\" \"$status\" \"$output\"",
                "done",
            ]
        )
        docker_result = subprocess.run(
            [
                "docker", "run", "--rm", "--mount", repo_mount,
                "--mount", build_mount, IMAGE, "bash", "-lc", container_script,
            ],
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
        )
        output_text = docker_result.stdout
        parsed: dict[str, dict[str, Any]] = {}
        for match in re.finditer(
            r"CASE_RESULT:([a-z0-9_]+):(-?\d+)\n(.*?)\nCASE_END",
            output_text,
            re.DOTALL,
        ):
            parsed[match.group(1)] = {
                "returncode": int(match.group(2)),
                "output": match.group(3),
            }

        for name in CASES:
            observed = parsed.get(name)
            if name == "baseline":
                passed = bool(
                    docker_result.returncode == 0
                    and observed
                    and observed["returncode"] == 0
                    and observed["output"].startswith("PASS:")
                )
                expectation = "pass"
            else:
                passed = bool(
                    docker_result.returncode == 0
                    and observed
                    and observed["returncode"] != 0
                )
                expectation = "rejected"
            case_results[name] = {
                "expected": expectation,
                "observed_returncode": observed["returncode"] if observed else None,
                "passed": passed,
                "output": observed["output"] if observed else "case output missing",
            }

    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "passed": all(result["passed"] for result in case_results.values()),
        "scope": "host-only bounded memory behavior; no kernel or hardware execution",
        "candidate_source": source_path.relative_to(repo).as_posix(),
        "candidate_source_sha256": sha256(source_path.read_bytes()),
        "harness_source_sha256": sha256(Path(__file__).with_name("clean_buf_harness.c").read_bytes()),
        "stock_root_pointer_offset": "0x610",
        "node_count_tested": 16,
        "node_stride_bytes": 1024,
        "buffer_bytes_per_node": 1000,
        "docker_image": IMAGE,
        "docker_image_id": image_id,
        "sanitizers": ["AddressSanitizer", "UndefinedBehaviorSanitizer"],
        "cases": case_results,
        "docker_output_tail": output_text[-4000:],
    }
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"passed": payload["passed"], "output": str(output_path)}, sort_keys=True))
    return 0 if payload["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
