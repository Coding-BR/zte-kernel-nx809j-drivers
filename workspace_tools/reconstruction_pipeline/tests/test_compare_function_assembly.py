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

    def test_register_allocation_guard_rejects_unapproved_instruction(self) -> None:
        stock = ["d503201f"]
        candidate = ["d503203f"]

        compared = MODULE.canonicalize_register_allocation_differences(
            stock, candidate, {"passed": True}, "semantic-report-sha256"
        )

        self.assertNotEqual(compared[0], compared[1])
        self.assertEqual(compared[2], [])

    def test_commutative_add_and_mul_operand_swaps_are_equivalent(self) -> None:
        stock, candidate, evidence = (
            MODULE.canonicalize_commutative_instruction_pairs(
                ["0b030043", "1b047d6a"],
                ["0b020063", "1b0b7c8a"],
            )
        )

        self.assertEqual(stock, candidate)
        self.assertEqual(len(evidence), 2)

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

    def test_defined_symbol_keeps_identity_across_section_layouts(self) -> None:
        result = MODULE.normalized_relocation(
            "R_AARCH64_ADR_PREL_PG_HI21",
            "client_1",
            {},
            {"client_1": (".bss", 0x8)},
        )

        self.assertEqual(result, "R_AARCH64_ADR_PREL_PG_HI21 client_1")

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


if __name__ == "__main__":
    unittest.main()
