import importlib.util
import sys
import tempfile
import textwrap
import unittest
from pathlib import Path


MODULE_PATH = Path(__file__).resolve().parents[1] / "segment_function_cfg.py"
SPEC = importlib.util.spec_from_file_location("segment_function_cfg", MODULE_PATH)
MODULE = importlib.util.module_from_spec(SPEC)
assert SPEC.loader is not None
sys.modules[SPEC.name] = MODULE
SPEC.loader.exec_module(MODULE)


class SegmentationTests(unittest.TestCase):
    def parse(self, body: str):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "function.asm"
            path.write_text(textwrap.dedent(body), encoding="utf-8")
            return MODULE.parse_assembly(path)

    def test_builds_conditional_cfg_and_call_regions(self) -> None:
        function = self.parse(
            """
            0000000000000004 <sample>:
                   4: b4000060      cbz x0, 0x10 <sample+0xc>
                   8: 94000000      bl 0x8 <sample+0x4>
                    0000000000000008: R_AARCH64_CALL26 helper
                   c: 14000002      b 0x14 <sample+0x10>
                  10: 52800000      mov w0, #0x0
                  14: d65f03c0      ret
            """
        )

        result = MODULE.segment(function)

        self.assertEqual(result["basic_block_count"], 4)
        self.assertEqual(result["edge_count"], 4)
        self.assertEqual(result["calls"], ["helper"])
        self.assertEqual(result["blocks"][0]["successors"], ["B002", "B001"])
        self.assertEqual(result["blocks"][1]["successors"], ["B003"])
        self.assertTrue(any(item["boundary"] == "call" for item in result["call_regions"]))

    def test_trap_has_no_fallthrough_edge(self) -> None:
        function = self.parse(
            """
            0000000000000000 <trap>:
                   0: d4200020      brk #0x1
                   4: d65f03c0      ret
            """
        )

        result = MODULE.segment(function)

        self.assertEqual(result["basic_block_count"], 2)
        self.assertEqual(result["blocks"][0]["successors"], [])

    def test_markdown_uses_analyzed_function_name(self) -> None:
        function = self.parse(
            """
            0000000000000000 <target_probe>:
                   0: d65f03c0      ret
            """
        )
        segmented = MODULE.segment(function)
        document = {
            "stock": segmented,
            "candidate": segmented,
            "comparison": MODULE.compare(segmented, segmented),
        }

        report = MODULE.markdown(document)

        self.assertTrue(report.startswith("# target_probe Basic-Block Audit\n"))


if __name__ == "__main__":
    unittest.main()
