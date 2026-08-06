import importlib.util
import unittest
from pathlib import Path


MODULE_PATH = (
    Path(__file__).resolve().parents[1]
    / "classify_aarch64_predicate_equivalence.py"
)
SPEC = importlib.util.spec_from_file_location("predicate_equivalence", MODULE_PATH)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


def instruction(opcode: str, mnemonic: str, operands: str) -> dict[str, str]:
    return {
        "address": "0",
        "opcode": opcode,
        "mnemonic": mnemonic,
        "operands": operands,
    }


class PredicateEquivalenceTests(unittest.TestCase):
    def test_unsigned_adjacent_boundary_is_accepted(self) -> None:
        stock = [
            instruction("71002abf", "cmp", "w21, #0xa"),
            instruction("54000002", "b.hs", "0x180 <target>"),
        ]
        candidate = [
            instruction("710026bf", "cmp", "w21, #0x9"),
            instruction("54000008", "b.hi", "0x180 <target>"),
        ]

        passed, substitutions, unresolved = MODULE.classify_instructions(
            stock, candidate
        )

        self.assertTrue(passed)
        self.assertEqual(len(substitutions), 1)
        self.assertEqual(substitutions[0]["identity"], "x >= 10 iff x > 9")
        self.assertEqual(unresolved, [])

    def test_different_target_is_rejected(self) -> None:
        stock = [
            instruction("71002abf", "cmp", "w21, #0xa"),
            instruction("54000002", "b.hs", "0x180 <target_a>"),
        ]
        candidate = [
            instruction("710026bf", "cmp", "w21, #0x9"),
            instruction("54000008", "b.hi", "0x184 <target_b>"),
        ]

        passed, substitutions, unresolved = MODULE.classify_instructions(
            stock, candidate
        )

        self.assertFalse(passed)
        self.assertEqual(substitutions, [])
        self.assertEqual(len(unresolved), 2)

    def test_function_relative_target_is_independent_of_elf_address(self) -> None:
        stock = [
            instruction("7100241f", "cmp", "w0, #0x9"),
            instruction("54000688", "b.hi", "0x82e4 <point_report_reset+0xd4>"),
        ]
        candidate = [
            instruction("7100281f", "cmp", "w0, #0xa"),
            instruction("54000682", "b.hs", "0x1f60 <point_report_reset+0xd4>"),
        ]

        passed, substitutions, unresolved = MODULE.classify_instructions(
            stock, candidate
        )

        self.assertTrue(passed)
        self.assertEqual(("self", "0xd4"), substitutions[0]["branch_target"])
        self.assertEqual([], unresolved)

    def test_non_adjacent_limits_are_rejected(self) -> None:
        stock = [
            instruction("71002abf", "cmp", "w21, #0xa"),
            instruction("54000002", "b.hs", "0x180 <target>"),
        ]
        candidate = [
            instruction("710022bf", "cmp", "w21, #0x8"),
            instruction("54000008", "b.hi", "0x180 <target>"),
        ]

        passed, substitutions, unresolved = MODULE.classify_instructions(
            stock, candidate
        )

        self.assertFalse(passed)
        self.assertEqual(substitutions, [])
        self.assertEqual(len(unresolved), 2)

    def test_exact_stream_is_not_misclassified(self) -> None:
        stream = [instruction("d65f03c0", "ret", "")]

        passed, substitutions, unresolved = MODULE.classify_instructions(
            stream, stream
        )

        self.assertTrue(passed)
        self.assertEqual(substitutions, [])
        self.assertEqual(unresolved, [])


if __name__ == "__main__":
    unittest.main()
