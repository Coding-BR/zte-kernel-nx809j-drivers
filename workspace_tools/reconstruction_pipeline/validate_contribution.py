#!/usr/bin/env python3
"""Validate a hash-backed NX809J contribution bundle without executing PR code."""

from __future__ import annotations

import argparse
import hashlib
import json
import re
import subprocess
import sys
from pathlib import Path, PurePosixPath
from typing import Any


SCHEMA_VERSION = "1.0"
SUBMISSION_RE = re.compile(r"^[a-z0-9][a-z0-9._-]{2,63}$")
DRIVER_RE = re.compile(r"^(?:zte|zlog)_[a-z0-9_]+$")
SHA256_RE = re.compile(r"^[0-9a-f]{64}$")
COMMIT_RE = re.compile(r"^[0-9a-f]{40}$")
EXPECTED_WORKFLOWS = {".github/workflows/contribution-gate.yml"}
REQUIRED_WORKFLOW_MARKERS = (
    "pull_request_target:",
    "contents: read",
    "persist-credentials: false",
    "github.event.pull_request.base.sha",
    "validate_contribution.py",
)
FORBIDDEN_WORKFLOW_PATTERNS = {
    "kernel build tool": re.compile(r"\b(?:make|bazel|ninja|kleaf)\b", re.IGNORECASE),
    "container build or execution": re.compile(
        r"\bdocker\s+(?:build|buildx|compose|run)\b", re.IGNORECASE
    ),
    "compiler invocation": re.compile(r"\b(?:clang|gcc|ld\.lld)\b", re.IGNORECASE),
    "device or module operation": re.compile(
        r"\b(?:adb|fastboot|insmod|rmmod|modprobe)\b", re.IGNORECASE
    ),
    "kernel build wrapper": re.compile(
        r"(?:build_kernel|build-kernel|build\.ps1|build_kernel\.sh)", re.IGNORECASE
    ),
}

CHECK_MARKERS = {
    "reference_modules": ("manage_reference_modules.py", "verify"),
    "environment_static": ("verify_environment.py", "--mode", "static"),
    "validator_tests": (
        "test_validate_contribution",
        "test_validate_module_decomposition",
    ),
    "offline_audit": ("audit_offline_reconstruction.py",),
    "module_decomposition": ("validate_module_decomposition.py", "--check"),
    "double_clean_rebuild": ("validate_reconstructed_drivers.py", "--rebuild"),
    "llm_cycle": ("verify_llm_reconstruction_cycle.py",),
}
BASE_CHECKS = {"reference_modules", "environment_static", "validator_tests"}
DRIVER_CHECKS = {
    "offline_audit",
    "module_decomposition",
    "double_clean_rebuild",
    "llm_cycle",
}
STRICT_DRIVER_CHECKS = {"module_decomposition"}


class ValidationError(ValueError):
    """A contribution violates the public evidence contract."""


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def safe_repo_path(value: Any, *, field: str) -> str:
    if not isinstance(value, str) or not value or "\\" in value:
        raise ValidationError(f"{field}: use a non-empty POSIX repository path")
    path = PurePosixPath(value)
    if path.is_absolute() or ".." in path.parts or "." in path.parts:
        raise ValidationError(f"{field}: path traversal or absolute path is forbidden")
    return path.as_posix()


def git(repo: Path, *args: str, binary: bool = False) -> bytes | str:
    result = subprocess.run(
        ["git", *args],
        cwd=repo,
        check=False,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
    )
    if result.returncode:
        message = result.stderr.decode("utf-8", errors="replace").strip()
        raise ValidationError(f"git {' '.join(args)} failed: {message}")
    return result.stdout if binary else result.stdout.decode("utf-8", errors="strict")


def resolve_commit(repo: Path, value: str) -> str:
    commit = str(git(repo, "rev-parse", "--verify", f"{value}^{{commit}}")).strip()
    if not COMMIT_RE.fullmatch(commit):
        raise ValidationError(f"invalid commit resolved from {value!r}")
    return commit


def read_blob(repo: Path, commit: str, path: str) -> bytes:
    return bytes(git(repo, "show", f"{commit}:{path}", binary=True))


