import importlib.util
import unittest
from pathlib import Path


MODULE_PATH = Path(__file__).resolve().parents[1] / "run_zte_tpd_canonical_build.py"
SPEC = importlib.util.spec_from_file_location("run_zte_tpd_canonical_build", MODULE_PATH)
MODULE = importlib.util.module_from_spec(SPEC)
assert SPEC.loader is not None
SPEC.loader.exec_module(MODULE)


class CandidateSourceSyncTests(unittest.TestCase):
    def test_source_tree_mismatches_reports_all_three_failure_classes(self) -> None:
        expected = {
            "files": [
                {"path": "same.c", "sha256": "same"},
                {"path": "changed.c", "sha256": "expected"},
                {"path": "missing.c", "sha256": "missing"},
            ]
        }
        actual = {
            "files": [
                {"path": "same.c", "sha256": "same"},
                {"path": "changed.c", "sha256": "actual"},
                {"path": "extra.c", "sha256": "extra"},
            ]
        }

        self.assertEqual(
            MODULE.source_tree_mismatches(expected, actual),
            {
                "missing_from_curated": ["missing.c"],
                "unexpected_in_curated": ["extra.c"],
                "content_mismatch": ["changed.c"],
            },
        )
