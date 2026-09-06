import hashlib
import json
from pathlib import Path

import pytest

from workspace_tools.reconstruction_pipeline.generate_llm_task_packets import (
    BOUNDED_ROUTE,
    build_packet,
    safe_repo_path,
    selected_tasks,
)


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def test_selected_tasks_only_returns_bounded_candidates() -> None:
    plan = {
        "tasks": [
            {"task_id": "bounded", "routing": {"route": BOUNDED_ROUTE}},
            {"task_id": "guided", "routing": {"route": "GUIDED_LLM_WITH_SENIOR_REVIEW"}},
        ]
    }
    assert [item["task_id"] for item in selected_tasks(plan, None)] == ["bounded"]


def test_selected_tasks_rejects_non_bounded_request() -> None:
    plan = {"tasks": [{"task_id": "guided", "routing": {"route": "GUIDED"}}]}
    with pytest.raises(ValueError, match="not a bounded candidate"):
        selected_tasks(plan, ["guided"])


def test_safe_repo_path_rejects_escape(tmp_path: Path) -> None:
    with pytest.raises(ValueError, match="escapes"):
        safe_repo_path(tmp_path, "../outside.txt")


def test_build_packet_contains_only_relative_hashable_evidence(tmp_path: Path) -> None:
    (tmp_path / "kernel_development/drivers/reconstructed/mini").mkdir(parents=True)
    (tmp_path / "reverse_engineering/stock").mkdir(parents=True)
    source = tmp_path / "kernel_development/drivers/reconstructed/mini/mini.c"
    source.write_text("int mini(void) { return 1; }\n", encoding="utf-8")
    evidence = {}
    for role, name in (("decompiled_c", "decompiled.c"), ("pcode", "pcode.jsonl"), ("assembly", "assembly.asm")):
        path = tmp_path / "reverse_engineering/stock" / name
        path.write_text(f"{role}\n", encoding="utf-8")
        evidence[role] = {"path": f"reverse_engineering/stock/{name}"}
    plan_path = tmp_path / "plan.json"
    task = {
        "task_id": "001_mini",
        "stock_function": "mini",
        "stock_entry": "00000000",
        "stock_body_bytes": 16,
        "status": "READY_FOR_IMPLEMENTATION",
        "source": {"file": "mini.c"},
        "evidence_capsule": evidence,
        "routing": {
            "route": BOUNDED_ROUTE,
            "minimum_implementer_level": "L2_BOUNDED_CODE",
            "minimum_reviewer_level": "L3_ADVANCED",
        },
        "risk": {"band": "LOW", "score": 0},
        "observed_metrics": {
            "direct_call_count": 0,
            "pcode": {"indirect_calls": 0, "conditional_branches": 0, "loads": 0, "stores": 0},
            "decompiled": {"return_count": 1, "offset_candidates": []},
        },
    }
    plan_path.write_text("{}\n", encoding="utf-8")
    output = tmp_path / "packets"
    manifest = build_packet(tmp_path, plan_path, task, output, driver="mini")
    packet = output / "001_mini"
    saved = json.loads((packet / "TASK.json").read_text(encoding="utf-8"))
    assert saved["plan_sha256"] == sha256(plan_path)
    assert saved["candidate"]["sha256"] == sha256(packet / "candidate/mini.c")
    assert all("\\" not in item["packet_path"] for item in saved["evidence"])
    assert "C:" not in (packet / "PROMPT.md").read_text(encoding="utf-8")
    template = json.loads((packet / "SUBMISSION_TEMPLATE.json").read_text(encoding="utf-8"))
    assert template["task_id"] == "001_mini"
    assert set(template["microproofs"]) == {
        "MP0_IDENTITY",
        "MP1_CALL_SIGNATURE",
        "MP2_STATE_EFFECT_LEDGER",
        "MP3_CONTROL_ERROR_MATRIX",
        "MP4_TEST_ORACLE_DRAFT",
        "MP7_CANDIDATE_PATCH",
        "MP8_INDEPENDENT_REVIEW",
    }
    assert manifest["task_id"] == "001_mini"