def diff_entries(repo: Path, base: str, head: str) -> dict[str, str]:
    raw = bytes(
        git(
            repo,
            "diff",
            "--name-status",
            "--no-renames",
            "-z",
            base,
            head,
            binary=True,
        )
    )
    fields = raw.split(b"\0")
    if fields and fields[-1] == b"":
        fields.pop()
    if len(fields) % 2:
        raise ValidationError("unexpected git diff --name-status output")
    entries: dict[str, str] = {}
    for index in range(0, len(fields), 2):
        status = fields[index].decode("ascii", errors="strict")
        path = fields[index + 1].decode("utf-8", errors="strict")
        if status not in {"A", "M", "D", "T"}:
            raise ValidationError(f"unsupported change status {status!r} for {path}")
        entries[safe_repo_path(path, field="git diff path")] = status
    return entries


def parse_json_blob(repo: Path, head: str, path: str) -> dict[str, Any]:
    try:
        value = json.loads(read_blob(repo, head, path).decode("utf-8"))
    except (UnicodeDecodeError, json.JSONDecodeError) as error:
        raise ValidationError(f"{path}: invalid UTF-8 JSON: {error}") from error
    if not isinstance(value, dict):
        raise ValidationError(f"{path}: top-level JSON value must be an object")
    return value


def workflow_blobs(repo: Path, commit: str) -> dict[str, bytes]:
    output = str(
        git(repo, "ls-tree", "-r", "--name-only", commit, "--", ".github/workflows")
    )
    paths = {
        line.strip()
        for line in output.splitlines()
        if line.strip().endswith((".yml", ".yaml"))
    }
    return {path: read_blob(repo, commit, path) for path in sorted(paths)}


def forbidden_workflow_operations(text: str) -> list[str]:
    return [
        name
        for name, pattern in FORBIDDEN_WORKFLOW_PATTERNS.items()
        if pattern.search(text)
    ]


def validate_workflow_policy(repo: Path, base: str, head: str) -> list[str]:
    base_blobs = workflow_blobs(repo, base)
    head_blobs = workflow_blobs(repo, head)
    if set(head_blobs) != EXPECTED_WORKFLOWS:
        raise ValidationError(
            "GitHub Actions policy permits only .github/workflows/contribution-gate.yml"
        )
    if base_blobs != head_blobs:
        raise ValidationError("Pull Requests may not add, delete, or modify GitHub workflows")
    path = next(iter(EXPECTED_WORKFLOWS))
    try:
        text = head_blobs[path].decode("utf-8")
    except UnicodeDecodeError as error:
        raise ValidationError(f"{path}: workflow must be UTF-8") from error
    missing = [marker for marker in REQUIRED_WORKFLOW_MARKERS if marker not in text]
    if missing:
        raise ValidationError(f"{path}: missing safety markers {missing}")
    forbidden = forbidden_workflow_operations(text)
    if forbidden:
        raise ValidationError(f"{path}: forbidden GitHub Actions operations {forbidden}")
    return sorted(head_blobs)


def require_hash(value: Any, *, field: str) -> str:
    if not isinstance(value, str) or not SHA256_RE.fullmatch(value):
        raise ValidationError(f"{field}: expected lowercase SHA-256")
    return value


def verify_hashed_blob(
    repo: Path,
    head: str,
    bundle_root: str,
    record: Any,
    *,
    field: str,
) -> tuple[str, bytes]:
    if not isinstance(record, dict):
        raise ValidationError(f"{field}: expected an object")
    path = safe_repo_path(record.get("path"), field=f"{field}.path")
    if not path.startswith(bundle_root + "/"):
        raise ValidationError(f"{field}.path: evidence must stay inside {bundle_root}")
    expected = require_hash(record.get("sha256"), field=f"{field}.sha256")
    try:
        data = read_blob(repo, head, path)
    except ValidationError as error:
        raise ValidationError(f"{field}: missing committed file {path}") from error
    actual = sha256_bytes(data)
    if actual != expected:
        raise ValidationError(f"{field}: SHA-256 mismatch for {path}")
    return path, data


def scopes_for_paths(paths: set[str]) -> set[str]:
    scopes: set[str] = set()
    for path in paths:
        if path.startswith(("kernel_development/drivers/", "reverse_engineering/")):
            scopes.add("driver")
        elif path.startswith("reference_modules/candidates/") or path.endswith(".ko"):
            scopes.add("driver")
        elif path.startswith(
            (
                ".github/",
                "workspace_tools/",
                "reproducible_environment/",
                "reference_modules/",
            )
        ):
            scopes.add("pipeline")
        elif path == "contributions/schema-v1.json" or path.startswith("contributions/TEMPLATE/"):
            scopes.add("pipeline")
    if not scopes:
        scopes.add("documentation")
    return scopes


