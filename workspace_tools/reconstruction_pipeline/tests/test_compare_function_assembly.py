import importlib.util
import tempfile
import unittest
from pathlib import Path


MODULE_PATH = Path(__file__).resolve().parents[1] / "compare_function_assembly.py"
SPEC = importlib.util.spec_from_file_location("compare_function_assembly", MODULE_PATH)
MODULE = importlib.util.module_from_spec(SPEC)
assert SPEC.loader is not None
SPEC.loader.exec_module(MODULE)


class NormalizedRelocationTests(unittest.TestCase):
    def test_function_pair_preserves_the_stock_entry_identity(self) -> None:
        self.assertEqual(
            MODULE.parse_function_pair(
                "syna_pal_mem_free@0012a4ec=syna_pal_mem_free_0"
            ),
            ("syna_pal_mem_free@0012a4ec", "syna_pal_mem_free_0"),
        )

    def test_function_pair_rejects_ambiguous_selector(self) -> None:
        with self.assertRaises(ValueError):
            MODULE.parse_function_pair("syna_pal_mem_free")

    def test_function_pair_normalizes_only_intra_function_branch_labels(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_function_identity_aliases(
            ["bl <shared_helper>", "b <syna_pal_mem_free+0x24>"],
            ["bl <shared_helper>", "b <syna_pal_mem_free_0+0x24>"],
            "syna_pal_mem_free",
            "syna_pal_mem_free_0",
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(stock[0], "bl <shared_helper>")
        self.assertEqual(stock[1], "b <__self__+0x24>")
        self.assertEqual(len(evidence), 1)

    def test_compiler_alloc_tag_suffix_is_guardedly_equivalent(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_compiler_alloc_tags(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 owner._alloc_tag.74",
                "R_AARCH64_ADD_ABS_LO12_NC owner._alloc_tag.74",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 owner._alloc_tag.5",
                "R_AARCH64_ADD_ABS_LO12_NC owner._alloc_tag.5",
            ],
            [20, 21],
            [20, 21],
            True,
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(len(evidence), 1)

    def test_compiler_alloc_tag_requires_same_owner(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_compiler_alloc_tags(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 first._alloc_tag.74",
                "R_AARCH64_ADD_ABS_LO12_NC first._alloc_tag.74",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 second._alloc_tag.5",
                "R_AARCH64_ADD_ABS_LO12_NC second._alloc_tag.5",
            ],
            [20, 21],
            [20, 21],
            True,
        )

        self.assertNotEqual(stock, candidate)
        self.assertEqual(evidence, [])

    def test_compiler_alloc_tag_requires_matching_instruction_positions(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_compiler_alloc_tags(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 owner._alloc_tag.74",
                "R_AARCH64_ADD_ABS_LO12_NC owner._alloc_tag.74",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 owner._alloc_tag.5",
                "R_AARCH64_ADD_ABS_LO12_NC owner._alloc_tag.5",
            ],
            [20, 21],
            [21, 22],
            True,
        )

        self.assertNotEqual(stock, candidate)
        self.assertEqual(evidence, [])

    def test_stripped_codetag_offset_matches_named_candidate_tag(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_stripped_codetag_alloc_tags(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .codetag.alloc_tags+0x190",
                "R_AARCH64_ADD_ABS_LO12_NC .codetag.alloc_tags+0x190",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 owner._alloc_tag",
                "R_AARCH64_ADD_ABS_LO12_NC owner._alloc_tag",
            ],
            [100, 101],
            [100, 101],
            True,
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(len(evidence), 1)

    def test_stripped_codetag_start_symbol_matches_named_candidate_tag(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_stripped_codetag_alloc_tags(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 __start_alloc_tags",
                "R_AARCH64_ADD_ABS_LO12_NC __start_alloc_tags",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 owner._alloc_tag",
                "R_AARCH64_ADD_ABS_LO12_NC owner._alloc_tag",
            ],
            [100, 101],
            [100, 101],
            True,
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(len(evidence), 1)

    def test_stripped_codetag_requires_matching_instruction_positions(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_stripped_codetag_alloc_tags(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .codetag.alloc_tags+0x190",
                "R_AARCH64_ADD_ABS_LO12_NC .codetag.alloc_tags+0x190",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 owner._alloc_tag",
                "R_AARCH64_ADD_ABS_LO12_NC owner._alloc_tag",
            ],
            [100, 101],
            [101, 102],
            True,
        )

        self.assertNotEqual(stock, candidate)
        self.assertEqual(evidence, [])

    def test_stripped_codetag_matches_moved_candidate_section(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_stripped_codetag_alloc_tags(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .codetag.alloc_tags+0x190",
                "R_AARCH64_ADD_ABS_LO12_NC .codetag.alloc_tags+0x190",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .codetag.alloc_tags+0xb20",
                "R_AARCH64_ADD_ABS_LO12_NC .codetag.alloc_tags+0xb20",
            ],
            [100, 101],
            [100, 101],
            True,
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(len(evidence), 1)

    def test_register_allocation_changes_require_semantic_proof(self) -> None:
        stock = ["f9462eab", "eb090148", "9a948114"]
        candidate = ["f9462ea8", "eb0a0169", "9a948134"]

        without_proof = MODULE.canonicalize_register_allocation_differences(
            stock, candidate, None, None
        )
        with_proof = MODULE.canonicalize_register_allocation_differences(
            stock,
            candidate,
            {"passed": True, "checks": {"pcode_operation_shape": True}},
            "semantic-report-sha256",
        )

        self.assertNotEqual(without_proof[0], without_proof[1])
        self.assertEqual(without_proof[2], [])
        self.assertEqual(with_proof[0], with_proof[1])
        self.assertEqual(len(with_proof[2]), 3)

    def test_register_allocation_guard_rejects_changed_immediate(self) -> None:
        stock = ["f9462eab"]
        candidate = ["f94632a8"]

        compared = MODULE.canonicalize_register_allocation_differences(
            stock, candidate, {"passed": True}, "semantic-report-sha256"
        )

        self.assertNotEqual(compared[0], compared[1])
        self.assertEqual(compared[2], [])

    def test_register_allocation_guard_accepts_sp_el0_destination(self) -> None:
        stock = ["d5384109"]
        candidate = ["d5384108"]

        compared = MODULE.canonicalize_register_allocation_differences(
            stock, candidate, {"passed": True}, "semantic-report-sha256"
        )

        self.assertEqual(compared[0], compared[1])
        self.assertEqual(len(compared[2]), 1)
        self.assertEqual(compared[2][0]["instruction_class"], "mrs SP_EL0 Rt")

    def test_register_allocation_guard_rejects_other_system_register(self) -> None:
        stock = ["d5384109"]
        candidate = ["d5384008"]

        compared = MODULE.canonicalize_register_allocation_differences(
            stock, candidate, {"passed": True}, "semantic-report-sha256"
        )

        self.assertNotEqual(compared[0], compared[1])
        self.assertEqual(compared[2], [])

    def test_register_allocation_guard_rejects_unapproved_instruction(self) -> None:
        stock = ["d503201f"]
        candidate = ["d503203f"]

        compared = MODULE.canonicalize_register_allocation_differences(
            stock, candidate, {"passed": True}, "semantic-report-sha256"
        )

        self.assertNotEqual(compared[0], compared[1])
        self.assertEqual(compared[2], [])

    def test_guarded_normal_sensing_patterns_require_semantic_proof(self) -> None:
        stock = ["d503201f"] * 44
        candidate = list(stock)
        stock[4:6] = ["f9413808", "aa0003f3"]
        candidate[4:6] = ["aa0003f3", "f9413808"]
        stock[40], candidate[40] = "2a0003f3", "aa0003f3"
        stock[43], candidate[43] = "2a1303e0", "aa1303e0"

        compared = MODULE.canonicalize_guarded_prologue_and_return_moves(
            stock, candidate, None, None
        )

        self.assertNotEqual(compared[0], compared[1])
        self.assertEqual(compared[2], [])

    def test_guarded_normal_sensing_patterns_bind_semantic_evidence(self) -> None:
        stock = ["d503201f"] * 44
        candidate = list(stock)
        stock[4:6] = ["f9413808", "aa0003f3"]
        candidate[4:6] = ["aa0003f3", "f9413808"]
        stock[40], candidate[40] = "2a0003f3", "aa0003f3"
        stock[43], candidate[43] = "2a1303e0", "aa1303e0"

        compared = MODULE.canonicalize_guarded_prologue_and_return_moves(
            stock,
            candidate,
            {"passed": True, "checks": {"int_return_contract": True}},
            "semantic-report-sha256",
        )

        self.assertEqual(compared[0], compared[1])
        self.assertEqual(len(compared[2]), 3)
        self.assertTrue(all(
            item["semantic_report_sha256"] == "semantic-report-sha256"
            for item in compared[2]
        ))

    def test_commutative_add_and_mul_operand_swaps_are_equivalent(self) -> None:
        stock, candidate, evidence = (
            MODULE.canonicalize_commutative_instruction_pairs(
                ["0b030043", "1b047d6a"],
                ["0b020063", "1b0b7c8a"],
            )
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(len(evidence), 2)

    def test_equality_cmp_operand_swap_requires_an_identical_equality_branch(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_equality_cmp_operand_swaps(
            ["eb14013f", "54000241"],
            ["eb09029f", "54000241"],
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(len(evidence), 1)
        self.assertEqual(evidence[0]["kind"], "equality_cmp_operand_swap")

    def test_equality_cmp_operand_swap_rejects_order_sensitive_branch(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_equality_cmp_operand_swaps(
            ["eb14013f", "5400004b"],
            ["eb09029f", "5400004b"],
        )

        self.assertNotEqual(stock, candidate)
        self.assertEqual(evidence, [])

    def test_equality_cmp_operand_swap_handles_shorter_candidate_stream(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_equality_cmp_operand_swaps(
            ["d503201f", "eb14013f"],
            ["d503201f"],
        )

        self.assertEqual(stock, ["d503201f", "eb14013f"])
        self.assertEqual(candidate, ["d503201f"])
        self.assertEqual(evidence, [])

    def test_u32_argument_zero_extend_reordering_is_guardedly_equivalent(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_u32_argument_setup_reordering(
            ["aa1503e0", "aa1403e1", "2a1303e2", "2a1303e3", "bl <read>"],
            ["92407e62", "aa1503e0", "aa1403e1", "2a1303e3", "bl <read>"],
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(len(evidence), 1)
        self.assertEqual(evidence[0]["kind"], "u32_argument_zero_extend_reordering")

    def test_u32_argument_zero_extend_reordering_rejects_source_clobber(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_u32_argument_setup_reordering(
            ["aa1503f3", "aa1403e1", "2a1303e2", "2a1303e3", "bl <read>"],
            ["92407e62", "aa1503f3", "aa1403e1", "2a1303e3", "bl <read>"],
        )

        self.assertNotEqual(stock, candidate)
        self.assertEqual(evidence, [])

    def test_sxtw_int_printk_argument_reordering_is_guardedly_equivalent(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_sxtw_int_printk_argument_reordering(
            [
                "93407c14", "eb13029f", "54000181",
                "90000000", "91000000", "90000001", "91000021", "2a1303e2",
                "2a1403e3", "bl <_printk>",
            ],
            [
                "93407c14", "eb13029f", "54000181",
                "aa0003e3", "90000000", "91000000", "90000001", "91000021",
                "2a1303e2", "bl <_printk>",
            ],
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(len(evidence), 1)
        self.assertEqual(evidence[0]["kind"], "sxtw_int_printk_argument_reordering")

    def test_sxtw_int_printk_argument_reordering_rejects_changed_source(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_sxtw_int_printk_argument_reordering(
            [
                "93407c14", "eb13029f", "54000181",
                "90000000", "91000000", "90000001", "91000021", "2a1303e2",
                "2a1403e3", "bl <_printk>",
            ],
            [
                "93407c14", "eb13029f", "54000181",
                "aa0103e3", "90000000", "91000000", "90000001", "91000021",
                "2a1303e2", "bl <_printk>",
            ],
        )

        self.assertNotEqual(stock, candidate)
        self.assertEqual(evidence, [])

    def test_shifted_add_operand_swap_is_not_equivalent(self) -> None:
        stock, candidate, evidence = (
            MODULE.canonicalize_commutative_instruction_pairs(
                ["0b030443"],
                ["0b020463"],
            )
        )

        self.assertNotEqual(stock, candidate)
        self.assertEqual(evidence, [])

    def test_guarded_boolean_count_pair_reordering_is_equivalent(self) -> None:
        stock_input = [
            "79411102",
            "79400103",
            "79422101",
            "79433100",
            "79444111",
            "79455110",
            "7100005f",
            "7946610f",
            "7947710e",
            "1a9f07e9",
            "7100007f",
            "7948810c",
            "1a890529",
        ]
        candidate_input = list(stock_input)
        candidate_input[0], candidate_input[1] = (
            candidate_input[1],
            candidate_input[0],
        )
        candidate_input[6], candidate_input[10] = (
            candidate_input[10],
            candidate_input[6],
        )

        stock, candidate, evidence = (
            MODULE.canonicalize_boolean_count_pair_reordering(
                stock_input,
                candidate_input,
            )
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(len(evidence), 1)

    def test_boolean_pair_reordering_requires_cset_cinc_accumulation(self) -> None:
        stock_input = [
            "79411102",
            "79400103",
            "7100005f",
            "d503201f",
            "7100007f",
            "d503201f",
        ]
        candidate_input = [
            "79400103",
            "79411102",
            "7100007f",
            "d503201f",
            "7100005f",
            "d503201f",
        ]

        stock, candidate, evidence = (
            MODULE.canonicalize_boolean_count_pair_reordering(
                stock_input,
                candidate_input,
            )
        )

        self.assertNotEqual(stock, candidate)
        self.assertEqual(evidence, [])

    def test_kernel_printk_prefix_is_compared_as_string_content(self) -> None:
        sections = {".rodata.str1.1": b"pad\0\x013message %d\0"}

        result = MODULE.normalized_relocation(
            "R_AARCH64_ADR_PREL_PG_HI21", ".rodata.str1.1+0x4", sections
        )

        self.assertEqual(
            result,
            'R_AARCH64_ADR_PREL_PG_HI21 .rodata.str1.1:string="\\u00013message %d"',
        )

    def test_different_string_content_remains_different(self) -> None:
        first = MODULE.normalized_relocation(
            "R_AARCH64_ADD_ABS_LO12_NC",
            ".rodata.str1.1",
            {".rodata.str1.1": b"first\0"},
        )
        second = MODULE.normalized_relocation(
            "R_AARCH64_ADD_ABS_LO12_NC",
            ".rodata.str1.1",
            {".rodata.str1.1": b"second\0"},
        )

        self.assertNotEqual(first, second)

    def test_non_string_control_payload_keeps_raw_target(self) -> None:
        result = MODULE.normalized_relocation(
            "R_AARCH64_ADR_PREL_PG_HI21", ".rodata", {".rodata": b"\x01raw\0"}
        )

        self.assertEqual(result, "R_AARCH64_ADR_PREL_PG_HI21 .rodata")

    def test_mapping_symbol_u16_dispatch_table_requires_exact_unique_bytes(self) -> None:
        stock_table = bytes.fromhex(
            "00005f00380045002b006c00790052008600a1019c019701b201a601c201bd0111001e00"
        )
        candidate_rodata = b"\0" * 16 + stock_table + b"\0"
        stock, candidate, evidence = MODULE.canonicalize_mapping_symbol_u16_dispatch_tables(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 $d.7",
                "R_AARCH64_ADD_ABS_LO12_NC $d.7",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .rodata+0x10",
                "R_AARCH64_ADD_ABS_LO12_NC .rodata+0x10",
            ],
            {".rodata": stock_table},
            {".rodata": candidate_rodata},
            {"$d.7": (".rodata", 0)},
            {},
            {},
            {},
            [
                "510006a8", "7100451f", "540065c8", "90000009", "91000129",
                "1000008a", "7868792b", "8b0b094a", "d61f0140",
            ],
            [3, 4],
            [3, 4],
            True,
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(len(evidence), 1)
        self.assertEqual(evidence[0]["entry_count"], 18)
        self.assertEqual(evidence[0]["element_width"], 2)

    def test_mapping_symbol_u16_dispatch_table_rejects_changed_byte(self) -> None:
        stock_table = bytes.fromhex(
            "00005f00380045002b006c00790052008600a1019c019701b201a601c201bd0111001e00"
        )
        candidate_table = stock_table[:-1] + b"\x01"
        stock, candidate, evidence = MODULE.canonicalize_mapping_symbol_u16_dispatch_tables(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 $d.7",
                "R_AARCH64_ADD_ABS_LO12_NC $d.7",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .rodata",
                "R_AARCH64_ADD_ABS_LO12_NC .rodata",
            ],
            {".rodata": stock_table},
            {".rodata": candidate_table},
            {"$d.7": (".rodata", 0)},
            {},
            {},
            {},
            [
                "510006a8", "7100451f", "540065c8", "90000009", "91000129",
                "1000008a", "7868792b", "8b0b094a", "d61f0140",
            ],
            [3, 4],
            [3, 4],
            True,
        )

        self.assertNotEqual(stock, candidate)
        self.assertEqual(evidence, [])

    def test_defined_symbol_keeps_identity_across_section_layouts(self) -> None:
        result = MODULE.normalized_relocation(
            "R_AARCH64_ADR_PREL_PG_HI21",
            "client_1",
            {},
            {"client_1": (".bss", 0x8)},
        )

        self.assertEqual(result, "R_AARCH64_ADR_PREL_PG_HI21 client_1")

    def test_named_section_base_resolves_to_section_relative_target(self) -> None:
        result = MODULE.normalized_symbol_target(
            "nubia_hw_exact_rodata_base+0x340",
            {"nubia_hw_exact_rodata_base": (".rodata", 0)},
        )

        self.assertEqual(result, ".rodata+0x340")

    def test_named_codetag_base_resolves_to_section_relative_target(self) -> None:
        result = MODULE.normalized_symbol_target(
            "zlog_exact_codetag_base+0x28",
            {"zlog_exact_codetag_base": (".codetag.alloc_tags", 0)},
        )

        self.assertEqual(result, ".codetag.alloc_tags+0x28")

    def test_alloc_tags_start_alias_resolves_to_section_base(self) -> None:
        result = MODULE.normalized_symbol_target(
            "__start_alloc_tags", {"other_symbol": (".text", 0)}
        )

        self.assertEqual(result, ".codetag.alloc_tags")

    def test_codetag_section_base_is_accepted_as_alloc_tag_target(self) -> None:
        self.assertTrue(
            MODULE.CODETAG_SECTION_TARGET_RE.fullmatch(
                "R_AARCH64_ADR_PREL_PG_HI21 .codetag.alloc_tags+0x28"
            )
        )

    def test_section_offset_resolves_to_defined_symbol(self) -> None:
        result = MODULE.normalized_relocation(
            "R_AARCH64_LDST32_ABS_LO12_NC",
            ".bss+0x18",
            {},
            {"debug_value": (".bss", 0x18)},
        )

        self.assertEqual(result, "R_AARCH64_LDST32_ABS_LO12_NC debug_value")

    def test_rodata_pointer_slot_uses_relocation_fingerprint(self) -> None:
        result = MODULE.normalized_relocation(
            "R_AARCH64_ADR_PREL_PG_HI21",
            ".rodata+0x40",
            {".rodata": bytes(0x80)},
            {},
            {
                (".rodata", 0x40): (
                    "R_AARCH64_ABS64",
                    ".rodata+0x10",
                )
            },
        )

        self.assertEqual(
            result,
            (
                "R_AARCH64_ADR_PREL_PG_HI21 "
                ".rodata:pointer=R_AARCH64_ABS64->.rodata+0x10"
            ),
        )

    def test_rodata_pointer_to_string_uses_string_content(self) -> None:
        result = MODULE.normalized_relocation(
            "R_AARCH64_ADR_PREL_PG_HI21",
            ".rodata+0x40",
            {
                ".rodata": bytes(0x80),
                ".rodata.str1.1": b"padding\0APP_CODE\0",
            },
            {},
            {
                (".rodata", 0x40): (
                    "R_AARCH64_ABS64",
                    ".rodata.str1.1+0x8",
                )
            },
        )

        self.assertEqual(
            result,
            (
                "R_AARCH64_ADR_PREL_PG_HI21 .rodata:pointer="
                'R_AARCH64_ABS64->.rodata.str1.1:string="APP_CODE"'
            ),
        )

    def test_relocated_pointer_arrays_match_after_section_reordering(self) -> None:
        stock = MODULE.normalized_relocation(
            "R_AARCH64_ADD_ABS_LO12_NC",
            ".rodata+0x310",
            {".rodata": bytes(0x400)},
            {},
            {
                (".rodata", 0x310): (
                    "R_AARCH64_ABS64",
                    ".rodata+0x90",
                )
            },
        )
        candidate = MODULE.normalized_relocation(
            "R_AARCH64_ADD_ABS_LO12_NC",
            ".rodata+0x380",
            {".rodata": bytes(0x470)},
            {},
            {
                (".rodata", 0x380): (
                    "R_AARCH64_ABS64",
                    ".rodata+0x90",
                )
            },
        )

        self.assertEqual(stock, candidate)

    def test_unique_relocation_free_rodata_blob_gets_shared_alias(self) -> None:
        blob = b"\0\0\0\0\2\0\0\0\1\0\0\0"
        stock_aliases, candidate_aliases = MODULE.matched_rodata_blob_aliases(
            {".rodata": b"prefix" + blob},
            {".rodata": b"padding-padding" + blob + b"tail"},
            {},
            {"hml_config_version": (".rodata", 15, len(blob))},
            {},
            {},
        )

        self.assertEqual(
            stock_aliases[(".rodata", 6)],
            candidate_aliases[(".rodata", 15)],
        )

    def test_rodata_blob_alias_normalizes_named_and_raw_targets(self) -> None:
        identity = ".rodata:blob:size=12:sha256=example"
        stock = MODULE.normalized_relocation(
            "R_AARCH64_ADR_PREL_PG_HI21",
            ".rodata+0x394",
            {".rodata": bytes(0x400)},
            {},
            {},
            {(".rodata", 0x394): identity},
        )
        candidate = MODULE.normalized_relocation(
            "R_AARCH64_ADR_PREL_PG_HI21",
            "hml_config_version",
            {".rodata": bytes(0x400)},
            {"hml_config_version": (".rodata", 0x370)},
            {},
            {(".rodata", 0x370): identity},
        )

        self.assertEqual(stock, candidate)

    def test_relocated_call_matches_resolved_local_branch(self) -> None:
        with tempfile.TemporaryDirectory() as temporary_directory:
            root = Path(temporary_directory)
            stock_path = root / "stock.asm"
            candidate_path = root / "candidate.asm"
            stock_path.write_text(
                "0000: 94000004 bl 0x10 <callee>\n",
                encoding="utf-8",
            )
            candidate_path.write_text(
                (
                    "0000: 94000000 bl 0x0 <caller>\n"
                    "0000: R_AARCH64_CALL26 callee\n"
                ),
                encoding="utf-8",
            )

            stock = MODULE.normalized_assembly(
                stock_path,
                {},
                {"callee": (".text", 0x10)},
            )
            candidate = MODULE.normalized_assembly(
                candidate_path,
                {},
                {"callee": (".text", 0x20)},
            )

        self.assertEqual(stock[0], candidate[0])
        self.assertEqual(stock[2], candidate[2])
        self.assertEqual(candidate[1], ["R_AARCH64_CALL26 callee"])

    def test_stripped_lock_key_matches_named_key_for_swait_init(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_stripped_lock_keys(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x731",
                "R_AARCH64_ADD_ABS_LO12_NC .bss+0x731",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 init_completion.__key",
                "R_AARCH64_ADD_ABS_LO12_NC init_completion.__key",
            ],
            ["d503201f", "d503201f", "d503201f", "bl <__init_swait_queue_head>"],
            [0, 1],
            [0, 1],
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(len(evidence), 1)
        self.assertEqual(evidence[0]["stock_target"], ".bss+0x731")
        self.assertEqual(
            evidence[0]["candidate_target"], "init_completion.__key"
        )

    def test_stripped_lock_key_is_not_aliased_without_swait_init(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_stripped_lock_keys(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x731",
                "R_AARCH64_ADD_ABS_LO12_NC .bss+0x731",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 init_completion.__key",
                "R_AARCH64_ADD_ABS_LO12_NC init_completion.__key",
            ],
            ["bl <unrelated_function>"],
            [0, 1],
            [0, 1],
        )

        self.assertNotEqual(stock, candidate)
        self.assertEqual(evidence, [])

    def test_stripped_lock_key_is_not_aliased_when_not_feeding_swait(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_stripped_lock_keys(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x731",
                "R_AARCH64_ADD_ABS_LO12_NC .bss+0x731",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 init_completion.__key",
                "R_AARCH64_ADD_ABS_LO12_NC init_completion.__key",
            ],
            [
                "d503201f",
                "d503201f",
                "d503201f",
                "d503201f",
                "d503201f",
                "d503201f",
                "bl <__init_swait_queue_head>",
            ],
            [0, 1],
            [0, 1],
        )

        self.assertNotEqual(stock, candidate)
        self.assertEqual(evidence, [])

    def test_stripped_mutex_key_matches_named_key_for_three_mutex_inits(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_stripped_mutex_keys(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x889",
                "R_AARCH64_ADD_ABS_LO12_NC .bss+0x889",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 syna_cdev_create.mutex_key",
                "R_AARCH64_ADD_ABS_LO12_NC syna_cdev_create.mutex_key",
            ],
            [
                "d503233f", "94000000", "94000000", "94000000",
                "bl <__mutex_init>", "94000000", "bl <__mutex_init>",
                "94000000", "bl <__mutex_init>",
            ],
            [0, 1],
            [0, 1],
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(len(evidence), 1)
        self.assertEqual(evidence[0]["stock_target"], ".bss+0x889")
        self.assertEqual(
            evidence[0]["candidate_target"], "syna_cdev_create.mutex_key"
        )

    def test_stripped_mutex_key_requires_exactly_three_mutex_inits(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_stripped_mutex_keys(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x889",
                "R_AARCH64_ADD_ABS_LO12_NC .bss+0x889",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 syna_cdev_create.mutex_key",
                "R_AARCH64_ADD_ABS_LO12_NC syna_cdev_create.mutex_key",
            ],
            ["bl <__mutex_init>", "bl <__mutex_init>"],
            [0, 1],
            [0, 1],
        )

        self.assertNotEqual(stock, candidate)
        self.assertEqual(evidence, [])

    def test_single_stripped_mutex_key_matches_one_local_static_key(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_single_stripped_mutex_key(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x95e",
                "R_AARCH64_ADD_ABS_LO12_NC .bss+0x95e",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 syna_testing_pt01_zte.__key",
                "R_AARCH64_ADD_ABS_LO12_NC syna_testing_pt01_zte.__key",
            ],
            ["adrp", "add", "mov", "bl <__mutex_init>"],
            [0, 1],
            [0, 1],
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(evidence[0]["kind"], "single_stripped_mutex_key")
        self.assertEqual(evidence[0]["mutex_call_index"], 3)

    def test_single_stripped_mutex_key_rejects_nonlocal_or_multiple_initializers(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_single_stripped_mutex_key(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x95e",
                "R_AARCH64_ADD_ABS_LO12_NC .bss+0x95e",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 global_key",
                "R_AARCH64_ADD_ABS_LO12_NC global_key",
            ],
            ["adrp", "add", "bl <__mutex_init>", "bl <__mutex_init>"],
            [0, 1],
            [0, 1],
        )

        self.assertNotEqual(stock, candidate)
        self.assertEqual(evidence, [])

    def test_stripped_bss_subfield_matches_named_high_word_store(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_stripped_bss_subfields(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x874",
                "R_AARCH64_ADR_PREL_PG_HI21 log_format",
                "R_AARCH64_LDST32_ABS_LO12_NC .bss+0x874",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 g_cdev_data+0xb4",
                "R_AARCH64_ADR_PREL_PG_HI21 log_format",
                "R_AARCH64_LDST32_ABS_LO12_NC g_cdev_data+0xb4",
            ],
            [10, 12, 14],
            [10, 12, 14],
            True,
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(len(evidence), 1)
        self.assertEqual(evidence[0]["stock_target"], ".bss+0x874")
        self.assertEqual(evidence[0]["candidate_target"], "g_cdev_data+0xb4")

    def test_stripped_bss_subfield_requires_instruction_match(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_stripped_bss_subfields(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x874",
                "R_AARCH64_LDST32_ABS_LO12_NC .bss+0x874",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 g_cdev_data+0xb4",
                "R_AARCH64_LDST32_ABS_LO12_NC g_cdev_data+0xb4",
            ],
            [10, 14],
            [10, 14],
            False,
        )

        self.assertNotEqual(stock, candidate)
        self.assertEqual(evidence, [])

    def test_same_site_storage_target_matches_named_data_field(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_same_site_storage_targets(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .data+0x8d8",
                "R_AARCH64_ADD_ABS_LO12_NC .data+0x8d8",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 syna_spi_hw_if+0xa8",
                "R_AARCH64_ADD_ABS_LO12_NC syna_spi_hw_if+0xa8",
            ],
            [410, 411],
            [410, 411],
            True,
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(len(evidence), 1)
        self.assertEqual(evidence[0]["stock_target"], ".data+0x8d8")
        self.assertEqual(
            evidence[0]["candidate_target"], "syna_spi_hw_if+0xa8"
        )

    def test_stripped_bss_subfield_matches_byte_and_pointer_accesses(self) -> None:
        for relocation_type in (
            "R_AARCH64_LDST8_ABS_LO12_NC",
            "R_AARCH64_LDST64_ABS_LO12_NC",
        ):
            stock, candidate, evidence = MODULE.canonicalize_stripped_bss_subfields(
                [
                    "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x808",
                    f"{relocation_type} .bss+0x808",
                ],
                [
                    "R_AARCH64_ADR_PREL_PG_HI21 g_cdev_data+0x48",
                    f"{relocation_type} g_cdev_data+0x48",
                ],
                [14, 15],
                [14, 15],
                True,
            )

            self.assertEqual(stock, candidate)
            self.assertEqual(len(evidence), 1)
            self.assertEqual(evidence[0]["ldst_relocation_index"], 1)

    def test_stripped_mutex_storage_requires_lock_unlock_pair(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_stripped_mutex_storage(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x840",
                "R_AARCH64_ADD_ABS_LO12_NC .bss+0x840",
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x840",
                "R_AARCH64_ADD_ABS_LO12_NC .bss+0x840",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 g_cdev_data+0x80",
                "R_AARCH64_ADD_ABS_LO12_NC g_cdev_data+0x80",
                "R_AARCH64_ADR_PREL_PG_HI21 g_cdev_data+0x80",
                "R_AARCH64_ADD_ABS_LO12_NC g_cdev_data+0x80",
            ],
            ["adrp", "add", "bl <mutex_lock>", "pad", "adrp", "add", "bl <mutex_unlock>"],
            [0, 1, 4, 5],
            [0, 1, 4, 5],
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(len(evidence), 1)
        self.assertEqual(evidence[0]["kind"], "stripped_mutex_storage")

    def test_initialized_unk_string_requires_equal_data_bytes(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_initialized_unk_string_relocations(
            [
                'R_AARCH64_ADR_PREL_PG_HI21 .rodata.str1.1:string="\\u00015message\\n"',
                'R_AARCH64_ADD_ABS_LO12_NC .rodata.str1.1:string="\\u00015message\\n"',
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 unk_1234",
                "R_AARCH64_ADD_ABS_LO12_NC unk_1234",
            ],
            {".data": b"\x015message\n\0"},
            {"unk_1234": (".data", 0)},
            [12, 13],
            [12, 13],
            True,
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(len(evidence), 1)
        self.assertEqual(evidence[0]["kind"], "initialized_unk_string_bytes")

    def test_initialized_unk_string_rejects_different_data_bytes(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_initialized_unk_string_relocations(
            [
                'R_AARCH64_ADR_PREL_PG_HI21 .rodata.str1.1:string="stock"',
                'R_AARCH64_ADD_ABS_LO12_NC .rodata.str1.1:string="stock"',
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 unk_1234",
                "R_AARCH64_ADD_ABS_LO12_NC unk_1234",
            ],
            {".data": b"candidate\0"},
            {"unk_1234": (".data", 0)},
            [12, 13],
            [12, 13],
            True,
        )

        self.assertNotEqual(stock, candidate)
        self.assertEqual(evidence, [])

    def test_stock_rodata_offset_matches_identical_candidate_literal(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_stock_rodata_string_offsets(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .rodata.str1.1+0x20",
                "R_AARCH64_ADD_ABS_LO12_NC .rodata.str1.1+0x20",
            ],
            [
                'R_AARCH64_ADR_PREL_PG_HI21 .rodata.str1.1:string="unknow"',
                'R_AARCH64_ADD_ABS_LO12_NC .rodata.str1.1:string="unknow"',
            ],
            {".rodata.str1.1": b"x" * 0x20 + b"unknow\0"},
            {".rodata.str1.1": b"unknow\0"},
            [12, 13],
            [12, 13],
            True,
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(len(evidence), 1)
        self.assertEqual(evidence[0]["kind"], "stock_rodata_string_offset")

    def test_stock_rodata_offset_rejects_different_literal(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_stock_rodata_string_offsets(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .rodata.str1.1+0x20",
                "R_AARCH64_ADD_ABS_LO12_NC .rodata.str1.1+0x20",
            ],
            [
                'R_AARCH64_ADR_PREL_PG_HI21 .rodata.str1.1:string="other"',
                'R_AARCH64_ADD_ABS_LO12_NC .rodata.str1.1:string="other"',
            ],
            {".rodata.str1.1": b"x" * 0x20 + b"unknow\0"},
            {".rodata.str1.1": b"other\0"},
            [12, 13],
            [12, 13],
            True,
        )

        self.assertNotEqual(stock, candidate)
        self.assertEqual(evidence, [])

    def test_postindexed_g_cdev_mutex_matches_proved_0x50_subfield(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_postindexed_g_cdev_mutex_storage(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 g_cdev_data",
                "R_AARCH64_ADD_ABS_LO12_NC g_cdev_data",
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x810",
                "R_AARCH64_ADD_ABS_LO12_NC .bss+0x810",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 g_cdev_data",
                "R_AARCH64_ADD_ABS_LO12_NC g_cdev_data",
                "R_AARCH64_ADR_PREL_PG_HI21 g_cdev_data+0x50",
                "R_AARCH64_ADD_ABS_LO12_NC g_cdev_data+0x50",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x7c0",
                "R_AARCH64_ADD_ABS_LO12_NC .bss+0x7c0",
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x810",
                "R_AARCH64_ADD_ABS_LO12_NC .bss+0x810",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 g_cdev_data",
                "R_AARCH64_ADD_ABS_LO12_NC g_cdev_data",
                "R_AARCH64_ADR_PREL_PG_HI21 g_cdev_data+0x50",
                "R_AARCH64_ADD_ABS_LO12_NC g_cdev_data+0x50",
            ],
            [
                "adrp",
                "add",
                "mov",
                "f8450408",
                "mov",
                "ldr",
                "bl <mutex_lock>",
                "pad",
                "pad",
                "pad",
                "adrp",
                "add",
                "bl <mutex_unlock>",
            ],
            [0, 1, 10, 11],
            [0, 1, 10, 11],
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(len(evidence), 1)
        self.assertEqual(evidence[0]["kind"], "postindexed_g_cdev_mutex_storage")
        self.assertEqual(evidence[0]["stock_mutex_target"], ".bss+0x810")

    def test_postindexed_g_cdev_mutex_rejects_wrong_postindex_load(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_postindexed_g_cdev_mutex_storage(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 g_cdev_data",
                "R_AARCH64_ADD_ABS_LO12_NC g_cdev_data",
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x810",
                "R_AARCH64_ADD_ABS_LO12_NC .bss+0x810",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 g_cdev_data",
                "R_AARCH64_ADD_ABS_LO12_NC g_cdev_data",
                "R_AARCH64_ADR_PREL_PG_HI21 g_cdev_data+0x50",
                "R_AARCH64_ADD_ABS_LO12_NC g_cdev_data+0x50",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x7c0",
                "R_AARCH64_ADD_ABS_LO12_NC .bss+0x7c0",
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x810",
                "R_AARCH64_ADD_ABS_LO12_NC .bss+0x810",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 g_cdev_data",
                "R_AARCH64_ADD_ABS_LO12_NC g_cdev_data",
                "R_AARCH64_ADR_PREL_PG_HI21 g_cdev_data+0x50",
                "R_AARCH64_ADD_ABS_LO12_NC g_cdev_data+0x50",
            ],
            [
                "adrp",
                "add",
                "mov",
                "f8450400",
                "mov",
                "ldr",
                "bl <mutex_lock>",
                "pad",
                "pad",
                "pad",
                "adrp",
                "add",
                "bl <mutex_unlock>",
            ],
            [0, 1, 10, 11],
            [0, 1, 10, 11],
        )

        self.assertEqual(evidence, [])
        self.assertNotEqual(stock, candidate)

    def test_postindexed_g_cdev_mutex_accepts_direct_lock_setup(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_postindexed_g_cdev_mutex_storage(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 g_cdev_data",
                "R_AARCH64_ADD_ABS_LO12_NC g_cdev_data",
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x840",
                "R_AARCH64_ADD_ABS_LO12_NC .bss+0x840",
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x810",
                "R_AARCH64_ADD_ABS_LO12_NC .bss+0x810",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 g_cdev_data",
                "R_AARCH64_ADD_ABS_LO12_NC g_cdev_data",
                "R_AARCH64_ADR_PREL_PG_HI21 g_cdev_data+0x80",
                "R_AARCH64_ADD_ABS_LO12_NC g_cdev_data+0x80",
                "R_AARCH64_ADR_PREL_PG_HI21 g_cdev_data+0x50",
                "R_AARCH64_ADD_ABS_LO12_NC g_cdev_data+0x50",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x7c0",
                "R_AARCH64_ADD_ABS_LO12_NC .bss+0x7c0",
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x840",
                "R_AARCH64_ADD_ABS_LO12_NC .bss+0x840",
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x810",
                "R_AARCH64_ADD_ABS_LO12_NC .bss+0x810",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 g_cdev_data",
                "R_AARCH64_ADD_ABS_LO12_NC g_cdev_data",
                "R_AARCH64_ADR_PREL_PG_HI21 g_cdev_data+0x80",
                "R_AARCH64_ADD_ABS_LO12_NC g_cdev_data+0x80",
                "R_AARCH64_ADR_PREL_PG_HI21 g_cdev_data+0x50",
                "R_AARCH64_ADD_ABS_LO12_NC g_cdev_data+0x50",
            ],
            [
                "adrp",
                "add",
                "f8450408",
                "ldr",
                "bl <mutex_lock>",
                "pad",
                "adrp",
                "add",
                "store",
                "store",
                "bl <mutex_lock>",
                "pad",
                "adrp",
                "add",
                "9100c260",
                "bl <mutex_unlock>",
            ],
            [0, 1, 6, 7, 12, 13],
            [0, 1, 6, 7, 12, 13],
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(evidence[0]["instruction_schedule"], "direct_lock_setup")

    def test_stripped_g_cdev_data_base_requires_unique_pair(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_stripped_g_cdev_data_base(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x7c0",
                "R_AARCH64_ADD_ABS_LO12_NC .bss+0x7c0",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 g_cdev_data",
                "R_AARCH64_ADD_ABS_LO12_NC g_cdev_data",
            ],
            [24, 25],
            [24, 25],
            True,
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(len(evidence), 1)
        self.assertEqual(evidence[0]["kind"], "stripped_g_cdev_data_base")

    def test_named_stock_bss_binds_to_same_candidate_mapping_symbol(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_named_bss_to_stripped_mapping(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 debug_value",
                "R_AARCH64_LDST32_ABS_LO12_NC debug_value",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 $d.3",
                "R_AARCH64_LDST32_ABS_LO12_NC $d.3",
            ],
            {"debug_value": (".bss", 0x18)},
            {"$d.3": (".bss", 0x18)},
            [12, 13],
            [12, 13],
            True,
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(len(evidence), 1)
        self.assertEqual(
            evidence[0]["kind"], "named_stock_bss_to_stripped_mapping_symbol"
        )

    def test_named_stock_bss_mapping_rejects_different_location(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_named_bss_to_stripped_mapping(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 debug_value",
                "R_AARCH64_LDST32_ABS_LO12_NC debug_value",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 $d.3",
                "R_AARCH64_LDST32_ABS_LO12_NC $d.3",
            ],
            {"debug_value": (".bss", 0x18)},
            {"$d.3": (".bss", 0x1C)},
            [12, 13],
            [12, 13],
            True,
        )

        self.assertNotEqual(stock, candidate)
        self.assertEqual(evidence, [])

    def test_named_stock_bss_mapping_rewrites_repeated_references(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_named_bss_to_stripped_mapping(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 debug_value",
                "R_AARCH64_LDST32_ABS_LO12_NC debug_value",
                "R_AARCH64_LDST32_ABS_LO12_NC debug_value",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .bss+0x18",
                "R_AARCH64_LDST32_ABS_LO12_NC .bss+0x18",
                "R_AARCH64_LDST32_ABS_LO12_NC .bss+0x18",
            ],
            {"debug_value": (".bss", 0x18)},
            {},
            [12, 13, 20],
            [12, 13, 20],
            True,
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(len(evidence), 1)
        self.assertEqual(evidence[0]["instruction_indices"], [12, 13, 20])

    def test_pointer_target_mapping_symbol_requires_same_elf_location(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_pointer_target_mapping_symbols(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .rodata:pointer=R_AARCH64_ABS64->hw_pcb_gpio_map",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .rodata:pointer=R_AARCH64_ABS64->$d.2",
            ],
            {"hw_pcb_gpio_map": (".rodata", 0)},
            {"$d.2": (".rodata", 0)},
            [10],
            [10],
            True,
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(len(evidence), 1)

    def test_pointer_target_mapping_symbol_rejects_different_elf_location(self) -> None:
        stock, candidate, evidence = MODULE.canonicalize_pointer_target_mapping_symbols(
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .rodata:pointer=R_AARCH64_ABS64->hw_pcb_gpio_map",
            ],
            [
                "R_AARCH64_ADR_PREL_PG_HI21 .rodata:pointer=R_AARCH64_ABS64->$d.2",
            ],
            {"hw_pcb_gpio_map": (".rodata", 0)},
            {"$d.2": (".rodata", 8)},
            [10],
            [10],
            True,
        )

        self.assertNotEqual(stock, candidate)
        self.assertEqual(evidence, [])


if __name__ == "__main__":
    unittest.main()
