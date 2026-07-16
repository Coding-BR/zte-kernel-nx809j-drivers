import argparse
import tempfile
import unittest
from pathlib import Path

from workspace_tools.reconstruction_pipeline.attest_driver_microtasks import (
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


if __name__ == "__main__":
    unittest.main()
