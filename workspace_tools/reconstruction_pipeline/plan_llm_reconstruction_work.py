#!/usr/bin/env python3
"""Route reconstruction work by observed risk, dependencies, and capability."""

from __future__ import annotations

import argparse
from collections import Counter, defaultdict
import hashlib
import json
from pathlib import Path
import re
from typing import Any


SCHEMA_VERSION = "1.0"
POLICY_VERSION = "1.0"

PCODE_OPS = {
    "BOOL_AND", "BOOL_NEGATE", "BOOL_OR", "BOOL_XOR", "BRANCH",
    "BRANCHIND", "CALL", "CALLIND", "CALLOTHER", "CAST", "CBRANCH",
    "COPY", "CPOOLREF", "FLOAT_ABS", "FLOAT_ADD", "FLOAT_CEIL",
    "FLOAT_DIV", "FLOAT_EQUAL", "FLOAT_FLOAT2FLOAT", "FLOAT_FLOOR",
    "FLOAT_INT2FLOAT", "FLOAT_LESS", "FLOAT_LESSEQUAL", "FLOAT_MULT",
    "FLOAT_NAN", "FLOAT_NEG", "FLOAT_NOTEQUAL", "FLOAT_ROUND",
    "FLOAT_SQRT", "FLOAT_SUB", "FLOAT_TRUNC", "INDIRECT", "INSERT",
    "INT_2COMP", "INT_ADD", "INT_AND", "INT_CARRY", "INT_DIV",
    "INT_EQUAL", "INT_LEFT", "INT_LESS", "INT_LESSEQUAL", "INT_MULT",
    "INT_NEGATE", "INT_NOTEQUAL", "INT_OR", "INT_REM", "INT_RIGHT",
    "INT_SBORROW", "INT_SCARRY", "INT_SDIV", "INT_SEXT", "INT_SLESS",
    "INT_SLESSEQUAL", "INT_SREM", "INT_SUB", "INT_XOR", "INT_ZEXT",
    "LOAD", "MULTIEQUAL", "NEW", "PIECE", "POPCOUNT", "PTRADD",
    "PTRSUB", "RETURN", "SEGMENTOP", "STORE", "SUBPIECE", "UNIMPLEMENTED",
}
PCODE_OP_RE = re.compile(
    r"\b(?:" + "|".join(sorted(PCODE_OPS, key=len, reverse=True)) + r")\b"
)
INSTRUCTION_RE = re.compile(
    r"^\s*[0-9a-fA-F]+:\s+(?:[0-9a-fA-F]{2,8}\s+)+(?P<mnemonic>[a-zA-Z0-9_.]+)"
)
ATOMIC_OR_BARRIER = {
    "cas", "casa", "casal", "casl", "caspa", "caspal", "caspl",
    "dmb", "dsb", "isb", "ldadd", "ldadda", "ldaddal", "ldaddl",
    "ldar", "ldaxr", "ldxr", "stlr", "stlxr", "stxr", "swp",
    "swpa", "swpal", "swpl",
}

