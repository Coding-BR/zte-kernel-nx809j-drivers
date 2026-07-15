#!/usr/bin/env python3
"""Verify the static package or the complete NX809J Docker runtime."""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import re
import subprocess
import sys
from pathlib import Path
from typing import Any


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def run(command: list[str], check: bool = False) -> subprocess.CompletedProcess[str]:
    return subprocess.run(
        command,
        check=check,
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
    )


def add_check(
    checks: list[dict[str, Any]], name: str, passed: bool, actual: Any, expected: Any
) -> None:
    checks.append(
        {"name": name, "status": "PASS" if passed else "FAIL", "actual": actual, "expected": expected}
    )


def static_checks(repo_root: Path, lock: dict[str, Any]) -> list[dict[str, Any]]:
    checks: list[dict[str, Any]] = []
    manager = (
        repo_root
        / "workspace_tools"
        / "reconstruction_pipeline"
        / "manage_reference_modules.py"
    )
    result = run([sys.executable, str(manager), "verify", "--repo-root", str(repo_root)])
    add_check(
        checks,
        "reference_modules",
        result.returncode == 0,
        (result.stdout + result.stderr).strip(),
        "reference package verifier returns zero",
    )

    for key, details in lock["inputs"].items():
        path = repo_root / details["path"]
        actual = sha256(path) if path.is_file() else None
        add_check(checks, f"input:{key}", actual == details["sha256"], actual, details["sha256"])

    package_lock = lock["docker"]["package_lock"]
    package_path = repo_root / package_lock["path"]
    actual_hash = sha256(package_path) if package_path.is_file() else None
    add_check(
        checks,
        "docker_package_lock_hash",
        actual_hash == package_lock["sha256"],
        actual_hash,
        package_lock["sha256"],
    )
    actual_lines = len(package_path.read_text(encoding="ascii").splitlines())
    add_check(
        checks,
        "docker_package_lock_entries",
        actual_lines == package_lock["entries"],
        actual_lines,
        package_lock["entries"],
    )

    dockerfile = repo_root / "reproducible_environment" / "docker" / "Dockerfile"
    dockerfile_text = dockerfile.read_text(encoding="utf-8")
    add_check(
        checks,
        "docker_base_digest",
        lock["docker"]["base"] in dockerfile_text,
        dockerfile_text.splitlines()[0],
        lock["docker"]["base"],
    )
    return checks


def runtime_facts(lock: dict[str, Any]) -> tuple[dict[str, str], str]:
    image = lock["docker"]["image_id"]
    script = r"""
set -e
echo kernel=$(git -C /work/src/kernel rev-parse HEAD)
echo clang_mirror=$(git -C /work/toolchains/aosp-clang.git rev-parse HEAD)
echo rust_mirror=$(git -C /work/toolchains/aosp-rust.git rev-parse HEAD)
echo clang_version=$(/work/toolchains/clang-r536225/bin/clang --version | head -n 1)
echo rust_version=$(/work/toolchains/rust-1.82.0/bin/rustc --version)
""".strip()
    result = run(
        [
            "docker",
            "run",
            "--rm",
            "-v",
            f"{lock['kernel']['volume']}:/work/src",
            "-v",
            f"{lock['toolchains']['volume']}:/work/toolchains",
            image,
            "/bin/bash",
            "-lc",
            script,
        ]
    )
    facts: dict[str, str] = {}
    for line in result.stdout.splitlines():
        if "=" in line:
            key, value = line.split("=", 1)
            facts[key.strip()] = value.strip()
    return facts, result.stderr.strip()


