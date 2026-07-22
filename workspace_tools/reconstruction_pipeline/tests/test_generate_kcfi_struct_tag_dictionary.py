import importlib.util
import sys
import unittest
from pathlib import Path


MODULE_PATH = (
	Path(__file__).resolve().parents[1] / "generate_kcfi_struct_tag_dictionary.py"
)
sys.path.insert(0, str(MODULE_PATH.parent))
SPEC = importlib.util.spec_from_file_location(
	"generate_kcfi_struct_tag_dictionary", MODULE_PATH
)
MODULE = importlib.util.module_from_spec(SPEC)
assert SPEC.loader is not None
SPEC.loader.exec_module(MODULE)


class GenerateKcfiStructTagDictionaryTests(unittest.TestCase):
	def test_generated_tags_are_deterministic_and_cover_known_patterns(self):
		first = MODULE.generated_tags()
		second = MODULE.generated_tags()
		self.assertEqual(first, second)
		self.assertIn("syna_hw_attn_data", first)
		self.assertIn("syna_tcm_irq_control", first)
		self.assertIn("touchcomm_hw_irq_context", first)

	def test_prefixed_avoids_leading_separator(self):
		self.assertEqual(MODULE.prefixed("", "irq_data"), "irq_data")
		self.assertEqual(MODULE.prefixed("syna", "irq_data"), "syna_irq_data")

	def test_reserved_identifiers_are_known(self):
		self.assertIn("int", MODULE.C_KEYWORDS)
		self.assertNotIn("syna_hw_interface", MODULE.C_KEYWORDS)

	def test_type_templates_cover_named_and_anonymous_records(self):
		self.assertEqual(
			MODULE.type_templates("struct"),
			("struct {tag};", "struct {tag} *"),
		)
		self.assertEqual(
			MODULE.type_templates("anonymous-struct-typedef"),
			("typedef struct {{ unsigned long opaque; }} {tag};", "{tag} *"),
		)


if __name__ == "__main__":
	unittest.main()