API_FAMILY_PATTERNS = {
    "synchronization": re.compile(
        r"(?<![A-Za-z0-9])(?:mutex_\w+|spin_\w+|rwsem\w*|down_(?:read|write|interruptible)"
        r"|up_(?:read|write)|wait_event\w*|complete(?:_all)?|completion\w*"
        r"|atomic\w*|refcount\w*|rcu_\w+)(?![A-Za-z0-9])",
        re.IGNORECASE,
    ),
    "user_boundary": re.compile(
        r"(?<![A-Za-z0-9])(?:(?:__arch_)?copy_(?:from|to)_user|clear_user|get_user|put_user|kstrto\w+"
        r"|simple_(?:read|write)_from_buffer|seq_\w+|sysfs_\w+|proc_\w+"
        r"|compat_ioctl|unlocked_ioctl|ioctl)(?![A-Za-z0-9])",
        re.IGNORECASE,
    ),
    "raw_user_memory": re.compile(
        r"(?<![A-Za-z0-9])(?:(?:__arch_)?copy_(?:from|to)_user|clear_user"
        r"|unsafe_(?:get|put)_user|get_user|put_user)(?![A-Za-z0-9])",
        re.IGNORECASE,
    ),
    "memory_mapping": re.compile(
        r"(?<![A-Za-z0-9])(?:mmap|vm_area\w*|remap_pfn_range|vm_insert_page"
        r"|vmf_insert_\w+|pgprot_\w+|virt_to_phys|phys_to_virt"
        r"|pin_user_pages|get_user_pages\w*)(?![A-Za-z0-9])",
        re.IGNORECASE,
    ),
    "callback_registration": re.compile(
        r"(?<![A-Za-z0-9])(?:[a-z0-9_]*notifier_(?:register|unregister)"
        r"|(?:un)?register_[a-z0-9_]*notifier"
        r"|set_[a-z0-9_]*callback|register_[a-z0-9_]*callback)(?![A-Za-z0-9])",
        re.IGNORECASE,
    ),
    "allocation_lifetime": re.compile(
        r"(?<![A-Za-z0-9])(?:(?:devm_|kv|k|v)?(?:malloc|zalloc|calloc|realloc|free)\w*"
        r"|get_device|put_device|kref_\w+)(?![A-Za-z0-9])",
        re.IGNORECASE,
    ),
    "async_irq": re.compile(
        r"(?<![A-Za-z0-9])(?:request_(?:threaded_)?irq|free_irq|enable_irq|disable_irq"
        r"|irq_\w+|queue_(?:delayed_)?work|schedule_(?:delayed_)?work"
        r"|cancel_\w*work\w*|workqueue\w*|timer_\w+|hrtimer_\w+"
        r"|notifier_\w+|register_\w*notifier|unregister_\w*notifier)(?![A-Za-z0-9])",
        re.IGNORECASE,
    ),
    "hardware_io": re.compile(
        r"(?<![A-Za-z0-9])(?:readl|writel|ioread\w*|iowrite\w*|regmap_\w+|spi_\w+"
        r"|i2c_\w+|gpio\w*|gpiod_\w+|regulator_\w+|clk_\w+"
        r"|reset_control_\w+|pinctrl_\w+)(?![A-Za-z0-9])",
        re.IGNORECASE,
    ),
    "firmware_flash": re.compile(
        r"(?<![A-Za-z0-9])(?:request_firmware|release_firmware|firmware\w*|fw_?update\w*"
        r"|reflash\w*|flash\w*|mtp\w*|erase\w*)(?![A-Za-z0-9])",
        re.IGNORECASE,
    ),
    "dma": re.compile(
        r"(?<![A-Za-z0-9])(?:dma_\w+|sg_\w+|scatterlist\w*|iommu_\w+)(?![A-Za-z0-9])",
        re.IGNORECASE,
    ),
    "power_management": re.compile(
        r"(?<![A-Za-z0-9])(?:pm_runtime_\w+|pm_wakeup_\w+|wakeup_\w+|suspend\w*"
        r"|resume\w*|power_\w+)(?![A-Za-z0-9])",
        re.IGNORECASE,
    ),
}

CAPABILITY_LEVELS = {
    "L0_MECHANICAL": "Hash, identity, inventory, and formatting only; no semantic claim.",
    "L1_EVIDENCE": "Bounded evidence extraction with every statement tied to an artifact.",
    "L2_BOUNDED_CODE": "Small isolated C implementation from an approved contract and harness.",
    "L3_ADVANCED": "Cross-artifact reasoning about control flow, ownership, ABI, and tests.",
    "L4_SENIOR": "Architecture, ambiguous semantics, concurrency, hardware, and final review.",
}

