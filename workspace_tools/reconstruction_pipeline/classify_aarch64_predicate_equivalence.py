#!/usr/bin/env python3
"""Classify narrowly defined AArch64 predicate substitutions.

This tool never changes the result of the strict assembly comparator. It only
records whether every remaining opcode difference is a proven unsigned-boundary
identity with identical control-flow targets.
"""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import re
import sys
from pathlib import Path
from typing import Any


INSTRUCTION_RE = re.compile(
    r"^\s*(?P<address>[0-9a-f]+):\s+(?P<opcode>[0-9a-f]{8})\s+"
    r"(?P<mnemonic>[a-z0-9.]+)(?:\s+(?P<operands>.*?))?\s*$",
    re.IGNORECASE,
)
CMP_RE = re.compile(
    r"^(?P<register>[wx][0-9]+),\s*#0x(?P<immediate>[0-9a-f]+)$",
    re.IGNORECASE,
)


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def read_json(path: Path) -> dict[str, Any]:
    value = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(value, dict):
        raise ValueError(f"expected JSON object: {path}")
    return value


def read_instructions(path: Path) -> list[dict[str, str]]:
    instructions: list[dict[str, str]] = []
    for line in path.read_text(encoding="utf-8").splitlines():
        match = INSTRUCTION_RE.match(line)
        if not match:
            continue
        instructions.append(
            {
                key: value or ""
                for key, value in match.groupdict().items()
            }
        )
    return instructions


def parse_compare(instruction: dict[str, str]) -> tuple[str, int] | None:
    if instruction["mnemonic"].lower() != "cmp":
        return None
    match = CMP_RE.match(instruction["operands"])
    if not match:
        return None
    return match.group("register").lower(), int(match.group("immediate"), 16)


def unsigned_ge(value: int, limit: int) -> bool:
    return value >= limit


def unsigned_gt(value: int, limit: int) -> bool:
    return value > limit


def classify_pair(
    left_cmp: dict[str, str],
    left_branch: dict[str, str],
    right_cmp: dict[str, str],
    right_branch: dict[str, str],
) -> dict[str, Any] | None:
    left = parse_compare(left_cmp)
    right = parse_compare(right_cmp)
    if left is None or right is None or left[0] != right[0]:
        return None
    if left_branch["operands"] != right_branch["operands"]:
        return None

    candidates = [
        (left, left_branch["mnemonic"].lower(), right,
         right_branch["mnemonic"].lower(), "left_ge_right_gt"),
        (right, right_branch["mnemonic"].lower(), left,
         left_branch["mnemonic"].lower(), "right_ge_left_gt"),
    ]
    for ge_cmp, ge_branch, gt_cmp, gt_branch, orientation in candidates:
        if ge_branch != "b.hs" or gt_branch != "b.hi":
            continue
        register, ge_limit = ge_cmp
        _, gt_limit = gt_cmp
        if ge_limit == 0 or gt_limit + 1 != ge_limit:
            continue
        width = 32 if register.startswith("w") else 64
        maximum = (1 << width) - 1
        sample_values = sorted(
            {
                0,
                max(0, ge_limit - 2),
                ge_limit - 1,
                ge_limit,
                min(maximum, ge_limit + 1),
                maximum,
            }
        )
        samples = [
            {
                "value": value,
                "ge_result": unsigned_ge(value, ge_limit),
                "gt_result": unsigned_gt(value, gt_limit),
            }
            for value in sample_values
        ]
        if not all(item["ge_result"] == item["gt_result"] for item in samples):
            return None
        return {
            "kind": "unsigned_adjacent_boundary",
            "orientation": orientation,
            "register": register,
            "width_bits": width,
            "ge_limit": ge_limit,
            "gt_limit": gt_limit,
            "branch_target": left_branch["operands"],
            "identity": f"x >= {ge_limit} iff x > {gt_limit}",
            "boundary_samples": samples,
        }
    return None


def classify_instructions(
    stock: list[dict[str, str]], candidate: list[dict[str, str]]
) -> tuple[bool, list[dict[str, Any]], list[dict[str, Any]]]:
    if len(stock) != len(candidate):
        return False, [], [
            {
                "kind": "instruction_count",
                "stock": len(stock),
                "candidate": len(candidate),
            }
        ]

    substitutions: list[dict[str, Any]] = []
    unresolved: list[dict[str, Any]] = []
    index = 0
    while index < len(stock):
        if stock[index]["opcode"] == candidate[index]["opcode"]:
            index += 1
            continue
        if index + 1 < len(stock):
            classified = classify_pair(
                stock[index],
                stock[index + 1],
                candidate[index],
                candidate[index + 1],
            )
            if classified is not None:
                classified["instruction_indexes"] = [index, index + 1]
                classified["stock"] = [stock[index], stock[index + 1]]
                classified["candidate"] = [
                    candidate[index],
                    candidate[index + 1],
                ]
                substitutions.append(classified)
                index += 2
                continue
        unresolved.append(
            {
                "kind": "opcode",
                "instruction_index": index,
                "stock": stock[index],
                "candidate": candidate[index],
            }
        )
        index += 1
    return not unresolved, substitutions, unresolved


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Classify proven AArch64 predicate equivalences."
    )
    parser.add_argument("--comparison", required=True, type=Path)
    parser.add_argument("--function", required=True)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()

    comparison = read_json(args.comparison.resolve())
    results = comparison.get("results")
    if not isinstance(results, list):
        raise ValueError("comparison has no results array")
    matches = [
        item for item in results
        if isinstance(item, dict) and item.get("function") == args.function
    ]
    if len(matches) != 1:
        raise ValueError(f"expected one result for {args.function}")
    result = matches[0]
    stock_path = Path(result["stock"]["path"]).resolve()
    candidate_path = Path(result["candidate"]["path"]).resolve()
    equivalent, substitutions, unresolved = classify_instructions(
        read_instructions(stock_path), read_instructions(candidate_path)
    )
    checks = result.get("checks", {})
    structural_checks = {
        key: checks.get(key) is True
        for key in ("relocations", "section", "symbol_size")
    }
    passed = (
        result.get("passed") is False
        and checks.get("instructions") is False
        and all(structural_checks.values())
        and equivalent
        and bool(substitutions)
    )
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "function": args.function,
        "strict_comparison_passed": comparison.get("passed") is True,
        "strict_function_passed": result.get("passed") is True,
        "semantic_equivalence_passed": passed,
        "structural_checks": structural_checks,
        "stock_assembly": {
            "path": str(stock_path),
            "sha256": sha256_file(stock_path),
        },
        "candidate_assembly": {
            "path": str(candidate_path),
            "sha256": sha256_file(candidate_path),
        },
        "substitutions": substitutions,
        "unresolved_differences": unresolved,
        "scope": (
            "Instruction predicate semantics only. This does not establish "
            "binary identity, source identity, hardware behavior, or runtime safety."
        ),
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )
    print(json.dumps({"output": str(args.output), "passed": passed}))
    return 0 if passed else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, KeyError, json.JSONDecodeError) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(2)
