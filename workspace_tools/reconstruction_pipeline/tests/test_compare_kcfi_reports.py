import json
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path


MODULE_PATH = Path(__file__).resolve().parents[1] / "compare_kcfi_reports.py"


def excluded(function: str) -> dict:
    return {
        "function": function,
        "decision": "NO_VALID_KCFI_PREAMBLE",
        "section": ".text",
        "symbol_size": 76,
    }


class CompareKcfiReportsTests(unittest.TestCase):
    def run_comparison(self, stock: dict, candidate: dict) -> tuple[int, dict]:
        with tempfile.TemporaryDirectory() as temporary_directory:
            root = Path(temporary_directory)
            stock_path = root / "stock.json"
            candidate_path = root / "candidate.json"
            output_path = root / "comparison.json"
            stock_path.write_text(json.dumps(stock), encoding="utf-8")
            candidate_path.write_text(json.dumps(candidate), encoding="utf-8")
            completed = subprocess.run(
                [
                    sys.executable,
                    str(MODULE_PATH),
                    str(stock_path),
                    str(candidate_path),
                    "--require-function",
                    "syna_pal_mem_free_0",
                    "--output",
                    str(output_path),
                ],
                check=False,
                capture_output=True,
                text=True,
            )
            return completed.returncode, json.loads(output_path.read_text(encoding="utf-8"))

    def test_matching_no_valid_kcfi_preamble_is_a_pass(self) -> None:
        payload = {"records": [], "excluded": [excluded("syna_pal_mem_free_0")]}

        return_code, result = self.run_comparison(payload, payload)

        self.assertEqual(return_code, 0)
        self.assertTrue(result["passed"])
        self.assertEqual(
            result["comparisons"][0]["decision"], "BOTH_NO_VALID_KCFI_PREAMBLE"
        )

    def test_no_valid_kcfi_preamble_does_not_match_a_present_entry(self) -> None:
        stock = {"records": [], "excluded": [excluded("syna_pal_mem_free_0")]}
        candidate = {
            "records": [
                {
                    "function": "syna_pal_mem_free_0",
                    "section": ".text",
                    "symbol_size": 76,
                    "type_id": "0x12345678",
                }
            ],
            "excluded": [],
        }

        return_code, result = self.run_comparison(stock, candidate)

        self.assertEqual(return_code, 1)
        self.assertFalse(result["passed"])
        self.assertEqual(result["comparisons"][0]["decision"], "KCFI_PRESENCE_MISMATCH")


if __name__ == "__main__":
    unittest.main()