MICROPROOF_CATALOG = {
    "MP0_IDENTITY": {
        "minimum_level": "L0_MECHANICAL",
        "may_edit_c": False,
        "output": "Artifact paths, sizes, SHA-256 values, function identity, and mismatch list.",
    },
    "MP1_CALL_SIGNATURE": {
        "minimum_level": "L1_EVIDENCE",
        "may_edit_c": False,
        "output": "Direct/indirect calls, callback sites, prototype constraints, and KCFI questions.",
    },
    "MP2_STATE_EFFECT_LEDGER": {
        "minimum_level": "L1_EVIDENCE",
        "may_edit_c": False,
        "output": "Loads, stores, widths, constants, offsets, order, and source evidence IDs.",
    },
    "MP3_CONTROL_ERROR_MATRIX": {
        "minimum_level": "L1_EVIDENCE",
        "may_edit_c": False,
        "output": "Branch predicates, returns, error paths, cleanup order, and unresolved paths.",
    },
    "MP4_TEST_ORACLE_DRAFT": {
        "minimum_level": "L1_EVIDENCE",
        "may_edit_c": False,
        "output": "Input classes, expected return/state/call effects, failure injection, and gaps.",
    },
    "MP5_LOCK_LIFETIME_CONTRACT": {
        "minimum_level": "L2_BOUNDED_CODE",
        "may_edit_c": False,
        "output": "Owner, lock context, lifetime transitions, unwind order, and contradiction list.",
    },
    "MP6_REGISTER_OR_BUS_LEDGER": {
        "minimum_level": "L3_ADVANCED",
        "may_edit_c": False,
        "output": "Base origin, offset, width, direction, barriers, dependencies, and unknown labels.",
    },
    "MP7_CANDIDATE_PATCH": {
        "minimum_level": "ROUTED_PER_FUNCTION",
        "may_edit_c": True,
        "output": "Restricted patch plus compile, KCFI, Joern, harness, and parity evidence.",
    },
    "MP8_INDEPENDENT_REVIEW": {
        "minimum_level": "ONE_LEVEL_ABOVE_IMPLEMENTER_OR_L4",
        "may_edit_c": False,
        "output": "Independent contradiction review; never reuse implementer conclusions as proof.",
    },
}


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def read_json(path: Path) -> dict[str, Any]:
    value = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(value, dict):
        raise ValueError(f"expected JSON object: {path}")
    return value


def read_jsonl(path: Path) -> list[dict[str, Any]]:
    records: list[dict[str, Any]] = []
    for line_number, line in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
        if not line.strip():
            continue
        value = json.loads(line)
        if not isinstance(value, dict):
            raise ValueError(f"expected JSON object at {path}:{line_number}")
        records.append(value)
    return records


def normalize_entry(value: Any) -> str:
    text = str(value or "").strip().lower()
    return text[2:] if text.startswith("0x") else text


def safe_path(workspace: Path, value: str | Path) -> Path:
    path = Path(value)
    resolved = path.resolve() if path.is_absolute() else (workspace / path).resolve()
    try:
        resolved.relative_to(workspace)
    except ValueError as error:
        raise ValueError(f"path escapes workspace: {resolved}") from error
    return resolved


def relative_path(workspace: Path, path: Path) -> str:
    return path.resolve().relative_to(workspace).as_posix()


def pcode_metrics(path: Path) -> dict[str, Any]:
    counts: Counter[str] = Counter()
    record_count = 0
    for line_number, line in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
        if not line.strip():
            continue
        record = json.loads(line)
        if not isinstance(record, dict) or not isinstance(record.get("pcode"), str):
            raise ValueError(f"invalid P-Code record at {path}:{line_number}")
        record_count += 1
        match = PCODE_OP_RE.search(record["pcode"])
        if match:
            counts[match.group(0)] += 1
    return {
        "record_count": record_count,
        "op_counts": dict(sorted(counts.items())),
        "branch_ops": sum(counts[name] for name in ("BRANCH", "CBRANCH", "BRANCHIND")),
        "conditional_branches": counts["CBRANCH"],
        "indirect_calls": counts["CALLIND"],
        "indirect_branches": counts["BRANCHIND"],
        "loads": counts["LOAD"],
        "stores": counts["STORE"],
    }


def decompiled_metrics(path: Path) -> dict[str, Any]:
    text = path.read_text(encoding="utf-8", errors="strict")
    offset_candidates = sorted({
        match.group(1).lower()
        for match in re.finditer(r"(?:\+\s*|\[\s*)(0x[0-9a-fA-F]+|[0-9]+)", text)
    })
    return {
        "line_count": len(text.splitlines()),
        "case_count": len(re.findall(r"(?m)^\s*case\s+", text)),
        "loop_keyword_count": len(re.findall(r"\b(?:for|while|do)\b", text)),
        "return_count": len(re.findall(r"\breturn\b", text)),
        "offset_candidates": offset_candidates,
        "distinct_offset_count": len(offset_candidates),
        "text": text,
    }


def assembly_metrics(path: Path) -> dict[str, Any]:
    mnemonics: Counter[str] = Counter()
    for line in path.read_text(encoding="utf-8", errors="strict").splitlines():
        match = INSTRUCTION_RE.match(line)
        if match:
            mnemonics[match.group("mnemonic").lower()] += 1
    sensitive = {
        name: count for name, count in sorted(mnemonics.items())
        if name in ATOMIC_OR_BARRIER or name.startswith(("cas", "ldadd", "swp"))
    }
    return {
        "instruction_count": sum(mnemonics.values()),
        "atomic_or_barrier_mnemonics": sensitive,
    }


