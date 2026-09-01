#!/usr/bin/env python3
"""Plan and execute non-promoting core gates for difficult driver functions.

This runner composes the repository's existing Joern, Docker, KCFI and AArch64
assembly tools.  It deliberately never edits source, synchronizes curated
trees, changes microtask status, or promotes an attestation.
"""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import os
import re
import signal
import subprocess
import sys
import time
from pathlib import Path
from typing import Any


SCHEMA_VERSION = "1.0"
DRIVER_RE = re.compile(r"[A-Za-z0-9_.-]+")
ENTRY_RE = re.compile(r"(?:0x)?[0-9a-fA-F]+")
SOURCE_SUFFIXES = {".c", ".h", ".s", ".S", ".inc"}
SOURCE_NAMES = {"Makefile", "Kbuild", "Kconfig", "vendor.Module.symvers"}

BASELINE_GATES = {
    "INPUT_IDENTITY": "hash stock, source tree, Ghidra index, map and runners",
    "MAP_IDENTITY": "bind every stock_function@entry to one source function",
    "JOERN_SCOPED": "strict source CPG gate scoped to the selected functions",
    "DOCKER_REPRODUCIBLE": "two clean pinned-container builds with identical bytes",
    "ASSEMBLY_RELOCATIONS": "compare function opcodes, sizes, sections and relocations",
    "HOST_HARNESS": "exercise observed success, error, boundary and teardown paths",
    "SEMANTIC_COUNTEREXAMPLE": "search for divergent return, writes or call trace",
    "INDEPENDENT_REVIEW": "review from stock evidence by a different executor",
}

PROFILE_GATES: dict[str, dict[str, str]] = {
    "LEAF_PURE": {
        "BOUNDED_MODEL": "CBMC/KLEE or exhaustive finite-domain proof when applicable",
        "MUTATION_TEST": "a seeded defect must be detected by the oracle",
    },
    "STATEFUL_MEMORY": {
        "JOERN_SLICE": "usage or data-flow slice for each state source and sink",
        "STATE_EFFECT_LEDGER": "ordered loads, stores, widths, aliases and conditions",
        "SANITIZERS": "ASan/UBSan host harness with deterministic replay corpus",
        "BOUNDED_MODEL": "bounded pointer, array, overflow and loop checks",
    },
    "CALLBACK_ABI": {
        "KCFI": "stock/candidate KCFI and indirect-call surface comparison",
        "CALLBACK_TABLE": "callback slot, prototype, section and relocation audit",
        "KMI_TYPES": "GENDWARFKSYMS/BTF/DWARF type evidence where available",
    },
    "CONCURRENCY_LIFETIME": {
        "JOERN_SLICE": "slice owners, enqueue/dequeue, cancellation and teardown uses",
        "LOCK_LIFETIME": "owner, lock order, context, refcount and teardown contract",
        "KUNIT_LOCKDEP_KCSAN": "isolated kernel-lab test; never inferred from host only",
    },
    "HARDWARE_BUS": {
        "JOERN_SLICE": "slice resource acquisition through bus/MMIO callsites",
        "REGISTER_BUS_LEDGER": "base, offset, width, mask, order and barrier evidence",
        "DT_CONTEXT": "hash-bound local DTS/DTBO and resource provenance",
        "HARDWARE_RUNTIME": "controlled device A/B validation with rollback",
    },
    "DISPATCHER_PARSER": {
        "JOERN_SLICE": "sink-filtered data-flow slices for user/bus controlled data",
        "CFG_SEGMENTATION": "case/path inventory tied to Assembly and P-Code",
        "FUZZ_CORPUS": "deterministic libFuzzer corpus and minimized counterexamples",
        "BOUNDED_MODEL": "CBMC checks for lengths, indexes, loops and postconditions",
        "MUTATION_TEST": "branch, length and cleanup mutants must be detected",
    },
    "COMPILER_SENSITIVE": {
        "KCFI": "KCFI preamble and indirect callsite parity",
        "CANDIDATE_GHIDRA_PCODE": "fresh candidate Ghidra/P-Code comparison",
        "LLVM_IR_DIAGNOSIS": "IR-level diagnosis before any assembly island",
    },
}

AUTOMATED_GATES = {
    "INPUT_IDENTITY",
    "MAP_IDENTITY",
    "JOERN_SCOPED",
    "JOERN_SLICE",
    "DOCKER_REPRODUCIBLE",
    "ASSEMBLY_RELOCATIONS",
    "KCFI",
    "CANDIDATE_GHIDRA_PCODE",
}


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
    path.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
        newline="\n",
    )


def read_json(path: Path) -> dict[str, Any]:
    payload = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(payload, dict):
        raise ValueError(f"expected JSON object: {path}")
    return payload


def file_record(path: Path) -> dict[str, Any]:
    return {
        "path": str(path),
        "size": path.stat().st_size,
        "sha256": sha256_file(path),
    }


def source_tree_record(root: Path) -> dict[str, Any]:
    files: list[dict[str, Any]] = []
    tree = hashlib.sha256()
    for path in sorted(item for item in root.rglob("*") if item.is_file()):
        if path.suffix not in SOURCE_SUFFIXES and path.name not in SOURCE_NAMES:
            continue
        relative = path.relative_to(root).as_posix()
        digest = sha256_file(path)
        tree.update(relative.encode("utf-8"))
        tree.update(b"\0")
        tree.update(digest.encode("ascii"))
        tree.update(b"\n")
        files.append({
            "path": relative,
            "size": path.stat().st_size,
            "sha256": digest,
        })
    if not files:
        raise ValueError(f"source tree contains no compiler inputs: {root}")
    return {
        "root": str(root),
        "file_count": len(files),
        "tree_sha256": tree.hexdigest(),
        "files": files,
    }


def normalize_entry(value: Any) -> str:
    text = str(value or "").strip().lower()
    if text.startswith("0x"):
        text = text[2:]
    return text.lstrip("0") or "0"


