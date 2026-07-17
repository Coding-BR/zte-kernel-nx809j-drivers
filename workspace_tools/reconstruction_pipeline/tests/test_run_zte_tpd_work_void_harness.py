from __future__ import annotations

import importlib.util
import unittest
from pathlib import Path


SCRIPT = Path(__file__).resolve().parents[1] / "run_zte_tpd_work_void_harness.py"
SPEC = importlib.util.spec_from_file_location("run_zte_tpd_work_void_harness", SCRIPT)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


class WorkVoidHarnessRunnerTests(unittest.TestCase):
    def test_source_inventory_is_unique_and_complete(self) -> None:
        self.assertEqual(len(MODULE.SOURCE_FILES), 30)
        self.assertEqual(len(set(MODULE.SOURCE_FILES)), 30)

    def test_output_parser_requires_explicit_test_lines_and_summary(self) -> None:
        stdout = "PASS first\nFAIL second\nSUMMARY 1/2 tests passed\n"
        passed, failed, summary = MODULE.parse_harness_output(stdout)
        self.assertEqual(passed, ["first"])
        self.assertEqual(failed, ["second"])
        self.assertEqual(summary, "SUMMARY 1/2 tests passed")


if __name__ == "__main__":
    unittest.main()
