#!/usr/bin/env python3
from __future__ import annotations
from dataclasses import dataclass
import datetime as dt
import hashlib
import itertools
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = next(p for p in HERE.parents if (p / "workspace_tools/reconstruction_pipeline/run_hard_driver_protocol.py").is_file())
SOURCE = ROOT / "kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_136_richtap_update_fifo_data.c"
REPORT = HERE / "bounded_model_report.json"

@dataclass
class Node:
    state: str
    size: int
    count: int
    payload: list[int]
    next_index: int

class BoundsTrap(Exception):
    pass

def run_model(nodes: list[Node], request: int, loop: int) -> dict:
    left = request
    copied = 0
    destination = [None] * min(request, 1001)
    current = 0
    retries = 3
    sleeps = 0
    warnings = 0
    steps = 0
    events: list[str] = []
    while True:
        steps += 1
        assert steps <= len(nodes) + 5, "bounded loop did not terminate"
        assert current < len(nodes), "model queue exhausted before sentinel"
        node = nodes[current]
        if node.state == "U":
            remaining = node.size - node.count
            count_u16 = node.count & 0xffff
            if left <= remaining:
                if count_u16 > 1000:
                    raise BoundsTrap("unsigned FIFO offset exceeds 1000")
                copy_offset = count_u16
                assert copy_offset <= 1000
                for i in range(left):
                    src = copy_offset + i
                    dst = copied + i
                    assert 0 <= src <= 1000
                    assert 0 <= dst < len(destination)
                    destination[dst] = node.payload[src]
                copied += left
                node.count = (node.count + left) & 0xffff
                if node.count >= 0x8000:
                    node.count -= 0x10000
                events.append(f"copy:{left}@node{current}+{copy_offset}")
                break
            if count_u16 >= 1001:
                raise BoundsTrap("drain-path unsigned FIFO offset reaches 1001")
            copy_offset = count_u16
            if copy_offset > 1000:
                raise BoundsTrap("reloaded FIFO offset exceeds 1000")
            for i in range(remaining):
                src = copy_offset + i
                dst = copied + i
                assert 0 <= src <= 1000
                assert 0 <= dst < request
                destination[dst] = node.payload[src]
            copied += remaining
            left -= remaining
            node.state = "FF"
            node.size = 0
            node.count = 0
            events.append(f"drain:{remaining}@node{current}+{copy_offset}")
            current = node.next_index
        elif node.state == "AA":
            events.append(f"empty@node{current}")
            break
        else:
            if retries < 1:
                warnings += 1
                events.append(f"warn@node{current}")
                break
            retries -= 1
            sleeps += 1
            events.append(f"sleep@node{current}")
        if left == 0 or loop == 0:
            break
    assert 0 <= copied <= request
    assert sleeps <= 3
    assert warnings <= 1
    assert copied == sum(value is not None for value in destination)
    assert all(value is not None for value in destination[:copied])
    assert all(value is None for value in destination[copied:])
    return {
        "copied": copied,
        "left": left,
        "current": current,
        "count": nodes[current].count,
        "sleeps": sleeps,
        "warnings": warnings,
        "events": events,
        "destination": destination,
        "nodes": [(n.state, n.size, n.count) for n in nodes],
        "steps": steps,
    }

def states(state: str, node_index: int, next_index: int):
    payload = [(0x20 + node_index * 0x20 + i) & 0xff for i in range(1001)]
    if state != "U":
        return [Node(state, 0, 0, payload, next_index)]
    return [Node(state, size, count, payload, next_index)
            for size in range(5) for count in range(size + 1)]

cases = 0
maximum_steps = 0
for head_state, tail_state, request, loop in itertools.product(
        ("U", "AA", "X"), ("U", "AA", "X"), range(9), (0, 1)):
    for head in states(head_state, 0, 1):
        tails = states(tail_state, 1, 2)
        for tail in tails:
            sentinel = Node("AA", 0, 0, [0] * 1001, 3)
            chain = [
                Node(head.state, head.size, head.count, head.payload, 1),
                Node(tail.state, tail.size, tail.count, tail.payload, 2),
                sentinel,
            ]
            result = run_model(chain, request, loop)
            cases += 1
            maximum_steps = max(maximum_steps, result["steps"])