def api_families(corpus: str) -> dict[str, list[str]]:
    observed: dict[str, list[str]] = {}
    for family, pattern in API_FAMILY_PATTERNS.items():
        matches = sorted({match.group(0).lower() for match in pattern.finditer(corpus)})
        if matches:
            observed[family] = matches[:24]
    return observed


def _size_points(body_bytes: int) -> int:
    if body_bytes <= 128:
        return 0
    if body_bytes <= 256:
        return 4
    if body_bytes <= 512:
        return 8
    if body_bytes <= 1024:
        return 14
    if body_bytes <= 2048:
        return 22
    if body_bytes <= 4096:
        return 32
    return 42


def assess_task(task: dict[str, Any], metrics: dict[str, Any]) -> dict[str, Any]:
    factors: list[dict[str, Any]] = []

    def add(identifier: str, points: int, evidence: Any) -> None:
        if points:
            factors.append({"id": identifier, "points": points, "evidence": evidence})

    body_bytes = int(task.get("stock_body_bytes") or 0)
    pcode = metrics["pcode"]
    decompiled = metrics["decompiled"]
    assembly = metrics["assembly"]
    families = metrics["api_families"]
    direct_calls = int(metrics["direct_call_count"])
    category = str(task.get("category") or "")

    add("body_size", _size_points(body_bytes), body_bytes)
    add("pcode_volume", 8 if pcode["record_count"] > 1500 else 4 if pcode["record_count"] > 500 else 0, pcode["record_count"])
    add("conditional_branches", 14 if pcode["conditional_branches"] > 20 else 8 if pcode["conditional_branches"] > 8 else 4 if pcode["conditional_branches"] > 3 else 0, pcode["conditional_branches"])
    add("direct_calls", 14 if direct_calls > 16 else 8 if direct_calls > 8 else 4 if direct_calls > 3 else 0, direct_calls)
    add("indirect_calls", 18 if pcode["indirect_calls"] else 0, pcode["indirect_calls"])
    add("indirect_branches", 20 if pcode["indirect_branches"] else 0, pcode["indirect_branches"])
    add("dispatcher_cases", 12 if decompiled["case_count"] >= 12 else 6 if decompiled["case_count"] >= 4 else 0, decompiled["case_count"])
    add("offset_surface", 20 if decompiled["distinct_offset_count"] > 20 else 14 if decompiled["distinct_offset_count"] > 10 else 8 if decompiled["distinct_offset_count"] > 4 else 0, decompiled["offset_candidates"])
    add("atomic_or_barrier", 14 if assembly["atomic_or_barrier_mnemonics"] else 0, assembly["atomic_or_barrier_mnemonics"])

    family_points = {
        "synchronization": 10,
        "user_boundary": 6,
        "raw_user_memory": 16,
        "memory_mapping": 24,
        "callback_registration": 18,
        "allocation_lifetime": 12,
        "async_irq": 18,
        "hardware_io": 22,
        "firmware_flash": 16,
        "dma": 20,
        "power_management": 14,
    }
    for family in sorted(families):
        add(f"api_family:{family}", family_points[family], families[family])

    category_points = {
        "lifecycle": 16,
        "binding": 14,
        "async_or_irq": 16,
        "user_abi": 4,
    }
    add(f"category:{category}", category_points.get(category, 0), category)

    score = min(100, sum(item["points"] for item in factors))
    if score < 20:
        band = "LOW"
    elif score < 40:
        band = "MODERATE"
    elif score < 60:
        band = "HIGH"
    elif score < 80:
        band = "VERY_HIGH"
    else:
        band = "CRITICAL"

    source_mapped = bool(task.get("source_file") and task.get("source_function"))
    hard_reasons: list[str] = []
    if pcode["indirect_calls"] or pcode["indirect_branches"]:
        hard_reasons.append("indirect_control_flow")
    for family in ("async_irq", "hardware_io", "dma", "memory_mapping", "callback_registration"):
        if family in families:
            hard_reasons.append(family)
    if category in {"binding", "lifecycle", "async_or_irq"}:
        hard_reasons.append(f"category:{category}")
    if body_bytes > 2048:
        hard_reasons.append("body_over_2048_bytes")
    if decompiled["case_count"] >= 12:
        hard_reasons.append("large_dispatcher")

    sensitive_for_small = {
        "synchronization", "allocation_lifetime", "async_irq", "hardware_io",
        "firmware_flash", "dma", "power_management", "raw_user_memory",
        "memory_mapping", "callback_registration",
    }
    small_edit = (
        source_mapped
        and body_bytes <= 512
        and score < 25
        and direct_calls <= 6
        and pcode["conditional_branches"] <= 8
        and decompiled["distinct_offset_count"] <= 4
        and not hard_reasons
        and not sensitive_for_small.intersection(families)
    )

    status = str(task.get("status") or "")
    if status == "PASS":
        route = "NO_ACTION_ALREADY_ATTESTED"
        implementer = "NONE"
        reviewer = "NONE"
    elif not source_mapped:
        route = "EVIDENCE_ONLY_UNTIL_SOURCE_MAP"
        implementer = "L1_EVIDENCE"
        reviewer = "L3_ADVANCED"
    elif hard_reasons or score >= 70:
        route = "SENIOR_DECOMPOSITION_REQUIRED"
        implementer = "L4_SENIOR"
        reviewer = "INDEPENDENT_L4_SENIOR"
    elif score >= 40 or {"synchronization", "allocation_lifetime", "firmware_flash", "power_management", "raw_user_memory"}.intersection(families):
        route = "ADVANCED_LLM_WITH_SENIOR_REVIEW"
        implementer = "L3_ADVANCED"
        reviewer = "L4_SENIOR"
    elif small_edit:
        route = "BOUNDED_LLM_WITH_INDEPENDENT_REVIEW"
        implementer = "L2_BOUNDED_CODE"
        reviewer = "L3_ADVANCED"
    else:
        route = "GUIDED_LLM_WITH_SENIOR_REVIEW"
        implementer = "L3_ADVANCED"
        reviewer = "L4_SENIOR"

    microproofs = [
        "MP0_IDENTITY", "MP1_CALL_SIGNATURE", "MP2_STATE_EFFECT_LEDGER",
        "MP3_CONTROL_ERROR_MATRIX", "MP4_TEST_ORACLE_DRAFT",
    ]
    if "synchronization" in families or "allocation_lifetime" in families:
        microproofs.append("MP5_LOCK_LIFETIME_CONTRACT")
    if {"hardware_io", "dma"}.intersection(families):
        microproofs.append("MP6_REGISTER_OR_BUS_LEDGER")
    if source_mapped and status != "PASS":
        microproofs.append("MP7_CANDIDATE_PATCH")
    if status != "PASS":
        microproofs.append("MP8_INDEPENDENT_REVIEW")

    return {
        "risk": {"score": score, "band": band, "factors": factors},
        "routing": {
            "route": route,
            "minimum_implementer_level": implementer,
            "minimum_reviewer_level": reviewer,
            "lower_capability_c_edit_allowed": small_edit,
            "hard_reasons": sorted(set(hard_reasons)),
            "delegable_without_c_edit": [item for item in microproofs if item != "MP7_CANDIDATE_PATCH"],
            "work_units": microproofs,
        },
    }


