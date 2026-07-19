import importlib.util
import json
import tempfile
import unittest
from pathlib import Path


MODULE_PATH = (
    Path(__file__).resolve().parents[1] / "compare_ghidra_function_semantics.py"
)
SPEC = importlib.util.spec_from_file_location(
    "compare_ghidra_function_semantics", MODULE_PATH
)
MODULE = importlib.util.module_from_spec(SPEC)
assert SPEC.loader is not None
SPEC.loader.exec_module(MODULE)


def write_jsonl(path: Path, records: list[dict]) -> None:
    path.write_text(
        "".join(json.dumps(record) + "\n" for record in records),
        encoding="utf-8",
    )


class GhidraSemanticComparisonTests(unittest.TestCase):
    def make_export(
        self,
        root: Path,
        address: str,
        string_address: str,
        string_value: str,
        operation: str = "INT_ADD",
        constant: str = "0xc58",
    ) -> None:
        (root / "decompiled").mkdir(parents=True)
        (root / "pcode").mkdir()
        (root / "manifest.json").write_text(
            json.dumps({"executable_md5": address}), encoding="utf-8"
        )
        write_jsonl(
            root / "functions.jsonl",
            [
                {
                    "name": "target",
                    "body_bytes": 4,
                    "decompiled": True,
                    "decompiled_file": "decompiled/target.c",
                    "pcode_file": "pcode/target.jsonl",
                }
            ],
        )
        write_jsonl(
            root / "strings.jsonl",
            [{"address": string_address, "type": "string", "value": string_value}],
        )
        dat_address = f"{int(string_address, 16) - 1:08x}"
        (root / "decompiled" / "target.c").write_text(
            f"void target(void) {{ x = base + {constant}; printk(&DAT_{dat_address}); }}\n",
            encoding="utf-8",
        )
        write_jsonl(
            root / "pcode" / "target.jsonl",
            [
                {
                    "address": address,
                    "instruction": "add x8,x9,x10",
                    "op_index": 0,
                    "pcode": f"(register, 0x0, 8) {operation} (register, 0x8, 8)",
                }
            ],
        )

    def test_relocated_dat_string_and_registers_compare_equal(self) -> None:
        with tempfile.TemporaryDirectory() as temporary_directory:
            root = Path(temporary_directory)
            stock = root / "stock"
            candidate = root / "candidate"
            self.make_export(stock, "00100000", "00101001", "message")
            self.make_export(candidate, "00200000", "00202001", "message")
            result = MODULE.compare_function(
                "target",
                stock,
                candidate,
                MODULE.function_index(stock)["target"],
                MODULE.function_index(candidate)["target"],
                MODULE.string_index(stock),
                MODULE.string_index(candidate),
            )

        self.assertTrue(result["passed"])
        self.assertTrue(result["checks"]["normalized_decompiled_c"])
        self.assertTrue(result["checks"]["pcode_operation_shape"])

    def test_changed_pcode_operation_is_rejected(self) -> None:
        with tempfile.TemporaryDirectory() as temporary_directory:
            root = Path(temporary_directory)
            stock = root / "stock"
            candidate = root / "candidate"
            self.make_export(stock, "00100000", "00101001", "message")
            self.make_export(
                candidate,
                "00200000",
                "00202001",
                "message",
                operation="INT_SUB",
            )
            result = MODULE.compare_function(
                "target",
                stock,
                candidate,
                MODULE.function_index(stock)["target"],
                MODULE.function_index(candidate)["target"],
                MODULE.string_index(stock),
                MODULE.string_index(candidate),
            )

        self.assertFalse(result["passed"])
        self.assertFalse(result["checks"]["pcode_operation_shape"])

    def test_changed_offset_is_rejected(self) -> None:
        with tempfile.TemporaryDirectory() as temporary_directory:
            root = Path(temporary_directory)
            stock = root / "stock"
            candidate = root / "candidate"
            self.make_export(stock, "00100000", "00101001", "message")
            self.make_export(
                candidate,
                "00200000",
                "00202001",
                "message",
                constant="0xc60",
            )
            result = MODULE.compare_function(
                "target",
                stock,
                candidate,
                MODULE.function_index(stock)["target"],
                MODULE.function_index(candidate)["target"],
                MODULE.string_index(stock),
                MODULE.string_index(candidate),
            )

        self.assertFalse(result["passed"])
        self.assertFalse(result["checks"]["normalized_decompiled_c"])


if __name__ == "__main__":
    unittest.main()
