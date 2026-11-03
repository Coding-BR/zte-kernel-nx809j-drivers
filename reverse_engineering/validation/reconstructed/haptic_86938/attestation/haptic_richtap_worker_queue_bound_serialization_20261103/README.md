# Richtap worker queue serialization — static revalidation

## Finding

Stock ioctl `0x520a` queues `richtap_rtp_work` at `state + 0x648`; ioctl `0x5212` queues `richtap_stop_work` at `state + 0x668`. Both paths load the same workqueue pointer from `state + 0x448` and call `queue_work_on` with CPU argument `0x20`. Stock `aw_i2c_probe` creates that queue with flags `0x6000a` and `max_active = 1`.

The pinned NX809J kernel defines `WORK_CPU_UNBOUND = NR_CPUS`. Its build config has `CONFIG_NR_CPUS=32`, so `0x20` is the unbound sentinel. `WQ_UNBOUND` is bit 1 and is present in `0x6000a`. The pinned kernel enforces an unbound workqueue's `max_active` per NUMA node; this build has `CONFIG_NUMA` disabled, and its generic `cpu_to_node()` fallback maps CPUs to node 0. Therefore the two work items share the same per-node active limit of one and cannot execute concurrently on this target configuration.

The candidate module's disassembly confirms both work-item offsets use the same queue pointer and common `queue_work_on` call, and that its exact probe retains the stock queue flags and active limit. The candidate SHA-256 is `25b2ff207e3cd56368e8f9256bb5a534e9c6486bf1a5a3004137399c9e2fc7d2`.

## Evidence

- Stock Ghidra ioctl: `offline_static/ghidra_stock_repaired/haptic_86938.ko/decompiled/0151_0010e374_richtap_file_unlocked_ioctl.c`, lines 189–190 and 234–237.
- Stock Ghidra probe: `offline_static/ghidra_stock_repaired/haptic_86938.ko/decompiled/0064_001073c0_aw_i2c_probe.c`, line 222.
- Candidate disassembly excerpts: [candidate_workqueue_callsites.txt](candidate_workqueue_callsites.txt).
- Pinned kernel source and config excerpts: [target_workqueue_source_evidence.txt](target_workqueue_source_evidence.txt), source commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`.
- Machine-readable review and evidence hashes: [worker_queue_serialization_review.json](worker_queue_serialization_review.json).

## Scope

This closes only overlap between the queued RTP worker (`+0x648`) and stop worker (`+0x668`) through this shared workqueue under the pinned kernel config. It does not establish serialization against synchronous ioctl bodies, IRQ execution, other workqueues, or runtime hardware behavior. No source changed, so no rebuild was needed; the reviewed candidate is the existing canonical Docker snapshot. Full driver reconstruction remains incomplete.