def dependency_waves(graph: dict[str, set[str]]) -> dict[str, dict[str, Any]]:
    index = 0
    stack: list[str] = []
    on_stack: set[str] = set()
    indices: dict[str, int] = {}
    lowlinks: dict[str, int] = {}
    raw_components: list[tuple[str, ...]] = []

    def strong_connect(node: str) -> None:
        nonlocal index
        indices[node] = index
        lowlinks[node] = index
        index += 1
        stack.append(node)
        on_stack.add(node)
        for dependency in sorted(graph.get(node, set())):
            if dependency not in indices:
                strong_connect(dependency)
                lowlinks[node] = min(lowlinks[node], lowlinks[dependency])
            elif dependency in on_stack:
                lowlinks[node] = min(lowlinks[node], indices[dependency])
        if lowlinks[node] == indices[node]:
            component: list[str] = []
            while True:
                member = stack.pop()
                on_stack.remove(member)
                component.append(member)
                if member == node:
                    break
            raw_components.append(tuple(sorted(component)))

    for node in sorted(graph):
        if node not in indices:
            strong_connect(node)

    components = sorted(raw_components)
    component_by_node = {
        node: component_index
        for component_index, members in enumerate(components)
        for node in members
    }
    component_dependencies: dict[int, set[int]] = {index: set() for index in range(len(components))}
    for node, dependencies in graph.items():
        owner = component_by_node[node]
        for dependency in dependencies:
            target = component_by_node[dependency]
            if target != owner:
                component_dependencies[owner].add(target)

    memo: dict[int, int] = {}

    def component_wave(component: int) -> int:
        if component not in memo:
            dependencies = component_dependencies[component]
            memo[component] = 0 if not dependencies else 1 + max(component_wave(item) for item in dependencies)
        return memo[component]

    result: dict[str, dict[str, Any]] = {}
    for component, members in enumerate(components):
        cycle = len(members) > 1 or any(member in graph.get(member, set()) for member in members)
        for node in members:
            result[node] = {
                "wave": component_wave(component),
                "scc_id": f"SCC_{component:04d}",
                "scc_members": list(members),
                "dependency_cycle": cycle,
            }
    return result


