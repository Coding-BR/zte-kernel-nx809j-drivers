import importlib.util
import sys
import unittest
from pathlib import Path


MODULE_PATH = Path(__file__).resolve().parents[1] / "scan_kcfi_type_id.py"
sys.path.insert(0, str(MODULE_PATH.parent))
SPEC = importlib.util.spec_from_file_location("scan_kcfi_type_id", MODULE_PATH)
MODULE = importlib.util.module_from_spec(SPEC)
assert SPEC.loader is not None
SPEC.loader.exec_module(MODULE)


class ScanKcfiTypeIdTests(unittest.TestCase):
	def test_normalize_type_id(self):
		self.assertEqual(MODULE.normalize_type_id("0X342E61B1"), "0x342e61b1")
		self.assertEqual(MODULE.normalize_type_id("17"), "0x00000011")


if __name__ == "__main__":
	unittest.main()
