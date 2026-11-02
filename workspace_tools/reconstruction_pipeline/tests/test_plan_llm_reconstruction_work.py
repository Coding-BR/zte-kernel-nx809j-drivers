from __future__ import annotations

import json
from pathlib import Path
import tempfile
import unittest

from workspace_tools.reconstruction_pipeline.plan_llm_reconstruction_work import (
    api_families,
    assess_task,
    check_rendered_outputs,
    dependency_waves,
    pcode_metrics,
    rendered_json,
    render_markdown,
)


def task(**overrides):
    value = {
        "id": "001_helper",
        "stock_function": "helper",
        "stock_entry": "00100000",
        "stock_body_bytes": 120,
        "category": "core_logic",
        "source_file": "helper.c",
        "source_function": "helper",
        "status": "READY_FOR_IMPLEMENTATION",
    }
    value.update(overrides)
    return value


def metrics(**overrides):
    value = {
        "pcode": {
            "record_count": 80,
            "op_counts": {"COPY": 20},
            "branch_ops": 2,
            "conditional_branches": 2,
            "indirect_calls": 0,
            "indirect_branches": 0,
            "loads": 2,
            "stores": 1,
        },
        "decompiled": {
            "line_count": 20,
            "case_count": 0,
            "loop_keyword_count": 0,
            "return_count": 2,
            "offset_candidates": [],
            "distinct_offset_count": 0,
        },
        "assembly": {
            "instruction_count": 30,
            "atomic_or_barrier_mnemonics": {},
        },
        "direct_call_count": 1,
        "direct_call_targets": ["helper_call"],
        "external_call_count": 0,
        "api_families": {},
    }
    value.update(overrides)
    return value


