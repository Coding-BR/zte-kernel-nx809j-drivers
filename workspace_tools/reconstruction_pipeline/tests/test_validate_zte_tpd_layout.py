from __future__ import annotations

import importlib.util
import os
import tempfile
import unittest
from pathlib import Path


SCRIPT = Path(__file__).resolve().parents[1] / "validate_zte_tpd_layout.py"
SPEC = importlib.util.spec_from_file_location("validate_zte_tpd_layout", SCRIPT)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


def add_stock(run_root: Path) -> None:
    module = run_root / "01_acquisition" / "modules" / "zte_tpd.ko"
    module.parent.mkdir(parents=True)
    module.write_bytes(b"ELF fixture")


class FindRunTests(unittest.TestCase):
    def test_requested_run_requires_the_stock_module(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            with self.assertRaisesRegex(FileNotFoundError, "has no zte_tpd.ko"):
                MODULE.find_run(root, root / "missing")

    def test_requested_run_is_returned_verbatim(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            run = root / "runs" / "explicit"
            add_stock(run)
            self.assertEqual(MODULE.find_run(root, run), run.resolve())

    def test_latest_run_with_stock_is_selected(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            older = root / "runs" / "older"
            newer = root / "runs" / "newer"
            ignored = root / "runs" / "newest_without_stock"
            add_stock(older)
            add_stock(newer)
            ignored.mkdir(parents=True)
            os.utime(older, (1, 1))
            os.utime(newer, (2, 2))
            os.utime(ignored, (3, 3))
            self.assertEqual(MODULE.find_run(root, None), newer.resolve())


if __name__ == "__main__":
    unittest.main()
