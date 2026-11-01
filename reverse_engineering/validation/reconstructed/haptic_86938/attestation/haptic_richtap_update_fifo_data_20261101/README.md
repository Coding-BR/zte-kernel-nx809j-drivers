# richtap_update_fifo_data reconstruction milestone

The implementation is in kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_136_richtap_update_fifo_data.c.

## Resolved issue

The first candidates preserved the FIFO and callback flow but emitted a different AArch64 instruction sequence for signed destination offsets and FIFO bounds checks. The candidate now pins those operations to the observed NX809J code-generation sequence while preserving the FIFO state transitions and callback ABI. A host-only C fallback exists solely to exercise the state machine on the x86_64 Docker host.

## Evidence

protocol_core_v11 passed all seven automated core gates:

- Assembly and relocation comparison: stock and candidate are both 400 bytes and 100 instructions; the comparator reports a pass.
- Two reproducible Docker builds, source/map identity, scoped Joern checks, Joern usage slice, and KCFI callsite checks pass.
- The ASan/UBSan host harness passes partial copy, cross-node drain, final valid offset 1000, empty FIFO, invalid-state retries/logging, and offset-1001 trap scenarios.
- The finite-domain model passes 5,202 queue/state transitions, all 65,536 signed-16-bit counter representations, four explicit counter boundaries, and five u32 length boundaries.

Primary evidence: protocol_plan_v11/hard_protocol_plan.json, protocol_core_v11/hard_protocol_report.json, protocol_core_v11/assembly/comparison.json, and host_harness/host_harness_report.json plus host_harness/bounded_model_report.json. Re-run the behavioral evidence with host_harness/run_host_harness.py and host_harness/bounded_model.py.

## Status boundary

The reconstruction map remains candidate_under_static_validation. The core runner does not promote functions. Independent review, callback-table/KMI evidence, full state/effect and lock/lifetime reviews, and kernel concurrency validation remain open; the haptic_86938 driver is still incomplete. The bounded model assumes valid object pointers and a finite queue ending in an empty sentinel, and it does not model concurrent mutation or hardware timing.
