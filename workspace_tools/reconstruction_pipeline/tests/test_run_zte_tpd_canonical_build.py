import importlib.util
import json
import tempfile
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

    def test_source_tree_record_excludes_evidence_metadata(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            (root / "Makefile").write_text("obj-m += zte_tpd.o\n", encoding="utf-8")
            (root / "driver.c").write_text("int driver(void) { return 0; }\n", encoding="utf-8")
            metadata = root / "MICROTASKS.json"
            metadata.write_text(json.dumps({"build": "first"}), encoding="utf-8")
            first = MODULE.source_tree_record(root)

            metadata.write_text(json.dumps({"build": "second"}), encoding="utf-8")
            second = MODULE.source_tree_record(root)

        self.assertEqual(first["manifest_sha256"], second["manifest_sha256"])
        self.assertEqual(["Makefile", "driver.c"], [item["path"] for item in first["files"]])

    def test_source_tree_record_binds_compilable_header(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            (root / "Makefile").write_text("obj-m += zte_tpd.o\n", encoding="utf-8")
            header = root / "driver.h"
            header.write_text("#define VALUE 1\n", encoding="utf-8")
            first = MODULE.source_tree_record(root)

            header.write_text("#define VALUE 2\n", encoding="utf-8")
            second = MODULE.source_tree_record(root)

        self.assertNotEqual(first["manifest_sha256"], second["manifest_sha256"])
