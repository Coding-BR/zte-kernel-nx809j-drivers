from __future__ import annotations

import importlib.util
import json
import sys
import tempfile
import unittest
from pathlib import Path


PIPELINE_ROOT = Path(__file__).resolve().parents[1]
MODULE_PATH = PIPELINE_ROOT / "inventory_ghidra_dispatcher.py"
SPEC = importlib.util.spec_from_file_location("inventory_ghidra_dispatcher", MODULE_PATH)
assert SPEC and SPEC.loader
INVENTORY = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = INVENTORY
SPEC.loader.exec_module(INVENTORY)


class GhidraDispatcherInventoryTests(unittest.TestCase):
    def test_inventory_preserves_case_boundaries_and_observations(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            pseudocode = root / "dispatcher.c"
            pcode = root / "dispatcher.jsonl"
            pseudocode.write_text(
                "switch (command) {\n"
                "case 0x11:\n"
                "  syna_tcm_reset(device + 0x20c, 0);\n"
                "  return 0xffffffea;\n"
                "case 0x12:\n"
                "  mutex_lock(lock);\n"
                "  return 0;\n"
                "default:\n"
                "  _printk(error);\n"
                "}\n",
                encoding="utf-8",
            )
            pcode.write_text(
                "\n".join([
                    json.dumps({"address": "00100000", "instruction": "cmp w1,#0x11", "pcode": "INT_EQUAL"}),
                    json.dumps({"address": "00100004", "instruction": "b.eq 00100010", "pcode": "CBRANCH"}),
                ]) + "\n",
                encoding="utf-8",
            )

            result = INVENTORY.build_inventory(pseudocode, pcode, "dispatcher", "00100000")

            self.assertEqual(result["function_observations"]["instruction_count"], 2)
            self.assertEqual([case["command"] for case in result["dispatch_cases"]], ["0x11", "0x12", "default"])
            self.assertEqual(result["dispatch_cases"][0]["call_counts"], {"syna_tcm_reset": 1})
            self.assertEqual(result["dispatch_cases"][0]["offsets"], ["0x20c"])
            self.assertEqual(result["dispatch_cases"][0]["error_constants"], ["0xffffffea"])
            markdown = INVENTORY.render_markdown(result)
            self.assertIn("`0x11`", markdown)
            self.assertIn("This table is a decomposition plan only", markdown)


if __name__ == "__main__":
    unittest.main()
