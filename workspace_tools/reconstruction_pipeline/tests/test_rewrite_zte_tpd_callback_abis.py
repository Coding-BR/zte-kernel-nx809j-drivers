from __future__ import annotations

import importlib.util
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[3]


def load(name: str):
    path = ROOT / "workspace_tools" / "reconstruction_pipeline" / name
    spec = importlib.util.spec_from_file_location(path.stem, path)
    module = importlib.util.module_from_spec(spec)
    assert spec.loader is not None
    spec.loader.exec_module(module)
    return module


PROC = load("rewrite_zte_tpd_proc_abis.py")
WORK = load("rewrite_zte_tpd_work_void_abis.py")


class ProcAbiRewriteTests(unittest.TestCase):
    def test_read_handler_rewrite_is_typed_and_idempotent(self) -> None:
        source = (
            "__int64 __fastcall demo(__int64 a1, __int64 a2, "
            "__int64 a3, __int64 *a4)\n{\n  return a3;\n}\n"
        )
        rewritten = PROC._transform_handler(source, "demo", True)
        self.assertIn(
            "ssize_t demo(struct file *file, char __user *buffer, "
            "size_t count, loff_t *offset)",
            rewritten,
        )
        self.assertIn("__int64 *a4 = (__int64 *)offset;", rewritten)
        self.assertEqual(PROC._transform_handler(rewritten, "demo", True), rewritten)

    def test_write_handler_adds_the_stock_fourth_parameter(self) -> None:
        source = (
            "__int64 __fastcall demo(__int64 a1, __int64 a2, __int64 a3)\n"
            "{\n  return a3;\n}\n"
        )
        rewritten = PROC._transform_handler(source, "demo", False)
        self.assertIn("const char __user *buffer", rewritten)
        self.assertIn("loff_t *offset", rewritten)
        self.assertIn("(void)offset;", rewritten)

    def test_unexpected_proc_signature_fails_closed(self) -> None:
        with self.assertRaisesRegex(ValueError, "unexpected source signature"):
            PROC._transform_handler("int demo(void) { return 0; }\n", "demo", True)


class WorkVoidAbiRewriteTests(unittest.TestCase):
    def test_tpd_id_rewrite_preserves_the_side_effect(self) -> None:
        source = (
            "__int64 tpd_id0_report_work()\n{\n"
            "  return edge_long_press_up((struct input_dev *)qword_30F28, 0);\n"
            "}\n"
        )
        rewritten = WORK.transform_tpd_id(source, "tpd_id0_report_work", 0)
        self.assertIn("void tpd_id0_report_work(struct work_struct *work)", rewritten)
        self.assertIn("(void)work;", rewritten)
        self.assertIn("edge_long_press_up((struct input_dev *)qword_30F28, 0);", rewritten)
        self.assertNotIn("return edge_long_press_up", rewritten)
        self.assertEqual(
            WORK.transform_tpd_id(rewritten, "tpd_id0_report_work", 0), rewritten
        )

    def test_replace_once_fails_when_neither_state_matches(self) -> None:
        with self.assertRaisesRegex(ValueError, "precondition failed"):
            WORK.replace_once("unrelated", "before", "after", "demo")


if __name__ == "__main__":
    unittest.main()