def resolve_repo_path(repo_root: Path, value: str | Path, *, label: str) -> Path:
    path = Path(value)
    if not path.is_absolute():
        path = repo_root / path
    resolved = path.resolve()
    if not Path(value).is_absolute():
        try:
            resolved.relative_to(repo_root)
        except ValueError as error:
            raise ValueError(f"{label} escapes repository root: {resolved}") from error
    return resolved


def validate_job(job: dict[str, Any]) -> list[dict[str, Any]]:
    if job.get("schema_version") != SCHEMA_VERSION:
        raise ValueError(f"job schema_version must be {SCHEMA_VERSION}")
    driver = job.get("driver")
    if not isinstance(driver, str) or not DRIVER_RE.fullmatch(driver):
        raise ValueError("driver must contain only letters, digits, dot, underscore or dash")
    profiles = job.get("profiles")
    if not isinstance(profiles, list) or not profiles:
        raise ValueError("profiles must be a non-empty array")
    unknown_profiles = sorted(set(profiles) - set(PROFILE_GATES))
    if unknown_profiles:
        raise ValueError("unknown profiles: " + ", ".join(unknown_profiles))
    functions = job.get("functions")
    if not isinstance(functions, list) or not functions:
        raise ValueError("functions must be a non-empty array")
    identities: set[str] = set()
    normalized: list[dict[str, Any]] = []
    for index, item in enumerate(functions):
        if not isinstance(item, dict):
            raise ValueError(f"functions[{index}] must be an object")
        stock_function = item.get("stock_function")
        source_function = item.get("source_function")
        stock_entry = item.get("stock_entry")
        if not isinstance(stock_function, str) or not stock_function:
            raise ValueError(f"functions[{index}].stock_function is required")
        if not isinstance(source_function, str) or not source_function:
            raise ValueError(f"functions[{index}].source_function is required")
        if not isinstance(stock_entry, str) or not ENTRY_RE.fullmatch(stock_entry):
            raise ValueError(f"functions[{index}].stock_entry must be hexadecimal")
        if not isinstance(item.get("assembly_only", False), bool):
            raise ValueError(f"functions[{index}].assembly_only must be boolean")
        identity = f"{stock_function}@{normalize_entry(stock_entry)}"
        if identity in identities:
            raise ValueError(f"duplicate function identity: {identity}")
        identities.add(identity)
        normalized.append({
            **item,
            "stock_function": stock_function,
            "source_function": source_function,
            "stock_entry": stock_entry,
            "identity": identity,
            "alias": f"f{index:03d}",
        })
    paths = job.get("paths")
    if not isinstance(paths, dict):
        raise ValueError("paths must be an object")
    for key in ("source_root", "stock_module", "ghidra_export", "reconstruction_map"):
        if not isinstance(paths.get(key), str) or not paths[key]:
            raise ValueError(f"paths.{key} is required")
    ghidra = job.get("ghidra", {})
    if not isinstance(ghidra, dict):
        raise ValueError("ghidra must be an object")
    if ghidra.get("allow_pcode_authoritative_decompiler_fallback", False):
        reason = ghidra.get("fallback_reason")
        if not isinstance(reason, str) or not reason.strip():
            raise ValueError(
                "ghidra.fallback_reason is required when the P-Code fallback is enabled"
            )
    if ghidra.get("allow_return_propagation_fallback", False):
        reason = ghidra.get("fallback_reason")
        if not isinstance(reason, str) or not reason.strip():
            raise ValueError(
                "ghidra.fallback_reason is required when the return-propagation fallback is enabled"
            )
    if ghidra.get("allow_ghidra_data_field_slice_fallback", False):
        reason = ghidra.get("fallback_reason")
        if not isinstance(reason, str) or not reason.strip():
            raise ValueError(
                "ghidra.fallback_reason is required when the Ghidra data-field slice fallback is enabled"
            )
    docker = job.get("docker", {})
    if docker.get("adapter", "generic_driver_audit") not in {
        "zte_tpd_canonical",
        "generic_driver_audit",
    }:
        raise ValueError("docker.adapter must be zte_tpd_canonical or generic_driver_audit")
    cycles = int(docker.get("cycles", 2))
    if cycles < 2:
        raise ValueError("docker.cycles must be at least 2")
    slice_mode = job.get("joern", {}).get("slice", {}).get("mode", "off")
    if slice_mode not in {"off", "data-flow", "usages"}:
        raise ValueError("joern.slice.mode must be off, data-flow or usages")
    return normalized


def select_functions(
    functions: list[dict[str, Any]], selectors: list[str]
) -> list[dict[str, Any]]:
    """Select source functions or exact stock identities for a narrow run."""
    if not selectors:
        return functions
    selected: list[dict[str, Any]] = []
    seen: set[str] = set()
    available = {
        str(item["source_function"])
        for item in functions
        if isinstance(item.get("source_function"), str)
    }
    available.update(
        str(item["identity"])
        for item in functions
        if isinstance(item.get("identity"), str)
    )
    unknown = set(selectors) - available
    if unknown:
        raise ValueError(
            "requested functions are absent from job: "
            + ", ".join(sorted(unknown))
        )
    for selector in selectors:
        matches = [
            item
            for item in functions
            if item.get("source_function") == selector
            or item.get("identity") == selector
        ]
        for item in matches:
            identity = str(item["identity"])
            if identity not in seen:
                selected.append(item)
                seen.add(identity)
    return selected


def required_gates(job: dict[str, Any], functions: list[dict[str, Any]]) -> dict[str, dict[str, str]]:
    gates = {
        name: {"reason": reason, "kind": "AUTOMATED" if name in AUTOMATED_GATES else "EVIDENCE"}
        for name, reason in BASELINE_GATES.items()
    }
    for profile in job["profiles"]:
        for name, reason in PROFILE_GATES[profile].items():
            gates[name] = {
                "reason": reason,
                "kind": "AUTOMATED" if name in AUTOMATED_GATES else "EVIDENCE",
            }
    if any(bool(item.get("kcfi_required")) for item in functions):
        gates["KCFI"] = {
            "reason": "at least one selected function explicitly requires KCFI",
            "kind": "AUTOMATED",
        }
    return dict(sorted(gates.items()))


