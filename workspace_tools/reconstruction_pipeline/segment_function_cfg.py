#!/usr/bin/env python3
"""Segment AArch64 disassembly into basic blocks and call-boundary regions."""

from __future__ import annotations

import argparse
import datetime as dt
import difflib
import hashlib
import json
import re
import sys
from dataclasses import asdict, dataclass, field
from pathlib import Path
from typing import Any


FUNCTION_RE = re.compile(r"^([0-9a-f]+)\s+<([^>]+)>:$", re.IGNORECASE)
INSTRUCTION_RE = re.compile(
    r"^\s*([0-9a-f]+):\s+([0-9a-f]{8})\s+([a-z0-9.]+)(?:\s+(.*?))?\s*$",
    re.IGNORECASE,
)
RELOCATION_RE = re.compile(
    r"^\s*([0-9a-f]+):\s+(R_AARCH64_[A-Z0-9_]+)\s+(\S+)", re.IGNORECASE
)
HEX_TARGET_RE = re.compile(r"\b0x([0-9a-f]+)\b", re.IGNORECASE)

CONDITIONAL_BRANCHES = {"cbz", "cbnz", "tbz", "tbnz"}
UNCONDITIONAL_BRANCHES = {"b"}
INDIRECT_TERMINATORS = {"br"}
RETURN_TERMINATORS = {"ret", "eret", "retaa", "retab"}
TRAP_TERMINATORS = {"brk", "hlt", "udf"}
CALLS = {"bl", "blr"}


@dataclass
class Instruction:
    address: int
    offset: int
    opcode: str
    mnemonic: str
    operands: str
    relocations: list[str] = field(default_factory=list)


@dataclass(frozen=True)
class FunctionAssembly:
    name: str
    entry: int
    instructions: tuple[Instruction, ...]


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def parse_assembly(path: Path) -> FunctionAssembly:
    name: str | None = None
    entry: int | None = None
    instructions: list[Instruction] = []
    by_address: dict[int, Instruction] = {}
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        function_match = FUNCTION_RE.match(line.strip())
        if function_match and name is None:
            entry = int(function_match.group(1), 16)
            name = function_match.group(2)
            continue
        instruction_match = INSTRUCTION_RE.match(line)
        if instruction_match:
            if entry is None:
                continue
            address = int(instruction_match.group(1), 16)
            item = Instruction(
                address=address,
                offset=address - entry,
                opcode=instruction_match.group(2).lower(),
                mnemonic=instruction_match.group(3).lower(),
                operands=instruction_match.group(4) or "",
            )
            instructions.append(item)
            by_address[address] = item
            continue
        relocation_match = RELOCATION_RE.match(line)
        if relocation_match:
            address = int(relocation_match.group(1), 16)
            item = by_address.get(address)
            if item is not None:
                item.relocations.append(
                    f"{relocation_match.group(2).upper()} {relocation_match.group(3)}"
                )
    if name is None or entry is None or not instructions:
        raise ValueError(f"no function disassembly found: {path}")
    if any(
        current.address >= following.address
        for current, following in zip(instructions, instructions[1:])
    ):
        raise ValueError(f"instruction addresses are not strictly increasing: {path}")
    return FunctionAssembly(name=name, entry=entry, instructions=tuple(instructions))


def is_conditional_branch(mnemonic: str) -> bool:
    return mnemonic in CONDITIONAL_BRANCHES or mnemonic.startswith("b.")


def is_terminator(mnemonic: str) -> bool:
    return (
        is_conditional_branch(mnemonic)
        or mnemonic in UNCONDITIONAL_BRANCHES
        or mnemonic in INDIRECT_TERMINATORS
        or mnemonic in RETURN_TERMINATORS
        or mnemonic in TRAP_TERMINATORS
    )


def branch_target(instruction: Instruction) -> int | None:
    if not (
        is_conditional_branch(instruction.mnemonic)
        or instruction.mnemonic in UNCONDITIONAL_BRANCHES
    ):
        return None
    # llvm-objdump appends a symbolic expression such as <fn+0x10> after the
    # numeric destination. The embedded offset is not the branch destination.
    matches = HEX_TARGET_RE.findall(instruction.operands.split("<", 1)[0])
    return int(matches[-1], 16) if matches else None


def call_target(instruction: Instruction) -> str:
    if instruction.mnemonic == "blr":
        return f"indirect:{instruction.operands.strip()}"
    for relocation in instruction.relocations:
        if relocation.startswith("R_AARCH64_CALL26 "):
            return relocation.split(None, 1)[1]
    symbol = re.search(r"<([^>]+)>", instruction.operands)
    return symbol.group(1) if symbol else instruction.operands.strip()


def block_signature(block: dict[str, Any]) -> str:
    payload = {
        "mnemonics": [item["mnemonic"] for item in block["instructions"]],
        "relocations": [
            relocation
            for item in block["instructions"]
            for relocation in item["relocations"]
        ],
        "calls": block["calls"],
        "terminator": block["terminator"],
        "successor_count": len(block["successors"]),
    }
    return hashlib.sha256(
        json.dumps(payload, sort_keys=True, separators=(",", ":")).encode("utf-8")
    ).hexdigest()


