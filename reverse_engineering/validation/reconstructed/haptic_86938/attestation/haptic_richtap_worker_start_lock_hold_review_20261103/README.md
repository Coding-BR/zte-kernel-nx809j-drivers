# Historical Richtap RTP worker lock hold review — candidate 7E99600D (2026-11-03)

## Result

Candidate `7e99600da7ce2a265ada7f25bbcb0157ddaf310b66a0523333058ffaab99f3e8` serialized the threaded IRQ wrapper and RTP worker with a global mutex at `.data + 0x400`. In the worker, that mutex is reacquired at VMA 0x860c immediately before calling richtap_rtp_start at 0x861c, and is not released until the worker exit at 0x85c0. On the successful startup path it also covers the set_rtp_data callback and subsequent AEI/IRQ state changes.

richtap_rtp_start takes a second mutex at aw + 0x2f0. Its stock and candidate assembly perform an initial 2 ms wait, then up to 200 unsuccessful global-state polls with requested sleeps of 2–2.5 ms. On timeout it calls aw8693x_stop while still holding the per-device mutex. That stock callback can add an initial 0.5–0.6 ms wait and up to 100 further 2–2.5 ms waits. The requested sleep intervals in this timeout path total about 602.5–752.6 ms, before I2C, printk, scheduling, and callback time. The outer IRQ-stop mutex remains held across those sleeps.

Stock irq_config registers irq_handle as the threaded handler with a null primary handler and flags 0x2002. The candidate wrapper takes the same .data + 0x400 mutex around irq_handle_stock_exact. Therefore an IRQ thread that arrives during worker startup can wait behind the worker for the same interval. This was a static IRQ-thread latency risk for candidate 7e996; it did not prove a missed interrupt or device failure. Candidate 594c7a2b was rechecked separately in the [FIFO endpoint ordering attestation](../../../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_richtap_fifo_endpoint_ordering_20261103/README.md). The callback after successful start also writes up to the validated 16,000-byte RTP length through i2c_w_bytes while the outer mutex remains held; its duration was not bounded here.

## Lock-order scope

The reviewed worker order is global IRQ-stop mutex, then the per-device mutex inside richtap_rtp_start. The lifetime ioctl wrapper and richtap_stop_work use the same order for their serialized RTP paths. The inspected suspend, audio-off, RAM-number, and container-update paths take the per-device mutex without synchronously waiting for richtap_rtp_work or acquiring the global IRQ-stop mutex in those functions. No inverse wait cycle was established in these scoped paths; this is not a whole-driver lockdep proof.

## Disposition

The two FIFO functions remain candidate_under_static_validation with semantic equivalence unestablished. This review adds a latency concern to the declared hardening deviation; it does not promote the candidate as stock-equivalent. No source changed and no rebuild was required. No module was loaded, no runtime latency or Lockdep run was made, and no hardware result is claimed.

The next useful validation is to measure threaded IRQ wait time during both successful and timeout RTP startup on an approved test setup. Any attempt to narrow the mutex scope must first prove that the IRQ handler cannot mutate conflicting device state while RTP startup and initial data transfer are in progress.

## Evidence

- candidate_lock_interval_disassembly.txt: current candidate function slices regenerated with LLVM 18.1.3 from a read-only canonical Docker mount.
- worker_lock_hold_review.json: candidate-7e996 serialization review and input hashes.
- Stock Ghidra C and assembly for richtap_rtp_work, richtap_rtp_start, aw8693x_stop, and irq_config are under offline_static/ghidra_stock_repaired and offline_static/stock_assembly.