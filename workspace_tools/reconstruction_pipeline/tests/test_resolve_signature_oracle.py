import importlib.util
import sys
import unittest
from pathlib import Path


MODULE_PATH = Path(__file__).resolve().parents[1] / "resolve_signature_oracle.py"
sys.path.insert(0, str(MODULE_PATH.parent))
SPEC = importlib.util.spec_from_file_location("resolve_signature_oracle", MODULE_PATH)
MODULE = importlib.util.module_from_spec(SPEC)
assert SPEC.loader is not None
SPEC.loader.exec_module(MODULE)


class ResolveSignatureOracleTests(unittest.TestCase):
	def test_render_source_preserves_parameter_names(self):
		source = MODULE.render_source(
			"target",
			["struct item { int value; };"],
			{
				"return_type": "const char *",
				"parameters": [
					{"type": "const struct item *", "name": "table"},
					{"type": "unsigned int", "name": "count"},
				],
			},
		)
		self.assertIn("const char * target(const struct item * table, unsigned int count)", source)
		self.assertIn("(void)table;", source)
		self.assertIn("return (const char *)0;", source)

	def test_parse_symver(self):
		output = "#SYMVER wanted 0xAABBCCDD\n#SYMVER other 0x12345678\n"
		self.assertEqual(MODULE.parse_symver(output, "wanted"), "0xaabbccdd")

	def test_expand_candidate_matrix(self):
		candidates = MODULE.expand_candidates({
			"matrix": {
				"return_types": ["void", "int"],
				"parameters": [
					{"types": ["char *"], "names": ["buf", "version"]}
				],
			}
		})
		self.assertEqual(len(candidates), 4)
		self.assertEqual(candidates[0]["parameters"][0]["name"], "buf")

	def test_expand_correlated_matrix_reuses_type_binding(self):
		candidates = MODULE.expand_candidates({
			"correlated_matrix": {
				"axes": {
					"tag": ["first_map", "second_map"],
				},
				"return_types": ["struct {tag} *"],
				"parameters": [
					{
						"types": ["struct {tag} *", "const struct {tag} *"],
						"names": ["table"],
					},
					{
						"types": ["unsigned int"],
						"names": ["count"],
					},
				],
			},
		})
		self.assertEqual(len(candidates), 4)
		self.assertEqual(candidates[0]["return_type"], "struct first_map *")
		self.assertEqual(
			candidates[0]["parameters"][0]["type"],
			"struct first_map *",
		)
		self.assertEqual(
			candidates[-1]["parameters"][0]["type"],
			"const struct second_map *",
		)
		self.assertEqual(
			candidates[-1]["correlated_bindings"],
			{"tag": "second_map"},
		)

	def test_expand_declarations_uses_and_deduplicates_bindings(self):
		config = {
			"declarations": ["struct fixed;"],
			"correlated_matrix": {
				"declaration_templates": [
					"struct {tag};",
					"typedef struct {tag} {tag}_t;",
				],
			},
		}
		candidates = [
			{"correlated_bindings": {"tag": "first"}},
			{"correlated_bindings": {"tag": "first"}},
			{"correlated_bindings": {"tag": "second"}},
		]
		self.assertEqual(
			MODULE.expand_declarations(config, candidates),
			[
				"struct fixed;",
				"struct first;",
				"typedef struct first first_t;",
				"struct second;",
				"typedef struct second second_t;",
			],
		)

	def test_render_kcfi_batch_uses_stable_probe_names(self):
		source = MODULE.render_kcfi_batch([], [
			{"return_type": "int", "parameters": []},
			{"return_type": "void", "parameters": []},
		])
		self.assertIn("int probe_0000(void)", source)
		self.assertIn("void probe_0001(void)", source)


if __name__ == "__main__":
	unittest.main()
