#!/usr/bin/env python3
"""Resolve lost C declarations with local GENDWARFKSYMS and KCFI hashes.

The input is a JSON list of candidate declarations. Every candidate is built
as an isolated object with the original symbol name, so parameter names,
typedefs, struct tags and return types are all covered by the CRC oracle.
Nothing in this tool accesses a device or the network.
"""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import itertools
import json
import re
import subprocess
from pathlib import Path
from typing import Any

from extract_kcfi import Elf64


SYMVER_RE = re.compile(r"^#SYMVER\s+(\S+)\s+(0x[0-9a-fA-F]{8})$", re.MULTILINE)


def sha256_file(path: Path) -> str:
	return hashlib.sha256(path.read_bytes()).hexdigest()


def normalize_hex(value: str) -> str:
	return f"0x{int(value, 0):08x}"


def write_text_if_changed(path: Path, text: str) -> None:
	if path.exists() and path.read_text(encoding="utf-8") == text:
		return
	path.write_text(text, encoding="ascii", newline="\n")


def render_source(symbol: str, declarations: list[str], candidate: dict[str, Any]) -> str:
	return_type = candidate["return_type"]
	parameters = candidate.get("parameters", [])
	parameter_text = ", ".join(
		f"{parameter['type']} {parameter['name']}" for parameter in parameters
	) or "void"
	uses_lines = [f"\t(void){parameter['name']};" for parameter in parameters]
	if candidate.get("touch_struct_members"):
		for parameter in parameters:
			parameter_type = parameter["type"].lstrip()
			if parameter_type.startswith("const "):
				parameter_type = parameter_type[6:]
			if not parameter_type.startswith("struct ") or not parameter_type.endswith("*"):
				continue
			name = parameter["name"]
			uses_lines.extend(
				f"\t(void){name}->{member};"
				for member in ("name", "set", "get", "show", "priv")
			)
	uses = "\n".join(uses_lines)
	if return_type == "void":
		return_statement = ""
	else:
		return_statement = f"\n\treturn ({return_type})0;"
	declaration_text = "\n".join(declarations)
	return (
		"// SPDX-License-Identifier: GPL-2.0-only\n"
		"#include <linux/module.h>\n"
		"#include <linux/types.h>\n\n"
		f"{declaration_text}\n\n"
		"__attribute__((__noinline__, __used__))\n"
		f"{return_type} {symbol}({parameter_text})\n"
		"{\n"
		f"{uses}{return_statement}\n"
		"}\n"
		f"EXPORT_SYMBOL_GPL({symbol});\n"
		"MODULE_LICENSE(\"GPL v2\");\n"
	)


def render_kcfi_batch(declarations: list[str], candidates: list[dict[str, Any]]) -> str:
	lines = [
		"// SPDX-License-Identifier: GPL-2.0-only",
		"#include <linux/types.h>",
		"",
		*declarations,
		"",
	]
	for index, candidate in enumerate(candidates):
		return_type = candidate["return_type"]
		parameters = candidate.get("parameters", [])
		parameter_text = ", ".join(
			f"{parameter['type']} {parameter['name']}" for parameter in parameters
		) or "void"
		lines.extend([
			"__attribute__((__noinline__, __used__))",
			f"{return_type} probe_{index:04d}({parameter_text})",
			"{",
		])
		lines.extend(f"\t(void){parameter['name']};" for parameter in parameters)
		if candidate.get("touch_struct_members"):
			for parameter in parameters:
				parameter_type = parameter["type"].lstrip()
				if parameter_type.startswith("const "):
					parameter_type = parameter_type[6:]
				if not parameter_type.startswith("struct ") or not parameter_type.endswith("*"):
					continue
				name = parameter["name"]
				lines.extend(
					f"\t(void){name}->{member};"
					for member in ("name", "set", "get", "show", "priv")
				)
		if return_type != "void":
			lines.append(f"\treturn ({return_type})0;")
		lines.extend(["}", ""])
	return "\n".join(lines)


def parse_symver(output: str, symbol: str) -> str:
	matches = [normalize_hex(crc) for name, crc in SYMVER_RE.findall(output) if name == symbol]
	if len(matches) != 1:
		raise ValueError(f"expected one SYMVER for {symbol}, got {len(matches)}")
	return matches[0]


