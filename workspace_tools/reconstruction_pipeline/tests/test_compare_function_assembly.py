import importlib.util
import unittest
from pathlib import Path


MODULE_PATH = Path(__file__).resolve().parents[1] / "compare_function_assembly.py"
SPEC = importlib.util.spec_from_file_location("compare_function_assembly", MODULE_PATH)
MODULE = importlib.util.module_from_spec(SPEC)
assert SPEC.loader is not None
SPEC.loader.exec_module(MODULE)


class NormalizedRelocationTests(unittest.TestCase):
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


if __name__ == "__main__":
    unittest.main()
