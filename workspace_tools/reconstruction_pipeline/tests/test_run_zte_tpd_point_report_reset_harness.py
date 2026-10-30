from __future__ import annotations

import importlib.util
import unittest
from pathlib import Path

SCRIPT = Path(__file__).resolve().parents[1] / "run_zte_tpd_point_report_reset_harness.py"
SPEC = importlib.util.spec_from_file_location("point_report_reset_harness", SCRIPT)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


class PointReportResetHarnessRunnerTests(unittest.TestCase):
    def test_contract(self) -> None:
        self.assertEqual(11, MODULE.EXPECTED_TESTS)
        self.assertEqual('asm volatile("brk #1");', MODULE.TARGET_BREAK)


if __name__ == "__main__":
    unittest.main()