def expand_candidates(config: dict[str, Any]) -> list[dict[str, Any]]:
	if config.get("candidates"):
		candidates = [dict(candidate) for candidate in config["candidates"]]
		if config.get("touch_struct_members"):
			for candidate in candidates:
				candidate.setdefault("touch_struct_members", True)
		return candidates
	correlated_matrix = config.get("correlated_matrix")
	if correlated_matrix:
		axes = correlated_matrix.get("axes", {})
		axis_names = list(axes)
		axis_values = [axes[name] for name in axis_names]
		return_type_templates = correlated_matrix.get("return_types", [])
		parameter_axes = correlated_matrix.get("parameters", [])
		if not axis_names or any(not values for values in axis_values):
			return []
		if not return_type_templates or any(
			not axis.get("types") or not axis.get("names")
			for axis in parameter_axes
		):
			return []
		candidates: list[dict[str, Any]] = []
		for values in itertools.product(*axis_values):
			bindings = dict(zip(axis_names, values))
			return_types = [
				template.format_map(bindings)
				for template in return_type_templates
			]
			parameter_variants = [
				[
					{
						"type": parameter_type.format_map(bindings),
						"name": parameter_name,
					}
					for parameter_type, parameter_name in itertools.product(
						axis.get("types", []), axis.get("names", [])
					)
				]
				for axis in parameter_axes
			]
			for return_type, parameters in itertools.product(
				return_types, itertools.product(*parameter_variants)
			):
				parameter_list = list(parameters)
				label = return_type + " (" + ", ".join(
					f"{parameter['type']} {parameter['name']}"
					for parameter in parameter_list
				) + ")"
				candidates.append({
					"label": label,
					"return_type": return_type,
					"parameters": parameter_list,
					"correlated_bindings": bindings,
					"touch_struct_members": bool(config.get("touch_struct_members")),
				})
		return candidates
	matrix = config.get("matrix")
	if not matrix:
		return []
	return_types = matrix.get("return_types", [])
	parameter_axes = matrix.get("parameters", [])
	parameter_variants = [
		[
			{"type": parameter_type, "name": parameter_name}
			for parameter_type, parameter_name in itertools.product(
				axis.get("types", []), axis.get("names", [])
			)
		]
		for axis in parameter_axes
	]
	if not return_types or any(not variants for variants in parameter_variants):
		return []
	candidates: list[dict[str, Any]] = []
	for return_type, parameters in itertools.product(
		return_types, itertools.product(*parameter_variants)
	):
		parameter_list = list(parameters)
		label = return_type + " (" + ", ".join(
			f"{parameter['type']} {parameter['name']}" for parameter in parameter_list
		) + ")"
		candidates.append({
			"label": label,
			"return_type": return_type,
			"parameters": parameter_list,
			"touch_struct_members": bool(config.get("touch_struct_members")),
		})
	return candidates


def expand_declarations(
	config: dict[str, Any], candidates: list[dict[str, Any]]
) -> list[str]:
	declarations = list(config.get("declarations", []))
	correlated_matrix = config.get("correlated_matrix", {})
	templates = correlated_matrix.get("declaration_templates", [])
	for candidate in candidates:
		bindings = candidate.get("correlated_bindings")
		if not bindings:
			continue
		declarations.extend(template.format_map(bindings) for template in templates)
	return list(dict.fromkeys(declarations))


def command_record(
	argv: list[str], *, input_text: str | None = None, output_limit: int | None = 6000
) -> dict[str, Any]:
	completed = subprocess.run(
		argv,
		input=input_text,
		capture_output=True,
		text=True,
		encoding="utf-8",
		errors="replace",
		timeout=900,
		check=False,
	)
	stdout = completed.stdout if output_limit is None else completed.stdout[-output_limit:]
	stderr = completed.stderr if output_limit is None else completed.stderr[-output_limit:]
	return {
		"argv": argv,
		"returncode": completed.returncode,
		"stdout": stdout,
		"stderr": stderr,
	}


def parse_args() -> argparse.Namespace:
	engineering_root = Path(__file__).resolve().parents[1]
	parser = argparse.ArgumentParser(description=__doc__)
	parser.add_argument("config", type=Path)
	parser.add_argument("--work-root", type=Path,
				default=engineering_root / "validation" / "signature_oracle")
	parser.add_argument("--output", type=Path)
	parser.add_argument("--image", default="nubia-sm8850-kernel-builder:latest")
	parser.add_argument("--source-volume", default="nubia_sm8850_kernel_src")
	parser.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains")
	parser.add_argument("--clang-revision", default="clang-r536225")
	parser.add_argument(
		"--kcfi-only",
		action="store_true",
		help="compile all candidates into one object and resolve only the KCFI type",
	)
	parser.add_argument(
		"--summary-only",
		action="store_true",
		help="omit per-candidate KCFI records and retain only count and matches",
	)
	return parser.parse_args()


