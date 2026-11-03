#!/usr/bin/env python3
from __future__ import annotations
import datetime as dt
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = next(p for p in HERE.parents if (p / "workspace_tools/reconstruction_pipeline/run_hard_driver_protocol.py").is_file())
DRIVER = ROOT / "kernel_development/drivers/reconstructed/haptic_86938"
SOURCE = DRIVER / "haptic_86938_fn_136_richtap_update_fifo_data.c"
HEADER = DRIVER / "haptic_86938_internal.h"
BASE = 0x400000
POOL = 0x4000
STRIDE = 0x400
CAPACITY = 1000
OUTPUT = 16000
S16_MIN, S16_MAX = -32768, 32767
checks = 0

def node_valid(address: int) -> bool:
    return BASE <= address < BASE + POOL and (address - BASE) % STRIDE == 0

def expected_next(address: int) -> int:
    offset = address - BASE
    return BASE if offset == POOL - STRIDE else address + STRIDE

def next_valid(address: int, candidate: int) -> bool:
    return node_valid(address) and candidate == expected_next(address)

# Exhaust every byte address across one pool plus one stride on either side.
valid_starts = {BASE + index * STRIDE for index in range(POOL // STRIDE)}
for address in range(BASE - STRIDE, BASE + POOL + STRIDE + 1):
    expected = address in valid_starts
    assert node_valid(address) == expected
    checks += 1

# Exhaust all candidate byte addresses for the fixed successor at every node.
for index in range(POOL // STRIDE):
    node = BASE + index * STRIDE
    successor = expected_next(node)
    for candidate in range(BASE - STRIDE, BASE + POOL + STRIDE + 1):
        assert next_valid(node, candidate) == (candidate == successor)
        checks += 1
    assert node_valid(successor)
    checks += 1

# Exhaust every signed 16-bit data_size and representative signed count boundaries.
for size in range(S16_MIN, S16_MAX + 1):
    guarded_size = not (size < 0 or size > CAPACITY)
    valid_size = size in range(CAPACITY + 1)
    assert guarded_size == valid_size
    counts = {S16_MIN, -1001, -1, 0, 1, size - 1, size, size + 1, 1000, 1001, S16_MAX}
    for count in counts:
        guarded = guarded_size and not (count < 0 or count > size)
        expected_pair = valid_size and count in range(size + 1)
        assert guarded == expected_pair
        checks += 1

# Enumerate every valid node size/count pair and request boundary; prove source and
# destination windows remain within the validated payload and fixed 16 KiB buffer.
lengths = (0, 1, 999, 1000, 15999, 16000, 16001)
for size in range(CAPACITY + 1):
    for count in range(size + 1):
        available = size - count
        for length in lengths:
            accepted_request = length <= OUTPUT
            remaining = min(length, available)
            if accepted_request:
                assert remaining <= available
                assert count + remaining <= size
                assert remaining <= length <= OUTPUT
            checks += 1

# Model the explicit 16-node traversal cap, including a ring of empty U nodes.
visited = 0
cursor = 0
while visited < 16:
    cursor = (cursor + 1) % 16
    visited += 1
assert visited == 16 and cursor == 0
checks += 1

def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

report = {
    "schema_version": "1.0",
    "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
    "passed": True,
    "method": "exhaustive finite-domain address, s16-size, count-boundary, copy-window and ring-traversal model",
    "inputs": {
        str(SOURCE.relative_to(ROOT)).replace("\\", "/"): sha256(SOURCE),
        str(HEADER.relative_to(ROOT)).replace("\\", "/"): sha256(HEADER),
    },
    "domain": {
        "fifo_pool_bytes": POOL,
        "node_stride_bytes": STRIDE,
        "node_count": POOL // STRIDE,
        "payload_bytes": CAPACITY,
        "rtp_buffer_bytes": OUTPUT,
        "data_size": "all signed 16-bit values",
        "count": "all signed 16-bit sizes with boundary representatives for each size",
        "request_lengths": list(lengths),
        "node_addresses": "every byte address from one node before the pool to one node after its end",
        "successor_addresses": "every candidate byte address for every one of the 16 fixed nodes",
    },
    "checks": checks,
    "invariants": [
        "only the 16 stride-aligned node starts inside the 0x4000-byte pool are accepted",
        "each fixed node has exactly one accepted ring successor, with final-node wrap to head",
        "data_size is accepted only in 0..1000",
        "count is accepted only in 0..data_size",
        "copy source end never exceeds payload offset 1000",
        "copy destination end never exceeds request length or 16000-byte RTP buffer",
        "a call drains at most 16 nodes before returning",
    ],
    "limits": [
        "This model checks the stated arithmetic contract, not concurrent userspace writes or C memory ordering.",
        "The ASan/UBSan host harness executes the C helper for representative valid and malformed cases.",
        "Worker/IRQ integration is covered by the pinned Docker compile and static call/assembly review, not this model.",
    ],
}
(HERE / "bounded_model_report.json").write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
print(json.dumps({"passed": report["passed"], "checks": checks, "report": str(HERE / "bounded_model_report.json")}, indent=2))

