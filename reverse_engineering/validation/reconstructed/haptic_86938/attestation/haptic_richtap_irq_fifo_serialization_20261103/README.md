# Richtap FIFO worker/IRQ serialization — 2026-11-03

## Race found

Stock Ghidra shows `irq_config` registers `irq_handle` as the threaded IRQ function. In RTP mode, that IRQ handler and `richtap_rtp_work` both call `richtap_update_fifo_data` and touch the shared FIFO cursor/counter. The RTP branch does not take the separate `state + 0x370` mutex. Ioctl `0x520a` masks the chip's RTP AEI bit before queuing `+0x648`, but `aw8693x_set_rtp_aei` only updates the device register; it does not wait for an IRQ thread that already started. That leaves the worker and an in-flight IRQ thread able to update the same FIFO state concurrently.

## Change made

The candidate's `irq_handle` wrapper already serializes the threaded IRQ with the global IRQ/stop mutex at `.data + 0x400`. `richtap_rtp_work` now uses that same mutex while it initializes and updates the shared FIFO cursor, and while it starts playback, updates the RTP FIFO and reenables AEI. It rechecks shutdown after taking the lock and unlocks on every exit. During its 1 ms wait for producer data, it releases the mutex, so the IRQ thread is not held behind the polling sleep.

The reviewed lock order has no cycle: the worker takes only the IRQ/stop mutex; ioctl `0x520a` drains `+0x648` under the stream mutex before taking IRQ/stop; remove drains the worker without holding IRQ/stop.

## Build and evidence

Two clean module builds in separate Docker source copies and output volumes produced identical modules: SHA-256 `37fc86926a32dc3bd170d3c673a9adef3bdb4b48ff90eff1bff2a80af59caeca` (6,715,896 bytes). The module retains the prior 93 undefined imports and target vermagic. The repository module and Docker curated module match this hash.

- Stock Ghidra excerpts: [stock_irq_fifo_evidence.txt](stock_irq_fifo_evidence.txt).
- Candidate worker and IRQ-lock disassembly: [candidate_richtap_rtp_work_disassembly.txt](candidate_richtap_rtp_work_disassembly.txt), [candidate_irq_lock_disassembly.txt](candidate_irq_lock_disassembly.txt).
- Current candidate queue setup/callsites: [candidate_queue_current_disassembly.txt](candidate_queue_current_disassembly.txt).
- Build commands, hashes, source config and cycle logs: [docker_builds.json](docker_builds.json).
- Hash-bound review: [richtap_irq_fifo_serialization.json](richtap_irq_fifo_serialization.json).

## Limits

This is a hardening deviation, not stock-equivalent reconstruction. The review does not resolve separate FIFO producer/consumer protocol questions and does not include runtime stress, Lockdep, KCSAN, IRQ-latency measurement, module loading or NX809J hardware validation. The driver remains incomplete.