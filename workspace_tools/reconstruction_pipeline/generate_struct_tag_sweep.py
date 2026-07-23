#!/usr/bin/env python3
"""Generate a deterministic KCFI struct-tag sweep configuration.

This helper does not claim that a generated tag is correct. It only builds a
local hypothesis set for resolve_signature_oracle.py; the stock KCFI type ID
remains the acceptance oracle.
"""

from __future__ import annotations

import argparse
import itertools
import json
import re
from pathlib import Path


DEFAULT_PREFIXES = (
    "",
    "syna",
    "synaptics",
    "tcm",
    "syna_tcm",
    "syna_tcm2",
    "syna_spi",
    "synaptics_tcm2",
    "s3910v",
    "syna_s3910v",
    "touchcomm",
)

DEFAULT_TOKENS = (
    "hw",
    "bus",
    "spi",
    "tcm",
    "io",
    "interface",
    "data",
    "device",
    "dev",
    "context",
    "ctx",
    "handle",
    "transport",
    "platform",
    "comm",
    "ops",
    "tcm2",
    "attn",
    "irq",
    "gpio",
    "client",
    "private",
    "priv",
    "driver",
    "board",
)

LIKELY_ENDINGS = {
    "bus",
    "context",
    "ctx",
    "data",
    "dev",
    "device",
    "handle",
    "interface",
    "io",
    "ops",
    "attn",
    "irq",
    "gpio",
    "client",
    "private",
    "priv",
    "driver",
    "board",
}

EXPLICIT_TAGS = {
    "syna_hw_interface",
    "syna_hw_bus_data",
    "syna_hw_bus_io",
    "syna_hw_interface_data",
    "syna_bus_data",
    "syna_bus_io",
    "syna_bus_data_io",
    "syna_spi_data",
    "syna_spi_bus_data",
    "syna_tcm_bus_data",
    "syna_tcm_hw_interface",
    "syna_tcm_hw_bus_data",
    "syna_tcm2_hw_interface",
    "syna_hw_attn_data",
    "syna_hw_irq_data",
    "syna_irq_data",
    "syna_irq_context",
    "hw_interface",
    "hw_bus_data",
    "bus_data",
    "bus_io",
}


def generate_tags(max_words: int) -> list[str]:
    tags = set(EXPLICIT_TAGS)
    for size in range(1, max_words + 1):
        for words in itertools.permutations(DEFAULT_TOKENS, size):
            if words[-1] not in LIKELY_ENDINGS:
                continue
            core = "_".join(words)
            for prefix in DEFAULT_PREFIXES:
                tags.add(f"{prefix}_{core}" if prefix else core)
    return sorted(tags)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Generate a correlated KCFI struct-tag oracle matrix."
    )
    parser.add_argument("--output", required=True, type=Path)
    parser.add_argument("--symbol", required=True)
    parser.add_argument("--target-kcfi", required=True)
    parser.add_argument("--return-type", default="int")
    parser.add_argument(
        "--first-type-template",
        default="struct {tag} *",
        help="C type template for the first parameter",
    )
    parser.add_argument(
        "--second-type-template",
        "--second-type",
        dest="second_type_template",
        default="bool",
        help="C type template for the second parameter",
    )
    parser.add_argument("--max-words", type=int, default=3, choices=(1, 2, 3))
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    if (
        "{tag}" not in args.first_type_template
        and "{tag}" not in args.second_type_template
    ):
        raise SystemExit("at least one parameter type template must contain {tag}")
    tags = generate_tags(args.max_words)
    fixed_struct_tags = set(
        re.findall(r"\bstruct\s+([A-Za-z_][A-Za-z0-9_]*)", args.first_type_template)
    )
    if "enum {tag}" in args.second_type_template:
        tags = [tag for tag in tags if tag not in fixed_struct_tags]
    config = {
        "schema_version": "1.0",
        "symbol": args.symbol,
        "target_crc": "0x00000000",
        "target_kcfi": args.target_kcfi,
        "declarations": [
            f"struct {tag};" for tag in sorted(fixed_struct_tags)
        ],
        "correlated_matrix": {
            "axes": {"tag": tags},
            "declaration_templates": [
                "enum {tag} {{ {tag}_zero = 0, {tag}_one = 1 }};"
                if "enum {tag}" in args.second_type_template
                else "struct {tag};"
            ],
            "return_types": [args.return_type],
            "parameters": [
                {"names": ["context"], "types": [args.first_type_template]},
                {"names": ["enable"], "types": [args.second_type_template]},
            ],
        },
        "generation": {
            "generator": "workspace_tools/reconstruction_pipeline/generate_struct_tag_sweep.py",
            "max_words": args.max_words,
            "first_type_template": args.first_type_template,
            "second_type_template": args.second_type_template,
            "tag_count": len(tags),
            "offline_only": True,
        },
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(
        json.dumps(config, indent=2, sort_keys=True) + "\n",
        encoding="ascii",
        newline="\n",
    )
    print(json.dumps({"output": str(args.output), "tag_count": len(tags)}))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
