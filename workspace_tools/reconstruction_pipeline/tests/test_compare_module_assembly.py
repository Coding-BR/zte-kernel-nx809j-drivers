import importlib.util
import tempfile
import unittest
from pathlib import Path


MODULE_PATH = (
    Path(__file__).resolve().parents[3]
    / "reverse_engineering"
    / "tools"
    / "compare_module_assembly.py"
)
SPEC = importlib.util.spec_from_file_location("compare_module_assembly", MODULE_PATH)
MODULE = importlib.util.module_from_spec(SPEC)
assert SPEC.loader is not None
SPEC.loader.exec_module(MODULE)


class FakeElf:
    def __init__(self) -> None:
        self.sections_by_name = {".rodata.str1.1": {"data": b"first\0second\0"}}


class PrintkProvenanceTests(unittest.TestCase):
    def test_merging_branches_preserves_all_static_formats(self) -> None:
        assembly = """Disassembly of section .text:

0000000000000000 <test>:
       0: 90000000     adrp x0, 0x0
                        0: R_AARCH64_ADR_PREL_PG_HI21 .rodata.str1.1
       4: 91000000     add x0, x0, #0x0
       8: 14000004     b 0x18 <test+0x18>
       c: 90000000     adrp x0, 0x0
                        c: R_AARCH64_ADR_PREL_PG_HI21 .rodata.str1.1+0x6
      10: 91000000     add x0, x0, #0x0
      14: 14000001     b 0x18 <test+0x18>
      18: 90000001     adrp x1, 0x0
      1c: 91000021     add x1, x1, #0x0
      20: 94000000     bl 0x20 <test+0x20>
                       20: R_AARCH64_CALL26 _printk
"""
        with tempfile.TemporaryDirectory() as temporary:
            path = Path(temporary) / "test.asm"
            path.write_text(assembly, encoding="utf-8")
            calls = MODULE.parse_printk_calls(path, FakeElf())

        self.assertEqual(len(calls), 1)
        self.assertEqual(calls[0]["format"], None)
        self.assertEqual(calls[0]["format_candidates"], ["first", "second"])
        self.assertEqual(calls[0]["format_resolution"], "ambiguous_static")

    def test_candidate_sets_are_compared_as_one_callsite_signature(self) -> None:
        calls = [{"format": None, "format_candidates": ["first", "second"]}]

        self.assertEqual(MODULE.format_differences(calls, calls), [])


if __name__ == "__main__":
    unittest.main()
