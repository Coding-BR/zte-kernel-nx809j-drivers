from __future__ import annotations

import hashlib
import importlib.util
import subprocess
import tempfile
import unittest
from pathlib import Path


SCRIPT = (
    Path(__file__).resolve().parents[1] / "prepare_contribution_bundle.py"
)
SPEC = importlib.util.spec_from_file_location("prepare_contribution_bundle", SCRIPT)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


class PrepareContributionBundleTests(unittest.TestCase):
    def git(self, repo: Path, *args: str) -> None:
        subprocess.run(
            ["git", *args],
            cwd=repo,
            check=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
        )

    def test_staged_mode_uses_only_index_content(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            repo = Path(temporary)
            self.git(repo, "init", "-q")
            self.git(repo, "config", "user.name", "Test")
            self.git(repo, "config", "user.email", "test@example.invalid")

            tracked = repo / "tracked.txt"
            unstaged = repo / "unstaged.txt"
            tracked.write_text("base\n", encoding="utf-8")
            unstaged.write_text("base\n", encoding="utf-8")
            self.git(repo, "add", "tracked.txt", "unstaged.txt")
            self.git(repo, "commit", "-qm", "base")

            tracked.write_text("staged\n", encoding="utf-8")
            self.git(repo, "add", "tracked.txt")
            tracked.write_text("worktree-only\n", encoding="utf-8")
            unstaged.write_text("not staged\n", encoding="utf-8")
            (repo / "untracked.txt").write_text("not staged\n", encoding="utf-8")

            changes = MODULE.parse_changes(
                repo, "HEAD", "contributions/example", staged_only=True
            )

            self.assertEqual(
                changes,
                [
                    {
                        "path": "tracked.txt",
                        "change": "M",
                        "sha256": hashlib.sha256(b"staged\n").hexdigest(),
                    }
                ],
            )

    def test_staged_mode_excludes_bundle_files(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            repo = Path(temporary)
            self.git(repo, "init", "-q")
            self.git(repo, "config", "user.name", "Test")
            self.git(repo, "config", "user.email", "test@example.invalid")
            (repo / "base.txt").write_text("base\n", encoding="utf-8")
            self.git(repo, "add", "base.txt")
            self.git(repo, "commit", "-qm", "base")

            bundle = repo / "contributions" / "example"
            bundle.mkdir(parents=True)
            (bundle / "report.json").write_text("{}\n", encoding="utf-8")
            (repo / "source.c").write_text("int value;\n", encoding="utf-8")
            self.git(repo, "add", "contributions/example/report.json", "source.c")

            changes = MODULE.parse_changes(
                repo, "HEAD", "contributions/example", staged_only=True
            )

            self.assertEqual([record["path"] for record in changes], ["source.c"])


if __name__ == "__main__":
    unittest.main()
