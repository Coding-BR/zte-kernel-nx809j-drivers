from __future__ import annotations

import importlib.util
import unittest
from pathlib import Path


SCRIPT = Path(__file__).resolve().parents[1] / "extract_module_assembly.py"
SPEC = importlib.util.spec_from_file_location("extract_module_assembly", SCRIPT)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


class ExtractModuleAssemblyTests(unittest.TestCase):
    def test_offset_selector_disambiguates_duplicate_symbol(self) -> None:
        candidates = [(".text", 0x185B8, 104), (".text", 0x1B8B8, 104)]

        selected = MODULE.select_symbol_range(candidates, None, None, 0x185B8)

        self.assertEqual((".text", 0x185B8, 104), selected)

    def test_command_line_selector_keeps_elf_offset_identity(self) -> None:
        spec = MODULE.command_line_function_spec("syna_tcm_buf_unlock@0x185b8")

        self.assertEqual("syna_tcm_buf_unlock", spec["name"])
        self.assertEqual(0x185B8, spec["explicit_offset"])
        self.assertEqual("syna_tcm_buf_unlock@0x185b8", spec["function_id"])


if __name__ == "__main__":
    unittest.main()
