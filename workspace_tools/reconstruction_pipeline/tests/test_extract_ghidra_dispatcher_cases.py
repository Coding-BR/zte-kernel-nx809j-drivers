from __future__ import annotations

import importlib.util
import json
import sys
import tempfile
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SPEC = importlib.util.spec_from_file_location(
    "extract_ghidra_dispatcher_cases", ROOT / "extract_ghidra_dispatcher_cases.py"
)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = MODULE
SPEC.loader.exec_module(MODULE)


class DispatcherCaseTests(unittest.TestCase):
    def test_manifest_requires_complete_case_map_and_preserves_spans(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            source = root / "stock.c"
            source.write_text(
                "void f(int opcode)\n{\n  switch (opcode) {\n"
                "  case 1:\n    call_one();\n    break;\n"
                "  default:\n    call_default();\n  }\n}\n",
                encoding="utf-8",
            )
            mapping = root / "map.json"
            mapping.write_text(json.dumps({"cases": [
                {"label": "1", "id": "one", "behavior": "one", "harness": "unit"},
                {"label": "default", "id": "fallback", "behavior": "fallback", "harness": "unit"},
            ]}), encoding="utf-8")
            manifest = MODULE.build_manifest(source, mapping, "opcode")
            self.assertEqual(manifest["case_count"], 2)
            self.assertEqual(manifest["cases"][0]["source_start_line"], 4)
            self.assertEqual(manifest["cases"][0]["source_end_line"], 6)
            self.assertEqual(manifest["cases"][1]["source_start_line"], 7)
            self.assertEqual(manifest["cases"][1]["source_end_line"], 8)

    def test_manifest_rejects_missing_case(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            source = root / "stock.c"
            source.write_text("void f(int x) { switch (x) { case 1: break; default: break; } }\n", encoding="utf-8")
            mapping = root / "map.json"
            mapping.write_text(json.dumps({"cases": [
                {"label": "1", "id": "one", "behavior": "one", "harness": "unit"},
            ]}), encoding="utf-8")
            with self.assertRaises(ValueError):
                MODULE.build_manifest(source, mapping, "x")


if __name__ == "__main__":
    unittest.main()
