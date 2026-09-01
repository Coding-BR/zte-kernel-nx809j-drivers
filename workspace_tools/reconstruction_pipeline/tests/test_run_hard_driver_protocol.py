from __future__ import annotations

import sys
import tempfile
from pathlib import Path
import unittest
from unittest.mock import patch

from workspace_tools.reconstruction_pipeline.run_hard_driver_protocol import (
    assembly_only_ghidra_exemption,
    build_command_plan,
    execute_post_candidate,
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
        self.assertIn("--target-kernel-manifest", plan["docker"])
        self.assertIn(str(root), plan["docker"])
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

    def test_data_field_slice_fallback_requires_an_audit_reason(self):
        job = base_job(
            ghidra={"allow_ghidra_data_field_slice_fallback": True}
        )
        with self.assertRaisesRegex(ValueError, "fallback_reason is required"):
            validate_job(job)

    def test_shared_data_binding_normalization_is_forwarded_to_ghidra(self):
        job = base_job(
            ghidra={"allow_shared_data_binding_normalization": True}
        )
        job["paths"]["candidate_ghidra_export"] = "candidate-ghidra"
        functions = validate_job(job)
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            with patch(
                "workspace_tools.reconstruction_pipeline.run_hard_driver_protocol.run_command",
                return_value={"returncode": 0},
            ) as run_mock, patch(
                "workspace_tools.reconstruction_pipeline.run_hard_driver_protocol.report_passed",
                return_value=True,
            ):
                _, gates = execute_post_candidate(
                    job=job,
                    functions=functions,
                    repo_root=root,
                    output_dir=root / "output",
                    python=Path("python"),
                    stock_module=root / "stock.ko",
                    candidate_module=root / "candidate.ko",
                    stock_ghidra_export=root / "stock-ghidra",
                    candidate_ghidra_export=root / "candidate-ghidra",
                    docker_config={},
                    command_timeout=1,
                )

        ghidra_calls = [
            call.args[1]
            for call in run_mock.call_args_list
            if call.args[0] == "ghidra_semantics"
        ]
        self.assertEqual(len(ghidra_calls), 1)
        self.assertIn("--allow-shared-data-binding-normalization", ghidra_calls[0])

    def test_direct_call_only_uses_explicit_kcfi_decision_path(self):
        job = base_job(kcfi={"direct_call_only": ["stock_fn"]})
        functions = validate_job(job)
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            with patch(
                "workspace_tools.reconstruction_pipeline.run_hard_driver_protocol.run_command",
                return_value={"returncode": 0},
            ) as run_mock, patch(
                "workspace_tools.reconstruction_pipeline.run_hard_driver_protocol.report_passed",
                return_value=True,
            ):
                _, gates = execute_post_candidate(
                    job=job,
                    functions=functions,
                    repo_root=root,
                    output_dir=root / "output",
                    python=Path("python"),
                    stock_module=root / "stock.ko",
                    candidate_module=root / "candidate.ko",
                    stock_ghidra_export=root / "stock-ghidra",
                    candidate_ghidra_export=root / "candidate-ghidra",
                    docker_config={},
                    command_timeout=1,
                )

        self.assertEqual(gates["KCFI"], "PASS")
        command_names = [call.args[0] for call in run_mock.call_args_list]
        self.assertIn("kcfi_stock", command_names)
        self.assertIn("kcfi_candidate", command_names)
        self.assertIn("kcfi_direct_call_f000", command_names)
        self.assertNotIn("kcfi_compare", command_names)

    def test_assembly_only_ghidra_exemption_requires_fresh_body_bytes(self):
        with tempfile.TemporaryDirectory() as directory:
            report = Path(directory) / "semantic.json"
            report.write_text(
                '{"identity_failures": [], "results": [{"checks": {"body_bytes": true}}]}',
                encoding="utf-8",
            )
            functions = [{"source_function": "island", "assembly_only": True}]
            exemption = assembly_only_ghidra_exemption(functions, report)

        self.assertIsNotNone(exemption)
        self.assertEqual(exemption["kind"], "ASSEMBLY_ONLY_GHIDRA_SEMANTIC_EXEMPTION")

    def test_assembly_only_ghidra_exemption_rejects_mixed_scope(self):
        with tempfile.TemporaryDirectory() as directory:
            report = Path(directory) / "semantic.json"
            report.write_text(
                '{"identity_failures": [], "results": [{"checks": {"body_bytes": true}}]}',
                encoding="utf-8",
            )
            functions = [
                {"source_function": "island", "assembly_only": True},
                {"source_function": "c_fn", "assembly_only": False},
            ]
            exemption = assembly_only_ghidra_exemption(functions, report)

        self.assertIsNone(exemption)


if __name__ == "__main__":
    unittest.main()