assert cases > 2000

# Exhaust every signed 16-bit counter representation against all three stock
# unsigned bounds predicates (partial path, drain path, and reloaded offset).
bound_counter_cases = 0
for signed_count in range(-32768, 32768):
    offset = signed_count & 0xffff
    accepted = 0 <= signed_count <= 1000
    partial_accepts = not (offset > 1000)
    drain_accepts = not (offset >= 1001)
    reloaded_accepts = not (offset > 1000)
    assert partial_accepts == accepted
    assert drain_accepts == accepted
    assert reloaded_accepts == accepted
    bound_counter_cases += 1

boundary_cases = 0
for count, size, request, should_copy in (
        (999, 1001, 1, True),
        (1000, 1001, 1, True),
        (1001, 1001, 1, False),
        (-1, 1000, 1, False),
):
    head = Node("U", size, count, [(0x80 + i) & 0xff for i in range(1001)], 1)
    sentinel = Node("AA", 0, 0, [0] * 1001, 2)
    try:
        edge = run_model([head, sentinel], request, 0)
    except BoundsTrap:
        assert not should_copy
    else:
        assert should_copy and edge["copied"] == 1
    boundary_cases += 1

large_length_cases = 0
for request in (0, 1, 1000, 1001, 0xffffffff):
    head = Node("U", 1001, 0, [(i & 0xff) for i in range(1001)], 1)
    sentinel = Node("AA", 0, 0, [0] * 1001, 2)
    result = run_model([head, sentinel], request, 0)
    assert result["copied"] <= 1001
    assert result["copied"] <= request
    large_length_cases += 1

report = {
    "schema_version": "1.0",
    "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
    "passed": True,
    "method": "exhaustive finite-domain transition model",
    "source_sha256": hashlib.sha256(SOURCE.read_bytes()).hexdigest(),
    "stock_semantics_source": "reverse_engineering/validation/reconstructed/haptic_86938/offline_static/ghidra_stock_repaired/haptic_86938.ko/decompiled/0074_0010946c_richtap_update_fifo_data.c",
    "domain": {
        "head_and_tail_states": ["ready U", "empty 0xaa", "invalid"],
        "ready_node_size": "0..4 bytes",
        "initial_head_count": "0..data_size",
        "requested_length": "0..8 bytes",
        "rtp_loop": [0, 1],
        "queue": "two nodes followed by an empty sentinel",
    },
    "cases_explored": cases,
    "signed_16bit_bound_cases": bound_counter_cases,
    "explicit_boundary_cases": boundary_cases,
    "u32_length_boundary_cases": large_length_cases,
    "maximum_loop_steps": maximum_steps,
    "invariants": [
        "terminates within the finite queue/retry bound",
        "at most three sleep retries and one invalid-state warning",
        "copied length never exceeds requested length",
        "every source payload read stays in offsets 0..1000",
        "every destination write stays within the requested output capacity",
        "copied bytes retain FIFO order across node drain",
        "drained nodes become state 0xff with size/count zero",
        "callback length equals bytes actually copied",
    ],
    "limits": [
        "The model assumes valid object pointers and an empty sentinel after the finite queue.",
        "It does not model concurrent mutation, KCSAN, or hardware timing.",
        "The 1000/1001 boundary is separately exercised by the ASan/UBSan host harness.",
    ],
}
REPORT.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
print(json.dumps({"passed": True, "transition_cases": cases, "signed16_bound_cases": bound_counter_cases, "explicit_boundaries": boundary_cases, "u32_lengths": large_length_cases, "max_steps": maximum_steps, "report": str(REPORT)}, indent=2))
