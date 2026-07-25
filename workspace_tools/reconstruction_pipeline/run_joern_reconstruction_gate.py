#!/usr/bin/env python3
"""Run a reproducible Joern consistency gate beside the canonical Ghidra evidence."""

from __future__ import annotations

import argparse
import collections
import datetime as dt
import hashlib
import json
import os
import re
import subprocess
import sys
from pathlib import Path
from typing import Any


SCRIPT_DIR = Path(__file__).resolve().parent
REPO_ROOT = SCRIPT_DIR.parents[1]
DEFAULT_LOCK = SCRIPT_DIR / "joern" / "joern.lock.json"
DEFAULT_QUERY = SCRIPT_DIR / "joern" / "nx809j_cpg_inventory.sc"
DEFAULT_PROFILE = SCRIPT_DIR / "joern" / "kernel_call_profile.json"


def utc_now() -> str:
    return dt.datetime.now(dt.timezone.utc).isoformat()


def sha256_file(path: Path, chunk_size: int = 8 * 1024 * 1024) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        while chunk := stream.read(chunk_size):
            digest.update(chunk)
    return digest.hexdigest()


def write_json(path: Path, payload: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def read_jsonl(path: Path) -> list[dict[str, Any]]:
    return [
        json.loads(line)
        for line in path.read_text(encoding="utf-8").splitlines()
        if line.strip()
    ]


def source_tree_record(
    root: Path, excluded: set[str] | None = None
) -> dict[str, Any]:
    excluded = excluded or set()
    paths = sorted(
        path for path in root.rglob("*")
        if path.is_file() and path.suffix.lower() in {".c", ".h"}
        and not any(part in excluded for part in path.relative_to(root).parts)
    )
    if not paths:
        raise ValueError(f"source root contains no C/header files: {root}")
    aggregate = hashlib.sha256()
    records = []
    for path in paths:
        relative = path.relative_to(root).as_posix()
        file_hash = sha256_file(path)
        aggregate.update(relative.encode("utf-8"))
        aggregate.update(b"\0")
        aggregate.update(file_hash.encode("ascii"))
        aggregate.update(b"\n")
        records.append({
            "path": relative,
            "size": path.stat().st_size,
            "sha256": file_hash,
        })
    return {
        "root": str(root.resolve()),
        "file_count": len(records),
        "tree_sha256": aggregate.hexdigest(),
        "files": records,
    }


def file_record(path: Path) -> dict[str, Any]:
    return {
        "path": str(path.resolve()),
        "size": path.stat().st_size,
        "sha256": sha256_file(path),
    }


def load_records(path: Path) -> list[dict[str, Any]]:
    payload = json.loads(path.read_text(encoding="utf-8"))
    if isinstance(payload, list):
        return payload
    records = payload.get("records")
    if not isinstance(records, list):
        raise ValueError(f"expected records array: {path}")
    return records


def launcher_names(name: str) -> tuple[str, ...]:
    if os.name == "nt":
        return (f"{name}.bat", name, f"{name}.cmd")
    return (name, f"{name}.sh")


def find_launcher(joern_home: Path, name: str) -> Path:
    roots = [joern_home, joern_home / "joern-cli"]
    roots.extend(path for path in joern_home.glob("*") if path.is_dir())
    for root in roots:
        for launcher in launcher_names(name):
            path = root / launcher
            if path.is_file():
                return path.resolve()
    raise FileNotFoundError(f"{name} launcher not found below {joern_home}")


def find_install_marker(joern_home: Path) -> Path:
    candidates = [joern_home / "nx809j-joern-install.json"]
    candidates.extend(parent / "nx809j-joern-install.json" for parent in joern_home.parents[:3])
    for candidate in candidates:
        if candidate.is_file():
            return candidate.resolve()
    raise FileNotFoundError(
        f"pinned Joern install marker not found for {joern_home}; use bootstrap_joern.py"
    )


def validate_install_marker(marker: Path, lock: dict[str, Any]) -> dict[str, Any]:
    payload = json.loads(marker.read_text(encoding="utf-8"))
    expected_sha256 = str(lock["distribution"]["sha256"])
    observed_sha256 = str(payload.get("archive", {}).get("sha256", ""))
    if observed_sha256 != expected_sha256:
        raise ValueError(
            f"Joern install marker SHA-256 mismatch: expected {expected_sha256}, "
            f"got {observed_sha256 or '<missing>'}"
        )
    expected_commit = str(lock["project"]["source_commit"])
    if str(payload.get("source_commit", "")) != expected_commit:
        raise ValueError("Joern install marker targets another source commit")
    return payload


def runnable_argv(argv: list[str]) -> list[str]:
    if os.name == "nt" and Path(argv[0]).suffix.lower() in {".bat", ".cmd"}:
        return ["cmd.exe", "/d", "/c", *argv]
    return argv


def run_command(
    argv: list[str], timeout: int = 7200, env: dict[str, str] | None = None
) -> dict[str, Any]:
    completed = subprocess.run(
        runnable_argv(argv),
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
        timeout=timeout,
        check=False,
        env=env,
    )
    return {
        "argv": argv,
        "returncode": completed.returncode,
        "parse_problem_count": (
            completed.stdout.count("Parse problem '")
            + completed.stderr.count("Parse problem '")
        ),
        "stdout_tail": completed.stdout[-20000:],
        "stderr_tail": completed.stderr[-20000:],
    }


def count_parse_problems(command_result: dict[str, Any]) -> int:
    if "parse_problem_count" in command_result:
        return int(command_result["parse_problem_count"])
    output = str(command_result.get("stdout_tail", "")) + str(
        command_result.get("stderr_tail", "")
    )
    return output.count("Parse problem '")


def normalize_entry(value: Any) -> str:
    text = str(value or "").lower().removeprefix("0x")
    return text.lstrip("0") or "0"


def ghidra_call_counters(path: Path) -> dict[str, collections.Counter[str]]:
    counters: dict[str, collections.Counter[str]] = collections.defaultdict(collections.Counter)
    for row in read_jsonl(path):
        caller = str(row.get("caller", ""))
        target = str(row.get("target", "")).removeprefix("<EXTERNAL>::")
        if caller and target:
            counters[caller][target] += 1
    return counters


def joern_call_counters(records: list[dict[str, Any]]) -> dict[str, collections.Counter[str]]:
    counters: dict[str, collections.Counter[str]] = collections.defaultdict(collections.Counter)
    for row in records:
        caller = str(row.get("caller", ""))
        target = str(row.get("name", ""))
        if caller and target:
            counters[caller][target] += 1
    return counters


def classify_calls(
    records: list[dict[str, Any]], profile: dict[str, Any]
) -> list[dict[str, Any]]:
    compiled = [
        (
            str(category["name"]),
            str(category["severity"]),
            [re.compile(pattern) for pattern in category.get("patterns", [])],
        )
        for category in profile.get("categories", [])
    ]
    findings = []
    for row in records:
        name = str(row.get("name", ""))
        for category, severity, patterns in compiled:
            if any(pattern.search(name) for pattern in patterns):
                findings.append({
                    "category": category,
                    "severity": severity,
                    "caller": row.get("caller"),
                    "call": name,
                    "code": row.get("code"),
                    "filename": row.get("filename"),
                    "line": row.get("line"),
                })
    return findings


def build_cross_oracle_report(
    ghidra_export: Path,
    reconstruction_map: Path,
    source_inventory: Path,
    profile_path: Path,
    *,
    strict: bool,
    binary_inventory: Path | None = None,
) -> dict[str, Any]:
    ghidra_functions = read_jsonl(ghidra_export / "functions.jsonl")
    mappings_payload = json.loads(reconstruction_map.read_text(encoding="utf-8"))
    mappings = mappings_payload.get("mappings", [])
    methods = load_records(source_inventory / "methods.json")
    calls = load_records(source_inventory / "calls.json")
    controls = load_records(source_inventory / "control_structures.json")
    profile = json.loads(profile_path.read_text(encoding="utf-8"))

    expected_identities = {
        (str(row.get("name", "")), normalize_entry(row.get("entry")))
        for row in ghidra_functions
    }
    mapped_identities = {
        (str(row.get("stock_function", "")), normalize_entry(row.get("stock_entry")))
        for row in mappings
    }
    missing_map_entries = sorted(expected_identities - mapped_identities)
    unexpected_map_entries = sorted(mapped_identities - expected_identities)

    expected_source = {
        str(row.get("source_function", "")) for row in mappings
        if row.get("source_function")
    }
    actual_source = {
        str(row.get("name", "")) for row in methods
        if not row.get("is_external") and not str(row.get("name", "")).startswith("<")
    }
    missing_source_methods = sorted(expected_source - actual_source)
    extra_source_methods = sorted(actual_source - expected_source)

    stock_to_source = {
        str(row.get("stock_function", "")): str(row.get("source_function", ""))
        for row in mappings
        if row.get("stock_function") and row.get("source_function")
    }
    mapped_source_names = set(stock_to_source.values())
    stock_calls = ghidra_call_counters(ghidra_export / "calls.jsonl")
    source_calls = joern_call_counters(calls)
    call_deltas = []
    for stock_caller, source_caller in sorted(stock_to_source.items()):
        expected = collections.Counter()
        for stock_target, count in stock_calls.get(stock_caller, {}).items():
            source_target = stock_to_source.get(stock_target)
            if source_target:
                expected[source_target] += count
        observed = collections.Counter({
            target: count
            for target, count in source_calls.get(source_caller, {}).items()
            if target in mapped_source_names
        })
        missing = expected - observed
        unexpected = observed - expected
        if missing or unexpected:
            call_deltas.append({
                "stock_function": stock_caller,
                "source_function": source_caller,
                "expected_mapped_calls": dict(sorted(expected.items())),
                "observed_mapped_calls": dict(sorted(observed.items())),
                "missing_mapped_calls": dict(sorted(missing.items())),
                "unexpected_mapped_calls": dict(sorted(unexpected.items())),
            })

    unresolved_calls = [
        row for row in calls
        if not row.get("method_full_name")
        or "unknown" in str(row.get("method_full_name", "")).lower()
    ]
    findings = classify_calls(calls, profile)
    blockers = []
    if missing_map_entries:
        blockers.append("Ghidra functions are missing from reconstruction_map.json")
    if unexpected_map_entries:
        blockers.append("reconstruction_map.json contains identities absent from the Ghidra export")
    if missing_source_methods:
        blockers.append("mapped source functions are absent from the Joern source CPG")
    if not actual_source:
        blockers.append("Joern source CPG contains no internal methods")
    if strict and any(row["missing_mapped_calls"] for row in call_deltas):
        blockers.append("strict mode found mapped stock calls absent from the source CPG")

    binary = None
    if binary_inventory is not None:
        binary_methods = load_records(binary_inventory / "methods.json")
        binary_names = {
            str(row.get("name", "")) for row in binary_methods
            if not row.get("is_external") and not str(row.get("name", "")).startswith("<")
        }
        stock_names = {name for name, _entry in expected_identities}
        binary = {
            "classification": "SUPPLEMENTAL_ONLY",
            "method_count": len(binary_names),
            "missing_stock_names": sorted(stock_names - binary_names),
            "extra_binary_names": sorted(binary_names - stock_names),
            "promotion_effect": "NONE",
        }

    return {
        "status": "PASS" if not blockers else "FAIL",
        "passed": not blockers,
        "strict": strict,
        "promotion_claim": False,
        "limitations": [
            "Joern does not recover lost struct tags, macros, KCFI type IDs, MMIO meaning, or physical behavior.",
            "Call deltas require review because compiler inlining, macros, wrappers, and source hardening can change graph shape.",
            "The canonical Ghidra 12.1.2 export, ELF relocations, P-Code, assembly, KCFI, build, harness, and hardware gates remain mandatory.",
        ],
        "coverage": {
            "ghidra_function_count": len(expected_identities),
            "mapped_identity_count": len(mapped_identities),
            "missing_map_entries": [
                {"name": name, "entry": entry} for name, entry in missing_map_entries
            ],
            "unexpected_map_entries": [
                {"name": name, "entry": entry} for name, entry in unexpected_map_entries
            ],
            "expected_source_method_count": len(expected_source),
            "joern_internal_method_count": len(actual_source),
            "missing_source_methods": missing_source_methods,
            "extra_source_methods": extra_source_methods,
        },
        "graph": {
            "call_count": len(calls),
            "control_structure_count": len(controls),
            "unresolved_call_count": len(unresolved_calls),
            "unresolved_calls": unresolved_calls,
            "mapped_call_deltas": call_deltas,
        },
        "review_findings": findings,
        "binary_cpg": binary,
        "blockers": blockers,
    }


def parse_args() -> argparse.Namespace:
    lock = json.loads(DEFAULT_LOCK.read_text(encoding="utf-8"))
    default_home = REPO_ROOT / lock["runtime"]["install_directory"]
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--driver", required=True)
    parser.add_argument("--source-root", type=Path, required=True)
    parser.add_argument("--ghidra-export", type=Path, required=True)
    parser.add_argument("--reconstruction-map", type=Path, required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument(
        "--joern-home",
        type=Path,
        default=Path(os.environ.get("JOERN_HOME", default_home)),
    )
    parser.add_argument("--lock", type=Path, default=DEFAULT_LOCK)
    parser.add_argument("--query", type=Path, default=DEFAULT_QUERY)
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--stock-module", type=Path)
    parser.add_argument("--with-binary-cpg", action="store_true")
    parser.add_argument("--include", type=Path, action="append", default=[])
    parser.add_argument(
        "--exclude",
        action="append",
        default=["tests", "validation", "build"],
        help="relative directory or file excluded from the candidate CPG",
    )
    parser.add_argument("--compilation-database", type=Path)
    parser.add_argument(
        "--java-home",
        type=Path,
        default=Path(os.environ["JAVA_HOME"]) if os.environ.get("JAVA_HOME") else None,
    )
    parser.add_argument("--prepare-only", action="store_true")
    parser.add_argument("--strict", action="store_true")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    source_root = args.source_root.resolve()
    ghidra_export = args.ghidra_export.resolve()
    reconstruction_map = args.reconstruction_map.resolve()
    output_dir = args.output_dir.resolve()
    lock_path = args.lock.resolve()
    lock_payload = json.loads(lock_path.read_text(encoding="utf-8"))
    query_path = args.query.resolve()
    profile_path = args.profile.resolve()
    required = [
        source_root,
        ghidra_export / "functions.jsonl",
        ghidra_export / "calls.jsonl",
        reconstruction_map,
        lock_path,
        query_path,
        profile_path,
    ]
    missing = [str(path) for path in required if not path.exists()]
    if missing:
        raise FileNotFoundError("missing required inputs: " + ", ".join(missing))
    if args.with_binary_cpg and not args.stock_module:
        raise ValueError("--with-binary-cpg requires --stock-module")

    output_dir.mkdir(parents=True, exist_ok=True)
    source_cpg = output_dir / "source.cpg.bin"
    source_inventory = output_dir / "source_inventory"
    binary_cpg = output_dir / "binary.cpg.bin"
    binary_inventory = output_dir / "binary_inventory"

    joern_home = args.joern_home.resolve()
    java_home = args.java_home.resolve() if args.java_home else None
    install_marker = None
    if not args.prepare_only:
        install_marker = find_install_marker(joern_home)
        validate_install_marker(install_marker, lock_payload)
    if args.prepare_only and not joern_home.exists():
        launchers = {
            "c2cpg": str(joern_home / launcher_names("c2cpg")[0]),
            "joern": str(joern_home / launcher_names("joern")[0]),
            "ghidra2cpg": str(joern_home / launcher_names("ghidra2cpg")[0]),
        }
    else:
        launchers = {
            "c2cpg": str(find_launcher(joern_home, "c2cpg")),
            "joern": str(find_launcher(joern_home, "joern")),
        }
        if args.with_binary_cpg:
            launchers["ghidra2cpg"] = str(find_launcher(joern_home, "ghidra2cpg"))

    source_command = [
        launchers["c2cpg"],
        str(source_root),
        "--output", str(source_cpg),
        "--log-problems",
        "--with-include-auto-discovery",
    ]
    for excluded in args.exclude:
        source_command.extend(["--exclude", excluded])
    for include in args.include:
        source_command.extend(["--include", str(include.resolve())])
    if args.compilation_database:
        source_command.extend([
            "--compilation-database", str(args.compilation_database.resolve())
        ])
    source_inventory_command = [
        launchers["joern"],
        "--script", str(query_path),
        "--param", f"cpgFile={source_cpg}",
        "--param", f"outputDir={source_inventory}",
    ]
    commands: dict[str, list[str]] = {
        "source_cpg": source_command,
        "source_inventory": source_inventory_command,
    }
    if args.with_binary_cpg:
        stock_module = args.stock_module.resolve()
        commands["binary_cpg"] = [
            launchers["ghidra2cpg"], str(stock_module), "--output", str(binary_cpg)
        ]
        commands["binary_inventory"] = [
            launchers["joern"],
            "--script", str(query_path),
            "--param", f"cpgFile={binary_cpg}",
            "--param", f"outputDir={binary_inventory}",
        ]

    manifest = {
        "schema_version": "1.0",
        "generated_utc": utc_now(),
        "driver": args.driver,
        "mode": "PREPARE_ONLY" if args.prepare_only else "EXECUTE",
        "source": source_tree_record(source_root, set(args.exclude)),
        "ghidra": {
            "export": str(ghidra_export),
            "functions": file_record(ghidra_export / "functions.jsonl"),
            "calls": file_record(ghidra_export / "calls.jsonl"),
        },
        "reconstruction_map": file_record(reconstruction_map),
        "joern": {
            "home": str(joern_home),
            "java_home": str(java_home) if java_home else None,
            "excluded_paths": args.exclude,
            "lock": file_record(lock_path),
            "query": file_record(query_path),
            "call_profile": file_record(profile_path),
            "install_marker": file_record(install_marker) if install_marker else None,
            "commands": commands,
        },
        "compilation_database": (
            file_record(args.compilation_database.resolve())
            if args.compilation_database else None
        ),
        "include_roots": [
            source_tree_record(include.resolve()) for include in args.include
        ],
        "stock_module": (
            file_record(args.stock_module.resolve()) if args.stock_module else None
        ),
    }
    write_json(output_dir / "input_manifest.json", manifest)
    if args.prepare_only:
        report = {
            "schema_version": "1.0",
            "generated_utc": utc_now(),
            "driver": args.driver,
            "status": "PREPARED",
            "passed": False,
            "promotion_claim": False,
            "input_manifest": str(output_dir / "input_manifest.json"),
            "commands": commands,
            "next_step": "Install the pinned Joern distribution and rerun without --prepare-only.",
        }
        write_json(output_dir / "joern_gate_report.json", report)
        print(json.dumps({"status": "PREPARED", "output": str(output_dir)}, sort_keys=True))
        return 0

    if java_home is None:
        raise ValueError("JAVA_HOME is required and must point to the locked Java 21 runtime")
    java_executable = java_home / "bin" / ("java.exe" if os.name == "nt" else "java")
    if not java_executable.is_file():
        raise FileNotFoundError(f"Java launcher not found: {java_executable}")
    java_probe = run_command([str(java_executable), "-version"], timeout=30)
    java_text = java_probe["stderr_tail"] + java_probe["stdout_tail"]
    expected_java = int(lock_payload["runtime"]["java_major"])
    if java_probe["returncode"] != 0 or not re.search(
        rf'version\s+"{expected_java}(?:\.|\")', java_text
    ):
        raise ValueError(f"Joern requires locked Java {expected_java}; observed: {java_text.strip()}")
    execution_env = os.environ.copy()
    execution_env["JAVA_HOME"] = str(java_home)
    execution_env["PATH"] = str(java_home / "bin") + os.pathsep + execution_env.get("PATH", "")

    command_results: dict[str, Any] = {"java": java_probe}
    execution_order = ["source_cpg", "source_inventory"]
    if args.with_binary_cpg:
        execution_order.extend(["binary_cpg", "binary_inventory"])
    for name in execution_order:
        result = run_command(commands[name], env=execution_env)
        command_results[name] = result
        if result["returncode"] != 0:
            report = {
                "schema_version": "1.0",
                "generated_utc": utc_now(),
                "driver": args.driver,
                "status": "FAIL",
                "passed": False,
                "promotion_claim": False,
                "failed_command": name,
                "commands": command_results,
                "blockers": [f"Joern command failed: {name}"],
            }
            write_json(output_dir / "joern_gate_report.json", report)
            print(json.dumps({"status": "FAIL", "failed_command": name}, sort_keys=True))
            return 1

    cross_oracle = build_cross_oracle_report(
        ghidra_export,
        reconstruction_map,
        source_inventory,
        profile_path,
        strict=args.strict,
        binary_inventory=binary_inventory if args.with_binary_cpg else None,
    )
    parse_problem_count = count_parse_problems(command_results["source_cpg"])
    cross_oracle["parser"] = {
        "parse_problem_count": parse_problem_count,
        "strict_effect": "BLOCK" if args.strict else "ADVISORY",
    }
    if args.strict and parse_problem_count:
        cross_oracle["blockers"].append(
            "strict mode found C/C++ parse problems in the captured c2cpg output"
        )
        cross_oracle["passed"] = False
        cross_oracle["status"] = "FAIL"
    report = {
        "schema_version": "1.0",
        "generated_utc": utc_now(),
        "driver": args.driver,
        "input_manifest": str(output_dir / "input_manifest.json"),
        "commands": command_results,
        **cross_oracle,
    }
    write_json(output_dir / "joern_gate_report.json", report)
    print(json.dumps({
        "status": report["status"],
        "passed": report["passed"],
        "output": str(output_dir / "joern_gate_report.json"),
    }, sort_keys=True))
    return 0 if report["passed"] else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError, subprocess.TimeoutExpired) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(2)
