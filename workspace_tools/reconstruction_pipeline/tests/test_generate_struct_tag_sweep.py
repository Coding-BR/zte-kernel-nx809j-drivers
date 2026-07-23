import json
import pathlib
import subprocess
import sys
import tempfile
import unittest


SCRIPT = pathlib.Path(__file__).resolve().parents[1] / "generate_struct_tag_sweep.py"


class GenerateStructTagSweepTests(unittest.TestCase):
    def test_output_is_deterministic(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = pathlib.Path(temporary)
            first = root / "first.json"
            second = root / "second.json"
            common = [
                sys.executable,
                str(SCRIPT),
                "--symbol",
                "probe_callback",
                "--target-kcfi",
                "0x12345678",
                "--max-words",
                "1",
            ]
            subprocess.run(
                common + ["--output", str(first)],
                check=True,
                stdout=subprocess.PIPE,
                text=True,
            )
            subprocess.run(
                common + ["--output", str(second)],
                check=True,
                stdout=subprocess.PIPE,
                text=True,
            )

            self.assertEqual(first.read_bytes(), second.read_bytes())
            payload = json.loads(first.read_text(encoding="ascii"))
            tags = payload["correlated_matrix"]["axes"]["tag"]
            self.assertEqual(tags, sorted(set(tags)))
            self.assertIn("syna_hw_interface", tags)
            self.assertTrue(payload["generation"]["offline_only"])

    def test_enum_template_declares_fixed_struct_once(self):
        with tempfile.TemporaryDirectory() as temporary:
            output = pathlib.Path(temporary) / "enum.json"
            subprocess.run(
                [
                    sys.executable,
                    str(SCRIPT),
                    "--output",
                    str(output),
                    "--symbol",
                    "probe_callback",
                    "--target-kcfi",
                    "0x12345678",
                    "--first-type-template",
                    "struct syna_hw_interface *",
                    "--second-type-template",
                    "enum {tag}",
                    "--max-words",
                    "1",
                ],
                check=True,
                stdout=subprocess.PIPE,
                text=True,
            )

            payload = json.loads(output.read_text(encoding="ascii"))
            matrix = payload["correlated_matrix"]
            self.assertEqual(payload["declarations"], ["struct syna_hw_interface;"])
            self.assertNotIn("syna_hw_interface", matrix["axes"]["tag"])
            self.assertEqual(
                matrix["declaration_templates"],
                ["enum {tag} {{ {tag}_zero = 0, {tag}_one = 1 }};"],
            )
            self.assertEqual(
                matrix["parameters"][1]["types"], ["enum {tag}"]
            )


if __name__ == "__main__":
    unittest.main()