def segment(function: FunctionAssembly) -> dict[str, Any]:
    instructions = function.instructions
    addresses = {item.address for item in instructions}
    leaders = {instructions[0].address}
    for index, instruction in enumerate(instructions):
        target = branch_target(instruction)
        if target in addresses:
            leaders.add(target)
        if is_terminator(instruction.mnemonic) and index + 1 < len(instructions):
            leaders.add(instructions[index + 1].address)

    leader_list = sorted(leaders)
    leader_indexes = {address: index for index, address in enumerate(leader_list)}
    address_to_instruction = {item.address: index for index, item in enumerate(instructions)}
    blocks: list[dict[str, Any]] = []
    for block_index, start in enumerate(leader_list):
        start_index = address_to_instruction[start]
        if block_index + 1 < len(leader_list):
            end_index = address_to_instruction[leader_list[block_index + 1]]
        else:
            end_index = len(instructions)
        items = instructions[start_index:end_index]
        last = items[-1]
        target = branch_target(last)
        successors: list[str] = []
        if is_conditional_branch(last.mnemonic):
            if target in leader_indexes:
                successors.append(f"B{leader_indexes[target]:03d}")
            if block_index + 1 < len(leader_list):
                successors.append(f"B{block_index + 1:03d}")
        elif last.mnemonic in UNCONDITIONAL_BRANCHES:
            if target in leader_indexes:
                successors.append(f"B{leader_indexes[target]:03d}")
        elif not (
            last.mnemonic in INDIRECT_TERMINATORS
            or last.mnemonic in RETURN_TERMINATORS
            or last.mnemonic in TRAP_TERMINATORS
        ) and block_index + 1 < len(leader_list):
            successors.append(f"B{block_index + 1:03d}")
        record: dict[str, Any] = {
            "id": f"B{block_index:03d}",
            "start_offset": start - function.entry,
            "end_offset": last.address - function.entry + 4,
            "instruction_count": len(items),
            "instructions": [asdict(item) for item in items],
            "calls": [
                call_target(item) for item in items if item.mnemonic in CALLS
            ],
            "terminator": last.mnemonic if is_terminator(last.mnemonic) else None,
            "successors": successors,
        }
        record["signature"] = block_signature(record)
        blocks.append(record)

    call_regions: list[dict[str, Any]] = []
    for block in blocks:
        region_start = 0
        block_instructions = block["instructions"]
        for index, item in enumerate(block_instructions):
            if item["mnemonic"] not in CALLS:
                continue
            region_items = block_instructions[region_start : index + 1]
            call_regions.append(
                {
                    "id": f"C{len(call_regions):03d}",
                    "block": block["id"],
                    "start_offset": region_items[0]["offset"],
                    "end_offset": region_items[-1]["offset"] + 4,
                    "instruction_count": len(region_items),
                    "boundary": "call",
                    "call": call_target(instructions[address_to_instruction[item["address"]]]),
                    "mnemonics": [entry["mnemonic"] for entry in region_items],
                }
            )
            region_start = index + 1
        if region_start < len(block_instructions):
            region_items = block_instructions[region_start:]
            call_regions.append(
                {
                    "id": f"C{len(call_regions):03d}",
                    "block": block["id"],
                    "start_offset": region_items[0]["offset"],
                    "end_offset": region_items[-1]["offset"] + 4,
                    "instruction_count": len(region_items),
                    "boundary": "block_end",
                    "call": None,
                    "mnemonics": [entry["mnemonic"] for entry in region_items],
                }
            )

    edges = sum(len(block["successors"]) for block in blocks)
    calls = [call_target(item) for item in instructions if item.mnemonic in CALLS]
    return {
        "function": function.name,
        "entry": function.entry,
        "instruction_count": len(instructions),
        "symbol_size": len(instructions) * 4,
        "basic_block_count": len(blocks),
        "edge_count": edges,
        "call_count": len(calls),
        "calls": calls,
        "blocks": blocks,
        "call_regions": call_regions,
    }


def sequence_changes(first: list[str], second: list[str]) -> dict[str, Any]:
    matcher = difflib.SequenceMatcher(a=first, b=second, autojunk=False)
    operations = [
        {
            "tag": tag,
            "stock": {"start": a0, "end": a1, "values": first[a0:a1]},
            "candidate": {"start": b0, "end": b1, "values": second[b0:b1]},
        }
        for tag, a0, a1, b0, b1 in matcher.get_opcodes()
        if tag != "equal"
    ]
    return {"ratio": matcher.ratio(), "changes": operations}


