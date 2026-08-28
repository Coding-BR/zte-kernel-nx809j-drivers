from __future__ import annotations

import importlib.util
import unittest
from pathlib import Path


SCRIPT = Path(__file__).resolve().parents[1] / "bruteforce_kcfi_signatures.py"
SPEC = importlib.util.spec_from_file_location("bruteforce_kcfi_signatures", SCRIPT)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


class BruteforceKcfiSignatureTests(unittest.TestCase):
    def test_lookup_family_is_deterministic_and_covers_recovered_shapes(self) -> None:
        first = MODULE.lookup_signatures()
        second = MODULE.lookup_signatures()
        self.assertEqual(first, second)
        self.assertIn(
            "struct nubia_pcb_gpio_map * (struct nubia_pcb_gpio_map *, u32)",
            first,
        )
        self.assertIn(
            "char * (struct nubia_rf_band_gpio_map *, unsigned int)",
            first,
        )

    def test_anonymous_family_has_fixed_probe_cardinality(self) -> None:
        signatures = MODULE.lookup_anonymous_signatures()
        preamble = MODULE.lookup_anonymous_preamble()
        self.assertEqual(len(signatures), 64 * 4 * 3)
        self.assertEqual(preamble.count("typedef struct {"), 128)
        self.assertIn("anon_nubia_pcb_000", preamble)
        self.assertIn("anon_nubia_rf_063", preamble)


if __name__ == "__main__":
    unittest.main()
