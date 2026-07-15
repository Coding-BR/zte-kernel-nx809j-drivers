#!/usr/bin/env python3

from __future__ import annotations

import importlib.util
import json
import struct
import sys
import tempfile
import unittest
from pathlib import Path


MODULE_PATH = Path(__file__).resolve().parents[1] / "validate_module_decomposition.py"
SPEC = importlib.util.spec_from_file_location("validate_module_decomposition", MODULE_PATH)
assert SPEC and SPEC.loader
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)
REPO = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(MODULE_PATH.parent))
PUBLISH_PATH = MODULE_PATH.parent / "publish_offline_evidence.py"
PUBLISH_SPEC = importlib.util.spec_from_file_location("publish_offline_evidence", PUBLISH_PATH)
assert PUBLISH_SPEC and PUBLISH_SPEC.loader
PUBLISH = importlib.util.module_from_spec(PUBLISH_SPEC)
PUBLISH_SPEC.loader.exec_module(PUBLISH)


class ModuleDecompositionTests(unittest.TestCase):
    def test_repo_path_rejects_traversal(self) -> None:
        with self.assertRaises(MODULE.DecompositionError):
            MODULE.repo_path(REPO, "../outside", field="test")

    def test_invalid_jsonl_is_rejected(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            path = Path(temporary) / "invalid.jsonl"
            path.write_text('{"valid":true}\nnot-json\n', encoding="utf-8")
            with self.assertRaises(MODULE.DecompositionError):
                MODULE.read_jsonl(path)

    def test_published_evidence_detects_hash_tampering(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            artifact = root / "artifact.txt"
            artifact.write_text("stock evidence\n", encoding="utf-8")
            manifest = {
                "derived_files": [
                    {
                        "path": "artifact.txt",
                        "size": artifact.stat().st_size,
                        "sha256": "0" * 64,
                    }
                ]
            }
            with self.assertRaises(MODULE.DecompositionError):
                MODULE.validate_published_evidence(root, manifest)

    def test_publisher_excludes_secondary_and_candidate_metadata(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            (root / "ghidra_stock").mkdir()
            (root / "ghidra_candidate").mkdir()
            (root / "candidate_assembly").mkdir()
            (root / "ghidra_stock" / "functions.jsonl").write_text(
                '{"name":"f"}\n', encoding="utf-8"
            )
            (root / "ghidra_candidate" / "functions.jsonl").write_text(
                '{"name":"candidate"}\n', encoding="utf-8"
            )
            (root / "candidate_assembly" / "function.asm").write_text(
                "ret\n", encoding="utf-8"
            )
            (root / "FUNCTION_EVIDENCE_INDEX.jsonl").write_text("{}\n", encoding="utf-8")
            (root / "MODULE_DECOMPOSITION_MANIFEST.json").write_text(
                "{}\n", encoding="utf-8"
            )
            records = PUBLISH.evidence_records(root)
            self.assertEqual(
                [record["path"] for record in records],
                ["ghidra_stock/functions.jsonl"],
            )

    def test_elf_identity_rejects_non_aarch64_object(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            path = Path(temporary) / "x86.o"
            header = bytearray(64)
            header[:6] = b"\x7fELF\x02\x01"
            struct.pack_into("<HH", header, 16, 1, 62)
            path.write_bytes(header)
            with self.assertRaises(MODULE.DecompositionError):
                MODULE.elf_identity(path)

    def test_zte_ir_analysis_is_deterministic(self) -> None:
        targets = MODULE.load_targets(REPO)
        target = next(item for item in targets["targets"] if item["driver"] == "zte_ir")
        first = MODULE.analyze_target(REPO, target)
        second = MODULE.analyze_target(REPO, target)
        self.assertEqual(first["index_data"], second["index_data"])
        self.assertEqual(first["manifest_data"], second["manifest_data"])
        self.assertEqual(first["manifest"]["coverage"]["functions"], 8)


if __name__ == "__main__":
    unittest.main()
