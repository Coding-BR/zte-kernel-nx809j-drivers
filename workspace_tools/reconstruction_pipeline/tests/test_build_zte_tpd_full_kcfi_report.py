from __future__ import annotations

import importlib.util
import unittest
from pathlib import Path


SCRIPT = Path(__file__).resolve().parents[1] / "build_zte_tpd_full_kcfi_report.py"
SPEC = importlib.util.spec_from_file_location("build_zte_tpd_full_kcfi_report", SCRIPT)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


SHA = "a" * 64


def oracle(records: list[dict], sha: str = SHA) -> dict:
    return {"source": {"path": "module.ko", "sha256": sha}, "records": records, "excluded": []}


class FullKcfiReportTests(unittest.TestCase):
    def test_records_matches_and_mismatches(self) -> None:
        stock = oracle(
            [
                {"function": "one", "type_id": "0x1", "section": ".text", "symbol_size": 4},
                {"function": "two", "type_id": "0x2", "section": ".text", "symbol_size": 8},
            ],
            "b" * 64,
        )
        candidate = oracle(
            [
                {"function": "one", "type_id": "0x1", "section": ".text", "symbol_size": 40},
                {"function": "two", "type_id": "0x3", "section": ".text", "symbol_size": 8},
            ]
        )
        report = MODULE.build_report(stock, candidate, SHA)
        self.assertEqual(report["status"], "INCOMPLETE")
        self.assertEqual(report["summary"]["matched"], 1)
        self.assertEqual(report["summary"]["mismatched"], 1)
        self.assertTrue(report["comparisons"][0]["passed"])

    def test_rejects_stale_candidate_oracle(self) -> None:
        stock = oracle([{"function": "one", "type_id": "0x1", "section": ".text"}], "b" * 64)
        candidate = oracle([{"function": "one", "type_id": "0x1", "section": ".text"}], "c" * 64)
        with self.assertRaisesRegex(ValueError, "another module"):
            MODULE.build_report(stock, candidate, SHA)

    def test_rejects_duplicate_records(self) -> None:
        payload = oracle(
            [
                {"function": "one", "type_id": "0x1"},
                {"function": "one", "type_id": "0x1"},
            ]
        )
        with self.assertRaisesRegex(ValueError, "duplicate function"):
            MODULE.index_records(payload, "fixture")


if __name__ == "__main__":
    unittest.main()