def validate_check(
    repo: Path,
    head: str,
    bundle_root: str,
    check: Any,
    *,
    intent: str,
) -> str:
    if not isinstance(check, dict):
        raise ValidationError("checks[]: expected an object")
    check_id = check.get("id")
    if check_id not in CHECK_MARKERS:
        raise ValidationError(f"checks[].id: unknown check {check_id!r}")
    command = check.get("command")
    if not isinstance(command, str) or not command.strip():
        raise ValidationError(f"checks[{check_id}].command: expected a command string")
    for marker in CHECK_MARKERS[check_id]:
        if marker not in command:
            raise ValidationError(f"checks[{check_id}].command: missing {marker!r}")
    exit_code = check.get("exit_code")
    status = check.get("status")
    if not isinstance(exit_code, int) or exit_code < 0:
        raise ValidationError(f"checks[{check_id}].exit_code: expected a non-negative integer")
    if status not in {"PASS", "INCOMPLETE", "FAIL"}:
        raise ValidationError(f"checks[{check_id}].status: invalid status")
    if check_id in BASE_CHECKS | STRICT_DRIVER_CHECKS and (
        exit_code != 0 or status != "PASS"
    ):
        raise ValidationError(f"checks[{check_id}]: foundational check must PASS with exit code 0")
    if intent == "promotion" and (exit_code != 0 or status != "PASS"):
        raise ValidationError(f"checks[{check_id}]: promotion requires PASS with exit code 0")
    if intent == "incremental" and check_id in DRIVER_CHECKS and exit_code not in {0, 1}:
        raise ValidationError(f"checks[{check_id}]: exit code 2+ means the audit did not run correctly")
    verify_hashed_blob(repo, head, bundle_root, check.get("log"), field=f"checks[{check_id}].log")
    if check_id in {"environment_static", *DRIVER_CHECKS}:
        report_path, report_data = verify_hashed_blob(
            repo,
            head,
            bundle_root,
            check.get("report"),
            field=f"checks[{check_id}].report",
        )
        if not report_path.endswith(".json"):
            raise ValidationError(f"checks[{check_id}].report: expected a JSON report")
        try:
            report_value = json.loads(report_data.decode("utf-8"))
        except (UnicodeDecodeError, json.JSONDecodeError) as error:
            raise ValidationError(f"checks[{check_id}].report: invalid JSON: {error}") from error
        if not isinstance(report_value, dict):
            raise ValidationError(f"checks[{check_id}].report: expected a JSON object")
        if check_id == "environment_static" and report_value.get("status") != "PASS":
            raise ValidationError("environment_static report does not declare PASS")
        if check_id == "module_decomposition" and report_value.get("status") != "PASS":
            raise ValidationError("module_decomposition report does not declare PASS")
    return str(check_id)


