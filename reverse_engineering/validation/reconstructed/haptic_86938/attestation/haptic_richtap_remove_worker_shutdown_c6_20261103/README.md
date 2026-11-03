# C6 Richtap worker shutdown and remove review — 2026-11-03

## Question

The C6 worker releases the global IRQ/stop mutex while `richtap_rtp_start` polls the chip. This review checks whether `aw_remove` can then wait for that worker without deadlock or freeing its state early.

## Stock baseline

Stock Ghidra and assembly show `aw_remove` cancelling delayed RAM work and the standard timer/work callbacks, releasing the IRQ, then cancelling Richtap RTP work at state `+0x648`, freeing the RTP buffer/FIFO pages, and deregistering the misc device. The stock function has no lifetime shutdown gate and no cancellation for work items `+0x628` and `+0x668`. Its sequence is the baseline only; the current wrapper is an explicitly reviewed hardening deviation.

## C6 compiled sequence

The current module is bound to SHA-256 `c6aec6ea8d630255ea10a7aa3db5d8f7de60e960f414818daa901028c2a6d156`. `aw_remove` first calls `haptic_lifetime_block_file_access` (candidate instruction `0x6588`). That helper sets shutdown, removes the published entry point, deregisters the misc device, and waits for active file operations. The compiled remove path then synchronously cancels work at `+0x628`, `+0x648`, and `+0x668` (`0x65d4`, `0x65dc`, `0x65e4`) before `devm_free_irq` (`0x6608`). It cancels timers and standard work, destroys the private workqueue (`0x6664`), and retires state (`0x6680`). No `haptic_lifetime_irq_stop_lock` call occurs in `aw_remove` while it waits for work.

In the same C6 image, `richtap_rtp_work` unlocks the global mutex at `0x8698`, calls `richtap_rtp_start` at `0x86a4`, reacquires the mutex at `0x86ac`, and checks shutdown at `0x86b0`. If removal began during the poll, the worker returns after observing shutdown. Since remove does not hold the mutex during `cancel_work_sync`, the worker can reacquire it and finish. The state and IRQ remain allocated until that synchronous cancellation completes.

The exact target kernel at commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55` documents that `cancel_work_sync` cancels and waits until work is neither pending nor executing, provided no racing enqueue remains. The file gate, misc deregistration, and active-operation drain close the ioctl enqueue source before the `+0x648` cancellation. The worker has no self-requeue path. `devm_free_irq`, workqueue destruction, and state retirement all follow the worker cancellation.

## Finding and limits

For a fully published device, this statically closes the teardown/lifetime concern introduced by releasing the global mutex around the RTP startup poll: remove waits for the worker without holding a lock the worker needs, and does not free state or release IRQ resources first. This is compiled control-flow plus pinned-kernel API evidence, not runtime proof.

Partial-probe cleanup remains covered by the separate [partial probe teardown review](../haptic_partial_probe_teardown_20261103/README.md); this review does not promote its older build hash as the current candidate. Runtime unbind/reprobe stress, Lockdep/KCSAN, and hardware behavior remain unverified. `richtap_rtp_work` and the two FIFO endpoint mappings remain under static validation; the whole driver remains **INCOMPLETE**.

## Evidence

- `remove_worker_shutdown_revalidation.json` binds the current module, source, stock Ghidra/assembly, candidate disassembly, target-kernel source, and map.
- `candidate_c6_aw_remove_disassembly.txt` is `llvm-objdump -dr` from the canonical Docker image for the C6 module.
- `candidate_c6_block_file_access_disassembly.txt` shows the compiled shutdown, deregistration, and active-operation drain path.
- `target_kernel_cancel_work_sync.txt` preserves the pinned kernel source excerpt and SHA-256 identities.
- The worker disassembly is in `../haptic_richtap_irq_gate_20261103/candidate_richtap_start_disassembly.txt`; its hash is bound in the JSON report.
