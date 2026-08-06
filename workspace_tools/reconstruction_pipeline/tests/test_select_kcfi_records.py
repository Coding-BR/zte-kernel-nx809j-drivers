from __future__ import annotations

import hashlib
import importlib.util
import json
import tempfile
import unittest
from pathlib import Path


SCRIPT = Path(__file__).resolve().parents[1] / "select_kcfi_records.py"
SPEC = importlib.util.spec_from_file_location("select_kcfi_records", SCRIPT)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


class SelectKcfiRecordsTests(unittest.TestCase):
    def write_payload(self, payload: dict) -> Path:
        temporary = tempfile.TemporaryDirectory()
        self.addCleanup(temporary.cleanup)
        path = Path(temporary.name) / "stock.json"
        path.write_text(json.dumps(payload), encoding="utf-8")
        return path

    def test_projects_requested_record_despite_unrelated_duplicate_exclusion(self) -> None:
        source = self.write_payload(
            {
                "records": [{"function": "target", "type_id": "0x1"}],
                "excluded": [
                    {"function": "unrelated", "reason": "a"},
                    {"function": "unrelated", "reason": "b"},
                ],
            }
        )

        result = MODULE.project_payload(source, ["target"])

        self.assertEqual(["target"], result["selected_functions"])
        self.assertEqual([{"function": "target", "type_id": "0x1"}], result["records"])
        self.assertEqual([], result["excluded"])
        self.assertEqual(hashlib.sha256(source.read_bytes()).hexdigest(), result["source_report"]["sha256"])

    def test_rejects_duplicate_selected_record(self) -> None:
        source = self.write_payload(
            {"records": [{"function": "target"}, {"function": "target"}], "excluded": []}
        )

        with self.assertRaisesRegex(ValueError, "duplicate selected records function"):
            MODULE.project_payload(source, ["target"])

    def test_rejects_missing_requested_function(self) -> None:
        source = self.write_payload({"records": [], "excluded": []})

        with self.assertRaisesRegex(ValueError, "selected functions are absent: target"):
            MODULE.project_payload(source, ["target"])

    def test_offset_selector_disambiguates_duplicate_exclusions(self) -> None:
        source = self.write_payload(
            {
                "records": [],
                "excluded": [
                    {"function": "target", "symbol_offset": "0x10"},
                    {"function": "target", "symbol_offset": "0x20"},
                ],
            }
        )

        result = MODULE.project_payload(source, ["target@0x10"])

        self.assertEqual(["target@0x10"], result["selected_functions"])
        self.assertEqual("0x10", result["excluded"][0]["symbol_offset"])


if __name__ == "__main__":
    unittest.main()
