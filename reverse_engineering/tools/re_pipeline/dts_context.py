from __future__ import annotations

import json
import re
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any

from .acquisition import ModuleArtifact
from .util import write_json, write_text


NODE_PATTERN = re.compile(
    r"^\s*(?:(?P<label>[A-Za-z_][A-Za-z0-9_]*)\s*:\s*)?"
    r"(?P<name>/|[A-Za-z0-9,._+@/-]+)\s*\{\s*$"
)
QUOTED_PATTERN = re.compile(r'"([^"\\]*(?:\\.[^"\\]*)*)"')


@dataclass
class DtsNode:
    name: str
    path: str
    start_line: int
    end_line: int = 0
    own_lines: list[str] = field(default_factory=list)


def parse_dts_nodes(dts_text: str) -> list[DtsNode]:
    lines = dts_text.splitlines()
    nodes: list[DtsNode] = []
    stack: list[DtsNode] = []
    for line_number, line in enumerate(lines, 1):
        match = NODE_PATTERN.match(line)
        if match:
            name = match.group("name")
            if name == "/":
                path = "/"
            elif stack and stack[-1].path != "/":
                path = f"{stack[-1].path}/{name}"
            else:
                path = f"/{name}"
            node = DtsNode(name=name, path=path, start_line=line_number, own_lines=[line])
            nodes.append(node)
            stack.append(node)
            continue

        if stack:
            stack[-1].own_lines.append(line)
        if line.strip().startswith("};") and stack:
            stack[-1].end_line = line_number
            stack.pop()

    for node in stack:
        node.end_line = len(lines)
    return nodes


def _modinfo_aliases(module: ModuleArtifact) -> tuple[set[str], set[str]]:
    compatibles: set[str] = set()
    bus_names: set[str] = set()
    for alias in module.modinfo.get("alias", []):
        if alias.startswith("of:N*T*C"):
            compatible = alias[len("of:N*T*C") :]
            if compatible.endswith("C*"):
                compatible = compatible[:-2]
            if compatible:
                compatibles.add(compatible)
        elif ":" in alias:
            _, _, name = alias.partition(":")
            if name:
                bus_names.add(name)
    return compatibles, bus_names


def _ghidra_compatible_strings(export_directory: Path) -> set[str]:
    output: set[str] = set()
    strings_file = export_directory / "strings.jsonl"
    if not strings_file.is_file():
        return output
    for line in strings_file.read_text(encoding="utf-8", errors="replace").splitlines():
        if not line.strip():
            continue
        value = str(json.loads(line).get("value", "")).strip()
        if (
            3 <= len(value) <= 128
            and "," in value
            and re.fullmatch(r"[A-Za-z0-9._+,-]+", value)
        ):
            output.add(value)
    return output


def _direct_compatibles(node: DtsNode) -> list[str]:
    values: list[str] = []
    for line in node.own_lines:
        if "compatible" not in line or "=" not in line:
            continue
        values.extend(QUOTED_PATTERN.findall(line))
    return values


def generate_module_dts_context(run_root: Path, module: ModuleArtifact) -> list[dict[str, Any]]:
    dts_path = run_root / "02_normalized" / "device_tree" / "live.dts"
    document_root = run_root / "04_documents" / module.name
    if not dts_path.is_file():
        write_json(document_root / "dts_context.json", [])
        write_text(document_root / "dts_context.dts", "/* Live DTS unavailable. */\n")
        return []

    dts_text = dts_path.read_text(encoding="utf-8", errors="replace")
    dts_lines = dts_text.splitlines()
    nodes = parse_dts_nodes(dts_text)
    aliases, bus_names = _modinfo_aliases(module)
    ghidra_compatibles = _ghidra_compatible_strings(
        run_root / "03_ghidra" / "exports" / module.name
    )
    stem = Path(module.name).stem.lower()
    stem_variants = {
        stem,
        stem.replace("_", "-"),
        stem.removeprefix("zte_").replace("_", "-"),
        stem.removeprefix("nubia_").replace("_", "-"),
    }
    stem_variants.discard("")

    candidates: list[dict[str, Any]] = []
    for node in nodes:
        direct_compatibles = _direct_compatibles(node)
        own_text = "\n".join(node.own_lines).lower()
        score = 0
        reasons: list[str] = []
        for compatible in sorted(aliases):
            if compatible in direct_compatibles:
                score += 100
                reasons.append(f"modinfo-compatible:{compatible}")
        for compatible in sorted(ghidra_compatibles):
            if compatible in direct_compatibles:
                score += 80
                reasons.append(f"ghidra-compatible:{compatible}")
        for bus_name in sorted(bus_names):
            if bus_name.lower() in node.name.lower() or bus_name.lower() in own_text:
                score += 50
                reasons.append(f"modinfo-bus:{bus_name}")
        if score == 0:
            for variant in sorted(stem_variants, key=len, reverse=True):
                if len(variant) >= 4 and (
                    variant in node.name.lower()
                    or variant in own_text.replace("_", "-")
                ):
                    score += 35
                    reasons.append(f"module-name:{variant}")
                    break
        if score < 35:
            continue
        end_line = node.end_line or node.start_line
        candidates.append(
            {
                "path": node.path,
                "start_line": node.start_line,
                "end_line": end_line,
                "score": score,
                "matched_by": reasons,
                "compatible": direct_compatibles,
                "source": "02_normalized/device_tree/live.dts",
                "text": "\n".join(dts_lines[node.start_line - 1 : end_line]),
            }
        )

    candidates.sort(key=lambda item: (-item["score"], item["path"]))
    write_json(document_root / "dts_context.json", candidates)
    snippets = [
        "/* Auto-extracted candidates from the live NX809J Device Tree.",
        " * Scores identify evidence strength; they do not prove driver binding.",
        " */",
        "",
    ]
    for candidate in candidates:
        snippets.extend(
            [
                f"/* path: {candidate['path']}",
                f" * score: {candidate['score']}",
                f" * matched_by: {', '.join(candidate['matched_by'])}",
                " */",
                candidate["text"],
                "",
            ]
        )
    if not candidates:
        snippets.append("/* No module-specific DTS node was identified automatically. */")
    write_text(document_root / "dts_context.dts", "\n".join(snippets).rstrip() + "\n")
    return candidates
