# C7 threaded one-shot IRQ wait under the Richtap lock — 2026-11-04

**Result:** the current C7 module holds the global IRQ/stop mutex across the stock IRQ handler. The registered handler is a threaded one-shot IRQ, and the stock handler can repeat calls to a FIFO helper that requests three 1 ms sleeps per invocation. The total lock hold and IRQ-thread duration have no finite bound established by this static evidence.

## Candidate C7 path

Canonical Docker disassembly binds the result to module SHA-256 a2ec3ce4d51e1878e199017bda6cb01623589f54dc3c074f6b22a0586fd3ad0b and map SHA-256 41a7bdcaa16dea5f62a50dab9967e5fc60f9a4625ab65a4232a5bba7bb1a7002.

- irq_config passes a null primary handler, irq_handle as thread_fn, and flags 0x2002 to devm_request_threaded_irq.
- C7 irq_handle takes haptic_irq_stop_lock at .data+0x400, rechecks shutdown/arming state, calls irq_handle_stock_exact, and unlocks only after that call returns.
- The stock-exact RTP branch calls richtap_update_fifo_data, checks the FIFO almost-full callback, loop state, and current node state, then branches back to the helper while more input remains.
- richtap_update_fifo_data initializes three retries. When the node state is neither U nor 0xaa it calls usleep_range_state(1000, 1000, 2), then retries. This is up to three requested 1 ms sleeps for each helper invocation; scheduler delay is not bounded by that request.

## Stock and pinned-kernel evidence

Stock Ghidra and AArch64 assembly confirm the null-primary/thread_fn registration, flags 0x2002, the repeated RTP helper loop, and the helper retry sleep. The pinned target kernel source defines IRQF_ONESHOT as keeping the interrupt line masked while its threaded handler runs and unmasks it after the thread completes. Hashes for these inputs and the current C7 disassembly are recorded in report.json. The preserved code excerpts are in candidate_c7_irq_fifo_objdump.txt and pinned_kernel_irq_oneshot_excerpt.txt.

## Interpretation and limits

The sleep itself and the IRQF_ONESHOT registration are present in the stock path. The candidate-specific synchronization change is retaining the shared kernel mutex across the entire stock-exact IRQ handler. While the handler waits, paths using that mutex—including RTP work and the stop path—must wait to acquire it. The handler may reenter the FIFO helper, so the per-call three-sleep count is not a total-handler bound.

This is a conditional latency and serialization risk. It does not establish a deadlock, lost interrupt edge, hardware failure, or any measured delay. No code or map status changed, no rebuild was needed, and the candidate was not exercised on the phone. Both FIFO functions remain candidate_under_static_validation; the haptic driver remains INCOMPLETE.