def find_map_bindings(
    map_payload: dict[str, Any], functions: list[dict[str, Any]]
) -> tuple[list[dict[str, Any]], list[str]]:
    mappings = map_payload.get("mappings")
    if not isinstance(mappings, list):
        raise ValueError("reconstruction map has no mappings array")
    bindings: list[dict[str, Any]] = []
    blockers: list[str] = []
    for function in functions:
        matches = [
            item
            for item in mappings
            if isinstance(item, dict)
            and item.get("stock_function") == function["stock_function"]
            and normalize_entry(item.get("stock_entry"))
            == normalize_entry(function["stock_entry"])
        ]
        if len(matches) != 1:
            blockers.append(
                f"{function['identity']}: expected one reconstruction-map entry, found {len(matches)}"
            )
            continue
        mapping = matches[0]
        if mapping.get("source_function") != function["source_function"]:
            blockers.append(
                f"{function['identity']}: source function mismatch "
                f"({mapping.get('source_function')} != {function['source_function']})"
            )
        bindings.append({
            "identity": function["identity"],
            "source_file": mapping.get("source_file"),
            "source_function": mapping.get("source_function"),
            "map_status": mapping.get("status"),
            "semantic_equivalence": mapping.get("semantic_equivalence"),
        })
    return bindings, blockers


def python_command(python: Path, script: Path, *args: str) -> list[str]:
    return [str(python), str(script), *args]


def build_command_plan(
    *,
    job: dict[str, Any],
    functions: list[dict[str, Any]],
    repo_root: Path,
    output_dir: Path,
    python: Path,
    engineering_root: Path,
    source_root: Path,
    stock_module: Path,
    ghidra_export: Path,
    reconstruction_map: Path,
    joern_home: Path | None,
    java_home: Path | None,
) -> dict[str, Any]:
    tools_root = repo_root / "workspace_tools" / "reconstruction_pipeline"
    joern_dir = output_dir / "joern"
    joern_config = job.get("joern", {})
    source_view = resolve_repo_path(
        repo_root,
        joern_config.get("source_view_root", str(source_root)),
        label="joern.source_view_root",
    )
    joern = python_command(
        python,
        tools_root / "run_joern_reconstruction_gate.py",
        "--driver", job["driver"],
        "--source-root", str(source_root),
        "--source-view-root", str(source_view),
        "--ghidra-export", str(ghidra_export),
        "--reconstruction-map", str(reconstruction_map),
        "--output-dir", str(joern_dir),
        "--strict",
    )
    for function in functions:
        joern.extend(["--function", f"{function['stock_function']}@{function['stock_entry']}"])
        if function.get("assembly_only", False):
            joern.extend(["--assembly-only", str(function["source_function"])])
    if joern_home:
        joern.extend(["--joern-home", str(joern_home)])
    if java_home:
        joern.extend(["--java-home", str(java_home)])
    for include in joern_config.get("include", []):
        joern.extend(["--include", str(resolve_repo_path(repo_root, include, label="joern.include"))])
    for definition in joern_config.get("define", []):
        joern.extend(["--define", str(definition)])

    docker_config = job.get("docker", {})
    adapter = docker_config.get("adapter", "generic_driver_audit")
    image = str(docker_config.get("image", "nubia-sm8850-kernel-builder:latest"))
    source_volume = str(docker_config.get("source_volume", "nubia_sm8850_kernel_src"))
    toolchain_volume = str(docker_config.get("toolchain_volume", "nubia_sm8850_kernel_toolchains"))
    clang_revision = str(docker_config.get("clang_revision", "clang-r536225"))
    parallelism = int(docker_config.get("parallelism", 4))
    cycles = int(docker_config.get("cycles", 2))
    stable_id = hashlib.sha256(
        (job["driver"] + "\0" + "\0".join(item["identity"] for item in functions)).encode("utf-8")
    ).hexdigest()[:12]
    label = f"hard_protocol_{job['driver']}_{stable_id}"
    if adapter == "zte_tpd_canonical":
        docker_report = output_dir / "docker" / "canonical_build_report.json"
        docker = python_command(
            python,
            tools_root / "run_zte_tpd_canonical_build.py",
            "--engineering-root", str(engineering_root),
            "--label", label,
            "--audit-name", label,
            "--cycles", str(cycles),
            "--parallelism", str(parallelism),
            "--image", image,
            "--source-volume", source_volume,
            "--toolchain-volume", toolchain_volume,
            "--clang-revision", clang_revision,
            "--candidate-source", str(source_root),
            "--artifact-root", str(output_dir / "docker" / "artifacts"),
            "--output", str(docker_report),
        )
    else:
        docker_report = output_dir / "docker" / "driver_audit.json"
        # Generic modules live in the repository's reconstructed tree.  The
        # validator must receive that tree so it can resolve public stock and
        # Ghidra evidence from the same immutable repository root; using the
        # engineering curated snapshot here silently audits an unrelated or
        # empty directory for auxiliary drivers.
        curated_root = source_root.parent
        docker = python_command(
            python,
            tools_root / "validate_reconstructed_drivers.py",
            "--curated-root", str(curated_root),
            "--driver", job["driver"],
            "--rebuild",
            "--work-root", str(output_dir / "docker" / "work"),
            "--output", str(docker_report),
            "--markdown", str(output_dir / "docker" / "driver_audit.md"),
            "--image", image,
            "--source-volume", source_volume,
            "--toolchain-volume", toolchain_volume,
            "--clang-revision", clang_revision,
            "--target-kernel-manifest",
            str((repo_root / "kernel_development" / "config" / "target_kernel.json").resolve()),
            "--strict",
        )
        run_root = docker_config.get("run_root")
        if run_root:
            run_root_path = Path(str(run_root))
            if not run_root_path.is_absolute():
                run_root_path = engineering_root / run_root_path
            docker[ docker.index("--strict"):docker.index("--strict") ] = [
                "--run-root", str(run_root_path.resolve()),
            ]
    slice_config = joern_config.get("slice", {})
    slice_mode = slice_config.get("mode", "off")
    slice_command: list[str] | None = None
    if slice_mode != "off":
        launcher = (
            joern_home / "joern-cli" / ("joern-slice.bat" if os.name == "nt" else "joern-slice")
            if joern_home else Path("joern-slice")
        )
        # Windows batch launchers re-parse regex metacharacters.  Use the
        # longest literal prefix shared by the selected methods, which avoids
        # cmd.exe treating `|` as a shell pipe while keeping the slice scoped
        # to this driver's method family (gf_ for fp_goodix).
        if os.name == "nt":
            source_names = [str(item["source_function"]) for item in functions]
            common_prefix = os.path.commonprefix(source_names)
            method_filter = "^" + re.escape(common_prefix) if common_prefix else ".*"
        else:
            method_filter = "^" + "|".join(
                re.escape(item["source_function"]) for item in functions
            ) + "$"
        slice_command = [
            str(launcher),
            slice_mode,
            "--method-name-filter", method_filter,
            "--parallelism", str(int(slice_config.get("parallelism", parallelism))),
        ]
        if slice_mode == "data-flow":
            slice_command.extend(["--slice-depth", str(int(slice_config.get("depth", 12)))])
            sink_filter = slice_config.get("sink_filter")
            if sink_filter:
                slice_command.extend([
                    "--sink-filter", ".*" if os.name == "nt" else str(sink_filter)
                ])
        else:
            slice_command.extend(["--min-num-calls", str(int(slice_config.get("min_num_calls", 1)))])
        slice_command.append(str(joern_dir / "source.cpg.bin"))

    return {
        "joern": joern,
        "joern_slice": slice_command,
        "docker": docker,
        "docker_adapter": adapter,
        "docker_report": str(docker_report),
        "after_candidate": {
            "kcfi": "extract_kcfi.py stock/candidate, then compare_kcfi_reports.py",
            "assembly": "extract_module_assembly.py stock/candidate, then compare_function_assembly.py",
            "candidate_ghidra": "compare_ghidra_function_semantics.py when a fresh candidate export is supplied",
        },
    }


