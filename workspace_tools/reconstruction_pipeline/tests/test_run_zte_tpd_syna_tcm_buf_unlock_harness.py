from __future__ import annotations

import importlib.util
import unittest
from pathlib import Path


SCRIPT = Path(__file__).resolve().parents[1] / "run_zte_tpd_syna_tcm_buf_unlock_harness.py"
SPEC = importlib.util.spec_from_file_location("run_zte_tpd_syna_tcm_buf_unlock_harness", SCRIPT)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


class SynaTcmBufUnlockHarnessRunnerTests(unittest.TestCase):
    def test_runner_constants_match_the_harness_contract(self) -> None:
        self.assertEqual("syna_tcm_buf_unlock.c", MODULE.SOURCE_FILE)
        self.assertEqual("syna_tcm_buf_unlock_harness.c", MODULE.HARNESS_FILE)
        self.assertEqual(14, MODULE.EXPECTED_TESTS)


if __name__ == "__main__":
    unittest.main()
