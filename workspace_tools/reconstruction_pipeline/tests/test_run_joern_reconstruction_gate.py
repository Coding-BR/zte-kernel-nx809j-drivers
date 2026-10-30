from __future__ import annotations

import importlib.util
import json
import os
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
            {
                "caller": "stock_a",
                "caller_entry": "00100000",
                "target": "stock_b",
                "target_address": "00100040",
            },
        ])
        write_json(reconstruction_map, {
            "mappings": [
                {
                    "stock_function": "stock_a",
                    "stock_entry": "00100000",
                    "source_function": "source_a",
                    "source_file": "a.c",
                },
                {
                    "stock_function": "stock_b",
                    "stock_entry": "00100040",
                    "source_function": "source_b",
                    "source_file": "b.c",
                },
            ]
        })
        write_json(inventory / "methods.json", {"records": [
            {"name": "source_a", "filename": "a.c", "is_external": False},
            {"name": "source_b", "filename": "b.c", "is_external": False},
            {"name": "helper", "filename": "helper.c", "is_external": False},
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

    def test_source_fallback_recovers_joern_nested_call_gap(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            fixture = self.make_fixture(root, include_call=False)
            (root / "a.c").write_text(
                "int source_a(void) { /* source_b() */ return source_b(); }\n",
                encoding="utf-8",
            )
            report = GATE.build_cross_oracle_report(
                *fixture, strict=True, source_root=root
            )
            self.assertTrue(report["passed"])
            self.assertTrue(report["graph"]["joern_cpg_gap"])
            self.assertEqual(
                report["graph"]["source_fallback_evidence"][0]["target"],
                "source_b",
            )
            self.assertEqual(
                report["graph"]["mapped_call_deltas"][0]["effective_missing_mapped_calls"],
                {},
            )

    def test_function_scope_keeps_full_map_for_outgoing_call_resolution(self):
        with tempfile.TemporaryDirectory() as temporary:
            fixture = self.make_fixture(Path(temporary))
            report = GATE.build_cross_oracle_report(
                *fixture,
                strict=True,
                selected_functions=["stock_a"],
            )
            self.assertTrue(report["passed"])
            self.assertEqual(report["scope"]["mode"], "FUNCTIONS")
            self.assertEqual(
                report["scope"]["resolved_source_functions"], ["source_a"]
            )
            self.assertEqual(report["coverage"]["ghidra_function_count"], 1)
            self.assertEqual(report["coverage"]["mapped_identity_count"], 1)
            self.assertEqual(report["coverage"]["extra_source_methods"], [])
            self.assertEqual(report["coverage"]["joern_internal_method_count"], 1)
            self.assertEqual(
                report["coverage"]["joern_total_internal_method_count"], 3
            )
            self.assertEqual(report["graph"]["mapped_call_deltas"], [])
            self.assertEqual(report["review_findings"], [])

    def test_function_scope_accepts_source_name(self):
        with tempfile.TemporaryDirectory() as temporary:
            fixture = self.make_fixture(Path(temporary))
            report = GATE.build_cross_oracle_report(
                *fixture,
                strict=True,
                selected_functions=["source_b"],
            )
            self.assertTrue(report["passed"])
            self.assertEqual(
                report["scope"]["resolved_stock_functions"], ["stock_b"]
            )
            self.assertEqual(report["review_findings"][0]["category"], "hardware_write")

    def test_assembly_only_function_can_be_scoped_without_a_c_method(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            ghidra, reconstruction_map, inventory, profile = self.make_fixture(root)
            payload = json.loads(reconstruction_map.read_text(encoding="utf-8"))
            payload["mappings"][1]["source_function"] = "_asm_helper"
            payload["mappings"][1]["source_file"] = "helper.S"
            reconstruction_map.write_text(json.dumps(payload), encoding="utf-8")
            report = GATE.build_cross_oracle_report(
                ghidra,
                reconstruction_map,
                inventory,
                profile,
                strict=True,
                selected_functions=["stock_b"],
                assembly_only_functions=["_asm_helper"],
            )
            self.assertTrue(report["passed"])
            self.assertEqual(report["coverage"]["joern_internal_method_count"], 0)
            self.assertEqual(
                report["scope"]["assembly_only_source_functions"], ["_asm_helper"]
            )
            self.assertEqual(
                report["analysis_exemptions"][0]["kind"],
                "ASSEMBLY_ONLY_SOURCE_METHOD",
            )

    def test_function_scope_keeps_duplicate_stock_entries_separate(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            ghidra = root / "ghidra"
            inventory = root / "inventory"
            reconstruction_map = root / "reconstruction_map.json"
            profile = root / "profile.json"
            write_jsonl(ghidra / "functions.jsonl", [
                {"name": "stock_dup", "entry": "00100000"},
                {"name": "stock_dup", "entry": "00100040"},
                {"name": "stock_target", "entry": "00100080"},
            ])
            write_jsonl(ghidra / "calls.jsonl", [
                {
                    "caller": "stock_dup",
                    "caller_entry": "00100000",
                    "target": "stock_target",
                    "target_address": "00100080",
                },
                {
                    "caller": "stock_dup",
                    "caller_entry": "00100040",
                    "target": "stock_target",
                    "target_address": "00100080",
                },
            ])
            write_json(reconstruction_map, {"mappings": [
                {
                    "stock_function": "stock_dup",
                    "stock_entry": "00100000",
                    "source_function": "source_first",
                    "source_file": "first.c",
                },
                {
                    "stock_function": "stock_dup",
                    "stock_entry": "00100040",
                    "source_function": "source_second",
                    "source_file": "second.c",
                },
                {
                    "stock_function": "stock_target",
                    "stock_entry": "00100080",
                    "source_function": "source_target",
                    "source_file": "target.c",
                },
            ]})
            write_json(inventory / "methods.json", {"records": [
                {"name": "source_first", "filename": "first.c", "is_external": False},
                {"name": "source_second", "filename": "second.c", "is_external": False},
                {"name": "source_target", "filename": "target.c", "is_external": False},
            ]})
            write_json(inventory / "calls.json", {"records": [
                {
                    "caller": "source_first",
                    "name": "source_target",
                    "method_full_name": "source_target",
                    "code": "source_target()",
                    "filename": "first.c",
                    "line": 1,
                },
                {
                    "caller": "source_second",
                    "name": "source_target",
                    "method_full_name": "source_target",
                    "code": "source_target()",
                    "filename": "second.c",
                    "line": 1,
                },
            ]})
            write_json(inventory / "control_structures.json", {"records": []})
            write_json(profile, {"categories": []})

            report = GATE.build_cross_oracle_report(
                ghidra,
                reconstruction_map,
                inventory,
                profile,
                strict=True,
                selected_functions=["source_second"],
            )

            self.assertTrue(report["passed"])
            self.assertEqual(report["coverage"]["ghidra_function_count"], 1)
            self.assertEqual(report["graph"]["mapped_call_deltas"], [])

    def test_function_scope_accepts_exact_duplicate_stock_identity(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            ghidra = root / "ghidra"
            inventory = root / "inventory"
            reconstruction_map = root / "reconstruction_map.json"
            profile = root / "profile.json"
            write_jsonl(ghidra / "functions.jsonl", [
                {"name": "stock_dup", "entry": "00100000"},
                {"name": "stock_dup", "entry": "00100040"},
            ])
            write_jsonl(ghidra / "calls.jsonl", [])
            write_json(reconstruction_map, {"mappings": [
                {
                    "stock_function": "stock_dup",
                    "stock_entry": "00100000",
                    "source_function": "source_first",
                    "source_file": "first.c",
                },
                {
                    "stock_function": "stock_dup",
                    "stock_entry": "00100040",
                    "source_function": "source_second",
                    "source_file": "second.c",
                },
            ]})
            write_json(inventory / "methods.json", {"records": [
                {"name": "source_first", "filename": "first.c", "is_external": False},
                {"name": "source_second", "filename": "second.c", "is_external": False},
            ]})
            write_json(inventory / "calls.json", {"records": []})
            write_json(inventory / "control_structures.json", {"records": []})
            write_json(profile, {"categories": []})

            report = GATE.build_cross_oracle_report(
                ghidra,
                reconstruction_map,
                inventory,
                profile,
                strict=True,
                selected_functions=["stock_dup@00100040"],
            )

            self.assertTrue(report["passed"])
            self.assertEqual(report["coverage"]["ghidra_function_count"], 1)
            self.assertEqual(report["scope"]["resolved_source_functions"], ["source_second"])

    def test_function_scope_rejects_unknown_name(self):
        with tempfile.TemporaryDirectory() as temporary:
            fixture = self.make_fixture(Path(temporary))
            report = GATE.build_cross_oracle_report(
                *fixture,
                strict=True,
                selected_functions=["not_in_any_oracle"],
            )
            self.assertFalse(report["passed"])
            self.assertEqual(
                report["scope"]["unresolved_requests"], ["not_in_any_oracle"]
            )
            self.assertIn(
                "requested function scope could not be resolved",
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

    def test_text_hash_normalizes_line_endings_but_binary_hash_does_not(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            lf_text = root / "lf.c"
            crlf_text = root / "crlf.c"
            lf_binary = root / "lf.ko"
            crlf_binary = root / "crlf.ko"
            lf_text.write_bytes(b"int value;\n")
            crlf_text.write_bytes(b"int value;\r\n")
            lf_binary.write_bytes(b"ELF\n")
            crlf_binary.write_bytes(b"ELF\r\n")
            self.assertEqual(GATE.sha256_file(lf_text), GATE.sha256_file(crlf_text))
            self.assertNotEqual(
                GATE.sha256_file(lf_binary), GATE.sha256_file(crlf_binary)
            )

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

    def test_windows_batch_launcher_preserves_key_value_argument(self):
        argv = ["joern.bat", "--param", "cpgFile=C:/analysis/source.cpg.bin"]
        runnable = GATE.runnable_argv(argv)
        if os.name == "nt":
            self.assertEqual(runnable[:4], ["cmd.exe", "/d", "/c", "joern.bat"])
            self.assertEqual(runnable[-1], '"cpgFile=C:/analysis/source.cpg.bin"')
        else:
            self.assertEqual(runnable, argv)

    def test_public_summary_contains_hashes_without_local_paths(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            ghidra, reconstruction_map, inventory, profile = self.make_fixture(root)
            write_json(inventory / "inventory.json", {"method_count": 3})
            report = GATE.build_cross_oracle_report(
                ghidra, reconstruction_map, inventory, profile, strict=True
            )
            report.update({"driver": "zte_ir", "parser": {"parse_problem_count": 0}})
            report_path = root / "joern_gate_report.json"
            write_json(report_path, report)

            def record(path: Path):
                return GATE.file_record(path)

            runner = root / "runner.py"
            query = root / "query.sc"
            lock_file = root / "lock.json"
            for path in (runner, query, lock_file):
                path.write_text("fixture\n", encoding="ascii")
            manifest = {
                "source": {"tree_sha256": "a" * 64, "file_count": 1},
                "ghidra": {
                    "functions": record(ghidra / "functions.jsonl"),
                    "calls": record(ghidra / "calls.jsonl"),
                },
                "reconstruction_map": record(reconstruction_map),
                "joern": {
                    "runner": record(runner),
                    "lock": record(lock_file),
                    "query": record(query),
                    "call_profile": record(profile),
                    "preprocessor_defines": ["__user"],
                },
            }
            lock = {
                "project": {"release_tag": "v1", "source_commit": "b" * 40},
                "distribution": {"size": 42, "sha256": "c" * 64},
                "runtime": {"java_major": 21},
            }
            summary = GATE.build_public_summary(
                report, manifest, lock, report_path, inventory
            )
            encoded = json.dumps(summary)
            self.assertNotIn(str(root), encoded)
            self.assertFalse(summary["promotion_claim"])
            self.assertEqual(summary["input_hashes"]["source_file_count"], 1)
            self.assertIn("joern_gate_report", summary["output_hashes"])


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