def main() -> int:
	args = parse_args()
	config = json.loads(args.config.read_text(encoding="utf-8"))
	symbol = config["symbol"]
	target_crc = normalize_hex(config["target_crc"])
	target_kcfi = normalize_hex(config["target_kcfi"])
	candidates = expand_candidates(config)
	declarations = expand_declarations(config, candidates)
	if not candidates:
		raise ValueError("configuration has no candidates")

	work_dir = (args.work_root / symbol).resolve()
	work_dir.mkdir(parents=True, exist_ok=True)
	toolchain_bin = f"/work/toolchains/{args.clang_revision}/bin"
	container_work = f"/work/probe/{symbol}"
	if args.kcfi_only:
		source_path = work_dir / "kcfi_batch.c"
		write_text_if_changed(
			source_path,
			render_kcfi_batch(declarations, candidates),
		)
		write_text_if_changed(
			work_dir / "Makefile",
			"# The KCFI oracle compiles kcfi_batch.o directly.\n",
		)
		build_argv = [
			"docker", "run", "--rm",
			"-v", f"{args.source_volume}:/work/src:ro",
			"-v", f"{args.toolchain_volume}:/work/toolchains:ro",
			"-v", f"{work_dir.parent}:/work/probe",
			"-e", f"PATH={toolchain_bin}:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
			"-w", "/work/src/kernel/kernel_platform/common",
			args.image,
			"make", "ARCH=arm64", "LLVM=1", "LLVM_IAS=1",
			f"M={container_work}", "kcfi_batch.o",
		]
		build = command_record(build_argv)
		if build["returncode"] != 0:
			raise RuntimeError(f"KCFI batch build failed: {build['stderr']}")
		object_path = work_dir / "kcfi_batch.o"
		elf = Elf64(object_path)
		records = []
		for index, candidate in enumerate(candidates):
			kcfi = elf.kcfi_record(elf.function(f"probe_{index:04d}"))["type_id"]
			records.append({
				"index": index,
				"label": candidate.get("label", f"probe_{index:04d}"),
				"candidate": candidate,
				"kcfi": kcfi,
				"kcfi_match": kcfi == target_kcfi,
			})
		matches = [record for record in records if record["kcfi_match"]]
		payload = {
			"schema_version": "1.0",
			"mode": "offline_kcfi_batch_oracle",
			"generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
			"config": str(args.config.resolve()),
			"config_sha256": sha256_file(args.config),
			"symbol": symbol,
			"target_kcfi": target_kcfi,
			"candidate_count": len(candidates),
			"matches": matches,
			"source": {
				"path": str(source_path),
				"sha256": sha256_file(source_path),
			},
			"object": {
				"path": str(object_path),
				"sha256": sha256_file(object_path),
				"size": object_path.stat().st_size,
			},
			"build": build,
			"passed": bool(matches),
		}
		if not args.summary_only:
			payload["records"] = records
		output = (args.output or work_dir / "kcfi_report.json").resolve()
		output.parent.mkdir(parents=True, exist_ok=True)
		output.write_text(
			json.dumps(payload, indent=2, sort_keys=True) + "\n",
			encoding="utf-8",
		)
		print(json.dumps({
			"output": str(output),
			"passed": bool(matches),
			"candidate_count": len(candidates),
			"matches": [record["label"] for record in matches],
		}))
		return 0 if matches else 1

	object_names: list[str] = []
	for index, candidate in enumerate(candidates):
		stem = f"probe_{index:04d}"
		source = work_dir / f"{stem}.c"
		source.write_text(
			render_source(symbol, declarations, candidate),
			encoding="ascii",
			newline="\n",
		)
		object_names.append(f"{stem}.o")

	makefile = work_dir / "Makefile"
	makefile.write_text("# Objects are compiled individually by the oracle.\n", encoding="ascii")
	build_argv = [
		"docker", "run", "--rm",
		"-v", f"{args.source_volume}:/work/src:ro",
		"-v", f"{args.toolchain_volume}:/work/toolchains:ro",
		"-v", f"{work_dir.parent}:/work/probe",
		"-e", f"PATH={toolchain_bin}:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
		"-w", "/work/src/kernel/kernel_platform/common",
		args.image,
		"make", "ARCH=arm64", "LLVM=1", "LLVM_IAS=1",
		f"M={container_work}", *object_names,
	]
	build = command_record(build_argv)
	if build["returncode"] != 0:
		raise RuntimeError(f"signature probe build failed: {build['stderr']}")

	gendwarf_script = work_dir / "run_gendwarfksyms.sh"
	gendwarf_lines = ["#!/bin/sh", "set -eu"]
	for index in range(len(candidates)):
		stem = f"probe_{index:04d}"
		gendwarf_lines.extend([
			f"printf '@@ORACLE {index:04d}\\n'",
			(
				f"printf '%s\\n' '{symbol}' | "
				"/work/src/kernel/kernel_platform/common/scripts/gendwarfksyms/"
				f"gendwarfksyms --dump-versions /work/probe/{stem}.o"
			),
		])
	gendwarf_script.write_text(
		"\n".join(gendwarf_lines) + "\n",
		encoding="ascii",
		newline="\n",
	)
	gendwarf_argv = [
		"docker", "run", "--rm", "--entrypoint", "sh",
		"-v", f"{args.source_volume}:/work/src:ro",
		"-v", f"{work_dir}:/work/probe:ro",
		args.image, "/work/probe/run_gendwarfksyms.sh",
	]
	gendwarf_batch = command_record(gendwarf_argv, output_limit=None)
	if gendwarf_batch["returncode"] != 0:
		raise RuntimeError(
			f"GENDWARFKSYMS batch failed: {gendwarf_batch['stderr']}"
		)
	chunks: dict[int, str] = {}
	current_index: int | None = None
	for line in gendwarf_batch["stdout"].splitlines():
		if line.startswith("@@ORACLE "):
			current_index = int(line.split()[1])
			chunks[current_index] = ""
		elif current_index is not None:
			chunks[current_index] += line + "\n"

	records: list[dict[str, Any]] = []
	for index, candidate in enumerate(candidates):
		stem = f"probe_{index:04d}"
		object_path = work_dir / f"{stem}.o"
		gendwarf_output = chunks.get(index, "")
		crc = parse_symver(gendwarf_output, symbol)
		elf = Elf64(object_path)
		kcfi = elf.kcfi_record(elf.function(symbol))["type_id"]
		records.append(
			{
				"index": index,
				"label": candidate.get("label", stem),
				"candidate": candidate,
				"crc": crc,
				"kcfi": kcfi,
				"crc_match": crc == target_crc,
				"kcfi_match": kcfi == target_kcfi,
				"full_match": crc == target_crc and kcfi == target_kcfi,
				"object": {
					"path": str(object_path),
					"size": object_path.stat().st_size,
					"sha256": sha256_file(object_path),
				},
				"gendwarfksyms_output": gendwarf_output,
			}
		)

	matches = [record for record in records if record["full_match"]]
	gendwarf_summary = {
		"argv": gendwarf_batch["argv"],
		"returncode": gendwarf_batch["returncode"],
		"stdout_size": len(gendwarf_batch["stdout"]),
		"stdout_sha256": hashlib.sha256(
			gendwarf_batch["stdout"].encode("utf-8")
		).hexdigest(),
		"stderr": gendwarf_batch["stderr"][-6000:],
	}
	payload = {
		"schema_version": "1.0",
		"mode": "offline_gendwarfksyms_kcfi_oracle",
		"generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
		"config": str(args.config.resolve()),
		"config_sha256": sha256_file(args.config),
		"symbol": symbol,
		"target_crc": target_crc,
		"target_kcfi": target_kcfi,
		"candidate_count": len(candidates),
		"matches": matches,
		"records": records,
		"build": build,
		"gendwarfksyms": gendwarf_summary,
		"passed": bool(matches),
	}
	output = (args.output or work_dir / "report.json").resolve()
	output.parent.mkdir(parents=True, exist_ok=True)
	output.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
	print(json.dumps({
		"output": str(output),
		"passed": bool(matches),
		"candidate_count": len(candidates),
		"matches": [record["label"] for record in matches],
	}))
	return 0 if matches else 1


if __name__ == "__main__":
	try:
		raise SystemExit(main())
	except (OSError, ValueError, RuntimeError, subprocess.SubprocessError) as exc:
		print(f"error: {exc}")
		raise SystemExit(2)