def _validate_index_artifact(workspace: Path, record: dict[str, Any], key: str) -> dict[str, Any]:
    value = record.get(key)
    if not isinstance(value, dict) or not isinstance(value.get("path"), str):
        raise ValueError(f"function index has no {key} artifact")
    path = safe_path(workspace, value["path"])
    if not path.is_file():
        raise FileNotFoundError(path)
    actual = sha256_file(path)
    if value.get("sha256") != actual:
        raise ValueError(f"stale {key} hash for {record.get('function_id')}: {path}")
    return {"path": relative_path(workspace, path), "sha256": actual, "size": path.stat().st_size}


def build_plan(
    workspace: Path,
    manifest_path: Path,
    function_index_path: Path,
    calls_path: Path,
    *,
    include_pass: bool = False,
) -> dict[str, Any]:
    manifest = read_json(manifest_path)
    all_tasks = manifest.get("tasks")
    if not isinstance(all_tasks, list):
        raise ValueError("microtask manifest has no tasks array")
    function_records = read_jsonl(function_index_path)
    calls = read_jsonl(calls_path)

    index_by_entry = {normalize_entry(item.get("entry")): item for item in function_records}
    task_by_entry = {normalize_entry(item.get("stock_entry")): item for item in all_tasks if isinstance(item, dict)}
    calls_by_entry: dict[str, list[dict[str, Any]]] = defaultdict(list)
    for call in calls:
        calls_by_entry[normalize_entry(call.get("caller_entry"))].append(call)

    selected = [
        task for task in all_tasks
        if isinstance(task, dict) and (include_pass or task.get("status") != "PASS")
    ]
    selected_ids = {str(task["id"]) for task in selected}
    graph: dict[str, set[str]] = {str(task["id"]): set() for task in selected}
    satisfied_dependencies: dict[str, set[str]] = defaultdict(set)

    for task in selected:
        task_id = str(task["id"])
        for call in calls_by_entry.get(normalize_entry(task.get("stock_entry")), []):
            target_task = task_by_entry.get(normalize_entry(call.get("target_address")))
            if not target_task:
                continue
            target_id = str(target_task["id"])
            if target_id in selected_ids and target_task.get("status") != "PASS":
                graph[task_id].add(target_id)
            elif target_task.get("status") == "PASS":
                satisfied_dependencies[task_id].add(target_id)

    waves = dependency_waves(graph)
    task_results: list[dict[str, Any]] = []
    for task in selected:
        task_id = str(task["id"])
        entry = normalize_entry(task.get("stock_entry"))
        index_record = index_by_entry.get(entry)
        if not index_record:
            raise ValueError(f"function index missing {task.get('stock_function')}@{entry}")
        if index_record.get("name") != task.get("stock_function"):
            raise ValueError(f"function identity mismatch at {entry}")

        pseudocode = _validate_index_artifact(workspace, index_record, "decompiled_c")
        pcode = _validate_index_artifact(workspace, index_record, "pcode")
        assembly = _validate_index_artifact(workspace, index_record, "assembly")
        pcode_observed = pcode_metrics(safe_path(workspace, pcode["path"]))
        decompiled_observed = decompiled_metrics(safe_path(workspace, pseudocode["path"]))
        assembly_observed = assembly_metrics(safe_path(workspace, assembly["path"]))
        direct_calls = calls_by_entry.get(entry, [])
        targets = sorted({str(item.get("target") or "") for item in direct_calls})
        corpus = "\n".join(
            [str(task.get("stock_function") or ""), str(task.get("category") or ""), *targets, decompiled_observed.pop("text")]
        )
        metrics = {
            "pcode": pcode_observed,
            "decompiled": decompiled_observed,
            "assembly": assembly_observed,
            "direct_call_count": len(direct_calls),
            "direct_call_targets": targets,
            "external_call_count": sum(str(item.get("target") or "").startswith("<EXTERNAL>::") for item in direct_calls),
            "api_families": api_families(corpus),
        }
        assessment = assess_task(task, metrics)
        task_results.append({
            "task_id": task_id,
            "function_id": f"{task.get('stock_function')}@{task.get('stock_entry')}",
            "stock_function": task.get("stock_function"),
            "stock_entry": task.get("stock_entry"),
            "status": task.get("status"),
            "category": task.get("category"),
            "stock_body_bytes": task.get("stock_body_bytes"),
            "source": {
                "file": task.get("source_file"),
                "function": task.get("source_function"),
            },
            "evidence_capsule": {
                "decompiled_c": pseudocode,
                "pcode": {**pcode, "record_count": pcode_observed["record_count"]},
                "assembly": assembly,
            },
            "observed_metrics": metrics,
            "dependencies": {
                "pending_callees": sorted(graph[task_id]),
                "attested_callees": sorted(satisfied_dependencies[task_id]),
                **waves[task_id],
            },
            **assessment,
        })

    route_counts = Counter(item["routing"]["route"] for item in task_results)
    risk_counts = Counter(item["risk"]["band"] for item in task_results)
    queue = sorted(
        task_results,
        key=lambda item: (
            item["dependencies"]["wave"],
            item["risk"]["score"],
            item["task_id"],
        ),
    )
    return {
        "schema_version": SCHEMA_VERSION,
        "policy_version": POLICY_VERSION,
        "kind": "llm_reconstruction_delegation_plan",
        "driver": manifest.get("driver"),
        "claims": {
            "equivalence": "NOT_PROVEN_BY_ROUTING",
            "promotion": "FORBIDDEN",
            "meaning": "Scores route work only; artifacts and mandatory gates remain authoritative.",
        },
        "inputs": {
            "microtasks": {"path": relative_path(workspace, manifest_path), "sha256": sha256_file(manifest_path)},
            "function_index": {"path": relative_path(workspace, function_index_path), "sha256": sha256_file(function_index_path)},
            "ghidra_calls": {"path": relative_path(workspace, calls_path), "sha256": sha256_file(calls_path)},
        },
        "capability_levels": CAPABILITY_LEVELS,
        "microproof_catalog": MICROPROOF_CATALOG,
        "summary": {
            "task_count": len(task_results),
            "routes": dict(sorted(route_counts.items())),
            "risk_bands": dict(sorted(risk_counts.items())),
            "bounded_c_edit_candidates": sum(item["routing"]["lower_capability_c_edit_allowed"] for item in task_results),
            "dependency_waves": 0 if not task_results else 1 + max(item["dependencies"]["wave"] for item in task_results),
            "dependency_cycles": sum(item["dependencies"]["dependency_cycle"] for item in task_results),
        },
        "recommended_sequence": [item["task_id"] for item in queue],
        "tasks": task_results,
    }


