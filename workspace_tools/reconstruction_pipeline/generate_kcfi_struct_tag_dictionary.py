#!/usr/bin/env python3
"""Generate a deterministic KCFI oracle for a lost nominal struct tag."""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path


STRUCT_RE = re.compile(r"\bstruct\s+([A-Za-z_][A-Za-z0-9_]*)")

C_KEYWORDS = {
	"_Alignas", "_Alignof", "_Atomic", "_Bool", "_Complex", "_Generic",
	"_Imaginary", "_Noreturn", "_Static_assert", "_Thread_local",
	"auto", "break", "case", "char", "const", "continue", "default",
	"do", "double", "else", "enum", "extern", "float", "for", "goto",
	"if", "inline", "int", "long", "register", "restrict", "return",
	"short", "signed", "sizeof", "static", "struct", "switch", "typedef",
	"union", "unsigned", "void", "volatile", "while",
}

PREFIXES = (
	"",
	"syna",
	"synaptics",
	"syna_tcm",
	"syna_hw",
	"syna_spi",
	"syna_pal",
	"tcm",
	"touchcomm",
)

ATOMS = (
	"attn",
	"attention",
	"irq",
	"interrupt",
	"bus",
	"io",
	"spi",
	"interface",
	"hardware",
	"device",
	"platform",
	"transport",
	"driver",
	"context",
	"gpio",
	"control",
	"controller",
	"ops",
	"operations",
	"data",
	"handle",
	"handler",
	"info",
	"config",
	"settings",
	"state",
	"resource",
	"resources",
)

TRIPLE_LEADERS = ("hw", "spi", "tcm", "irq", "attn", "bus")
TRIPLE_MIDDLES = (
	"attn",
	"irq",
	"interrupt",
	"bus",
	"io",
	"interface",
	"device",
	"platform",
	"transport",
	"gpio",
	"control",
)
TRIPLE_SUFFIXES = (
	"data",
	"info",
	"context",
	"ops",
	"state",
	"config",
	"device",
	"interface",
)

SEEDS = (
	"syna_hw_interface",
	"syna_hw_interface_data",
	"syna_hw_attn_data",
	"syna_hw_bus_data",
	"syna_hw_irq_data",
	"syna_hw_interrupt_data",
	"syna_hw_reset_data",
	"syna_hw_power_data",
	"syna_tcm_hw_interface",
	"syna_tcm_hw_attn_data",
	"syna_spi_hw_interface",
	"syna_pal_hw_interface",
	"tcm_hw_interface",
	"tcm_hw_attn_data",
)


def prefixed(prefix: str, stem: str) -> str:
	return f"{prefix}_{stem}" if prefix else stem


def generated_tags() -> set[str]:
	tags = set(SEEDS)
	for prefix in PREFIXES:
		for first in ATOMS:
			tags.add(prefixed(prefix, first))
			for second in ATOMS:
				tags.add(prefixed(prefix, f"{first}_{second}"))
		for leader in TRIPLE_LEADERS:
			for middle in TRIPLE_MIDDLES:
				for suffix in TRIPLE_SUFFIXES:
					tags.add(prefixed(prefix, f"{leader}_{middle}_{suffix}"))
	return tags


def source_tags(roots: list[Path]) -> set[str]:
	tags: set[str] = set()
	for root in roots:
		for path in root.rglob("*"):
			if not path.is_file() or path.suffix not in {".c", ".h"}:
				continue
			try:
				text = path.read_text(encoding="utf-8", errors="ignore")
			except OSError:
				continue
			tags.update(STRUCT_RE.findall(text))
	return tags


def parse_args() -> argparse.Namespace:
	parser = argparse.ArgumentParser(description=__doc__)
	parser.add_argument("--symbol", required=True)
	parser.add_argument("--target-kcfi", required=True)
	parser.add_argument("--output", type=Path, required=True)
	parser.add_argument("--source-root", type=Path, action="append", default=[])
	parser.add_argument("--return-type", default="int")
	parser.add_argument("--value-type", default="bool")
	parser.add_argument(
		"--type-kind",
		choices=("struct", "union", "anonymous-struct-typedef", "anonymous-union-typedef"),
		default="struct",
	)
	return parser.parse_args()


def type_templates(kind: str) -> tuple[str, str]:
	if kind == "struct":
		return "struct {tag};", "struct {tag} *"
	if kind == "union":
		return "union {tag};", "union {tag} *"
	if kind == "anonymous-struct-typedef":
		return "typedef struct {{ unsigned long opaque; }} {tag};", "{tag} *"
	if kind == "anonymous-union-typedef":
		return "typedef union {{ unsigned long opaque; }} {tag};", "{tag} *"
	raise ValueError(f"unsupported type kind: {kind}")


def main() -> int:
	args = parse_args()
	tags = generated_tags() | source_tags(args.source_root)
	tags = {
		tag for tag in tags
		if re.fullmatch(r"[A-Za-z_][A-Za-z0-9_]*", tag)
		and tag not in C_KEYWORDS
		and not tag.startswith("__")
	}
	ordered_tags = sorted(tags)
	declaration_template, parameter_template = type_templates(args.type_kind)
	payload = {
		"schema_version": "1.0",
		"symbol": args.symbol,
		"target_crc": "0x00000000",
		"target_kcfi": args.target_kcfi,
		"generation": {
			"mode": "lost_nominal_struct_tag_dictionary",
			"type_kind": args.type_kind,
			"source_roots": [str(root.resolve()) for root in args.source_root],
			"tag_count": len(ordered_tags),
		},
		"correlated_matrix": {
			"axes": {"tag": ordered_tags},
			"declaration_templates": [declaration_template],
			"return_types": [args.return_type],
			"parameters": [
				{"types": [parameter_template], "names": ["context"]},
				{"types": [args.value_type], "names": ["enable"]},
			],
		},
	}
	args.output.parent.mkdir(parents=True, exist_ok=True)
	args.output.write_text(
		json.dumps(payload, indent=2, sort_keys=True) + "\n",
		encoding="utf-8",
	)
	print(json.dumps({"output": str(args.output.resolve()), "tag_count": len(ordered_tags)}))
	return 0


if __name__ == "__main__":
	raise SystemExit(main())