def runnable_argv(argv: list[str]) -> list[str]:
    if os.name == "nt" and Path(argv[0]).suffix.lower() in {".bat", ".cmd"}:
        command = subprocess.list2cmdline(argv)
        return [os.environ.get("COMSPEC", "cmd.exe"), "/d", "/s", "/c", command]
    return argv


def terminate_process_tree(process: subprocess.Popen[str]) -> None:
    """Stop a timed-out command and children such as Java behind a .bat file."""
    if process.poll() is not None:
        return
    if os.name == "nt":
        subprocess.run(
            ["taskkill", "/PID", str(process.pid), "/T", "/F"],
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL,
            check=False,
        )
    else:
        try:
            os.killpg(os.getpgid(process.pid), signal.SIGKILL)
        except (OSError, ProcessLookupError):
            process.kill()


def run_command(
    name: str,
    argv: list[str],
    *,
    output_dir: Path,
    timeout: int,
    env: dict[str, str] | None = None,
    cwd: Path | None = None,
) -> dict[str, Any]:
    started = time.monotonic()
    stdout_path = output_dir / "logs" / f"{name}.stdout.log"
    stderr_path = output_dir / "logs" / f"{name}.stderr.log"
    stdout_path.parent.mkdir(parents=True, exist_ok=True)
    command = runnable_argv(argv)
    popen_kwargs: dict[str, Any] = {
        "text": True,
        "stdout": subprocess.PIPE,
        "stderr": subprocess.PIPE,
        "env": env,
        "cwd": str(cwd) if cwd else None,
    }
    if os.name != "nt":
        popen_kwargs["start_new_session"] = True
    process = subprocess.Popen(command, **popen_kwargs)
    try:
        stdout, stderr = process.communicate(timeout=timeout)
        returncode = process.returncode
        timed_out = False
    except subprocess.TimeoutExpired:
        terminate_process_tree(process)
        try:
            stdout, stderr = process.communicate(timeout=5)
        except subprocess.TimeoutExpired:
            process.kill()
            stdout, stderr = process.communicate()
        returncode = 124
        stderr += f"\nTIMEOUT after {timeout} seconds\n"
        timed_out = True
    if isinstance(stdout, bytes):
        stdout = stdout.decode("utf-8", errors="replace")
    if isinstance(stderr, bytes):
        stderr = stderr.decode("utf-8", errors="replace")
    stdout_path.write_text(stdout, encoding="utf-8", errors="replace")
    stderr_path.write_text(stderr, encoding="utf-8", errors="replace")
    return {
        "argv": argv,
        "returncode": returncode,
        "timed_out": timed_out,
        "timeout_seconds": timeout,
        "duration_seconds": round(time.monotonic() - started, 3),
        "stdout": file_record(stdout_path),
        "stderr": file_record(stderr_path),
        "stdout_tail": stdout[-4000:],
        "stderr_tail": stderr[-4000:],
    }


def report_passed(path: Path, *, adapter: str | None = None) -> bool:
    if not path.is_file():
        return False
    payload = read_json(path)
    if adapter == "generic_driver_audit":
        drivers = payload.get("drivers", [])
        return bool(drivers) and all(
            isinstance(item, dict)
            and bool(item.get("build", {}).get("passed"))
            and bool(item.get("build", {}).get("reproducible"))
            for item in drivers
        )
    return bool(payload.get("passed"))