def render_markdown(plan: dict[str, Any]) -> str:
    summary = plan["summary"]
    by_id = {item["task_id"]: item for item in plan["tasks"]}
    lines = [
        f"# Plano de Delegacao por Microprovas: {plan.get('driver')}",
        "",
        "> Este arquivo roteia trabalho. Ele nao prova equivalencia, nao concede PASS e nao autoriza teste em hardware.",
        "",
        "## Resumo",
        "",
        f"- Tarefas analisadas: `{summary['task_count']}`",
        f"- Candidatas a patch C limitado por L2: `{summary['bounded_c_edit_candidates']}`",
        f"- Ondas de dependencias: `{summary['dependency_waves']}`",
        f"- Tarefas em ciclos de dependencia: `{summary['dependency_cycles']}`",
        "",
        "| Rota | Quantidade |",
        "|---|---:|",
    ]
    lines.extend(f"| `{name}` | {count} |" for name, count in summary["routes"].items())
    lines.extend([
        "",
        "## Regras",
        "",
        "1. L0/L1 podem produzir microprovas hashadas, mas nunca editar C ou alterar estado.",
        "2. L2 so pode editar C quando `C limitado` estiver como `sim`.",
        "3. Implementador e revisor devem ser agentes diferentes; conclusao do implementador nao e prova.",
        "4. Divergencia entre microprovas bloqueia o patch e sobe a tarefa para L4.",
        "5. Somente os atestadores existentes podem promover uma microtarefa.",
        "",
        "## Fila Recomendada",
        "",
        "| Onda | ID | Funcao | Bytes | Risco | Rota | C limitado | Dependencias pendentes |",
        "|---:|---|---|---:|---:|---|---|---|",
    ])
    for task_id in plan["recommended_sequence"]:
        item = by_id[task_id]
        dependencies = ", ".join(item["dependencies"]["pending_callees"]) or "-"
        lines.append(
            f"| {item['dependencies']['wave']} | `{task_id}` | `{item['stock_function']}` | "
            f"{item['stock_body_bytes']} | {item['risk']['score']} ({item['risk']['band']}) | "
            f"`{item['routing']['route']}` | "
            f"{'sim' if item['routing']['lower_capability_c_edit_allowed'] else 'nao'} | {dependencies} |"
        )
    lines.extend([
        "",
        "## Entradas Hashadas",
        "",
    ])
    for name, value in plan["inputs"].items():
        lines.append(f"- `{name}`: `{value['path']}` SHA-256 `{value['sha256']}`")
    lines.extend([
        "",
        "O score e uma heuristica conservadora de roteamento. Ele nunca representa percentual de reconstrucao ou confianca semantica.",
        "",
    ])
    return "\n".join(lines)


