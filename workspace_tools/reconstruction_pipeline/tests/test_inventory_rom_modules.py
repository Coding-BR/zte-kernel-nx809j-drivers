import importlib.util
import sys
import tempfile
import unittest
from pathlib import Path


PIPELINE = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(PIPELINE))
MODULE_PATH = PIPELINE / "inventory_rom_modules.py"
SPEC = importlib.util.spec_from_file_location("inventory_rom_modules", MODULE_PATH)
MODULE = importlib.util.module_from_spec(SPEC)
assert SPEC.loader is not None
sys.modules[SPEC.name] = MODULE
SPEC.loader.exec_module(MODULE)


class InventoryClassificationTests(unittest.TestCase):
    def test_strict_zte_nubia_classification(self) -> None:
        for name in (
            "zte_ir",
            "zlog_common",
            "nubia_hw_version",
            "gpio_keys_nubia",
        ):
            self.assertEqual(MODULE.classify_module(name), "zte_nubia_custom")

    def test_review_queue_is_not_mislabeled_as_zte(self) -> None:
        self.assertEqual(MODULE.classify_module("soc_fan"), "device_vendor_review")
        self.assertEqual(MODULE.classify_module("haptic_86938"), "device_vendor_review")

    def test_platform_module_remains_outside_reconstruction_delta(self) -> None:
        self.assertEqual(MODULE.classify_module("qcom_glink"), "platform_or_standard")

    def test_reconstruction_requires_matching_candidate_ko(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            (root / "fp_goodix").mkdir()
            (root / "gpio_keys_nubia").mkdir()
            (root / "gpio_keys_nubia" / "gpio_keys_nubia.ko").write_bytes(b"ELF")
            self.assertEqual(
                MODULE.reconstructed_names(root), {"gpio_keys_nubia"}
            )


if __name__ == "__main__":
    unittest.main()