def compare(stock: dict[str, Any], candidate: dict[str, Any]) -> dict[str, Any]:
    stock_instructions = [
        item for block in stock["blocks"] for item in block["instructions"]
    ]
    candidate_instructions = [
        item for block in candidate["blocks"] for item in block["instructions"]
    ]
    block_diff = sequence_changes(
        [block["signature"] for block in stock["blocks"]],
        [block["signature"] for block in candidate["blocks"]],
    )
    for change in block_diff["changes"]:
        change["stock"].pop("values", None)
        change["candidate"].pop("values", None)
    return {
        "same_cfg_counts": {
            "basic_blocks": stock["basic_block_count"]
            == candidate["basic_block_count"],
            "edges": stock["edge_count"] == candidate["edge_count"],
            "calls": stock["call_count"] == candidate["call_count"],
        },
        "block_signature_ratio": block_diff["ratio"],
        "block_changes": block_diff["changes"],
        "mnemonics": sequence_changes(
            [item["mnemonic"] for item in stock_instructions],
            [item["mnemonic"] for item in candidate_instructions],
        ),
        "opcodes": sequence_changes(
            [item["opcode"] for item in stock_instructions],
            [item["opcode"] for item in candidate_instructions],
        ),
        "calls": sequence_changes(stock["calls"], candidate["calls"]),
    }


def markdown(document: dict[str, Any]) -> str:
    stock = document["stock"]
    candidate = document["candidate"]
    comparison = document["comparison"]
    lines = [
        "# gpio_keys_probe Basic-Block Audit",
        "",
        "> Static CFG segmentation narrows reconstruction differences; it does not prove semantic or runtime equivalence.",
        "",
        "## Summary",
        "",
        "| Metric | Stock | Candidate |",
        "|---|---:|---:|",
        f"| Instructions | {stock['instruction_count']} | {candidate['instruction_count']} |",
        f"| Symbol bytes | {stock['symbol_size']} | {candidate['symbol_size']} |",
        f"| Basic blocks | {stock['basic_block_count']} | {candidate['basic_block_count']} |",
        f"| CFG edges | {stock['edge_count']} | {candidate['edge_count']} |",
        f"| Calls | {stock['call_count']} | {candidate['call_count']} |",
        f"| Call regions | {len(stock['call_regions'])} | {len(candidate['call_regions'])} |",
        "",
        f"- Block-signature similarity: `{comparison['block_signature_ratio']:.6f}`",
        f"- Mnemonic similarity: `{comparison['mnemonics']['ratio']:.6f}`",
        f"- Raw opcode similarity: `{comparison['opcodes']['ratio']:.6f}`",
        f"- Ordered call-target similarity: `{comparison['calls']['ratio']:.6f}`",
        "",
        "## Changed Block Ranges",
        "",
        "| Kind | Stock blocks | Candidate blocks |",
        "|---|---|---|",
    ]
    for change in comparison["block_changes"]:
        stock_range = f"B{change['stock']['start']:03d}..B{change['stock']['end'] - 1:03d}"
        candidate_range = (
            f"B{change['candidate']['start']:03d}..B{change['candidate']['end'] - 1:03d}"
        )
        lines.append(f"| `{change['tag']}` | `{stock_range}` | `{candidate_range}` |")
    lines.extend(
        [
            "",
            "## Interpretation Rule",
            "",
            "Register-allocation differences alone are not source evidence. Prioritize changed regions where call targets, relocation order, branch shape or mnemonic sequence differ. Every source edit must explain one such region and must be rechecked against the complete function afterward.",
            "",
        ]
    )
    return "\n".join(lines)


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--stock", required=True, type=Path)
    parser.add_argument("--candidate", required=True, type=Path)
    parser.add_argument("--json", required=True, type=Path)
    parser.add_argument("--markdown", required=True, type=Path)
    return parser


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)
    try:
        stock_function = parse_assembly(args.stock)
        candidate_function = parse_assembly(args.candidate)
        if stock_function.name != candidate_function.name:
            raise ValueError(
                f"function mismatch: {stock_function.name} != {candidate_function.name}"
            )
        stock = segment(stock_function)
        candidate = segment(candidate_function)
        document = {
            "schema_version": "1.0",
            "generated_utc": dt.datetime.now(dt.timezone.utc)
            .isoformat()
            .replace("+00:00", "Z"),
            "mode": "aarch64_basic_blocks_calls_relocations",
            "sources": {
                "stock": {"path": str(args.stock), "sha256": sha256_file(args.stock)},
                "candidate": {
                    "path": str(args.candidate),
                    "sha256": sha256_file(args.candidate),
                },
            },
            "stock": stock,
            "candidate": candidate,
            "comparison": compare(stock, candidate),
        }
        args.json.parent.mkdir(parents=True, exist_ok=True)
        args.markdown.parent.mkdir(parents=True, exist_ok=True)
        args.json.write_text(
            json.dumps(document, indent=2, ensure_ascii=True) + "\n",
            encoding="utf-8",
        )
        args.markdown.write_text(markdown(document), encoding="utf-8")
        print(
            json.dumps(
                {
                    "stock_blocks": stock["basic_block_count"],
                    "candidate_blocks": candidate["basic_block_count"],
                    "stock_calls": stock["call_count"],
                    "candidate_calls": candidate["call_count"],
                    "block_ratio": document["comparison"]["block_signature_ratio"],
                    "mnemonic_ratio": document["comparison"]["mnemonics"]["ratio"],
                }
            )
        )
        return 0
    except (OSError, ValueError) as exc:
        print(f"error: {exc}", file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
