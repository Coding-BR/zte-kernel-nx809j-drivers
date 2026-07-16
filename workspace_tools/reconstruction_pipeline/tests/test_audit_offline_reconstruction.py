#!/usr/bin/env python3

from __future__ import annotations

import importlib.util
import json
import sys
import tempfile
import unittest
from pathlib import Path


MODULE_PATH = Path(__file__).resolve().parents[1] / "audit_offline_reconstruction.py"
SPEC = importlib.util.spec_from_file_location("audit_offline_reconstruction", MODULE_PATH)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = MODULE
SPEC.loader.exec_module(MODULE)


class OfflineAuditTests(unittest.TestCase):
    def test_finds_canonical_driver_build_audit(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            candidate_sha = "a" * 64
            report = {
                "drivers": [
                    {
                        "driver": "zlog_common",
                        "status": "static_verified",
                        "candidate": {"sha256": candidate_sha},
                        "build": {"passed": True, "reproducible": True},
                    }
                ]
            }
            path = root / "driver_build_audit.json"
            path.write_text(json.dumps(report), encoding="utf-8")

            selected, result = MODULE.find_build_result(
                root, "zlog_common", candidate_sha
            )

            self.assertEqual(selected, path)
            self.assertIsNotNone(result)

    def test_rejects_build_audit_for_another_candidate(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            report = {
                "drivers": [
                    {
                        "driver": "zlog_common",
                        "status": "static_verified",
                        "candidate": {"sha256": "b" * 64},
                        "build": {"passed": True, "reproducible": True},
                    }
                ]
            }
            (root / "driver_build_audit.json").write_text(
                json.dumps(report), encoding="utf-8"
            )

            selected, result = MODULE.find_build_result(
                root, "zlog_common", "a" * 64
            )

            self.assertIsNone(selected)
            self.assertIsNone(result)

    def test_missing_review_does_not_claim_hash_mismatch(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            result = MODULE.independent_review_gate(
                Path(temporary), "a" * 64
            )

            self.assertIn("missing independent_review.json", result["blockers"])
            self.assertNotIn(
                "review targets another candidate SHA-256", result["blockers"]
            )


if __name__ == "__main__":
    unittest.main()
