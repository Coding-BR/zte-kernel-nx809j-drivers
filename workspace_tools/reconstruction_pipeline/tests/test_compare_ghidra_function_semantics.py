import importlib.util
import json
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch


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

    def test_resolved_symbol_string_address_syntax_is_normalized_narrowly(self) -> None:
        stock, _, stock_artifacts = MODULE.normalize_decompiled(
            "printk(unk_00101000);",
            {},
            symbol_strings={"unk_00101000": "message"},
        )
        candidate, _, candidate_artifacts = MODULE.normalize_decompiled(
            "printk(&unk_00202000);",
            {},
            symbol_strings={"unk_00202000": "message"},
        )
        unrelated, _, _ = MODULE.normalize_decompiled(
            "printk(&some_other_pointer);",
            {},
        )

        self.assertEqual(stock, candidate)
        self.assertNotEqual(stock, unrelated)
        self.assertEqual(candidate_artifacts[0]["kind"], "ghidra_string_pointer_address_syntax")
        self.assertEqual(stock_artifacts, [])

    def test_kernel_driver_address_and_joined_labels_are_normalized_narrowly(self) -> None:
        stock, _, stock_artifacts = MODULE.normalize_decompiled(
            "__platform_driver_register(hardware_ver_driver, &__this_module); goto code_r0x00101244;",
            {},
        )
        candidate, _, candidate_artifacts = MODULE.normalize_decompiled(
            "__platform_driver_register(&hardware_ver_driver, &__this_module); goto code_r0x0010045c;",
            {},
        )
        unrelated, _, _ = MODULE.normalize_decompiled(
            "__platform_driver_register(&unrelated_driver, &__this_module); goto code_r0x0010045c;",
            {},
        )

        self.assertEqual(stock, candidate)
        self.assertNotEqual(stock, unrelated)
        self.assertEqual(candidate_artifacts[0]["kind"], "elf_object_binding_address_syntax")
        self.assertEqual(candidate_artifacts[1]["kind"], "ghidra_local_label_address")
        self.assertEqual(stock_artifacts[0]["kind"], "ghidra_local_label_address")

    def test_named_data_binding_is_opt_in_and_preserves_alias_identity(self) -> None:
        stock, _, stock_artifacts = MODULE.normalize_decompiled(
            "x = stock_bss_base; y = stock_bss_base;",
            {},
            named_data_bindings={
                "stock_bss_base": "GHIDRA_DATA_BINDING__bss_00000000"
            },
        )
        candidate, _, candidate_artifacts = MODULE.normalize_decompiled(
            "x = candidate_bss_base; y = candidate_bss_base;",
            {},
            named_data_bindings={
                "candidate_bss_base": "GHIDRA_DATA_BINDING__bss_00000000"
            },
        )
        strict, _, _ = MODULE.normalize_decompiled(
            "x = candidate_bss_base; y = candidate_bss_base;", {}
        )

        self.assertEqual(stock, candidate)
        self.assertNotEqual(stock, strict)
        self.assertEqual(
            {artifact["kind"] for artifact in stock_artifacts + candidate_artifacts},
            {"ghidra_named_data_binding"},
        )

    def test_elf_backed_named_string_symbol_is_normalized_without_rewriting_literals(
        self,
    ) -> None:
        stock, _, _ = MODULE.normalize_decompiled(
            'printk(&DAT_00101000, "charge_version");',
            {0x00101000: "V2A"},
        )
        candidate, evidence, _ = MODULE.normalize_decompiled(
            'printk(charge_version, "charge_version");',
            {},
            symbol_strings={"charge_version": "V2A"},
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(evidence[0]["source"], "elf_symbol_bytes")

    def test_shared_named_data_binding_rejects_changed_section_layout(self) -> None:
        with tempfile.TemporaryDirectory() as temporary_directory:
            root = Path(temporary_directory)
            stock = root / "stock"
            candidate = root / "candidate"
            for export in (stock, candidate):
                export.mkdir()
            write_jsonl(
                stock / "memory_blocks.jsonl",
                [
                    {
                        "name": ".bss",
                        "start": "1000",
                        "end": "101f",
                        "initialized": False,
                    },
                    {
                        "name": ".data",
                        "start": "2000",
                        "end": "201f",
                        "initialized": True,
                    },
                ],
            )
            write_jsonl(
                candidate / "memory_blocks.jsonl",
                [
                    {
                        "name": ".bss",
                        "start": "3000",
                        "end": "301f",
                        "initialized": False,
                    },
                    {
                        "name": ".data",
                        "start": "4000",
                        "end": "402f",
                        "initialized": True,
                    },
                ],
            )
            write_jsonl(
                stock / "symbols.jsonl",
                [
                    {"name": "stock_bss", "address": "1000", "type": "Label"},
                    {"name": "stock_data", "address": "2000", "type": "Label"},
                ],
            )
            write_jsonl(
                candidate / "symbols.jsonl",
                [
                    {"name": "candidate_bss", "address": "3000", "type": "Label"},
                    {"name": "candidate_data", "address": "4000", "type": "Label"},
                ],
            )

            stock_bindings, candidate_bindings = MODULE.shared_named_data_bindings(
                stock, candidate
            )

        self.assertEqual(stock_bindings, {"stock_bss": "GHIDRA_DATA_BINDING__bss_00000000"})
        self.assertEqual(
            candidate_bindings,
            {"candidate_bss": "GHIDRA_DATA_BINDING__bss_00000000"},
        )

    def test_relocated_global_data_labels_preserve_aliasing(self) -> None:
        stock = "void target(void) { DAT_00101000 = DAT_00101008; DAT_00101008 = DAT_00101000; }"
        candidate = "void target(void) { DAT_00202000 = DAT_00202008; DAT_00202008 = DAT_00202000; }"
        changed_aliasing = "void target(void) { DAT_00202000 = DAT_00202008; DAT_00202010 = DAT_00202000; }"

        stock_normalized, _, stock_artifacts = MODULE.normalize_decompiled(stock, {})
        candidate_normalized, _, candidate_artifacts = MODULE.normalize_decompiled(
            candidate, {}
        )
        changed_normalized, _, _ = MODULE.normalize_decompiled(changed_aliasing, {})

        self.assertEqual(stock_normalized, candidate_normalized)
        self.assertNotEqual(stock_normalized, changed_normalized)
        self.assertEqual(len(stock_artifacts), 2)
        self.assertEqual(len(candidate_artifacts), 2)
        self.assertEqual(stock_artifacts[0]["kind"], "ghidra_global_data_address")

    def test_fragmented_contiguous_byte_flag_is_normalized_only_with_layout_proof(
        self,
    ) -> None:
        stock, _, stock_artifacts = MODULE.normalize_decompiled(
            "if (DAT_00101001._1_1_ != '\\0' || (char)DAT_00101001 != '\\0') { "
            "DAT_00101003 = 1; _printk(&DAT_00102000); }",
            {},
        )
        candidate, _, candidate_artifacts = MODULE.normalize_decompiled(
            "if (DAT_00203002 != '\\0' || DAT_00203001 != '\\0') { "
            "DAT_00203003 = 1; _printk(&DAT_00204000); }",
            {},
        )

        result = MODULE.fragmented_byte_flag_normalization(
            stock, candidate, stock_artifacts, candidate_artifacts
        )

        self.assertIsNotNone(result)
        normalized_stock, normalized_candidate, evidence = result
        self.assertEqual(normalized_stock, normalized_candidate)
        self.assertEqual(evidence["kind"], "ghidra_fragmented_contiguous_byte_flag")

    def test_fragmented_byte_flag_rejects_changed_operator_or_offset(self) -> None:
        stock, _, stock_artifacts = MODULE.normalize_decompiled(
            "if (DAT_00101001._1_1_ != '\\0' || (char)DAT_00101001 != '\\0') { "
            "DAT_00101003 = 1; }",
            {},
        )
        changed_operator, _, changed_operator_artifacts = MODULE.normalize_decompiled(
            "if (DAT_00203002 != '\\0' && DAT_00203001 != '\\0') { "
            "DAT_00203003 = 1; }",
            {},
        )
        changed_offset, _, changed_offset_artifacts = MODULE.normalize_decompiled(
            "if (DAT_00203003 != '\\0' || DAT_00203001 != '\\0') { "
            "DAT_00203004 = 1; }",
            {},
        )

        self.assertIsNone(
            MODULE.fragmented_byte_flag_normalization(
                stock, changed_operator, stock_artifacts, changed_operator_artifacts
            )
        )
        self.assertIsNone(
            MODULE.fragmented_byte_flag_normalization(
                stock, changed_offset, stock_artifacts, changed_offset_artifacts
            )
        )

    def test_elf_string_resolver_ignores_uninitialized_memory(self) -> None:
        payload = b"untrusted\x00trusted\x00"
        sections = {
            ".bss": (0, len(b"untrusted\x00")),
            ".rodata": (len(b"untrusted\x00"), len(b"trusted\x00")),
        }
        blocks = [
            (".bss", 0x1000, 0x1009, False),
            (".rodata", 0x2000, 0x2007, True),
        ]

        with patch.object(MODULE, "elf_sections", return_value=(payload, sections)):
            with patch.object(MODULE, "memory_blocks", return_value=blocks):
                resolved = MODULE.elf_data_string_resolver(Path("unused"), Path("unused"))

        self.assertEqual(resolved, {0x2000: "trusted"})

    def test_known_object_binding_addresses_are_normalized_narrowly(self) -> None:
        for expression_with_address, expression_without_address in (
            (
                "platform_device_register(&syna_spi_device);",
                "platform_device_register(syna_spi_device);",
            ),
            (
                "sysfs_create_group(dir, &attr_group);",
                "sysfs_create_group(dir, attr_group);",
            ),
        ):
            stock, _, stock_artifacts = MODULE.normalize_decompiled(
                expression_with_address, {}
            )
            candidate, _, candidate_artifacts = MODULE.normalize_decompiled(
                expression_without_address, {}
            )
            unrelated, _, _ = MODULE.normalize_decompiled(
                expression_with_address.replace("&attr_group", "&other_group")
                .replace("&syna_spi_device", "&other_device"),
                {},
            )

            self.assertEqual(stock, candidate)
            self.assertNotEqual(unrelated, candidate)
            self.assertEqual(
                stock_artifacts[0]["kind"],
                "elf_object_binding_address_syntax",
            )
            self.assertEqual(candidate_artifacts, [])

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

    def test_explicit_pcode_fallback_records_lossy_decompiler_truncation(self) -> None:
        with tempfile.TemporaryDirectory() as temporary_directory:
            root = Path(temporary_directory)
            stock = root / "stock"
            candidate = root / "candidate"
            self.make_export(stock, "00100000", "00101001", "message")
            self.make_export(candidate, "00200000", "00202001", "message")
            for export, body in (
                (
                    stock,
                    "void target(void) { x = 1; printk(); cleanup(); return; }\n",
                ),
                (
                    candidate,
                    "void target(void) { printk(); return; }\n",
                ),
            ):
                record_path = export / "functions.jsonl"
                records = [json.loads(line) for line in record_path.read_text().splitlines()]
                records[0]["body_bytes"] = 8
                write_jsonl(record_path, records)
                (export / "decompiled" / "target.c").write_text(body, encoding="utf-8")
            result = MODULE.compare_function(
                "target",
                stock,
                candidate,
                MODULE.function_index(stock)["target"],
                MODULE.function_index(candidate)["target"],
                MODULE.string_index(stock),
                MODULE.string_index(candidate),
                allow_pcode_authoritative_decompiler_fallback=True,
            )

        self.assertTrue(result["passed"])
        self.assertFalse(result["checks"]["normalized_decompiled_c"])
        self.assertEqual(result["raw_failures"], ["normalized_decompiled_c"])
        self.assertEqual(
            result["decompiled_normalization"][
                "pcode_authoritative_decompiler_fallback"
            ]["kind"],
            "ghidra_premature_return_decompiler_truncation",
        )

    def test_pcode_fallback_is_opt_in(self) -> None:
        with tempfile.TemporaryDirectory() as temporary_directory:
            root = Path(temporary_directory)
            stock = root / "stock"
            candidate = root / "candidate"
            self.make_export(stock, "00100000", "00101001", "message")
            self.make_export(candidate, "00200000", "00202001", "message")
            for export, body in (
                (stock, "void target(void) { x = 1; printk(); cleanup(); return; }\n"),
                (candidate, "void target(void) { printk(); return; }\n"),
            ):
                record_path = export / "functions.jsonl"
                records = [json.loads(line) for line in record_path.read_text().splitlines()]
                records[0]["body_bytes"] = 8
                write_jsonl(record_path, records)
                (export / "decompiled" / "target.c").write_text(body, encoding="utf-8")
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
        self.assertEqual(result["failures"], ["normalized_decompiled_c"])

    def test_both_fallbacks_try_premature_return_when_propagation_does_not_match(self) -> None:
        with tempfile.TemporaryDirectory() as temporary_directory:
            root = Path(temporary_directory)
            stock = root / "stock"
            candidate = root / "candidate"
            self.make_export(stock, "00100000", "00101001", "message")
            self.make_export(candidate, "00200000", "00202001", "message")
            for export, body in (
                (stock, "undefined8 target(void) { x = 1; return 0; }\n"),
                (candidate, "void target(void) { x = 1; return; }\n"),
            ):
                record_path = export / "functions.jsonl"
                records = [json.loads(line) for line in record_path.read_text().splitlines()]
                records[0]["body_bytes"] = 8
                write_jsonl(record_path, records)
                (export / "decompiled" / "target.c").write_text(body, encoding="utf-8")
            result = MODULE.compare_function(
                "target",
                stock,
                candidate,
                MODULE.function_index(stock)["target"],
                MODULE.function_index(candidate)["target"],
                MODULE.string_index(stock),
                MODULE.string_index(candidate),
                allow_pcode_authoritative_decompiler_fallback=True,
                allow_return_propagation_fallback=True,
            )

        self.assertTrue(result["passed"])
        self.assertIsNone(result["decompiled_normalization"]["return_propagation_fallback"])
        self.assertEqual(
            result["decompiled_normalization"]["pcode_authoritative_decompiler_fallback"]["kind"],
            "ghidra_premature_return_decompiler_truncation",
        )

    def test_pcode_fallback_accepts_truncated_void_return_against_value_return(self) -> None:
        stock = "undefined8target(void){_printk();x=1;return0;}"
        candidate = "voidtarget(void){_printk();return;}"

        evidence = MODULE.lossy_decompiler_truncation(stock, candidate)

        self.assertIsNotNone(evidence)
        self.assertEqual(
            evidence["kind"], "ghidra_premature_return_decompiler_truncation"
        )
        self.assertEqual(evidence["omitted_stock_body_fragment"], "x=1;")

    def test_external_label_fallback_requires_equal_pcode_call_count(self) -> None:
        stock = "void target(void){_printk();zlog_client_record();zlog_client_notify();return;}"
        candidate = "void target(void){_printk();return;return;}"
        shape = [
            {"operation": "CALL"},
            {"operation": "CALL"},
            {"operation": "CALL"},
        ]

        evidence = MODULE.external_label_call_decompiler_artifact(
            stock, candidate, shape, shape
        )
        self.assertIsNotNone(evidence)
        self.assertEqual(
            evidence["kind"], "ghidra_external_label_control_flow_artifact"
        )
        self.assertEqual(
            evidence["missing_stock_call_names"],
            ["zlog_client_notify", "zlog_client_record"],
        )
        self.assertIsNone(
            MODULE.external_label_call_decompiler_artifact(
                stock, candidate, shape, shape[:-1]
            )
        )

    def test_collapsed_cfg_fallback_requires_strong_shape(self) -> None:
        stock = (
            "void target(void){_printk();of_find_property();of_get_named_gpio();"
            "of_property_read_variable_u32_array();gpio_free();spi_setup();"
            "return0;return1;}"
        )
        candidate = "void target(void){_printk();return;}"
        shape = [{"operation": "CALL"}] * 6

        evidence = MODULE.external_label_call_decompiler_artifact(
            stock, candidate, shape, shape
        )
        self.assertIsNotNone(evidence)
        self.assertEqual(
            evidence["kind"], "ghidra_cfg_collapsed_external_label_artifact"
        )
        self.assertEqual(evidence["candidate_call_operation_count"], 6)
        self.assertIsNone(
            MODULE.external_label_call_decompiler_artifact(
                stock, candidate, shape, shape[:-1]
            )
        )

    def test_unresolved_fun_call_name_fallback_is_one_for_one(self) -> None:
        stock = (
            "void target(void){_printk();syna_tcm_v1_read_message();"
            "mutex_lock();mutex_unlock();return;}"
        )
        candidate = (
            "void target(void){_printk();FUN_0014565c();"
            "mutex_lock();mutex_unlock();return;}"
        )
        shape = [{"operation": "CALL"}] * 4

        evidence = MODULE.external_label_call_decompiler_artifact(
            stock, candidate, shape, shape
        )
        self.assertIsNotNone(evidence)
        self.assertEqual(
            evidence["kind"], "ghidra_unresolved_external_call_name_artifact"
        )
        self.assertEqual(evidence["candidate_extra_call_names"], ["FUN_0014565c"])
        self.assertIsNone(
            MODULE.external_label_call_decompiler_artifact(
                stock, candidate, shape, shape[:-1]
            )
        )

    def test_cfg_restructuring_fallback_requires_exact_call_set_and_shape(self) -> None:
        stock = (
            "void target(void){_printk();syna_request_managed_device();"
            "devm_kmalloc();mutex_lock();kfree();memcpy();"
            "ktime_get_real_ts64();syna_request_managed_device();mutex_unlock();return0;}"
        )
        candidate = (
            "void target(void){_printk();syna_request_managed_device();"
            "devm_kmalloc();mutex_lock();kfree();memcpy();"
            "ktime_get_real_ts64();mutex_unlock();return;return;}"
        )
        shape = [{"operation": "CALL"}] * 8

        evidence = MODULE.decompiler_cfg_restructuring_artifact(
            stock, candidate, shape, shape
        )
        self.assertIsNotNone(evidence)
        self.assertEqual(
            evidence["kind"], "ghidra_cfg_restructuring_external_call_artifact"
        )
        self.assertIsNone(
            MODULE.decompiler_cfg_restructuring_artifact(
                stock, candidate + "changed();", shape, shape
            )
        )

    def test_cfg_early_return_shared_cleanup_fallback_is_narrow(self) -> None:
        stock = (
            "void target(void){_printk();scnprintf();syna_tcm_get_testing();"
            "__mutex_init();__mutex_init();scnprintf();scnprintf();"
            "_printk();syna_request_managed_device();devm_kfree();"
            "syna_request_managed_device();devm_kfree();"
            "if(x){foo();}elseif(y){bar();}gotoGHIDRA_LOCAL_LABEL_0;return;}"
        )
        candidate = (
            "void target(void){_printk();scnprintf();syna_tcm_get_testing();"
            "__mutex_init();__mutex_init();scnprintf();scnprintf();"
            "_printk();syna_request_managed_device();devm_kfree();"
            "syna_request_managed_device();devm_kfree();"
            "if(x){foo();return;}if(y){bar();return;}"
            "gotoGHIDRA_LOCAL_LABEL_0;return;}"
        )
        shape = [{"operation": "CALL"}] * 13

        evidence = MODULE.decompiler_cfg_early_return_cleanup_artifact(
            stock, candidate, shape, shape
        )
        self.assertIsNotNone(evidence)
        self.assertEqual(
            evidence["kind"], "ghidra_cfg_early_return_shared_cleanup_artifact"
        )
        self.assertIsNone(
            MODULE.decompiler_cfg_early_return_cleanup_artifact(
                stock, candidate.replace("return;}goto", "return 1;}goto"), shape, shape
            )
        )

    def test_return_propagation_fallback_is_narrow_and_explicit(self) -> None:
        stock = (
            'ulongget_tp_algo_item_id(char*param_1){byte*pbVar4;'
            '_printk(GHIDRA_STRING["msg"],"get_tp_algo_item_id",*pbVar4);'
            'return(ulong)*pbVar4;}'
        )
        candidate = (
            'undefined8get_tp_algo_item_id(char*param_1){undefined8uVar4;'
            'undefined1*puVar5;'
            '_printk(GHIDRA_STRING["msg"],"get_tp_algo_item_id",*puVar5);'
            'returnuVar4;}'
        )

        self.assertIsNone(
            MODULE.decompiler_return_propagation_artifact(stock, candidate)
        )
        evidence = MODULE.decompiler_return_propagation_artifact(candidate, stock)
        self.assertIsNone(evidence)
        evidence = MODULE.decompiler_return_propagation_artifact(stock, candidate)
        self.assertIsNone(evidence)

        # The candidate form must include the assignment to the external call;
        # this guards against accepting an unrelated changed return expression.
        candidate = candidate.replace(
            '_printk(', 'uVar4=_printk(', 1
        )
        evidence = MODULE.decompiler_return_propagation_artifact(stock, candidate)
        self.assertIsNotNone(evidence)
        self.assertEqual(evidence["kind"], "ghidra_call_return_propagation_artifact")

    def test_return_zero_propagation_fallback_is_narrow_and_explicit(self) -> None:
        stock = (
            'undefined8target(void){longlVar1;lVar1=*(long*)(param_1+0xdb8);'
            '*(undefined4*)(lVar1+0x5ec)=param_2;_printk(GHIDRA_STRING["msg"],'
            '"target");return0;}'
        )
        candidate = (
            'undefined8target(void){undefined8uVar1;longlVar2;'
            'lVar2=*(long*)(param_1+0xdb8);*(undefined4*)(lVar2+0x5ec)=param_2;'
            'uVar1=_printk(GHIDRA_STRING["msg"],"target");returnuVar1;}'
        )

        evidence = MODULE.decompiler_return_propagation_artifact(stock, candidate)

        self.assertIsNotNone(evidence)
        self.assertEqual(
            evidence["kind"], "ghidra_call_return_zero_propagation_artifact"
        )

    def test_md5_file_is_stable_for_module_identity_binding(self) -> None:
        with tempfile.TemporaryDirectory() as temporary_directory:
            module = Path(temporary_directory) / "candidate.ko"
            module.write_bytes(b"candidate-module")
            self.assertEqual(
                MODULE.md5_file(module),
                "be1d206279229fd336a8f55419775610",
            )

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

    def test_relocated_pointer_table_base_is_normalized_but_index_is_preserved(self) -> None:
        stock = "char *target(int value) { return (&PTR_s_APP_CODE_00131428)[value - 1U]; }"
        candidate = "char *target(int value) { return (&partition_names)[value - 1U]; }"
        changed_index = "char *target(int value) { return (&partition_names)[value]; }"

        stock_normalized, _, stock_artifacts = MODULE.normalize_decompiled(stock, {})
        candidate_normalized, _, candidate_artifacts = MODULE.normalize_decompiled(
            candidate, {}
        )
        changed_normalized, _, _ = MODULE.normalize_decompiled(changed_index, {})

        self.assertEqual(stock_normalized, candidate_normalized)
        self.assertNotEqual(stock_normalized, changed_normalized)
        self.assertEqual(stock_artifacts[0]["kind"], "elf_pointer_table_base_symbol")
        self.assertEqual(candidate_artifacts[0]["kind"], "elf_pointer_table_base_symbol")


if __name__ == "__main__":
    unittest.main()
