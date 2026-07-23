from __future__ import annotations

import importlib.util
import unittest
from pathlib import Path


SCRIPT = Path(__file__).resolve().parents[1] / "search_kcfi_type_names.py"
SPEC = importlib.util.spec_from_file_location("search_kcfi_type_names", SCRIPT)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


class KcfiTypeNameSearchTests(unittest.TestCase):
    def test_matches_clang_19_normalized_bool_signature(self) -> None:
        mangled = "_ZTSFu3i32P17syna_hw_interfaceu2u8E.normalized"
        self.assertEqual(MODULE.kcfi_type_id(mangled), 0x5F30282B)

    def test_matches_clang_19_enum_signature(self) -> None:
        mangled = "_ZTSFu3i32P17syna_hw_interface9irq_stateE.normalized"
        self.assertEqual(MODULE.kcfi_type_id(mangled), 0xDA4F62CF)

    def test_tag_encoding_uses_itanium_length_prefix(self) -> None:
        self.assertEqual(MODULE.encode_tag("syna_hw_interface"), "17syna_hw_interface")

    def test_invalid_tag_is_rejected(self) -> None:
        with self.assertRaisesRegex(ValueError, "invalid C tag"):
            MODULE.encode_tag("bad tag")

    def test_generated_tags_are_deterministic(self) -> None:
        self.assertEqual(
            list(MODULE.generated_tags(["irq", "state"], 2)),
            ["irq", "state", "irq_irq", "irq_state", "state_irq", "state_state"],
        )


if __name__ == "__main__":
    unittest.main()