def rendered_json(plan: dict[str, Any]) -> str:
    return json.dumps(plan, indent=2, sort_keys=True) + "\n"


def check_rendered_outputs(plan: dict[str, Any], output: Path, markdown: Path) -> list[str]:
    failures: list[str] = []
    expected_json = rendered_json(plan)
    expected_markdown = render_markdown(plan)
    if not output.is_file():
        failures.append(f"missing JSON plan: {output}")
    elif output.read_text(encoding="utf-8") != expected_json:
        failures.append(f"stale JSON plan: {output}")
    if not markdown.is_file():
        failures.append(f"missing Markdown plan: {markdown}")
    elif markdown.read_text(encoding="utf-8") != expected_markdown:
        failures.append(f"stale Markdown plan: {markdown}")
    return failures


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    default_workspace = Path(__file__).resolve().parents[2]
    parser.add_argument("--workspace", type=Path, default=default_workspace)
    parser.add_argument("--manifest", type=Path, required=True)
    parser.add_argument("--function-index", type=Path, required=True)
    parser.add_argument("--calls", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--markdown", type=Path, required=True)
    parser.add_argument("--include-pass", action="store_true")
    parser.add_argument("--check", action="store_true", help="verify existing outputs without rewriting them")
    args = parser.parse_args()

    workspace = args.workspace.resolve()
    manifest = safe_path(workspace, args.manifest)
    function_index = safe_path(workspace, args.function_index)
    calls = safe_path(workspace, args.calls)
    output = safe_path(workspace, args.output)
    markdown = safe_path(workspace, args.markdown)
    plan = build_plan(
        workspace,
        manifest,
        function_index,
        calls,
        include_pass=args.include_pass,
    )
    if args.check:
        failures = check_rendered_outputs(plan, output, markdown)
        print(json.dumps({
            "status": "FAIL" if failures else "PASS",
            "output": str(output),
            "markdown": str(markdown),
            "tasks": plan["summary"]["task_count"],
            "failures": failures,
        }))
        return 1 if failures else 0

    output.parent.mkdir(parents=True, exist_ok=True)
    markdown.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(rendered_json(plan), encoding="utf-8")
    markdown.write_text(render_markdown(plan), encoding="utf-8")
    print(json.dumps({
        "output": str(output),
        "markdown": str(markdown),
        "tasks": plan["summary"]["task_count"],
        "bounded_c_edit_candidates": plan["summary"]["bounded_c_edit_candidates"],
    }))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
