from __future__ import annotations

import importlib.util
import unittest
from pathlib import Path


SCRIPT = Path(__file__).resolve().parents[1] / "verify_driver_microtasks.py"
SPEC = importlib.util.spec_from_file_location("verify_driver_microtasks", SCRIPT)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


class VerifyDriverMicrotasksTests(unittest.TestCase):
    def test_engineering_curated_root_resolves_to_engineering_workspace(self) -> None:
        curated = Path("workspace") / "engineering" / "curated"
        self.assertEqual(
            MODULE.workspace_root_for_curated(curated),
            Path("workspace") / "engineering",
        )

    def test_repository_curated_root_resolves_to_repository_workspace(self) -> None:
        curated = Path("workspace") / "kernel_development" / "drivers" / "reconstructed"
        self.assertEqual(
            MODULE.workspace_root_for_curated(curated),
            Path("workspace"),
        )

    def test_unknown_layout_fails_closed(self) -> None:
        with self.assertRaises(ValueError):
            MODULE.workspace_root_for_curated(Path("workspace") / "sources")


if __name__ == "__main__":
    unittest.main()