def assembly_only_ghidra_exemption(
    functions: list[dict[str, Any]], report_path: Path
) -> dict[str, Any] | None:
    """Use ELF evidence as semantic authority for a declared exact island."""
    if not functions or not all(item.get("assembly_only", False) for item in functions):
        return None
    if not report_path.is_file():
        return None
    payload = read_json(report_path)
    if payload.get("identity_failures"):
        return None
    results = payload.get("results")
    if not isinstance(results, list) or len(results) != len(functions):
        return None
    if not all(
        isinstance(item, dict)
        and isinstance(item.get("checks"), dict)
        and item["checks"].get("body_bytes") is True
        for item in results
    ):
        return None
    return {
        "kind": "ASSEMBLY_ONLY_GHIDRA_SEMANTIC_EXEMPTION",
        "authority": "ELF-bounded opcodes, relocations, KCFI and fresh-module identity",
        "reason": (
            "Ghidra decompiler/P-Code shape is non-authoritative for an exact "
            "assembly island; fresh export identity and function body bytes match."
        ),
        "functions": [str(item.get("source_function", "")) for item in functions],
    }


def candidate_from_docker_report(path: Path, adapter: str) -> Path | None:
    if not path.is_file():
        return None
    payload = read_json(path)
    if adapter == "zte_tpd_canonical":
        value = payload.get("candidate", {}).get("path")
    else:
        drivers = payload.get("drivers", [])
        value = (
            drivers[0].get("build", {}).get("second_build", {}).get("path")
            if drivers and isinstance(drivers[0], dict) else None
        )
    if not isinstance(value, str) or not value:
        return None
    candidate = Path(value).resolve()
    return candidate if candidate.is_file() else None


def evidence_inventory(repo_root: Path, evidence: Any) -> dict[str, Any]:
    if evidence is None:
        return {}
    if not isinstance(evidence, dict):
        raise ValueError("evidence must be an object")
    inventory: dict[str, Any] = {}
    for category, raw_items in sorted(evidence.items()):
        items = raw_items if isinstance(raw_items, list) else [raw_items]
        records = []
        for item in items:
            expected = None
            value = item
            if isinstance(item, dict):
                value = item.get("path")
                expected = item.get("sha256")
            if not isinstance(value, str) or not value:
                records.append({"path": value, "status": "INVALID"})
                continue
            path = resolve_repo_path(repo_root, value, label=f"evidence.{category}")
            if not path.is_file():
                records.append({"path": str(path), "status": "MISSING"})
                continue
            record = file_record(path)
            record["status"] = "PRESENT_UNREVIEWED"
            record["expected_sha256"] = expected
            record["hash_matches"] = expected is None or expected == record["sha256"]
            if not record["hash_matches"]:
                record["status"] = "HASH_MISMATCH"
            records.append(record)
        inventory[category] = records
    return inventory


