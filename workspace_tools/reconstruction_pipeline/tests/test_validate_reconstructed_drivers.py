#!/usr/bin/env python3
"""Regression tests for isolated clean rebuild workspaces."""

from __future__ import annotations

import importlib.util
import tempfile
import unittest
from pathlib import Path
from unittest import mock


SCRIPT = Path(__file__).resolve().parents[1] / "validate_reconstructed_drivers.py"
SPEC = importlib.util.spec_from_file_location("validate_reconstructed_drivers", SCRIPT)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


class BuildTwiceTests(unittest.TestCase):
    def test_uses_fresh_source_tree_for_each_clean_cycle(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            source = root / "source"
            source.mkdir()
            (source / "Makefile").write_text("obj-m := zte_tpd.o\n", encoding="utf-8")
            (source / "driver.c").write_text("int driver(void) { return 0; }\n", encoding="utf-8")
            (source / "vendor.Module.symvers").write_text("", encoding="utf-8")
            work_root = root / "work"
            commands: list[list[str]] = []

            def fake_command(command: list[str], *, timeout: int = 900) -> dict[str, object]:
                del timeout
                commands.append(command)
                if command[-1] == "modules":
                    mount = next(argument for argument in command if argument.startswith("M=/work/validation/"))
                    relative = mount.removeprefix("M=/work/validation/")
                    module = work_root / Path(relative) / "zte_tpd.ko"
                    module.write_bytes(b"same-module")
                return {"argv": command, "returncode": 0, "stdout": "", "stderr": ""}

            with mock.patch.object(MODULE, "command_record", side_effect=fake_command):
                result, module, errors = MODULE.build_twice(
                    driver="zte_tpd",
                    driver_dir=source,
                    work_root=work_root,
                    image="test-image",
                    source_volume="source-volume",
                    toolchain_volume="toolchain-volume",
                    clang_revision="clang-test",
                )

            self.assertEqual(errors, [])
            self.assertTrue(result["passed"])
            self.assertTrue(result["reproducible"])
            self.assertEqual(module, work_root / "zte_tpd" / "cycle_2" / "zte_tpd.ko")
            self.assertTrue((work_root / "zte_tpd" / "cycle_1" / "driver.c").is_file())
            self.assertTrue((work_root / "zte_tpd" / "cycle_2" / "driver.c").is_file())
            mounts = [
                next(argument for argument in command if argument.startswith("M=/work/validation/"))
                for command in commands
            ]
            self.assertEqual(
                mounts,
                [
                    "M=/work/validation/zte_tpd/cycle_1",
                    "M=/work/validation/zte_tpd/cycle_1",
                    "M=/work/validation/zte_tpd/cycle_2",
                    "M=/work/validation/zte_tpd/cycle_2",
                ],
            )


if __name__ == "__main__":
    unittest.main()
