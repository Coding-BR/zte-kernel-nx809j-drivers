# `richtap_update_fifo_data` reconstruction milestone

The candidate implementation is `kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_136_richtap_update_fifo_data.c`.

## Resolved issue

The earlier candidates preserved the FIFO and callback flow but emitted different AArch64 code for the signed destination offset and the FIFO bounds checks. The final source records those two target-specific operations explicitly so that the NX809J compiler emits the stock instruction stream. This is limited to the observed AArch64 code-generation contract; it does not change the FIFO state transitions or callback ABI.

## Evidence

`protocol_core_v10` passed all automated core gates:

- Exact stock comparison: 400 bytes and 100 instructions; instruction and relocation checks pass.
- Docker reproducibility, input/map identity, scoped Joern checks, Joern slice, and KCFI callsite checks pass.
- The build used the pinned NX809J image and kernel source volume from the job manifest.

Primary reports: `protocol_plan_v10/hard_protocol_plan.json`, `protocol_core_v10/hard_protocol_report.json`, and `protocol_core_v10/assembly/comparison.json`.

## Status boundary

The reconstruction map remains `candidate_under_static_validation`. The core runner is non-promoting, and this result does not complete or promote the whole `haptic_86938` driver. Remaining evidence requested by the hard-driver protocol: bounded model, callback table, host harness, independent review, KMI types, KUnit/lockdep/KCSAN, lock/lifetime review, sanitizers, semantic counterexample, and state/effect ledger.
