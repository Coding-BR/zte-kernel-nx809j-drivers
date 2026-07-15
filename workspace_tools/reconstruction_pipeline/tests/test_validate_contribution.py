#!/usr/bin/env python3

from __future__ import annotations

import importlib.util
import hashlib
import json
import subprocess
import tempfile
import unittest
from pathlib import Path


MODULE_PATH = Path(__file__).resolve().parents[1] / "validate_contribution.py"
SPEC = importlib.util.spec_from_file_location("validate_contribution", MODULE_PATH)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


class ContributionGateTests(unittest.TestCase):
    @staticmethod
    def git(repo: Path, *args: str) -> str:
        return subprocess.run(
            ["git", *args],
            cwd=repo,
            check=True,
            text=True,
            encoding="utf-8",
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
        ).stdout.strip()

    @classmethod
    def canonical_sha256(cls, repo: Path, path: Path) -> str:
        relative = path.relative_to(repo).as_posix()
        object_id = cls.git(
            repo,
            "hash-object",
            "--filters",
            f"--path={relative}",
            "-w",
            "--",
            relative,
        )
        data = subprocess.run(
            ["git", "cat-file", "blob", object_id],
            cwd=repo,
            check=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
        ).stdout
        return hashlib.sha256(data).hexdigest()

    def test_safe_repo_path_accepts_posix_path(self) -> None:
        self.assertEqual(
            MODULE.safe_repo_path("kernel_development/driver.c", field="path"),
            "kernel_development/driver.c",
        )

    def test_safe_repo_path_rejects_traversal(self) -> None:
        with self.assertRaises(MODULE.ValidationError):
            MODULE.safe_repo_path("../secret", field="path")

    def test_safe_repo_path_rejects_windows_separator(self) -> None:
        with self.assertRaises(MODULE.ValidationError):
            MODULE.safe_repo_path("folder\\file", field="path")

    def test_scope_detection(self) -> None:
        self.assertEqual(
            MODULE.scopes_for_paths({"kernel_development/drivers/reconstructed/zte_ir/zte_ir.c"}),
            {"driver"},
        )
        self.assertEqual(MODULE.scopes_for_paths({"README.md"}), {"documentation"})
        self.assertEqual(
            MODULE.scopes_for_paths({"contributions/schema-v1.json"}),
            {"pipeline"},
        )

    def test_sha256_is_stable(self) -> None:
        self.assertEqual(
            MODULE.sha256_bytes(b"NX809J"),
            "df311d25113c23532213f9f500eb9fd016e1da8e6dc46842178cf20325523887",
        )

    def test_complete_documentation_bundle_passes(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            repo = Path(temporary)
            self.git(repo, "init", "-b", "main")
            self.git(repo, "config", "user.name", "NX809J Test")
            self.git(repo, "config", "user.email", "nx809j-test@example.invalid")
            (repo / ".gitattributes").write_text("* text=auto eol=lf\n", encoding="utf-8")
            (repo / "reproducible_environment").mkdir()
            lock = repo / "reproducible_environment" / "environment.lock.json"
            lock.write_text('{"version":1}\n', encoding="utf-8")
            (repo / "README.md").write_text("base\n", encoding="utf-8")
            self.git(repo, "add", ".")
            self.git(repo, "commit", "-m", "base")
            base = self.git(repo, "rev-parse", "HEAD")

            (repo / "README.md").write_text("changed\n", encoding="utf-8")
            bundle = repo / "contributions" / "docs-test"
            reports = bundle / "reports"
            reports.mkdir(parents=True)
            script_text = "\n".join(
                (
                    "manage_reference_modules.py verify",
                    "verify_environment.py --mode static",
                    "test_validate_contribution.py",
                )
            ) + "\n"
            scripts = []
            for name in ("reproduce.ps1", "reproduce.sh"):
                path = bundle / name
                path.write_text(script_text, encoding="utf-8")
                scripts.append(
                    {
                        "path": f"contributions/docs-test/{name}",
                        "sha256": self.canonical_sha256(repo, path),
                    }
                )
            report_files = {
                "reference_modules.log": "PASS\n",
                "environment_static.log": "PASS\n",
                "environment_static.json": '{"status":"PASS"}\n',
                "validator_tests.log": "PASS\n",
            }
            for name, content in report_files.items():
                (reports / name).write_text(content, encoding="utf-8")

            def evidence(name: str) -> dict[str, str]:
                path = reports / name
                return {
                    "path": f"contributions/docs-test/reports/{name}",
                    "sha256": self.canonical_sha256(repo, path),
                }

            manifest = {
                "schema_version": "1.0",
                "submission_id": "docs-test",
                "base_commit": base,
                "environment_lock_sha256": self.canonical_sha256(repo, lock),
                "intent": "incremental",
                "scopes": ["documentation"],
                "drivers": [],
                "attestation": {
                    "executed_locally": True,
                    "reviewer_rerun_required": True,
                    "notes_pt": "Teste local executado.",
                    "notes_en": "Local test executed.",
                },
                "claims": {"static_status": "INCOMPLETE", "hardware_status": "DEFERRED"},
                "reproduction_scripts": scripts,
                "checks": [
                    {
                        "id": "reference_modules",
                        "command": "manage_reference_modules.py verify",
                        "exit_code": 0,
                        "status": "PASS",
                        "log": evidence("reference_modules.log"),
                    },
                    {
                        "id": "environment_static",
                        "command": "verify_environment.py --mode static",
                        "exit_code": 0,
                        "status": "PASS",
                        "log": evidence("environment_static.log"),
                        "report": evidence("environment_static.json"),
                    },
                    {
                        "id": "validator_tests",
                        "command": "test_validate_contribution.py",
                        "exit_code": 0,
                        "status": "PASS",
                        "log": evidence("validator_tests.log"),
                    },
                ],
                "changed_files": [
                    {
                        "path": "README.md",
                        "change": "M",
                        "sha256": self.canonical_sha256(repo, repo / "README.md"),
                    }
                ],
            }
            (bundle / "manifest.json").write_text(
                json.dumps(manifest, indent=2) + "\n",
                encoding="utf-8",
            )
            self.git(repo, "add", ".")
            self.git(repo, "commit", "-m", "documented contribution")
            head = self.git(repo, "rev-parse", "HEAD")
            result = MODULE.validate(repo, base, head)
            self.assertEqual(result["status"], "PASS")
            self.assertEqual(result["covered_files"], 1)

    def test_missing_bundle_fails(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            repo = Path(temporary)
            self.git(repo, "init", "-b", "main")
            self.git(repo, "config", "user.name", "NX809J Test")
            self.git(repo, "config", "user.email", "nx809j-test@example.invalid")
            (repo / ".gitattributes").write_text("* text=auto eol=lf\n", encoding="utf-8")
            (repo / "reproducible_environment").mkdir()
            (repo / "reproducible_environment" / "environment.lock.json").write_text(
                "{}\n", encoding="utf-8"
            )
            (repo / "README.md").write_text("base\n", encoding="utf-8")
            self.git(repo, "add", ".")
            self.git(repo, "commit", "-m", "base")
            base = self.git(repo, "rev-parse", "HEAD")
            (repo / "README.md").write_text("changed\n", encoding="utf-8")
            self.git(repo, "add", ".")
            self.git(repo, "commit", "-m", "missing evidence")
            head = self.git(repo, "rev-parse", "HEAD")
            with self.assertRaises(MODULE.ValidationError):
                MODULE.validate(repo, base, head)


if __name__ == "__main__":
    unittest.main()
