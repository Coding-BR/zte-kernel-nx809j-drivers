from __future__ import annotations

import importlib.util
import os
import tempfile
import unittest
from pathlib import Path


SCRIPT = Path(__file__).resolve().parents[1] / "validate_zte_tpd_layout.py"
SPEC = importlib.util.spec_from_file_location("validate_zte_tpd_layout", SCRIPT)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)


def add_stock(run_root: Path) -> None:
    module = run_root / "01_acquisition" / "modules" / "zte_tpd.ko"
    module.parent.mkdir(parents=True)
    module.write_bytes(b"ELF fixture")


class FindRunTests(unittest.TestCase):
    def test_default_engineering_root_is_adjacent_to_repository(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            script = (
                root
                / "repository"
                / "workspace_tools"
                / "reconstruction_pipeline"
                / "validate_zte_tpd_layout.py"
            )
            expected = root / "kernel-docker-workspace" / "engenharia"
            self.assertEqual(MODULE.default_engineering_root(script), expected)

    def test_requested_run_requires_the_stock_module(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            with self.assertRaisesRegex(FileNotFoundError, "has no zte_tpd.ko"):
                MODULE.find_run(root, root / "missing")

    def test_requested_run_is_returned_verbatim(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            run = root / "runs" / "explicit"
            add_stock(run)
            self.assertEqual(MODULE.find_run(root, run), run.resolve())

    def test_latest_run_with_stock_is_selected(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            older = root / "runs" / "older"
            newer = root / "runs" / "newer"
            ignored = root / "runs" / "newest_without_stock"
            add_stock(older)
            add_stock(newer)
            ignored.mkdir(parents=True)
            os.utime(older, (1, 1))
            os.utime(newer, (2, 2))
            os.utime(ignored, (3, 3))
            self.assertEqual(MODULE.find_run(root, None), newer.resolve())


class BuildIsolationTests(unittest.TestCase):
    def test_ephemeral_build_avoids_bind_mount_as_make_output(self) -> None:
        script = MODULE.ephemeral_layout_build_script(
            "/work/engineering/validation/work/zte_tpd_layout_probe"
        )

        self.assertIn('M="$build_root" modules', script)
        self.assertIn('touch -d "@0"', script)
        self.assertIn("build_root=/tmp/zte_tpd_layout_probe", script)
        self.assertNotIn(
            "M=/work/engineering/validation/work/zte_tpd_layout_probe",
            script,
        )

    def test_sysfs_dir_offset_is_asserted_and_reported(self) -> None:
        repository = SCRIPT.parents[2]
        probe = (
            repository
            / "kernel_development"
            / "drivers"
            / "reconstructed"
            / "zte_tpd"
            / "probes"
            / "layout_probe.c"
        ).read_text(encoding="utf-8")
        validator = SCRIPT.read_text(encoding="utf-8")

        self.assertIn(
            "offsetof(struct syna_tcm, sysfs_dir) == 0x398",
            probe,
        )
        self.assertIn('"syna_tcm_sysfs_dir_offset": "0x398"', validator)


class ElfParsingTests(unittest.TestCase):
    def test_parse_symbol_table(self) -> None:
        symbols = """
   943: 0000000000000c30   376 OBJECT  LOCAL  DEFAULT     8 test_0A00
   944: 00000000000163a4   576 FUNC    LOCAL  DEFAULT    20 syna_tcm_testing_noise
"""
        parsed = MODULE.parse_symbol_table(symbols)
        self.assertEqual(parsed["test_0A00"]["value"], 0xC30)
        self.assertEqual(parsed["test_0A00"]["size"], 376)
        self.assertEqual(parsed["syna_tcm_testing_noise"]["type"], "FUNC")

    def test_parse_abs64_relocations_filters_section(self) -> None:
        relocations = """
Relocation section '.rela.text' at offset 0:
0000000000000c38  000000000000011b R_AARCH64_ABS64 0000000000000000 wrong + 0
Relocation section '.rela.data' at offset 0:
0000000000000c38  0000000000000101 R_AARCH64_ABS64 0000000000000000 .rodata.str1.1 + 64da
0000000000000c48  0000000000000101 R_AARCH64_ABS64 0000000000000000 .text + 163a4
"""
        parsed = MODULE.parse_abs64_relocations(relocations)
        self.assertEqual(set(parsed), {0xC38, 0xC48})
        self.assertEqual(parsed[0xC38], {"symbol": ".rodata.str1.1", "addend": 0x64DA})
        self.assertEqual(parsed[0xC48], {"symbol": ".text", "addend": 0x163A4})

    def test_read_c_string(self) -> None:
        self.assertEqual(MODULE.read_c_string(b"zero\0Noise Test\0", 5), "Noise Test")
        with self.assertRaisesRegex(ValueError, "outside section"):
            MODULE.read_c_string(b"x\0", 2)


if __name__ == "__main__":
    unittest.main()
