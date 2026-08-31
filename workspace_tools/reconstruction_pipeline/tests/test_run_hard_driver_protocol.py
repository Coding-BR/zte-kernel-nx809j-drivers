from __future__ import annotations

import sys
import tempfile
from pathlib import Path
import unittest

from workspace_tools.reconstruction_pipeline.run_hard_driver_protocol import (
    build_command_plan,
    find_map_bindings,
    required_gates,
    resolve_repo_path,
    run_command,
    select_functions,
    validate_job,
)


def base_job(**overrides):
    value = {
        "schema_version": "1.0",
        "driver": "example_driver",
        "profiles": ["CALLBACK_ABI"],
        "functions": [
            {
                "stock_function": "stock_fn",
                "stock_entry": "00100010",
                "source_function": "source_fn",
                "kcfi_required": True,
            }
        ],
        "paths": {
            "source_root": "source",
            "stock_module": "stock.ko",
            "ghidra_export": "ghidra",
            "reconstruction_map": "map.json",
        },
        "docker": {"adapter": "generic_driver_audit", "cycles": 2},
        "joern": {"slice": {"mode": "off"}},
    }
    value.update(overrides)
    return value


class HardDriverProtocolTests(unittest.TestCase):
    def test_profiles_form_a_union_of_required_gates(self):
        job = base_job(profiles=["CALLBACK_ABI", "CONCURRENCY_LIFETIME"])
        functions = validate_job(job)

        gates = required_gates(job, functions)

        self.assertIn("JOERN_SCOPED", gates)
        self.assertIn("DOCKER_REPRODUCIBLE", gates)
        self.assertIn("KCFI", gates)
        self.assertIn("LOCK_LIFETIME", gates)
        self.assertIn("JOERN_SLICE", gates)

    def test_hardware_profile_cannot_omit_runtime_and_bus_ledger(self):
        job = base_job(profiles=["HARDWARE_BUS"])
        functions = validate_job(job)

        gates = required_gates(job, functions)

        self.assertIn("REGISTER_BUS_LEDGER", gates)
        self.assertIn("DT_CONTEXT", gates)
        self.assertIn("HARDWARE_RUNTIME", gates)

    def test_duplicate_stock_identity_is_rejected(self):
        function = base_job()["functions"][0]
        job = base_job(functions=[function, dict(function)])

        with self.assertRaisesRegex(ValueError, "duplicate function identity"):
            validate_job(job)

    def test_function_selection_accepts_source_or_exact_stock_identity(self):
        job = base_job(
            functions=[
                {
                    "stock_function": "stock_a",
                    "stock_entry": "00100010",
                    "source_function": "source_a",
                },
                {
                    "stock_function": "stock_b",
                    "stock_entry": "00100020",
                    "source_function": "source_b",
                },
            ]
        )
        functions = validate_job(job)

        self.assertEqual(
            [item["source_function"] for item in select_functions(functions, ["source_b"])],
            ["source_b"],
        )
        self.assertEqual(
            [item["source_function"] for item in select_functions(functions, ["stock_a@100010"])],
            ["source_a"],
        )

    def test_function_selection_rejects_unknown_selector(self):
        with self.assertRaisesRegex(ValueError, "absent from job"):
            select_functions(validate_job(base_job()), ["missing_fn"])

    def test_run_command_records_and_terminates_timeout(self):
        with tempfile.TemporaryDirectory() as directory:
            result = run_command(
                "timeout",
                [sys.executable, "-c", "import time; time.sleep(2)"],
                output_dir=Path(directory),
                timeout=1,
            )

        self.assertTrue(result["timed_out"])
        self.assertEqual(result["returncode"], 124)

    def test_relative_path_cannot_escape_repository(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory).resolve()

            with self.assertRaisesRegex(ValueError, "escapes repository root"):
                resolve_repo_path(root, "../outside", label="test")

    def test_map_binding_requires_exact_name_and_entry(self):
        functions = validate_job(base_job())
        payload = {
            "mappings": [
                {
                    "stock_function": "stock_fn",
                    "stock_entry": "00100010",
                    "source_file": "source.c",
                    "source_function": "source_fn",
                    "status": "reviewed",
                },
                {
                    "stock_function": "stock_fn",
                    "stock_entry": "00100020",
                    "source_file": "wrong.c",
                    "source_function": "wrong_fn",
                },
            ]
        }

        bindings, blockers = find_map_bindings(payload, functions)

        self.assertEqual(blockers, [])
        self.assertEqual(len(bindings), 1)
        self.assertEqual(bindings[0]["source_function"], "source_fn")

    def test_plan_contains_both_joern_and_docker_without_promotion(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory).resolve()
            (root / "source").mkdir()
            (root / "ghidra").mkdir()
            functions = validate_job(base_job())
            plan = build_command_plan(
                job=base_job(),
                functions=functions,
                repo_root=root,
                output_dir=root / "output",
                python=Path("python"),
                engineering_root=root / "engineering",
                source_root=root / "source",
                stock_module=root / "stock.ko",
                ghidra_export=root / "ghidra",
                reconstruction_map=root / "map.json",
                joern_home=root / "joern",
                java_home=root / "java",
            )

        self.assertIn("run_joern_reconstruction_gate.py", " ".join(plan["joern"]))
        self.assertIn("validate_reconstructed_drivers.py", " ".join(plan["docker"]))
        self.assertNotIn("--promote-fresh", plan["docker"])

    def test_pcode_fallback_requires_an_audit_reason(self):
        job = base_job(
            ghidra={"allow_pcode_authoritative_decompiler_fallback": True}
        )
        with self.assertRaisesRegex(ValueError, "fallback_reason is required"):
            validate_job(job)

    def test_return_propagation_fallback_requires_an_audit_reason(self):
        job = base_job(
            ghidra={"allow_return_propagation_fallback": True}
        )
        with self.assertRaisesRegex(ValueError, "fallback_reason is required"):
            validate_job(job)


if __name__ == "__main__":
    unittest.main()
