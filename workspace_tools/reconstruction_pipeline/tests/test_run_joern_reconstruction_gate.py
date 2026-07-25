from __future__ import annotations

import importlib.util
import json
import sys
import tempfile
import unittest
from pathlib import Path


PIPELINE_ROOT = Path(__file__).resolve().parents[1]


def load_module(name: str, filename: str):
    path = PIPELINE_ROOT / filename
    spec = importlib.util.spec_from_file_location(name, path)
    assert spec and spec.loader
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    spec.loader.exec_module(module)
    return module


GATE = load_module("run_joern_reconstruction_gate", "run_joern_reconstruction_gate.py")
BOOTSTRAP = load_module("bootstrap_joern", "bootstrap_joern.py")


def write_json(path: Path, payload) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload), encoding="utf-8")


def write_jsonl(path: Path, records) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(
        "".join(json.dumps(record) + "\n" for record in records),
        encoding="utf-8",
    )


class JoernGateTests(unittest.TestCase):
    def make_fixture(self, root: Path, include_call: bool = True):
        ghidra = root / "ghidra"
        inventory = root / "inventory"
        reconstruction_map = root / "reconstruction_map.json"
        profile = root / "profile.json"
        write_jsonl(ghidra / "functions.jsonl", [
            {"name": "stock_a", "entry": "00100000"},
            {"name": "stock_b", "entry": "00100040"},
        ])
        write_jsonl(ghidra / "calls.jsonl", [
            {"caller": "stock_a", "target": "stock_b"},
        ])
        write_json(reconstruction_map, {
            "mappings": [
                {
                    "stock_function": "stock_a",
                    "stock_entry": "00100000",
                    "source_function": "source_a",
                },
                {
                    "stock_function": "stock_b",
                    "stock_entry": "00100040",
                    "source_function": "source_b",
                },
            ]
        })
        write_json(inventory / "methods.json", {"records": [
            {"name": "source_a", "is_external": False},
            {"name": "source_b", "is_external": False},
            {"name": "helper", "is_external": False},
        ]})
        calls = []
        if include_call:
            calls.append({
                "caller": "source_a",
                "name": "source_b",
                "method_full_name": "source_b",
                "code": "source_b()",
                "filename": "driver.c",
                "line": 10,
            })
        calls.append({
            "caller": "source_b",
            "name": "writel",
            "method_full_name": "writel",
            "code": "writel(value, base)",
            "filename": "driver.c",
            "line": 20,
        })
        write_json(inventory / "calls.json", {"records": calls})
        write_json(inventory / "control_structures.json", {"records": [
            {"method": "source_a", "type": "IF", "code": "if (ready)"},
        ]})
        write_json(profile, {"categories": [
            {
                "name": "hardware_write",
                "severity": "critical",
                "patterns": ["^writel$"],
            }
        ]})
        return ghidra, reconstruction_map, inventory, profile

    def test_cross_oracle_passes_complete_mapping(self):
        with tempfile.TemporaryDirectory() as temporary:
            fixture = self.make_fixture(Path(temporary))
            report = GATE.build_cross_oracle_report(*fixture, strict=True)
            self.assertTrue(report["passed"])
            self.assertEqual(report["coverage"]["extra_source_methods"], ["helper"])
            self.assertEqual(report["review_findings"][0]["category"], "hardware_write")
            self.assertFalse(report["promotion_claim"])

    def test_strict_gate_rejects_missing_mapped_call(self):
        with tempfile.TemporaryDirectory() as temporary:
            fixture = self.make_fixture(Path(temporary), include_call=False)
            report = GATE.build_cross_oracle_report(*fixture, strict=True)
            self.assertFalse(report["passed"])
            self.assertIn(
                "strict mode found mapped stock calls absent from the source CPG",
                report["blockers"],
            )

    def test_source_tree_hash_changes_with_content(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            source = root / "driver.c"
            source.write_text("int value;\n", encoding="ascii")
            first = GATE.source_tree_record(root)
            source.write_text("int other;\n", encoding="ascii")
            second = GATE.source_tree_record(root)
            self.assertNotEqual(first["tree_sha256"], second["tree_sha256"])

    def test_source_tree_excludes_host_harness(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            (root / "driver.c").write_text("int driver;\n", encoding="ascii")
            tests = root / "tests"
            tests.mkdir()
            (tests / "host_test.c").write_text("int host;\n", encoding="ascii")
            record = GATE.source_tree_record(root, {"tests"})
            self.assertEqual([row["path"] for row in record["files"]], ["driver.c"])

    def test_install_marker_must_match_locked_distribution(self):
        with tempfile.TemporaryDirectory() as temporary:
            marker = Path(temporary) / "nx809j-joern-install.json"
            lock = {
                "distribution": {"sha256": "a" * 64},
                "project": {"source_commit": "b" * 40},
            }
            write_json(marker, {
                "archive": {"sha256": "a" * 64},
                "source_commit": "b" * 40,
            })
            payload = GATE.validate_install_marker(marker, lock)
            self.assertEqual(payload["archive"]["sha256"], "a" * 64)

    def test_parse_problem_counter_uses_complete_command_metric(self):
        result = {
            "parse_problem_count": 7,
            "stdout_tail": "",
            "stderr_tail": "",
        }
        self.assertEqual(GATE.count_parse_problems(result), 7)


class JoernBootstrapTests(unittest.TestCase):
    def test_archive_verification_uses_size_and_sha256(self):
        with tempfile.TemporaryDirectory() as temporary:
            archive = Path(temporary) / "joern.zip"
            archive.write_bytes(b"locked archive")
            expected = {
                "size": archive.stat().st_size,
                "sha256": BOOTSTRAP.sha256_file(archive),
            }
            record = BOOTSTRAP.verify_archive(archive, expected)
            self.assertEqual(record["sha256"], expected["sha256"])

    def test_zip_path_traversal_is_rejected(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary) / "install"
            root.mkdir()
            with self.assertRaises(ValueError):
                BOOTSTRAP.safe_member_target(root, "../outside")


if __name__ == "__main__":
    unittest.main()