def execute_post_candidate(
    *,
    job: dict[str, Any],
    functions: list[dict[str, Any]],
    repo_root: Path,
    output_dir: Path,
    python: Path,
    stock_module: Path,
    candidate_module: Path,
    stock_ghidra_export: Path | None,
    candidate_ghidra_export: Path | None,
    docker_config: dict[str, Any],
    command_timeout: int,
) -> tuple[dict[str, Any], dict[str, str]]:
    tools_root = repo_root / "workspace_tools" / "reconstruction_pipeline"
    commands: dict[str, Any] = {}
    gates: dict[str, str] = {}
    aliases = [item["alias"] for item in functions]
    (output_dir / "kcfi").mkdir(parents=True, exist_ok=True)
    stock_kcfi = output_dir / "kcfi" / "stock.json"
    candidate_kcfi = output_dir / "kcfi" / "candidate.json"
    kcfi_comparison = output_dir / "kcfi" / "comparison.json"
    stock_args: list[str] = []
    candidate_args: list[str] = []
    for item in functions:
        stock_selector = item["stock_function"]
        candidate_selector = item.get("candidate_function", item["source_function"])
        if item.get("stock_symbol_offset") is not None:
            stock_selector += f"@{item['stock_symbol_offset']}"
        if item.get("candidate_symbol_offset") is not None:
            candidate_selector += f"@{item['candidate_symbol_offset']}"
        stock_args.extend(["--record", f"{item['alias']}={stock_selector}"])
        candidate_args.extend(["--record", f"{item['alias']}={candidate_selector}"])
    kcfi_commands = {
        "kcfi_stock": python_command(
            python, tools_root / "extract_kcfi.py", str(stock_module), *stock_args,
            "--output", str(stock_kcfi),
        ),
        "kcfi_candidate": python_command(
            python, tools_root / "extract_kcfi.py", str(candidate_module), *candidate_args,
            "--output", str(candidate_kcfi),
        ),
    }
    kcfi_config = job.get("kcfi", {})
    direct_call_only = {
        str(name) for name in kcfi_config.get("direct_call_only", [])
    } if isinstance(kcfi_config, dict) else set()
    selected_functions = {str(item["stock_function"]) for item in functions}
    if direct_call_only and selected_functions <= direct_call_only:
        direct_ok = bool(stock_ghidra_export and candidate_ghidra_export)
        for name, argv in kcfi_commands.items():
            result = run_command(name, argv, output_dir=output_dir, timeout=command_timeout)
            commands[name] = result
            if result["returncode"] != 0:
                direct_ok = False
        for item in functions:
            alias = str(item["alias"])
            direct_report = output_dir / "kcfi" / f"direct_call_{alias}.json"
            direct_argv = python_command(
                python,
                tools_root / "build_kcfi_direct_call_decision.py",
                "--driver", job["driver"],
                "--function", item["stock_function"],
                "--stock-kcfi-report", str(stock_kcfi),
                "--candidate-kcfi-report", str(candidate_kcfi),
                "--stock-calls", str(stock_ghidra_export / "calls.jsonl")
                if stock_ghidra_export else "",
                "--candidate-calls", str(candidate_ghidra_export / "calls.jsonl")
                if candidate_ghidra_export else "",
                "--stock", str(stock_module),
                "--candidate", str(candidate_module),
                "--workspace", str(repo_root),
                "--output", str(direct_report),
            )
            name = f"kcfi_direct_call_{alias}"
            if direct_ok:
                result = run_command(name, direct_argv, output_dir=output_dir, timeout=command_timeout)
                commands[name] = result
                direct_ok = result["returncode"] == 0 and report_passed(direct_report)
            else:
                commands[name] = {
                    "argv": direct_argv,
                    "returncode": 2,
                    "stderr_tail": "stock/candidate Ghidra calls exports are required for direct-call KCFI proof",
                }
        gates["KCFI"] = "PASS" if direct_ok else "FAIL"
    else:
        compare = python_command(
            python,
            tools_root / "compare_kcfi_reports.py",
            str(stock_kcfi),
            str(candidate_kcfi),
            "--output", str(kcfi_comparison),
        )
        for alias in aliases:
            compare.extend(["--require-function", alias])
        if isinstance(kcfi_config, dict) and kcfi_config.get("ignore_size", False):
            compare.append("--ignore-size")
        kcfi_commands["kcfi_compare"] = compare
        kcfi_ok = True
        for name, argv in kcfi_commands.items():
            result = run_command(name, argv, output_dir=output_dir, timeout=command_timeout)
            commands[name] = result
            if result["returncode"] != 0:
                kcfi_ok = False
                break
        gates["KCFI"] = "PASS" if kcfi_ok and report_passed(kcfi_comparison) else "FAIL"

    image = str(docker_config.get("image", "nubia-sm8850-kernel-builder:latest"))
    toolchain_volume = str(docker_config.get("toolchain_volume", "nubia_sm8850_kernel_toolchains"))
    clang_revision = str(docker_config.get("clang_revision", "clang-r536225"))
    stock_assembly = output_dir / "assembly" / "stock"
    candidate_assembly = output_dir / "assembly" / "candidate"
    stock_extract = python_command(
        python, tools_root / "extract_module_assembly.py", str(stock_module),
        "--output-dir", str(stock_assembly), "--image", image,
        "--toolchain-volume", toolchain_volume, "--clang-revision", clang_revision,
    )
    candidate_extract = python_command(
        python, tools_root / "extract_module_assembly.py", str(candidate_module),
        "--output-dir", str(candidate_assembly), "--image", image,
        "--toolchain-volume", toolchain_volume, "--clang-revision", clang_revision,
    )
    pairs: list[str] = []
    for item in functions:
        stock_selector = item["stock_function"]
        candidate_selector = item.get("candidate_function", item["source_function"])
        if item.get("stock_symbol_offset") is not None:
            stock_selector += f"@{item['stock_symbol_offset']}"
        if item.get("candidate_symbol_offset") is not None:
            candidate_selector += f"@{item['candidate_symbol_offset']}"
        stock_extract.extend(["--function", stock_selector])
        candidate_extract.extend(["--function", candidate_selector])
        pairs.append(f"{stock_selector}={candidate_selector}")
    assembly_report = output_dir / "assembly" / "comparison.json"
    assembly_compare = python_command(
        python, tools_root / "compare_function_assembly.py",
        "--stock-dir", str(stock_assembly),
        "--candidate-dir", str(candidate_assembly),
        "--output", str(assembly_report),
    )
    for pair in pairs:
        assembly_compare.extend(["--function-pair", pair])
    assembly_ok = True
    for name, argv in {
        "assembly_stock": stock_extract,
        "assembly_candidate": candidate_extract,
        "assembly_compare": assembly_compare,
    }.items():
        result = run_command(name, argv, output_dir=output_dir, timeout=command_timeout)
        commands[name] = result
        if result["returncode"] != 0:
            assembly_ok = False
            break
    gates["ASSEMBLY_RELOCATIONS"] = (
        "PASS" if assembly_ok and report_passed(assembly_report) else "FAIL"
    )

    candidate_export_value = job.get("paths", {}).get("candidate_ghidra_export")
    if candidate_export_value:
        candidate_export = resolve_repo_path(
            repo_root, candidate_export_value, label="paths.candidate_ghidra_export"
        )
        ghidra_report = output_dir / "ghidra" / "semantic_comparison.json"
        ghidra_command = python_command(
            python, tools_root / "compare_ghidra_function_semantics.py",
            "--stock-export", str(resolve_repo_path(
                repo_root, job["paths"]["ghidra_export"], label="paths.ghidra_export"
            )),
            "--candidate-export", str(candidate_export),
            "--stock-module", str(stock_module),
            "--candidate-module", str(candidate_module),
            "--output", str(ghidra_report),
        )
        for item in functions:
            # init_module/cleanup_module are ELF entry aliases emitted by
            # module_init/module_exit; compare the stock and candidate Ghidra
            # symbols, while keeping source_function for Joern/map identity.
            candidate_function = item.get("candidate_function", item["source_function"])
            if item["stock_function"] != candidate_function:
                ghidra_command.extend(["--function-pair", f"{item['stock_function']}={candidate_function}"])
            else:
                ghidra_command.extend(["--function", item["stock_function"]])
        ghidra_config = job.get("ghidra", {})
        if isinstance(ghidra_config, dict) and ghidra_config.get(
            "allow_pcode_authoritative_decompiler_fallback", False
        ):
            ghidra_command.append("--allow-pcode-authoritative-decompiler-fallback")
        if isinstance(ghidra_config, dict) and ghidra_config.get(
            "allow_return_propagation_fallback", False
        ):
            ghidra_command.append("--allow-ghidra-return-propagation-fallback")
        if isinstance(ghidra_config, dict) and ghidra_config.get(
            "allow_section_address_normalization", False
        ):
            ghidra_command.append("--allow-section-address-normalization")
        if isinstance(ghidra_config, dict) and ghidra_config.get(
            "allow_ghidra_data_field_slice_fallback", False
        ):
            ghidra_command.append("--allow-ghidra-data-field-slice-fallback")
        if isinstance(ghidra_config, dict) and ghidra_config.get(
            "allow_shared_data_binding_normalization", False
        ):
            ghidra_command.append("--allow-shared-data-binding-normalization")
        result = run_command(
            "ghidra_semantics", ghidra_command,
            output_dir=output_dir, timeout=command_timeout,
        )
        commands["ghidra_semantics"] = result
        ghidra_pass = result["returncode"] == 0 and report_passed(ghidra_report)
        if not ghidra_pass:
            exemption = assembly_only_ghidra_exemption(functions, ghidra_report)
            if exemption is not None:
                result["analysis_exemption"] = exemption
                ghidra_pass = True
        gates["CANDIDATE_GHIDRA_PCODE"] = "PASS" if ghidra_pass else "FAIL"
    return commands, gates


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--job", type=Path, required=True)
    parser.add_argument("--repo-root", type=Path, default=Path(__file__).resolve().parents[2])
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument("--mode", choices=("plan", "core"), default="plan")
    parser.add_argument(
        "--function",
        action="append",
        dest="functions",
        default=[],
        help="source function or exact stock_function@entry to run; repeat to select a subset",
    )
    parser.add_argument("--python", type=Path, default=Path(sys.executable))
    parser.add_argument("--engineering-root", type=Path)
    parser.add_argument("--joern-home", type=Path)
    parser.add_argument("--java-home", type=Path)
    parser.add_argument("--joern-timeout", type=int, default=1200)
    parser.add_argument("--docker-timeout", type=int, default=1800)
    parser.add_argument("--slice-timeout", type=int, default=300)
    parser.add_argument("--post-timeout", type=int, default=600)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    repo_root = args.repo_root.resolve()
    output_dir = args.output_dir.resolve()
    if output_dir.exists() and any(output_dir.iterdir()):
        raise FileExistsError(f"refusing to mix evidence in non-empty output: {output_dir}")
    output_dir.mkdir(parents=True, exist_ok=True)
    job_path = args.job.resolve()
    job = read_json(job_path)
    functions = select_functions(validate_job(job), args.functions)
    if not functions:
        raise ValueError("function selection produced no functions")
    paths = job["paths"]
    source_root = resolve_repo_path(repo_root, paths["source_root"], label="paths.source_root")
    stock_module = resolve_repo_path(repo_root, paths["stock_module"], label="paths.stock_module")
    ghidra_export = resolve_repo_path(repo_root, paths["ghidra_export"], label="paths.ghidra_export")
    reconstruction_map = resolve_repo_path(
        repo_root, paths["reconstruction_map"], label="paths.reconstruction_map"
    )
    required_inputs = [
        source_root,
        stock_module,
        ghidra_export / "functions.jsonl",
        ghidra_export / "calls.jsonl",
        reconstruction_map,
    ]
    missing = [str(path) for path in required_inputs if not path.exists()]
    if missing:
        raise FileNotFoundError("missing required inputs: " + ", ".join(missing))
    expected_stock = job.get("stock_sha256")
    observed_stock = sha256_file(stock_module)
    if expected_stock and expected_stock != observed_stock:
        raise ValueError(
            f"stock SHA-256 mismatch: expected {expected_stock}, observed {observed_stock}"
        )
    map_payload = read_json(reconstruction_map)
    bindings, map_blockers = find_map_bindings(map_payload, functions)
    gates_required = required_gates(job, functions)
    engineering_root = (
        args.engineering_root.resolve()
        if args.engineering_root else (repo_root.parent / "kernel-docker-workspace" / "engenharia").resolve()
    )
    joern_lock = read_json(
        repo_root / "workspace_tools" / "reconstruction_pipeline" / "joern" / "joern.lock.json"
    )
    joern_home = (
        args.joern_home.resolve()
        if args.joern_home else (repo_root / joern_lock["runtime"]["install_directory"]).resolve()
    )
    java_home = args.java_home.resolve() if args.java_home else (
        Path(os.environ["JAVA_HOME"]).resolve() if os.environ.get("JAVA_HOME") else None
    )
    command_plan = build_command_plan(
        job=job,
        functions=functions,
        repo_root=repo_root,
        output_dir=output_dir,
        python=args.python.resolve(),
        engineering_root=engineering_root,
        source_root=source_root,
        stock_module=stock_module,
        ghidra_export=ghidra_export,
        reconstruction_map=reconstruction_map,
        joern_home=joern_home,
        java_home=java_home,
    )
    manifest = {
        "schema_version": SCHEMA_VERSION,
        "generated_utc": utc_now(),
        "mode": args.mode,
        "job": file_record(job_path),
        "driver": job["driver"],
        "profiles": job["profiles"],
        "functions": functions,
        "stock_module": file_record(stock_module),
        "source": source_tree_record(source_root),
        "ghidra": {
            "root": str(ghidra_export),
            "functions": file_record(ghidra_export / "functions.jsonl"),
            "calls": file_record(ghidra_export / "calls.jsonl"),
        },
        "reconstruction_map": file_record(reconstruction_map),
        "map_bindings": bindings,
        "runtimes": {
            "python": str(args.python.resolve()),
            "engineering_root": str(engineering_root),
            "joern_home": str(joern_home),
            "java_home": str(java_home) if java_home else None,
            "joern_lock": file_record(
                repo_root / "workspace_tools" / "reconstruction_pipeline" / "joern" / "joern.lock.json"
            ),
        },
        "evidence": evidence_inventory(repo_root, job.get("evidence")),
    }
    write_json(output_dir / "input_manifest.json", manifest)
    plan_blockers = list(map_blockers)
    if java_home is None:
        plan_blockers.append("JAVA_HOME or --java-home is required for Joern execution")
    if not engineering_root.is_dir():
        plan_blockers.append(f"Docker engineering root is missing: {engineering_root}")
    if not joern_home.is_dir():
        plan_blockers.append(f"pinned Joern home is missing: {joern_home}")
    plan = {
        "schema_version": SCHEMA_VERSION,
        "generated_utc": utc_now(),
        "driver": job["driver"],
        "functions": functions,
        "profiles": job["profiles"],
        "required_gates": gates_required,
        "command_plan": command_plan,
        "blockers": plan_blockers,
        "ready_for_core_execution": not plan_blockers,
        "safety": {
            "source_edits": False,
            "curated_sync": False,
            "microtask_status_changes": False,
            "promotion": False,
            "hardware_execution": False,
        },
    }
    write_json(output_dir / "hard_protocol_plan.json", plan)
    if args.mode == "plan":
        print(json.dumps({
            "status": "READY" if not plan_blockers else "BLOCKED",
            "output": str(output_dir / "hard_protocol_plan.json"),
            "blockers": len(plan_blockers),
        }, sort_keys=True))
        return 0 if not plan_blockers else 1
    if plan_blockers:
        raise ValueError("core execution blocked: " + "; ".join(plan_blockers))

    command_results: dict[str, Any] = {}
    gate_status = {
        "INPUT_IDENTITY": "PASS",
        "MAP_IDENTITY": "PASS",
    }
    env = os.environ.copy()
    if java_home:
        env["JAVA_HOME"] = str(java_home)
        env["PATH"] = str(java_home / "bin") + os.pathsep + env.get("PATH", "")
    joern_result = run_command(
        "joern", command_plan["joern"], output_dir=output_dir,
        timeout=args.joern_timeout, env=env,
    )
    command_results["joern"] = joern_result
    joern_report = output_dir / "joern" / "joern_gate_report.json"
    gate_status["JOERN_SCOPED"] = (
        "PASS" if joern_result["returncode"] == 0 and report_passed(joern_report) else "FAIL"
    )
    if command_plan["joern_slice"] is not None:
        if gate_status["JOERN_SCOPED"] == "PASS":
            (output_dir / "joern" / "slices").mkdir(parents=True, exist_ok=True)
            slice_result = run_command(
                "joern_slice", command_plan["joern_slice"], output_dir=output_dir,
                timeout=args.slice_timeout, env=env,
                cwd=output_dir / "joern" / "slices",
            )
            command_results["joern_slice"] = slice_result
            slice_files = [
                file_record(path)
                for path in sorted((output_dir / "joern" / "slices").rglob("*"))
                if path.is_file()
            ]
            gate_status["JOERN_SLICE"] = (
                "PASS" if slice_result["returncode"] == 0 and slice_files else "FAIL"
            )
            command_results["joern_slice"]["artifacts"] = slice_files
        else:
            gate_status["JOERN_SLICE"] = "BLOCKED_BY_JOERN"
    elif "JOERN_SLICE" in gates_required:
        gate_status["JOERN_SLICE"] = "NOT_CONFIGURED"

    docker_result = run_command(
        "docker", command_plan["docker"], output_dir=output_dir,
        timeout=args.docker_timeout,
    )
    command_results["docker"] = docker_result
    docker_report = Path(command_plan["docker_report"])
    docker_pass = report_passed(
        docker_report, adapter=command_plan["docker_adapter"]
    ) and (
        command_plan["docker_adapter"] == "generic_driver_audit"
        or docker_result["returncode"] == 0
    )
    gate_status["DOCKER_REPRODUCIBLE"] = "PASS" if docker_pass else "FAIL"
    candidate_module = candidate_from_docker_report(
        docker_report, command_plan["docker_adapter"]
    ) if docker_pass else None
    if candidate_module:
        post_commands, post_gates = execute_post_candidate(
            job=job,
            functions=functions,
            repo_root=repo_root,
            output_dir=output_dir,
            python=args.python.resolve(),
            stock_module=stock_module,
            candidate_module=candidate_module,
            stock_ghidra_export=resolve_repo_path(
                repo_root, job["paths"]["ghidra_export"], label="paths.ghidra_export"
            ),
            candidate_ghidra_export=resolve_repo_path(
                repo_root, job["paths"].get("candidate_ghidra_export", ""),
                label="paths.candidate_ghidra_export",
            ) if job["paths"].get("candidate_ghidra_export") else None,
            docker_config=job.get("docker", {}),
            command_timeout=args.post_timeout,
        )
        command_results.update(post_commands)
        gate_status.update(post_gates)
    else:
        gate_status["ASSEMBLY_RELOCATIONS"] = "BLOCKED_BY_DOCKER"
        if "KCFI" in gates_required:
            gate_status["KCFI"] = "BLOCKED_BY_DOCKER"
        if "CANDIDATE_GHIDRA_PCODE" in gates_required:
            gate_status["CANDIDATE_GHIDRA_PCODE"] = "BLOCKED_BY_DOCKER"

    automated_required = sorted(
        name for name, spec in gates_required.items() if spec["kind"] == "AUTOMATED"
    )
    for name in automated_required:
        gate_status.setdefault(name, "NOT_EXECUTED")
    core_pass = all(gate_status.get(name) == "PASS" for name in automated_required)
    evidence_required = sorted(
        name for name, spec in gates_required.items() if spec["kind"] == "EVIDENCE"
    )
    report = {
        "schema_version": SCHEMA_VERSION,
        "generated_utc": utc_now(),
        "driver": job["driver"],
        "functions": functions,
        "candidate_module": file_record(candidate_module) if candidate_module else None,
        "automated_required_gates": automated_required,
        "evidence_required_gates": evidence_required,
        "gate_status": gate_status,
        "command_results": command_results,
        "core_status": "CORE_GATES_PASS" if core_pass else "CORE_GATES_FAIL",
        "promotion_authorized": False,
        "limitations": [
            "Core gates do not prove physical hardware behavior.",
            "Evidence marked present in the input manifest remains unreviewed here.",
            "Only the existing selective attestors plus independent review may change a microtask state.",
        ],
    }
    write_json(output_dir / "hard_protocol_report.json", report)
    decision = {
        "schema_version": SCHEMA_VERSION,
        "generated_utc": utc_now(),
        "decision": "NOT_AUTHORIZED",
        "core_status": report["core_status"],
        "reason": "This runner is non-promoting by design.",
        "required_next": evidence_required,
        "hardware_status": "DEFERRED" if "HARDWARE_RUNTIME" in gates_required else "OUT_OF_SCOPE",
    }
    write_json(output_dir / "promotion_decision.json", decision)
    print(json.dumps({
        "status": report["core_status"],
        "report": str(output_dir / "hard_protocol_report.json"),
        "promotion_authorized": False,
    }, sort_keys=True))
    return 0 if core_pass else 1


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, json.JSONDecodeError) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(2)
