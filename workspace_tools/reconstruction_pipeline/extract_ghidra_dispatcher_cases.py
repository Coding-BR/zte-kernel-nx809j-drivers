#!/usr/bin/env python3
"""Create a hash-bound work manifest for a switch dispatcher recovered by Ghidra."""

from __future__ import annotations

import argparse
import hashlib
import json
import re
from pathlib import Path
from typing import Any


CASE_RE = re.compile(r"^\s*(?P<label>case\s+(?:0x[0-9a-fA-F]+|\d+)|default):")


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    digest.update(path.read_bytes().replace(b"\r\n", b"\n"))
    return digest.hexdigest()


def parse_cases(path: Path, expression: str) -> list[dict[str, Any]]:
    lines = path.read_text(encoding="utf-8").splitlines()
    switch_re = re.compile(r"\bswitch\s*\(\s*" + re.escape(expression) + r"\s*\)")
    switch_line = next(
        (index for index, line in enumerate(lines) if switch_re.search(line)),
        None,
    )
    if switch_line is None:
        raise ValueError(f"switch ({expression}) not found in {path}")

    labels: list[tuple[str, int]] = []
    depth = 0
    opened = False
    switch_end_line = None
    for index in range(switch_line, len(lines)):
        line = lines[index]
        depth += line.count("{") - line.count("}")
        opened = opened or "{" in line
        if opened and depth == 0:
            switch_end_line = index + 1
            break
        match = CASE_RE.match(line)
        if match:
            labels.append((match.group("label").removeprefix("case "), index + 1))
    if not labels:
        raise ValueError(f"no case labels found for switch ({expression})")

    result = []
    for index, (label, start_line) in enumerate(labels):
        end_line = (
            labels[index + 1][1] - 1
            if index + 1 < len(labels)
            else (switch_end_line or start_line) - 1
        )
        result.append({"label": label, "source_start_line": start_line, "source_end_line": end_line})
    return result


def build_manifest(decompiled: Path, mapping: Path, expression: str) -> dict[str, Any]:
    declared = json.loads(mapping.read_text(encoding="utf-8"))
    items = declared.get("cases")
    if not isinstance(items, list):
        raise ValueError(f"{mapping}: cases must be an array")
    observed = parse_cases(decompiled, expression)
    observed_by_label = {item["label"]: item for item in observed}
    declared_by_label = {str(item.get("label")): item for item in items if isinstance(item, dict)}
    if len(declared_by_label) != len(items):
        raise ValueError(f"{mapping}: case labels must be unique")
    if set(observed_by_label) != set(declared_by_label):
        raise ValueError(
            "case-map mismatch: observed={} declared={}".format(
                sorted(observed_by_label), sorted(declared_by_label)
            )
        )

    records = []
    for observed_case in observed:
        declared_case = declared_by_label[observed_case["label"]]
        records.append({**declared_case, **observed_case, "status": "NOT_STARTED"})
    return {
        "schema_version": "1.0",
        "kind": "ghidra_dispatcher_decomposition",
        "stock_decompiled": {"path": str(decompiled), "sha256": sha256_file(decompiled)},
        "case_map": {"path": str(mapping), "sha256": sha256_file(mapping)},
        "switch_expression": expression,
        "case_count": len(records),
        "promotion_rule": (
            "Each route is only a planning unit. It must pass isolated Joern, stock/candidate "
            "assembly and P-Code comparison, two-cycle Docker build, and a direct host harness "
            "before it can contribute to the parent dispatcher."
        ),
        "cases": records,
    }


def render_markdown(manifest: dict[str, Any]) -> str:
    lines = [
        "# Ghidra Dispatcher Decomposition",
        "",
        f"- Stock decompile SHA-256: `{manifest['stock_decompiled']['sha256']}`",
        f"- Case map SHA-256: `{manifest['case_map']['sha256']}`",
        f"- Switch expression: `{manifest['switch_expression']}`",
        f"- Routes: `{manifest['case_count']}`",
        "- Promotion: each route is evidence navigation only until every listed offline gate passes.",
        "",
        "| Opcode | Work item | Recovered behavior | Source span | Required harness |",
        "|---|---|---|---|---|",
    ]
    for item in manifest["cases"]:
        lines.append(
            "| `{}` | `{}` | {} | `{}`-`{}` | {} |".format(
                item["label"], item["id"], item["behavior"],
                item["source_start_line"], item["source_end_line"], item["harness"],
            )
        )
    lines.extend(["", "## Mandatory Gates", ""])
    lines.append(manifest["promotion_rule"])
    return "\n".join(lines) + "\n"


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--decompiled", type=Path, required=True)
    parser.add_argument("--case-map", type=Path, required=True)
    parser.add_argument("--switch-expression", required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--markdown", type=Path, required=True)
    args = parser.parse_args()
    manifest = build_manifest(args.decompiled.resolve(), args.case_map.resolve(), args.switch_expression)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    args.markdown.parent.mkdir(parents=True, exist_ok=True)
    args.markdown.write_text(render_markdown(manifest), encoding="utf-8")
    print(json.dumps({"output": str(args.output.resolve()), "case_count": manifest["case_count"]}))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
