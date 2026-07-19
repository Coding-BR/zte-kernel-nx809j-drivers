import importlib.util
import unittest
from pathlib import Path


MODULE_PATH = Path(__file__).resolve().parents[1] / "verify_elf_callback_table.py"
SPEC = importlib.util.spec_from_file_location("verify_elf_callback_table", MODULE_PATH)
MODULE = importlib.util.module_from_spec(SPEC)
assert SPEC.loader is not None
SPEC.loader.exec_module(MODULE)


class CallbackTableTests(unittest.TestCase):
    def test_exact_table_callbacks_pass(self) -> None:
        symbols = {"table": (".data", 0x100, 72), "read": (".text", 0, 4)}
        relocations = {
            (".data", 0x128): ("R_AARCH64_ABS64", "read"),
            (".data", 0x130): ("R_AARCH64_ABS64", "write"),
        }

        checks, _ = MODULE.verify_table(
            symbols,
            relocations,
            "table",
            72,
            [(0x28, "read"), (0x30, "write")],
            ["wrapper"],
        )

        self.assertTrue(all(checks.values()))

    def test_wrong_callback_target_fails(self) -> None:
        symbols = {"table": (".data", 0x100, 72)}
        relocations = {(".data", 0x128): ("R_AARCH64_ABS64", "wrapper")}

        checks, _ = MODULE.verify_table(
            symbols, relocations, "table", 72, [(0x28, "read")], []
        )

        self.assertFalse(checks["callback_0x28"])


if __name__ == "__main__":
    unittest.main()
