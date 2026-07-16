#!/usr/bin/env python3
"""Bind recovered stock functions to a reviewed candidate source file.

This tool only creates traceability. It does not claim behavioral equivalence.
Every mapping remains ``mapped_not_exact`` until the function-level gates pass.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[2]


class MappingError(RuntimeError):
    pass


FP_GOODIX_NETLINK_FUNCTIONS = {
    "sendnlmsg",
    "netlink_init",
    "nl_data_ready",
    "netlink_exit",
}

FP_GOODIX_PLATFORM_FUNCTIONS = {
    "zte_goodix_pinctrl_init",
    "zte_goodix_pinctrl_select",
    "gf_parse_dts",
    "gf_cleanup",
    "gf_power_on",
    "gf_power_off",
    "gf_hw_reset",
    "gf_irq_num",
}


def read_json(path: Path) -> dict[str, Any]:
    with path.open(encoding="utf-8") as handle:
        value = json.load(handle)
    if not isinstance(value, dict):
        raise MappingError(f"expected object: {path}")
    return value


def read_jsonl(path: Path) -> list[dict[str, Any]]:
    records = []
    with path.open(encoding="utf-8") as handle:
        for line_number, line in enumerate(handle, 1):
            if not line.strip():
                continue
            value = json.loads(line)
            if not isinstance(value, dict):
                raise MappingError(f"invalid JSONL record {path}:{line_number}")
            records.append(value)
    return records


def write_json(path: Path, value: dict[str, Any]) -> None:
    path.write_text(
        json.dumps(value, indent=2, ensure_ascii=True) + "\n",
        encoding="utf-8",
        newline="\n",
    )


def source_name(stock_name: str, driver: str) -> str:
    # These names are compiler-generated or exported under an assembly alias;
    # they are represented by the surrounding source function in this driver.
    inline_helpers = {"_inline_copy_to_user", "_inline_copy_from_user"}
    if stock_name in inline_helpers:
        return "gf_ioctl"
    if stock_name == "list_del":
        return "gf_probe_list_del"
    if stock_name == "init_module":
        return "zte_fp_init"
    if stock_name == "cleanup_module":
        return "zte_fp_exit"
    return stock_name


def source_file_name(stock_name: str, driver: str, mapped_source: Any) -> str:
    """Resolve the owning translation unit for composite reconstructed modules."""
    if driver == "fp_goodix":
        if stock_name in FP_GOODIX_NETLINK_FUNCTIONS:
            return "fp_goodix_netlink.c"
        if stock_name in FP_GOODIX_PLATFORM_FUNCTIONS:
            return "fp_goodix_platform.c"
        return "fp_goodix_core.c"
    if isinstance(mapped_source, str) and mapped_source:
        return mapped_source
    return f"{driver}.c"


def bind_driver(repo: Path, driver: str, check: bool) -> dict[str, Any]:
    driver_root = repo / "kernel_development" / "drivers" / "reconstructed" / driver
    map_path = driver_root / "reconstruction_map.json"
    mapping = read_json(map_path)

    ghidra_export = repo / mapping["ghidra_export"]
    functions_path = ghidra_export / "functions.jsonl"
    functions = read_jsonl(functions_path)
    source_texts: dict[str, str] = {}

    def load_source(source_rel: str) -> str:
        """Load a mapped source file while keeping it inside the driver tree."""
        normalized = Path(source_rel)
        if normalized.is_absolute() or ".." in normalized.parts:
            raise MappingError(f"source file escapes driver root: {source_rel}")
        source_path = (driver_root / normalized).resolve()
        try:
            source_path.relative_to(driver_root.resolve())
        except ValueError as error:
            raise MappingError(f"source file escapes driver root: {source_rel}") from error
        if not source_path.is_file():
            raise MappingError(f"candidate source is missing: {source_path}")
        canonical_rel = source_path.relative_to(driver_root.resolve()).as_posix()
        if canonical_rel not in source_texts:
            source_texts[canonical_rel] = source_path.read_text(encoding="utf-8")
        return source_texts[canonical_rel]

    updated = []
    missing = []
    for item in mapping.get("mappings", []):
        stock_function = item.get("stock_function")
        if not isinstance(stock_function, str) or not stock_function:
            raise MappingError("mapping has no stock_function")
        candidate = source_name(stock_function, driver)
        source_rel = source_file_name(
            stock_function, driver, item.get("source_file")
        )
        source_text = load_source(source_rel)
        if not re.search(rf"\b{re.escape(candidate)}\s*\(", source_text):
            missing.append(f"{stock_function} -> {candidate}")
            continue
        updated_item = dict(item)
        updated_item["source_file"] = source_rel
        updated_item["source_function"] = candidate
        updated_item["status"] = "mapped_not_exact"
        updated_item["mapping_note"] = (
            "Candidate source contains the function; function-level parity "
            "and hardware behavior remain unproven."
        )
        if stock_function in {"_inline_copy_to_user", "_inline_copy_from_user"}:
            updated_item["mapping_note"] = (
                "Compiler-generated copy helper is represented by the "
                "evidence-bearing gf_ioctl source body; function-level parity "
                "and hardware behavior remain unproven."
            )
        elif stock_function == "list_del":
            updated_item["mapping_note"] = (
                "Stock list_del symbol is emitted by gf_probe_list_del via an "
                "assembly alias; function-level parity remains unproven."
            )
        elif stock_function in {"init_module", "cleanup_module"}:
            updated_item["mapping_note"] = (
                "Kernel module entrypoint is emitted by the zte_fp_init/zte_fp_exit "
                "source function; function-level parity remains unproven."
            )
        updated.append(updated_item)

    stock_names = {item.get("name") for item in functions}
    mapped_names = {item.get("stock_function") for item in updated}
    missing_names = sorted(name for name in stock_names if name not in mapped_names)
    if missing or missing_names:
        details = missing + [f"missing from map: {name}" for name in missing_names]
        raise MappingError("source mapping is incomplete: " + "; ".join(details))

    result = dict(mapping)
    result["status"] = "PARTIAL_SOURCE_MAP"
    result["mappings"] = updated
    if not check:
        write_json(map_path, result)
    return {
        "driver": driver,
        "functions": len(updated),
        "source_files": sorted(source_texts),
        "status": "PASS" if check else "UPDATED",
        "map": map_path.relative_to(repo).as_posix(),
    }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--driver", required=True)
    parser.add_argument("--repo-root", type=Path, default=ROOT)
    parser.add_argument("--check", action="store_true")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    try:
        result = bind_driver(args.repo_root.resolve(), args.driver, args.check)
    except (OSError, KeyError, json.JSONDecodeError, MappingError) as error:
        print(f"FAIL: {error}", file=sys.stderr)
        return 1
    print(json.dumps(result, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