def validate_manifest(
    repo: Path,
    base: str,
    head: str,
    manifest_path: str,
    actual_changes: dict[str, str],
    lock_hash: str,
) -> set[str]:
    manifest = parse_json_blob(repo, head, manifest_path)
    bundle_root = str(PurePosixPath(manifest_path).parent)
    submission_id = manifest.get("submission_id")
    if not isinstance(submission_id, str) or not SUBMISSION_RE.fullmatch(submission_id):
        raise ValidationError(f"{manifest_path}: invalid submission_id")
    if bundle_root != f"contributions/{submission_id}":
        raise ValidationError(f"{manifest_path}: directory must match submission_id")
    if manifest.get("schema_version") != SCHEMA_VERSION:
        raise ValidationError(f"{manifest_path}: schema_version must be {SCHEMA_VERSION}")
    if manifest.get("base_commit") != base:
        raise ValidationError(f"{manifest_path}: base_commit must equal the PR base SHA {base}")
    if manifest.get("environment_lock_sha256") != lock_hash:
        raise ValidationError(f"{manifest_path}: environment lock hash is stale or incorrect")

    intent = manifest.get("intent")
    if intent not in {"incremental", "promotion"}:
        raise ValidationError(f"{manifest_path}: intent must be incremental or promotion")
    scopes = manifest.get("scopes")
    if not isinstance(scopes, list) or not scopes or len(scopes) != len(set(scopes)):
        raise ValidationError(f"{manifest_path}: scopes must be a non-empty unique list")
    scope_set = set(scopes)
    if not scope_set <= {"documentation", "driver", "pipeline"}:
        raise ValidationError(f"{manifest_path}: unknown contribution scope")
    drivers = manifest.get("drivers")
    if not isinstance(drivers, list) or len(drivers) != len(set(drivers)):
        raise ValidationError(f"{manifest_path}: drivers must be a unique list")
    if not all(isinstance(item, str) and DRIVER_RE.fullmatch(item) for item in drivers):
        raise ValidationError(f"{manifest_path}: invalid driver name")
    if "driver" in scope_set and not drivers:
        raise ValidationError(f"{manifest_path}: driver scope requires at least one driver")

    attestation = manifest.get("attestation")
    if not isinstance(attestation, dict):
        raise ValidationError(f"{manifest_path}: attestation object is required")
    if attestation.get("executed_locally") is not True:
        raise ValidationError(f"{manifest_path}: executed_locally must be true")
    if attestation.get("reviewer_rerun_required") is not True:
        raise ValidationError(f"{manifest_path}: reviewer rerun must remain required")
    for field in ("notes_pt", "notes_en"):
        if not isinstance(attestation.get(field), str) or not attestation[field].strip():
            raise ValidationError(f"{manifest_path}: attestation.{field} is required")

    claims = manifest.get("claims")
    if not isinstance(claims, dict):
        raise ValidationError(f"{manifest_path}: claims object is required")
    if claims.get("static_status") not in {"INCOMPLETE", "STATIC_ALIGNED_CANDIDATE"}:
        raise ValidationError(f"{manifest_path}: invalid static_status claim")
    if claims.get("hardware_status") != "DEFERRED":
        raise ValidationError(f"{manifest_path}: public contribution bundles cannot claim hardware validation")
    if intent == "promotion" and claims.get("static_status") != "STATIC_ALIGNED_CANDIDATE":
        raise ValidationError(f"{manifest_path}: promotion requires STATIC_ALIGNED_CANDIDATE")

    script_records = manifest.get("reproduction_scripts")
    if not isinstance(script_records, list) or not script_records:
        raise ValidationError(f"{manifest_path}: reproduction_scripts are required")
    script_paths: set[str] = set()
    script_text = ""
    for index, record in enumerate(script_records):
        path, data = verify_hashed_blob(
            repo,
            head,
            bundle_root,
            record,
            field=f"reproduction_scripts[{index}]",
        )
        if not path.endswith((".ps1", ".sh")):
            raise ValidationError(f"{manifest_path}: reproduction script must be .ps1 or .sh")
        script_paths.add(PurePosixPath(path).name)
        script_text += data.decode("utf-8", errors="strict") + "\n"
    if not {"reproduce.ps1", "reproduce.sh"} <= script_paths:
        raise ValidationError(f"{manifest_path}: both reproduce.ps1 and reproduce.sh are required")

    checks = manifest.get("checks")
    if not isinstance(checks, list):
        raise ValidationError(f"{manifest_path}: checks must be a list")
    check_ids = [
        validate_check(repo, head, bundle_root, item, intent=intent)
        for item in checks
    ]
    if len(check_ids) != len(set(check_ids)):
        raise ValidationError(f"{manifest_path}: duplicate check IDs")
    required_checks = set(BASE_CHECKS)
    if "driver" in scope_set:
        required_checks.update(DRIVER_CHECKS)
    missing_checks = required_checks - set(check_ids)
    if missing_checks:
        raise ValidationError(f"{manifest_path}: missing checks {sorted(missing_checks)}")
    for check_id in required_checks:
        for marker in CHECK_MARKERS[check_id]:
            if marker not in script_text:
                raise ValidationError(f"{manifest_path}: reproduction scripts omit {marker!r}")

    changed_records = manifest.get("changed_files")
    if not isinstance(changed_records, list) or not changed_records:
        raise ValidationError(f"{manifest_path}: changed_files must not be empty")
    covered: set[str] = set()
    for index, record in enumerate(changed_records):
        if not isinstance(record, dict):
            raise ValidationError(f"{manifest_path}: changed_files[{index}] must be an object")
        path = safe_repo_path(record.get("path"), field=f"changed_files[{index}].path")
        if path == bundle_root or path.startswith(bundle_root + "/"):
            raise ValidationError(f"{manifest_path}: changed_files must not list bundle metadata")
        if path in covered:
            raise ValidationError(f"{manifest_path}: duplicate changed file {path}")
        actual_status = actual_changes.get(path)
        if actual_status is None:
            raise ValidationError(f"{manifest_path}: {path} is not changed in this PR")
        if record.get("change") != actual_status:
            raise ValidationError(f"{manifest_path}: wrong change status for {path}")
        expected_hash = record.get("sha256")
        if actual_status == "D":
            if expected_hash is not None:
                raise ValidationError(f"{manifest_path}: deleted file {path} must have null sha256")
        else:
            require_hash(expected_hash, field=f"changed_files[{index}].sha256")
            if sha256_bytes(read_blob(repo, head, path)) != expected_hash:
                raise ValidationError(f"{manifest_path}: changed file hash mismatch for {path}")
        covered.add(path)

    required_scopes = scopes_for_paths(covered)
    if not required_scopes <= scope_set:
        raise ValidationError(
            f"{manifest_path}: scopes {sorted(scope_set)} do not cover {sorted(required_scopes)}"
        )
    return covered