def runtime_checks(repo_root: Path, lock: dict[str, Any]) -> list[dict[str, Any]]:
    checks: list[dict[str, Any]] = []
    image = lock["docker"]["image_id"]
    inspect = run(["docker", "image", "inspect", image, "--format", "{{.Id}}"])
    actual_image = inspect.stdout.strip() if inspect.returncode == 0 else None
    add_check(checks, "docker_image_id", actual_image == image, actual_image, image)
    if inspect.returncode != 0:
        return checks

    facts, stderr = runtime_facts(lock)
    expected_facts = {
        "kernel": lock["kernel"]["commit"],
        "clang_mirror": lock["toolchains"]["clang"]["prebuilts_commit"],
        "rust_mirror": lock["toolchains"]["rust"]["prebuilts_commit"],
    }
    for name, expected in expected_facts.items():
        add_check(checks, name, facts.get(name) == expected, facts.get(name), expected)
    add_check(
        checks,
        "clang_version",
        lock["toolchains"]["clang"]["llvm_revision"] in facts.get("clang_version", ""),
        facts.get("clang_version"),
        lock["toolchains"]["clang"]["llvm_revision"],
    )
    add_check(
        checks,
        "rust_version",
        facts.get("rust_version") == lock["toolchains"]["rust"]["version"],
        facts.get("rust_version"),
        lock["toolchains"]["rust"]["version"],
    )
    if stderr:
        add_check(checks, "runtime_stderr", False, stderr, "empty")

    packages = run(
        [
            "docker",
            "run",
            "--rm",
            image,
            "dpkg-query",
            "-W",
            "-f=${binary:Package}=${Version}\\n",
        ]
    )
    actual_packages = sorted(line for line in packages.stdout.splitlines() if line)
    lock_path = repo_root / lock["docker"]["package_lock"]["path"]
    expected_packages = sorted(lock_path.read_text(encoding="ascii").splitlines())
    add_check(
        checks,
        "docker_package_set",
        packages.returncode == 0 and actual_packages == expected_packages,
        len(actual_packages),
        len(expected_packages),
    )
    return checks


def ghidra_checks(home: Path, lock: dict[str, Any]) -> list[dict[str, Any]]:
    checks: list[dict[str, Any]] = []
    properties = home / "Ghidra" / "application.properties"
    version = None
    release = None
    if properties.is_file():
        text = properties.read_text(encoding="utf-8", errors="replace")
        version_match = re.search(r"^application\.version=(.+)$", text, re.MULTILINE)
        release_match = re.search(r"^application\.release\.name=(.+)$", text, re.MULTILINE)
        version = version_match.group(1).strip() if version_match else None
        release = release_match.group(1).strip() if release_match else None
    add_check(checks, "ghidra_version", version == lock["ghidra"]["version"], version, lock["ghidra"]["version"])
    add_check(checks, "ghidra_release", release == lock["ghidra"]["release"], release, lock["ghidra"]["release"])
    java = run(["java", "-version"])
    java_text = (java.stdout + java.stderr).strip()
    expected_java = lock["ghidra"]["java_observed"]
    java_match = 'java version "26"' in java_text and "build 26+35-2893" in java_text
    add_check(checks, "java_runtime", java_match, java_text, expected_java)
    return checks


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--mode", choices=("static", "runtime"), default="static")
    parser.add_argument("--ghidra-home", type=Path)
    parser.add_argument("--report", type=Path)
    args = parser.parse_args()

    environment_root = Path(__file__).resolve().parent
    repo_root = environment_root.parent
    lock = json.loads((environment_root / "environment.lock.json").read_text(encoding="utf-8"))
    checks = static_checks(repo_root, lock)
    if args.mode == "runtime":
        checks.extend(runtime_checks(repo_root, lock))
    ghidra_home = args.ghidra_home or (
        Path(os.environ["GHIDRA_HOME"]) if os.environ.get("GHIDRA_HOME") else None
    )
    if ghidra_home:
        checks.extend(ghidra_checks(ghidra_home.resolve(), lock))

    failures = [item for item in checks if item["status"] != "PASS"]
    report = {
        "schema_version": "1.0",
        "mode": args.mode,
        "status": "PASS" if not failures else "FAIL",
        "checks": checks,
    }
    if args.report:
        args.report.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(report, indent=2))
    return 0 if not failures else 1


if __name__ == "__main__":
    raise SystemExit(main())
