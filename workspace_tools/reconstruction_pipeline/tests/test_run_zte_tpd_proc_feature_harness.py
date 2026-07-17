from __future__ import annotations

import importlib.util
import unittest
from pathlib import Path


SCRIPT = Path(__file__).resolve().parents[1] / "run_zte_tpd_proc_feature_harness.py"
SPEC = importlib.util.spec_from_file_location("run_zte_tpd_proc_feature_harness", SCRIPT)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


class ProcFeatureHarnessRunnerTests(unittest.TestCase):
    def test_parser_extracts_explicit_result_lines(self) -> None:
        stdout = "PASS first\nPASS second\nSUMMARY 2/2 tests passed\n"
        passed, failed, summary = MODULE.parse_harness_output(stdout)
        self.assertEqual(passed, ["first", "second"])
        self.assertEqual(failed, [])
        self.assertEqual(summary, "SUMMARY 2/2 tests passed")

    def test_source_inventory_contains_nine_pairs(self) -> None:
        self.assertEqual(len(MODULE.SOURCE_FILES), 18)
        self.assertEqual(len(set(MODULE.SOURCE_FILES)), 18)
        stems = {Path(name).stem.removesuffix("_read").removesuffix("_write") for name in MODULE.SOURCE_FILES}
        self.assertEqual(len(stems), 9)


if __name__ == "__main__":
    unittest.main()