def validate(repo: Path, base_value: str, head_value: str) -> dict[str, Any]:
    base = resolve_commit(repo, base_value)
    head = resolve_commit(repo, head_value)
    ancestor = subprocess.run(
        ["git", "merge-base", "--is-ancestor", base, head],
        cwd=repo,
        check=False,
    )
    if ancestor.returncode != 0:
        raise ValidationError("base commit is not an ancestor of head")
    workflow_paths = validate_workflow_policy(repo, base, head)
    changes = diff_entries(repo, base, head)
    if not changes:
        raise ValidationError("empty contribution")
    manifest_paths = sorted(
        path
        for path, status in changes.items()
        if status == "A"
        and path.startswith("contributions/")
        and path.endswith("/manifest.json")
        and not path.startswith("contributions/TEMPLATE/")
    )
    if not manifest_paths:
        raise ValidationError("every PR must add a new contributions/<id>/manifest.json")
    if len(manifest_paths) != 1:
        raise ValidationError("each PR must use exactly one new contribution bundle")
    for path, status in changes.items():
        if (
            path.startswith("contributions/")
            and path.endswith("/manifest.json")
            and not path.startswith("contributions/TEMPLATE/")
            and status != "A"
        ):
            raise ValidationError(f"historical contribution manifests are immutable: {path}")
    lock_hash = sha256_bytes(read_blob(repo, head, "reproducible_environment/environment.lock.json"))
    bundle_root = str(PurePosixPath(manifest_paths[0]).parent)
    expected_coverage = {
        path
        for path in changes
        if path != bundle_root and not path.startswith(bundle_root + "/")
    }
    all_covered: set[str] = set()
    for manifest_path in manifest_paths:
        covered = validate_manifest(repo, base, head, manifest_path, changes, lock_hash)
        overlap = all_covered & covered
        if overlap:
            raise ValidationError(f"changed files covered by multiple manifests: {sorted(overlap)}")
        all_covered.update(covered)
    missing = expected_coverage - all_covered
    extra = all_covered - expected_coverage
    if missing:
        raise ValidationError(f"changed files missing from evidence manifests: {sorted(missing)}")
    if extra:
        raise ValidationError(f"manifest coverage includes unexpected paths: {sorted(extra)}")
    return {
        "status": "PASS",
        "status_pt": "APROVADO",
        "base": base,
        "head": head,
        "manifests": manifest_paths,
        "covered_files": len(all_covered),
        "github_actions": {
            "status": "METADATA_ONLY",
            "workflows": workflow_paths,
            "kernel_build": "FORBIDDEN",
        },
        "policy": "nx809j-contribution-v1",
    }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo-root", type=Path, default=Path(__file__).resolve().parents[2])
    parser.add_argument("--base", required=True)
    parser.add_argument("--head", required=True)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    try:
        payload = validate(args.repo_root.resolve(), args.base, args.head)
    except (OSError, UnicodeError, ValidationError, json.JSONDecodeError) as error:
        print(f"FAIL / FALHA: {error}", file=sys.stderr)
        return 1
    print(json.dumps(payload, indent=2, sort_keys=True))
    print("PASS / APROVADO: contribution evidence is complete and hash-bound.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
