from __future__ import annotations

import importlib.util
import sys
import tempfile
import unittest
from pathlib import Path


MODULE_PATH = (
    Path(__file__).resolve().parents[3]
    / "reproducible_environment"
    / "verify_environment.py"
)
SPEC = importlib.util.spec_from_file_location("verify_environment", MODULE_PATH)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = MODULE
SPEC.loader.exec_module(MODULE)


class VerifyEnvironmentLineEndingTests(unittest.TestCase):
    def test_text_lock_hash_is_independent_of_checkout_line_endings(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            lf = root / "lf.lock"
            crlf = root / "crlf.lock"
            lf.write_bytes(b"alpha=1\nbeta=2\n")
            crlf.write_bytes(b"alpha=1\r\nbeta=2\r\n")
            self.assertEqual(
                MODULE.sha256_canonical_text(lf),
                MODULE.sha256_canonical_text(crlf),
            )


if __name__ == "__main__":
    unittest.main()
