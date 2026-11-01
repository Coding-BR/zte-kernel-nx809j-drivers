#!/usr/bin/env python3
from __future__ import annotations

import datetime as dt
import hashlib
import itertools
import json
from dataclasses import dataclass
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = next(p for p in HERE.parents if (p / "workspace_tools/reconstruction_pipeline/run_hard_driver_protocol.py").is_file())
SOURCE = ROOT / "kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_137_richtap_rtp_work.c"
REPORT = HERE / "bounded_model_report.json"
U32_MASK = (1 << 32) - 1


@dataclass
class Node:
    state: str
    size: int
    capacity: int


def run(nodes: list[Node], requested: int) -> dict:
    copied = 0
    retries = 0
    cursor = 0
    sleeps = 0
    steps = 0
    reads: list[tuple[int, int]] = []
    while True:
        steps += 1
        assert steps <= 40, "worker loop exceeded the finite retry/queue bound"
        assert cursor < len(nodes), "the modeled queue must include its empty sentinel"
        node = nodes[cursor]
        if node.state == "U":
            node_size_u32 = node.size & U32_MASK
            end = (copied + node_size_u32) & U32_MASK
            if end <= requested:
                assert node.size >= 0, "negative-size counterexample must be reported separately"
                assert node.size <= node.capacity
                if node.size:
                    reads.append((cursor, node.size))
                copied = (copied + node.size) & U32_MASK
                node.state = "FF"
                node.size = 0
                cursor += 1
            else:
                remaining = (requested - copied) & U32_MASK
                assert remaining <= node.capacity
                if remaining:
                    reads.append((cursor, remaining))
                copied = requested
        elif node.state == "AA":
            break
        else:
            sleeps += 1
        if copied >= requested:
            break
        old_retries = retries
        retries = (retries + 1) & U32_MASK
        if old_retries >= 30:
            break
    assert copied <= requested
    assert sleeps <= 31
    assert all(0 < amount <= nodes[index].capacity for index, amount in reads)
    return {"copied": copied, "cursor": cursor, "sleeps": sleeps, "steps": steps, "reads": reads}


cases = 0
maximum_steps = 0
for first_kind, second_kind in itertools.product(("U", "AA", "X"), repeat=2):
    for requested in range(9):
        first_sizes = range(5) if first_kind == "U" else (0,)
        second_sizes = range(5) if second_kind == "U" else (0,)
        for first_size, second_size in itertools.product(first_sizes, second_sizes):
            queue = [
                Node(first_kind, first_size, 4),
                Node(second_kind, second_size, 4),
                Node("AA", 0, 0),
            ]
            result = run(queue, requested)
            cases += 1
            maximum_steps = max(maximum_steps, result["steps"])

# Reproduce the stock 32-bit add and signed-size-to-size_t conversion. This
# is reported as an inherited stock risk; the reconstruction must not silently
# change it while claiming exact equivalence.
copied = 1
requested = 4
negative_size = -1
wrapped_end = (copied + (negative_size & U32_MASK)) & U32_MASK
stock_takes_full_copy_branch = wrapped_end <= requested
copy_size_on_aarch64 = negative_size & ((1 << 64) - 1)
counterexample = {
    "previously_copied": copied,
    "requested_length": requested,
    "next_node_data_size_s16": negative_size,
    "wrapped_u32_end": wrapped_end,
    "stock_full_copy_branch": stock_takes_full_copy_branch,
    "stock_memcpy_size_t": copy_size_on_aarch64,
    "impact_if_negative_size_is_reachable": "oversized memcpy from the FIFO node payload",
}
assert stock_takes_full_copy_branch and copy_size_on_aarch64 > 4

report = {
    "schema_version": "1.0",
    "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
    "passed": True,
    "method": "finite FIFO transition enumeration plus explicit stock arithmetic counterexample",
    "source_sha256": hashlib.sha256(SOURCE.read_bytes()).hexdigest(),
    "valid_domain": {
        "states": ["U", "0xaa", "invalid"],
        "ready_node_data_size": "0..4, nonnegative producer invariant",
        "requested_length": "0..8",
        "queue": "two bounded nodes followed by an empty sentinel",
        "cases_explored": cases,
        "maximum_outer_iterations": maximum_steps,
        "invariants": [
            "terminates within the finite queue and 31 retry checks",
            "copied bytes never exceed requested length",
            "every payload read stays within modeled node capacity",
            "drained nodes transition to 0xff and advance the cursor",
            "partial copy keeps the cursor on the current node",
        ],
    },
    "stock_counterexample": counterexample,
    "producer_audit": {
        "target_config": "kernel_development/config/nx809j_target_kernel_20260711.config",
        "init_on_alloc_default_on": True,
        "probe_allocation": "aw_i2c_probe links sixteen 0x400-byte nodes and writes the per-node index byte; no nonzero data_size store was identified in the Ghidra decompilation.",
        "public_file_operations": "richtap_write returns the requested byte count without touching the FIFO; richtap_read returns zero; richtap_file_mmap traps; ioctl 0x5209 copies to the separate RTP buffer.",
        "reachability": "The arithmetic counterexample is not shown reachable from the audited initialization and file-operation paths; an external producer or other write path remains unproven.",
    },
    "promotion_blocker": "The writer/lifetime contract for FIFO metadata is unresolved. Preserve stock code generation, retain the counterexample, and do not promote until external reachability and nonnegative data_size are proven.",
    "limits": [
        "The model assumes valid pointers and a finite FIFO ending in a 0xaa sentinel.",
        "It does not model concurrent mutation, KCSAN, hardware timing, or producer reachability.",
        "The negative-size case is an arithmetic counterexample, not proof that a runtime attacker can reach it.",
    ],
}
REPORT.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
print(json.dumps({"passed": True, "cases": cases, "counterexample": counterexample, "report": str(REPORT)}, indent=2))