class PlanLlmReconstructionWorkTests(unittest.TestCase):
    def test_small_leaf_is_bounded_but_still_requires_review(self):
        result = assess_task(task(), metrics())

        self.assertEqual(
            result["routing"]["route"],
            "BOUNDED_LLM_WITH_INDEPENDENT_REVIEW",
        )
        self.assertTrue(result["routing"]["lower_capability_c_edit_allowed"])
        self.assertEqual(result["routing"]["minimum_reviewer_level"], "L3_ADVANCED")

    def test_indirect_call_forces_senior_decomposition(self):
        observed = metrics()
        observed["pcode"] = {**observed["pcode"], "indirect_calls": 1}

        result = assess_task(task(), observed)

        self.assertEqual(result["routing"]["route"], "SENIOR_DECOMPOSITION_REQUIRED")
        self.assertIn("indirect_control_flow", result["routing"]["hard_reasons"])
        self.assertFalse(result["routing"]["lower_capability_c_edit_allowed"])

    def test_hardware_api_forces_senior_decomposition(self):
        observed = metrics(api_families={"hardware_io": ["spi_sync"]})

        result = assess_task(task(), observed)

        self.assertEqual(result["routing"]["route"], "SENIOR_DECOMPOSITION_REQUIRED")
        self.assertIn("MP6_REGISTER_OR_BUS_LEDGER", result["routing"]["work_units"])

    def test_embedded_usercopy_and_mmap_names_are_not_low_risk(self):
        usercopy = api_families("_inline_copy_from_user <EXTERNAL>::__arch_copy_from_user")
        mapping = api_families("syna_mmap <EXTERNAL>::remap_pfn_range")

        self.assertIn("raw_user_memory", usercopy)
        self.assertIn("memory_mapping", mapping)
        mmap_result = assess_task(task(stock_function="syna_mmap"), metrics(api_families=mapping))
        self.assertEqual(mmap_result["routing"]["route"], "SENIOR_DECOMPOSITION_REQUIRED")

    def test_notifier_registration_is_senior_work(self):
        families = api_families("<EXTERNAL>::panel_event_notifier_register")

        self.assertIn("callback_registration", families)
        result = assess_task(task(), metrics(api_families=families))
        self.assertEqual(result["routing"]["route"], "SENIOR_DECOMPOSITION_REQUIRED")

    def test_underscored_function_names_expose_hardware_and_flash_risk(self):
        families = api_families("syna_spi_probe syna_tcm_update_flash_block")

        self.assertIn("hardware_io", families)
        self.assertIn("firmware_flash", families)

    def test_binding_category_forces_senior_decomposition(self):
        result = assess_task(task(category="binding"), metrics())

        self.assertEqual(result["routing"]["route"], "SENIOR_DECOMPOSITION_REQUIRED")
        self.assertIn("category:binding", result["routing"]["hard_reasons"])

    def test_many_structure_offsets_disable_bounded_c_edit(self):
        observed = metrics()
        observed["decompiled"] = {
            **observed["decompiled"],
            "offset_candidates": ["0x10", "0x20", "0x30", "0x40", "0x50"],
            "distinct_offset_count": 5,
        }

        result = assess_task(task(), observed)

        self.assertFalse(result["routing"]["lower_capability_c_edit_allowed"])
        self.assertEqual(result["routing"]["minimum_implementer_level"], "L3_ADVANCED")
        self.assertIn("offset_surface", [item["id"] for item in result["risk"]["factors"]])

    def test_dependency_waves_put_callees_before_callers(self):
        result = dependency_waves({"caller": {"middle"}, "middle": {"leaf"}, "leaf": set()})

        self.assertEqual(result["leaf"]["wave"], 0)
        self.assertEqual(result["middle"]["wave"], 1)
        self.assertEqual(result["caller"]["wave"], 2)

    def test_dependency_cycle_is_one_review_unit(self):
        result = dependency_waves({"a": {"b"}, "b": {"a"}, "caller": {"a"}})

        self.assertTrue(result["a"]["dependency_cycle"])
        self.assertEqual(result["a"]["scc_id"], result["b"]["scc_id"])
        self.assertEqual(result["a"]["wave"], 0)
        self.assertEqual(result["caller"]["wave"], 1)

    def test_pcode_metrics_count_indirect_control_flow(self):
        records = [
            {"pcode": "(register, 0x0, 8) COPY (const, 0x1, 8)"},
            {"pcode": " ---  CBRANCH (ram, 0x10, 8) , (register, 0x0, 1)"},
            {"pcode": " ---  CALLIND (register, 0x8, 8)"},
            {"pcode": " ---  STORE (const, 0x1, 8) , (ram, 0x20, 8)"},
        ]
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "function.jsonl"
            path.write_text(
                "\n".join(json.dumps(record) for record in records) + "\n",
                encoding="utf-8",
            )

            result = pcode_metrics(path)

        self.assertEqual(result["record_count"], 4)
        self.assertEqual(result["conditional_branches"], 1)
        self.assertEqual(result["indirect_calls"], 1)
        self.assertEqual(result["stores"], 1)

    def test_check_mode_detects_stale_outputs(self):
        plan = {
            "summary": {"task_count": 0, "bounded_c_edit_candidates": 0, "dependency_waves": 0, "dependency_cycles": 0, "routes": {}},
            "driver": "test",
            "tasks": [],
            "recommended_sequence": [],
            "inputs": {},
        }
        with tempfile.TemporaryDirectory() as directory:
            output = Path(directory) / "plan.json"
            markdown = Path(directory) / "plan.md"
            output.write_text(rendered_json(plan), encoding="utf-8")
            markdown.write_text(render_markdown(plan), encoding="utf-8")
            self.assertEqual(check_rendered_outputs(plan, output, markdown), [])
            output.write_text("{}\n", encoding="utf-8")
            failures = check_rendered_outputs(plan, output, markdown)

        self.assertEqual(len(failures), 1)
        self.assertIn("stale JSON plan", failures[0])


if __name__ == "__main__":
    unittest.main()
