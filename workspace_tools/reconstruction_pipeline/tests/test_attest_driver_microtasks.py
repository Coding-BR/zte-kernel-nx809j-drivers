import argparse
import tempfile
import unittest
from pathlib import Path

from workspace_tools.reconstruction_pipeline.attest_driver_microtasks import (
    make_repository_manifest_portable,
    resolve_layout,
)


class AttestDriverMicrotasksTests(unittest.TestCase):
    def test_public_repository_layout(self):
        with tempfile.TemporaryDirectory() as temporary:
            repository = Path(temporary) / "repository"
            curated = repository / "kernel_development" / "drivers" / "reconstructed"
            validation = repository / "reverse_engineering" / "validation" / "reconstructed"
            args = argparse.Namespace(
                engineering_root=repository / "workspace_tools",
                curated_root=curated,
                validation_root=validation,
            )

            actual_curated, actual_validation, workspace = resolve_layout(args)

            self.assertEqual(actual_curated, curated.resolve())
            self.assertEqual(actual_validation, validation.resolve())
            self.assertEqual(workspace, repository.resolve())

    def test_engineering_layout_defaults(self):
        with tempfile.TemporaryDirectory() as temporary:
            engineering = Path(temporary) / "engineering"
            args = argparse.Namespace(
                engineering_root=engineering,
                curated_root=None,
                validation_root=None,
            )

            curated, validation, workspace = resolve_layout(args)

            self.assertEqual(curated, engineering.resolve() / "curated")
            self.assertEqual(validation, engineering.resolve() / "validation")
            self.assertEqual(workspace, engineering.resolve().parent)

    def test_public_manifest_paths_are_portable(self):
        repository = Path("repository")
        curated = repository / "kernel_development" / "drivers" / "reconstructed"
        manifest = {
            "stock": {"path": r"C:\private\zte_stats_info.ko"},
            "ghidra_export": r"C:\private\export",
            "tasks": [
                {
                    "ghidra_pseudocode": r"C:\private\decompiled\0001_task.c",
                    "ghidra_pcode": r"C:\private\pcode\0001_task.jsonl",
                    "implementation_prompt": (
                        "Pseudocodigo Ghidra: C:\\private\\decompiled\\0001_task.c\n"
                        "P-Code Ghidra: C:\\private\\pcode\\0001_task.jsonl"
                    ),
                }
            ],
        }

        make_repository_manifest_portable(manifest, "zte_stats_info", curated)

        root = (
            "reverse_engineering/validation/reconstructed/zte_stats_info/"
            "offline_static/ghidra_stock"
        )
        self.assertEqual(
            manifest["stock"]["path"],
            "reference_modules/stock/zte_stats_info.ko",
        )
        self.assertEqual(manifest["ghidra_export"], root)
        self.assertEqual(
            manifest["tasks"][0]["ghidra_pseudocode"],
            root + "/decompiled/0001_task.c",
        )
        self.assertEqual(
            manifest["tasks"][0]["ghidra_pcode"],
            root + "/pcode/0001_task.jsonl",
        )
        self.assertNotIn(r"C:\private", manifest["tasks"][0]["implementation_prompt"])


if __name__ == "__main__":
    unittest.main()
