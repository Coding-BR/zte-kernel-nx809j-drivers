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

    def test_relocated_unk_string_compares_equal(self) -> None:
        stock, stock_evidence, _ = MODULE.normalize_decompiled(
            "printk(&UNK_00101000);",
            {0x00101001: "6[info ] message\n"},
        )
        candidate, candidate_evidence, _ = MODULE.normalize_decompiled(
            "printk(&UNK_00202000);",
            {0x00202001: "6[info ] message\n"},
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(stock_evidence[0]["string_address_delta"], 1)
        self.assertEqual(candidate_evidence[0]["string_address_delta"], 1)

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

    def test_synthetic_breakpoint_context_and_alloc_tag_are_normalized(self) -> None:
        stock = (
            "void target(void) { "
            "__kmalloc_cache_noprof(_platform_device_add, 0xdc0, 0x18); "
            "SoftwareBreakpoint(0x8228, 0x10a0e4); }"
        )
        candidate = (
            "void target(void) { "
            "__kmalloc_cache_noprof(___check_object_size, 0xdc0, 0x18); "
            "SoftwareBreakpoint(0x8228, 0x160c58); }"
        )

        stock_normalized, _, stock_artifacts = MODULE.normalize_decompiled(stock, {})
        candidate_normalized, _, candidate_artifacts = MODULE.normalize_decompiled(
            candidate, {}
        )

        self.assertEqual(stock_normalized, candidate_normalized)
        self.assertEqual(len(stock_artifacts), 2)
        self.assertEqual(len(candidate_artifacts), 2)

    def test_breakpoint_opcode_and_allocator_size_are_not_normalized(self) -> None:
        baseline = (
            "void target(void) { "
            "__kmalloc_cache_noprof(_platform_device_add, 0xdc0, 0x18); "
            "SoftwareBreakpoint(0x8228, 0x10a0e4); }"
        )
        changed = (
            "void target(void) { "
            "__kmalloc_cache_noprof(___check_object_size, 0xdc0, 0x20); "
            "SoftwareBreakpoint(0x8229, 0x160c58); }"
        )

        baseline_normalized, _, _ = MODULE.normalize_decompiled(baseline, {})
        changed_normalized, _, _ = MODULE.normalize_decompiled(changed, {})

        self.assertNotEqual(baseline_normalized, changed_normalized)

    def test_relocated_local_labels_are_normalized_bijectively(self) -> None:
        stock = (
            "void target(void) { goto LAB_00101020; "
            "LAB_00101010: return; LAB_00101020: goto LAB_00101010; }"
        )
        candidate = (
            "void target(void) { goto LAB_00203040; "
            "LAB_00203020: return; LAB_00203040: goto LAB_00203020; }"
        )

        stock_normalized, _, stock_artifacts = MODULE.normalize_decompiled(stock, {})
        candidate_normalized, _, candidate_artifacts = MODULE.normalize_decompiled(
            candidate, {}
        )

        self.assertEqual(stock_normalized, candidate_normalized)
        self.assertEqual(len(stock_artifacts), 2)
        self.assertEqual(len(candidate_artifacts), 2)

    def test_changed_local_label_graph_is_rejected(self) -> None:
        baseline = (
            "void target(void) { goto LAB_00101020; "
            "LAB_00101010: return; LAB_00101020: goto LAB_00101010; }"
        )
        changed = (
            "void target(void) { goto LAB_00203040; "
            "LAB_00203020: return; LAB_00203040: goto LAB_00203040; }"
        )

        baseline_normalized, _, _ = MODULE.normalize_decompiled(baseline, {})
        changed_normalized, _, _ = MODULE.normalize_decompiled(changed, {})

        self.assertNotEqual(baseline_normalized, changed_normalized)


if __name__ == "__main__":
    unittest.main()
