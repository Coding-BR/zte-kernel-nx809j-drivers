from __future__ import annotations

import importlib.util
import unittest
from pathlib import Path


SCRIPT = Path(__file__).resolve().parents[1] / "build_zte_tpd_parity_report.py"
SPEC = importlib.util.spec_from_file_location("build_zte_tpd_parity_report", SCRIPT)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


SHA = "a" * 64
STOCK = "b" * 64


def valid_inputs() -> dict:
    return {
        "build": {
            "drivers": [
                {
                    "driver": "zte_tpd",
                    "status": "static_verified",
                    "candidate": {"sha256": SHA},
                    "stock": {"sha256": STOCK},
                    "build": {"passed": True, "reproducible": True},
                }
            ]
        },
        "abi": {"status": "PASS", "candidate_sha256": SHA, "stock_sha256": STOCK},
        "layout": {
            "status": "PASS",
            "stock": {"sha256": STOCK, "layout_evidence": {"passed": True}},
        },
        "kcfi_direct": {
            "passed": True,
            "required_functions": ["one", "two"],
            "comparisons": [{"passed": True}, {"passed": True}],
        },
        "kcfi_families": {
            "summary": {
                "family_count": 1,
                "matching_families": 1,
                "stock_functions": 2,
                "matching_candidate_functions": 2,
            }
        },
        "kcfi_full": {
            "status": "PASS",
            "stock": {"sha256": STOCK},
            "candidate": {"sha256": SHA},
            "summary": {
                "stock_records": 2,
                "matched": 2,
                "mismatched": 0,
                "stock_excluded": 0,
            },
        },
        "mapping": {
            "candidate_sha256": SHA,
            "stock_sha256": STOCK,
            "function_count": 2,
            "mappings": [{}, {}],
        },
        "decomposition": {
            "status": "PASS",
            "drivers": [
                {
                    "driver": "zte_tpd",
                    "candidate_sha256": SHA,
                    "stock_sha256": STOCK,
                    "coverage": {"functions": 2, "decompiled_c": 2, "pcode": 2, "assembly": 2},
                }
            ],
        },
        "symbols": {
            "candidate": {"sha256": SHA},
            "stock": {"sha256": STOCK},
            "text_symbol_delta": {"missing": [], "extra": ["helper"], "extra_class_counts": {"other": 1}},
            "undefined_symbol_delta": {"missing": [], "unexpected": []},
            "source_coverage": {"complete": True},
        },
        "microtasks": {
            "summary": {"task_count": 2, "promoted_pass": 1, "remaining": 1, "demoted_stale_pass": 0},
            "test_reports": ["report.json"],
        },
    }


class ValidateInputsTests(unittest.TestCase):
    def test_accepts_consistent_partial_evidence(self) -> None:
        metrics = MODULE.validate_inputs(valid_inputs(), SHA)
        self.assertEqual(metrics["microtasks_pass"], 1)
        self.assertEqual(metrics["microtasks_remaining"], 1)
        report = MODULE.build_report(metrics)
        self.assertEqual(report["status"], "PASS")
        self.assertEqual(report["semantic_equivalence"], "PARTIAL_TESTED_SUBSET_ONLY")

    def test_prefers_current_pass_from_scoped_attestation(self) -> None:
        inputs = valid_inputs()
        inputs["microtasks"]["summary"].update(
            {"current_pass": 2, "promoted_pass": 1, "remaining": 0}
        )
        metrics = MODULE.validate_inputs(inputs, SHA)
        self.assertEqual(metrics["microtasks_pass"], 2)
        self.assertEqual(metrics["microtasks_promoted"], 1)
        self.assertEqual(metrics["microtasks_remaining"], 0)
        report = MODULE.build_report(metrics)
        self.assertEqual(report["status"], "PASS")
        self.assertEqual(report["semantic_equivalence"], "PARTIAL_TESTED_SUBSET_ONLY")
        direct_tests = next(
            item for item in report["comparisons"]
            if item["surface"] == "hash-attested direct-test subset"
        )
        self.assertIn("records 2/2 current-source PASS tasks", direct_tests["evidence"])
        self.assertIn("this scoped run promoted 1 task(s)", direct_tests["evidence"])

    def test_rejects_stale_abi_report(self) -> None:
        inputs = valid_inputs()
        inputs["abi"]["candidate_sha256"] = "c" * 64
        with self.assertRaisesRegex(ValueError, "ABI report is stale"):
            MODULE.validate_inputs(inputs, SHA)

    def test_rejects_incomplete_decomposition(self) -> None:
        inputs = valid_inputs()
        inputs["decomposition"]["drivers"][0]["coverage"]["assembly"] = 1
        with self.assertRaisesRegex(ValueError, "decomposition does not cover"):
            MODULE.validate_inputs(inputs, SHA)

    def test_rejects_stale_microtask_passes(self) -> None:
        inputs = valid_inputs()
        inputs["microtasks"]["summary"]["demoted_stale_pass"] = 1
        with self.assertRaisesRegex(ValueError, "stale microtask PASS"):
            MODULE.validate_inputs(inputs, SHA)

    def test_marks_full_kcfi_mismatches_incomplete(self) -> None:
        inputs = valid_inputs()
        inputs["kcfi_full"]["status"] = "INCOMPLETE"
        inputs["kcfi_full"]["summary"].update({"matched": 1, "mismatched": 1})
        report = MODULE.build_report(MODULE.validate_inputs(inputs, SHA))
        self.assertEqual(report["status"], "INCOMPLETE")
        comparison = next(
            item for item in report["comparisons"]
            if item["surface"] == "complete recoverable KCFI surface"
        )
        self.assertEqual(comparison["result"], "INCOMPLETE")


if __name__ == "__main__":
    unittest.main()
