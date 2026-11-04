# C6 nested FIFO retry while holding the IRQ/stop mutex — 2026-11-03

**Disposition:** static review finds a bounded nested sleep inside a mutex-protected RTP worker path. This is a possible latency cost, not a deadlock or a reproduced IRQ stall.

## Evidence bound

- Current candidate C6 module SHA-256: `c6aec6ea8d630255ea10a7aa3db5d8f7de60e960f414818daa901028c2a6d156`.
- Stock module SHA-256: `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`.
- Current map SHA-256: `3773f78f259b46ae3a0d0d06743b1bdf8e043b7c3fe60aa45b445b93affb5fa6`.
- Current candidate disassembly was generated with LLVM 18.1.3 in canonical Docker image `nubia-sm8850-kernel-builder:nx809j-repro`, image ID `sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`.
- Source, disassembly, and stock Ghidra/assembly hashes are recorded in `fifo_lock_hold_review.json`.

## Finding

In current C6, `richtap_rtp_work` acquires `haptic_irq_stop_lock` at candidate instruction `0x86ac`, then calls `richtap_update_fifo_data` at `0x8790` without releasing that mutex. The helper starts with three retries. If it encounters a node state other than ready (`'U'`) or end-of-data (`0xaa`), it calls `usleep_range_state(1000, 1000, 2)`, decrements the retry count, and can request this 1 ms sleep three times. One path to that state is consuming the current node while the next FIFO node is still free.

The mutex is sleepable, so this is not a sleep-in-atomic error. It does extend the shared mutex hold by up to three requested milliseconds, plus scheduling time, on that path. This is separate from the worker's outer FIFO polling loop, which releases the mutex before its `msleep(1)`.

`irq_handle` uses the same mutex, but it checks the RTP arming gate and returns before taking the mutex while the normal `0x520a` worker startup is active. Therefore this report does not claim that the nested sleep stalls the threaded IRQ. Other users of the mutex may wait longer; no runtime timing was measured.

## Stock comparison and status

Stock `richtap_update_fifo_data` also retries with `usleep_range_state`, and stock `richtap_rtp_work` calls it from the RTP loop. The current candidate adds the IRQ/stop mutex around the shared cursor path as a hardening deviation. The map continues to mark both FIFO functions `candidate_under_static_validation`; semantic equivalence and runtime latency remain unverified. No source or map changed, no rebuild was required, and the driver remains **INCOMPLETE**.
