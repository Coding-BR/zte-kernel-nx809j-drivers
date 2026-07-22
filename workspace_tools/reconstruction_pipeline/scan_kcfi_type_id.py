#!/usr/bin/env python3
"""Find a KCFI type identifier across a recursive AArch64 ELF corpus."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
from pathlib import Path

from extract_kcfi import Elf64, SHN_LORESERVE, SHN_UNDEF, STT_FUNC


def normalize_type_id(value: str) -> str:
	return f"0x{int(value, 0):08x}"


def scan_elf(path: Path, target: str) -> tuple[list[dict[str, object]], int]:
	elf = Elf64(path)
	functions = [
		symbol for symbol in elf.symbols
		if symbol.symbol_type == STT_FUNC
		and symbol.section_index != SHN_UNDEF
		and symbol.section_index < SHN_LORESERVE
	]
	matches: list[dict[str, object]] = []
	checked = 0
	for symbol in functions:
		if elf.kcfi_exclusion_reason(symbol, functions):
			continue
		record = elf.kcfi_record(symbol)
		checked += 1
		if record["type_id"] == target:
			matches.append(record)
	return matches, checked


def parse_args() -> argparse.Namespace:
	parser = argparse.ArgumentParser(description=__doc__)
	parser.add_argument("root", type=Path)
	parser.add_argument("type_id")
	parser.add_argument("--glob", default="*.ko")
	parser.add_argument("--output", type=Path)
	return parser.parse_args()


def main() -> int:
	args = parse_args()
	target = normalize_type_id(args.type_id)
	paths = sorted(path for path in args.root.rglob(args.glob) if path.is_file())
	matches: list[dict[str, object]] = []
	errors: list[dict[str, str]] = []
	checked_functions = 0
	for path in paths:
		try:
			file_matches, checked = scan_elf(path, target)
		except (OSError, ValueError) as exc:
			errors.append({"path": str(path), "error": str(exc)})
			continue
		checked_functions += checked
		if not file_matches:
			continue
		matches.append({
			"path": str(path),
			"sha256": hashlib.sha256(path.read_bytes()).hexdigest(),
			"functions": file_matches,
		})
	payload = {
		"schema_version": "1.0",
		"generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
		"root": str(args.root.resolve()),
		"glob": args.glob,
		"target_type_id": target,
		"files_scanned": len(paths),
		"functions_checked": checked_functions,
		"matching_files": len(matches),
		"matching_functions": sum(len(item["functions"]) for item in matches),
		"matches": matches,
		"errors": errors,
	}
	rendered = json.dumps(payload, indent=2, sort_keys=True) + "\n"
	if args.output:
		args.output.parent.mkdir(parents=True, exist_ok=True)
		args.output.write_text(rendered, encoding="utf-8")
	else:
		print(rendered, end="")
	print(json.dumps({
		"files_scanned": len(paths),
		"functions_checked": checked_functions,
		"matching_functions": payload["matching_functions"],
		"errors": len(errors),
	}))
	return 0


if __name__ == "__main__":
	raise SystemExit(main())
