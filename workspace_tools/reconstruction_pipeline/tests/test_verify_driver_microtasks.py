from __future__ import annotations

import importlib.util
import subprocess
import tempfile
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

    def test_git_index_blob_ignores_worktree_changes(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            subprocess.run(
                ["git", "init", "-q"],
                cwd=root,
                check=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
            )
            evidence = root / "evidence.json"
            evidence.write_bytes(b'{"line_endings":"lf"}\n')
            subprocess.run(
                ["git", "add", "evidence.json"],
                cwd=root,
                check=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
            )
            evidence.write_bytes(b'{"line_endings":"crlf"}\r\n')

            self.assertEqual(
                MODULE.git_index_blob(root, Path("evidence.json")),
                b'{"line_endings":"lf"}\n',
            )

    def test_git_index_blob_rejects_traversal(self) -> None:
        with self.assertRaisesRegex(ValueError, "invalid Git index path"):
            MODULE.git_index_blob(Path("workspace"), Path("../outside"))


if __name__ == "__main__":
    unittest.main()
