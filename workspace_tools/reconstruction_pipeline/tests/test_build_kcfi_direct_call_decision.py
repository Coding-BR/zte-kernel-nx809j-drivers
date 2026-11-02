from __future__ import annotations

import importlib.util
import tempfile
import unittest
from pathlib import Path


SCRIPT = (
    Path(__file__).resolve().parents[1]
    / "build_kcfi_direct_call_decision.py"
)
SPEC = importlib.util.spec_from_file_location(
    "build_kcfi_direct_call_decision", SCRIPT
)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


class BuildKcfiDirectCallDecisionTests(unittest.TestCase):
    def make_inputs(self) -> tuple[
        dict[str, object],
        dict[str, object],
        list[dict[str, object]],
        list[dict[str, object]],
        Path,
        Path,
        tempfile.TemporaryDirectory[str],
    ]:
        temporary = tempfile.TemporaryDirectory()
        root = Path(temporary.name)
        stock = root / "stock.ko"
        candidate = root / "candidate.ko"
        stock.write_bytes(b"stock")
        candidate.write_bytes(b"candidate")
        stock_kcfi = {
            "source": {
                "sha256": MODULE.sha256_file(stock),
                "size": stock.stat().st_size,
            },
            "records": [],
            "excluded": [{"function": "target", "reason": "overlap"}],
        }
        candidate_kcfi = {
            "source": {
                "sha256": MODULE.sha256_file(candidate),
                "size": candidate.stat().st_size,
            },
            "records": [{"function": "target", "type_id": "0x12345678"}],
            "excluded": [],
        }
        stock_calls = [
            {
                "caller": "probe",
                "target": "target",
                "target_address": "00100000",
                "reference_type": MODULE.DIRECT_REFERENCE_TYPE,
            }
        ]
        candidate_calls = [
            {
                "caller": "probe",
                "target": "target",
                "target_address": "00200000",
                "reference_type": MODULE.DIRECT_REFERENCE_TYPE,
            }
        ]
        return (
            stock_kcfi,
            candidate_kcfi,
            stock_calls,
            candidate_calls,
            stock,
            candidate,
            temporary,
        )

    def test_accepts_matching_direct_only_graphs(self) -> None:
        (
            stock_kcfi,
            candidate_kcfi,
            stock_calls,
            candidate_calls,
            stock,
            candidate,
            temporary,
        ) = self.make_inputs()
        self.addCleanup(temporary.cleanup)

        report = MODULE.build_decision(
            driver="sample",
            function="target",
            stock_kcfi=stock_kcfi,
            candidate_kcfi=candidate_kcfi,
            stock_calls=stock_calls,
            candidate_calls=candidate_calls,
            stock_module=stock,
            candidate_module=candidate,
        )

        self.assertTrue(report["passed"])
        self.assertFalse(report["applicable"])
        self.assertEqual(report["decision"], MODULE.DECISION)
        self.assertEqual(report["comparisons"][0]["function"], "target")
        self.assertTrue(report["comparisons"][0]["passed"])

    def test_rejects_indirect_candidate_reference(self) -> None:
        (
            stock_kcfi,
            candidate_kcfi,
            stock_calls,
            candidate_calls,
            stock,
            candidate,
            temporary,
        ) = self.make_inputs()
        self.addCleanup(temporary.cleanup)
        candidate_calls[0]["reference_type"] = "COMPUTED_CALL"

        with self.assertRaisesRegex(
            ValueError, "candidate_incoming_calls_are_direct"
        ):
            MODULE.build_decision(
                driver="sample",
                function="target",
                stock_kcfi=stock_kcfi,
                candidate_kcfi=candidate_kcfi,
                stock_calls=stock_calls,
                candidate_calls=candidate_calls,
                stock_module=stock,
                candidate_module=candidate,
            )

    def test_accepts_renamed_direct_caller_with_same_multiplicity(self) -> None:
        (
            stock_kcfi,
            candidate_kcfi,
            stock_calls,
            candidate_calls,
            stock,
            candidate,
            temporary,
        ) = self.make_inputs()
        self.addCleanup(temporary.cleanup)
        candidate_calls[0]["caller"] = "FUN_00105ca0"
        stock_calls.extend(
            [
                {
                    "caller": "probe",
                    "target": "target",
                    "target_address": "00100000",
                    "reference_type": MODULE.DIRECT_REFERENCE_TYPE,
                }
            ]
        )
        candidate_calls.extend(
            [
                {
                    "caller": "FUN_00105ca0",
                    "target": "target",
                    "target_address": "00200000",
                    "reference_type": MODULE.DIRECT_REFERENCE_TYPE,
                }
            ]
        )

        report = MODULE.build_decision(
            driver="sample",
            function="target",
            stock_kcfi=stock_kcfi,
            candidate_kcfi=candidate_kcfi,
            stock_calls=stock_calls,
            candidate_calls=candidate_calls,
            stock_module=stock,
            candidate_module=candidate,
        )

        self.assertTrue(report["passed"])
        self.assertTrue(report["checks"]["distinct_caller_count_matches"])

    def test_matches_kcfi_alias_by_symbol_name(self) -> None:
        (
            stock_kcfi,
            candidate_kcfi,
            stock_calls,
            candidate_calls,
            stock,
            candidate,
            temporary,
        ) = self.make_inputs()
        self.addCleanup(temporary.cleanup)
        stock_kcfi["excluded"] = [{"function": "f000", "symbol_name": "target", "reason": "overlap"}]
        candidate_kcfi["records"] = [{
            "function": "f000",
            "symbol_name": "target",
            "type_id": "0x12345678",
        }]

        report = MODULE.build_decision(
            driver="sample",
            function="target",
            stock_kcfi=stock_kcfi,
            candidate_kcfi=candidate_kcfi,
            stock_calls=stock_calls,
            candidate_calls=candidate_calls,
            stock_module=stock,
            candidate_module=candidate,
        )

        self.assertTrue(report["passed"])

    def test_accepts_recorded_non_kcfi_candidate_for_exact_direct_call(self) -> None:
        (
            stock_kcfi,
            candidate_kcfi,
            stock_calls,
            candidate_calls,
            stock,
            candidate,
            temporary,
        ) = self.make_inputs()
        self.addCleanup(temporary.cleanup)
        candidate_kcfi["records"] = []
        candidate_kcfi["excluded"] = [
            {"function": "target", "reason": "overlap"}
        ]

        report = MODULE.build_decision(
            driver="sample",
            function="target",
            stock_kcfi=stock_kcfi,
            candidate_kcfi=candidate_kcfi,
            stock_calls=stock_calls,
            candidate_calls=candidate_calls,
            stock_module=stock,
            candidate_module=candidate,
        )

        self.assertTrue(report["passed"])
        self.assertIsNone(report["comparisons"][0]["candidate_kcfi_record"])
        self.assertEqual(
            report["comparisons"][0]["candidate_kcfi_exclusion"]["reason"],
            "overlap",
        )

    def test_rejects_ambiguous_candidate_kcfi_status(self) -> None:
        (
            stock_kcfi,
            candidate_kcfi,
            stock_calls,
            candidate_calls,
            stock,
            candidate,
            temporary,
        ) = self.make_inputs()
        self.addCleanup(temporary.cleanup)
        candidate_kcfi["records"] = []
        candidate_kcfi["excluded"] = []

        with self.assertRaisesRegex(
            ValueError, "candidate_kcfi_status_is_unambiguous"
        ):
            MODULE.build_decision(
                driver="sample",
                function="target",
                stock_kcfi=stock_kcfi,
                candidate_kcfi=candidate_kcfi,
                stock_calls=stock_calls,
                candidate_calls=candidate_calls,
                stock_module=stock,
                candidate_module=candidate,
            )

    def test_rejects_module_hash_mismatch(self) -> None:
        (
            stock_kcfi,
            candidate_kcfi,
            stock_calls,
            candidate_calls,
            stock,
            candidate,
            temporary,
        ) = self.make_inputs()
        self.addCleanup(temporary.cleanup)
        candidate.write_bytes(b"changed")

        with self.assertRaisesRegex(ValueError, "source SHA-256"):
            MODULE.build_decision(
                driver="sample",
                function="target",
                stock_kcfi=stock_kcfi,
                candidate_kcfi=candidate_kcfi,
                stock_calls=stock_calls,
                candidate_calls=candidate_calls,
                stock_module=stock,
                candidate_module=candidate,
            )

    def test_file_evidence_uses_workspace_relative_paths(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            workspace = Path(temporary)
            artifact = workspace / "evidence" / "candidate.ko"
            artifact.parent.mkdir()
            artifact.write_bytes(b"candidate")

            evidence = MODULE.file_evidence(artifact, workspace)

            self.assertEqual(evidence["path"], "evidence/candidate.ko")
            self.assertEqual(evidence["sha256"], MODULE.sha256_file(artifact))


if __name__ == "__main__":
    unittest.main()
