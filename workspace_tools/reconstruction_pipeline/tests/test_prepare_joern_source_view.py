from __future__ import annotations

import importlib.util
import shutil
import sys
import tempfile
import unittest
from pathlib import Path


PIPELINE_ROOT = Path(__file__).resolve().parents[1]
MODULE_PATH = PIPELINE_ROOT / "prepare_joern_source_view.py"
SPEC = importlib.util.spec_from_file_location("prepare_joern_source_view", MODULE_PATH)
assert SPEC and SPEC.loader
VIEW = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = VIEW
SPEC.loader.exec_module(VIEW)


class JoernSourceViewTests(unittest.TestCase):
    def test_forced_include_and_function_local_alias_are_analysis_only(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            source = root / "source"
            source.mkdir()
            original = (
                "long f(void)\n"
                "{\n"
                "  union { int value; } storage;\n"
                "#define alias storage.value\n"
                "  alias = helper();\n"
                "  return alias;\n"
                "}\n"
            )
            (source / "defs.h").write_text("#define nullptr NULL\n", encoding="utf-8")
            (source / "driver.c").write_text(original, encoding="utf-8")
            view = root / "view"
            shutil.copytree(source, view)

            changes = VIEW.normalize_source(view / "driver.c", "defs.h")
            rendered = (view / "driver.c").read_text(encoding="utf-8")

            self.assertEqual((source / "driver.c").read_text(encoding="utf-8"), original)
            self.assertIn('#include "defs.h"', rendered)
            self.assertIn("omitted function-local directive", rendered)
            self.assertIn("storage.value = helper()", rendered)
            self.assertIn("return storage.value", rendered)
            self.assertEqual(len(changes), 2)
            self.assertEqual(changes[0]["kind"], "forced_include")
            self.assertEqual(changes[1]["kind"], "function_local_directive")


if __name__ == "__main__":
    unittest.main()
