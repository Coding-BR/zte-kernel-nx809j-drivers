# C6 steady-state threaded IRQ can sleep in the FIFO helper — 2026-11-03

**Disposition:** static review confirms that the post-arming RTP IRQ path can enter the FIFO helper's retry sleeps while the candidate's global IRQ/stop mutex is held. The registered IRQ is `IRQF_ONESHOT`, so the threaded handler's completion is delayed for each requested sleep. This sleep also exists in stock; the candidate-specific addition is holding the shared global mutex across the stock-exact handler. No runtime IRQ delay, lost edge, deadlock, or functional failure was measured or reproduced.

## Candidate path

Current candidate C6 (`c6aec6ea8d630255ea10a7aa3db5d8f7de60e960f414818daa901028c2a6d156`) registers `irq_handle` as the threaded function with flags `0x2002`. The candidate IRQ wrapper first returns `IRQ_HANDLED` while shutdown or the Richtap arming gate is set. Once arming is clear, it takes `haptic_irq_stop_lock` at `.data+0x400`, rechecks the gate, calls `irq_handle_stock_exact`, then unlocks after that function returns.

In the RTP branch, the stock-exact handler calls `richtap_update_fifo_data`. The current candidate helper initializes three retries and calls `usleep_range_state(1000, 1000, 2)` when the current node state is neither ready (`'U'`) nor end-of-data (`0xaa`). The call is at candidate VMA `0x8330`. Because the wrapper retains the global mutex for the whole handler call, that mutex remains held during these sleeps. The stock-exact IRQ loop can re-enter the helper, so this report bounds requested sleep per helper invocation, not total threaded-handler duration.

The arming gate still protects the separate initial `richtap_rtp_work` helper call: that worker keeps the gate set during startup and clears it as it completes. The gate therefore does not cover the later steady-state IRQ path described here.

## Stock and IRQ semantics

Stock Ghidra identifies `irq_config` entry `0x00108368` registering a null primary handler, `irq_handle` as `thread_fn`, and flags `0x2002` (`IRQF_ONESHOT | IRQF_TRIGGER_FALLING`). Stock Ghidra and assembly for `irq_handle` show the RTP branch calling `richtap_update_fifo_data`; stock Ghidra and assembly for that helper show the same retry sleep operation. The pinned target kernel source defines `IRQF_ONESHOT` and states that `thread_fn` runs with the interrupt line masked until the threaded handler has completed.

Thus the wait in the threaded IRQ is inherited from stock behavior; this review does not establish a candidate-only IRQ service delay. C6 adds a shared mutex around the full stock-exact handler, so other paths using that mutex can also wait while the IRQ helper sleeps. Whether this affects real device latency depends on FIFO state, handler-loop iterations, scheduling, and interrupt-controller/device behavior; none were measured here.

## Evidence and status

Candidate and stock disassembly were generated with canonical Docker image `nubia-sm8850-kernel-builder:nx809j-repro` (image ID `sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`, LLVM 18.1.3). The pinned kernel source is commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`. File hashes and instruction locations are in `irq_thread_fifo_wait_review.json`.

This is evidence-only: no source or map changed and no module rebuild was required. The FIFO endpoints remain `candidate_under_static_validation`; no mapping was promoted. The earlier nested-lock report's arming-gate observation applied to the worker's startup call and did not cover this steady-state IRQ call path. This addendum supplies that missing path and does not claim an observed runtime stall.
