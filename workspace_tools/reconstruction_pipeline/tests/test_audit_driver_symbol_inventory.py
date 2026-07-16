import json
import tempfile
import unittest
from pathlib import Path

from workspace_tools.reconstruction_pipeline.audit_driver_symbol_inventory import (
    mapped_source_path,
    read_reconstruction_map,
    source_coverage,
    source_has_function,
)


class AuditDriverSymbolInventoryTests(unittest.TestCase):
    def test_reviewed_map_supports_monolithic_source(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            source = root / "driver.c"
            source.write_text(
                "static int source_probe(void) { return 0; }\n",
                encoding="utf-8",
            )
            rows = [{"name": "stock_probe", "entry": "00100000", "body_bytes": 4}]
            mappings = {
                "stock_probe": {
                    "stock_function": "stock_probe",
                    "source_file": "driver.c",
                    "source_function": "source_probe",
                    "status": "reviewed",
                    "evidence": ["comparison.json"],
                }
            }

            coverage, generated = source_coverage(root, rows, mappings)

            self.assertTrue(coverage["complete"])
            self.assertEqual(coverage["exact_filename_matches"], 0)
            self.assertEqual(coverage["reconstruction_mapping_matches"], 1)
            self.assertEqual(coverage["reviewed_mapping_matches"], 1)
            self.assertEqual(coverage["mapped_not_exact_matches"], 0)
            self.assertEqual(coverage["function_token_matches"], 1)
            self.assertEqual(coverage["extra_source_units"], [])
            self.assertEqual(generated[0]["source_file"], "driver.c")
            self.assertEqual(generated[0]["source_function"], "source_probe")

    def test_reconstruction_map_rejects_duplicate_functions(self):
        with tempfile.TemporaryDirectory() as temporary:
            path = Path(temporary) / "map.json"
            path.write_text(
                json.dumps(
                    {
                        "mappings": [
                            {"stock_function": "same"},
                            {"stock_function": "same"},
                        ]
                    }
                ),
                encoding="utf-8",
            )

            with self.assertRaisesRegex(ValueError, "duplicate mapping"):
                read_reconstruction_map(path)

    def test_reviewed_map_accepts_macro_generated_function_token(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            (root / "driver.c").write_text(
                "DEVICE_ATTR(keys, 0444, generated_show_keys, NULL);\n",
                encoding="utf-8",
            )
            rows = [{"name": "generated_show_keys"}]
            mappings = {
                "generated_show_keys": {
                    "stock_function": "generated_show_keys",
                    "source_file": "driver.c",
                    "source_function": "generated_show_keys",
                    "status": "reviewed",
                }
            }

            coverage, _generated = source_coverage(root, rows, mappings)

            self.assertTrue(coverage["complete"])
            self.assertEqual(coverage["function_token_matches"], 1)

    def test_mapped_source_path_rejects_parent_escape(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            self.assertIsNone(mapped_source_path(root, "../outside.c"))

    def test_function_token_in_comment_or_string_is_not_implementation(self):
        with tempfile.TemporaryDirectory() as temporary:
            source = Path(temporary) / "driver.c"
            source.write_text(
                "/* missing_probe */\n"
                "static const char *name = \"missing_probe\";\n",
                encoding="utf-8",
            )

            self.assertFalse(source_has_function(source, "missing_probe"))


if __name__ == "__main__":
    unittest.main()
