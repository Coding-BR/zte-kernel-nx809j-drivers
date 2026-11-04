# HAL stop handoff review bound to C7 - 2026-11-04

**Result:** the candidate serializes its kernel Richtap RTP work and stop work on one single-active queue. The detached HAL producer still has no completion handoff with the kernel stop request. A stop request can wait behind a running RTP startup poll.

## Evidence binding

- Candidate C7 SHA-256: a2ec3ce4d51e1878e199017bda6cb01623589f54dc3c074f6b22a0586fd3ad0b (6,723,232 bytes).
- Reconstruction map SHA-256: 41a7bdcaa16dea5f62a50dab9967e5fc60f9a4625ab65a4232a5bba7bb1a7002.
- Stock module SHA-256: 05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e.
- HAL binary SHA-256: 8a24b3bdab0218c1bb8b5037dbdf59ecc9958181a7bd62f62d91abf1fcf24e61.
- Read-only candidate inspection used Docker image nubia-sm8850-kernel-builder:nx809j-repro, image ID sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390, with LLVM objdump 18.1.3.
- Current candidate and map hashes matched the repository and canonical curated snapshot.

## Kernel work ordering confirmed

Candidate C7 disassembly shows probe allocates the workqueue through alloc_workqueue with flags 0x6000a, max_active 1, and stores it at state+0x448. The pinned NX809J config has CONFIG_NR_CPUS=32 and CONFIG_NUMA disabled. The queue calls use CPU argument 0x20, which is WORK_CPU_UNBOUND for this config. Under the pinned kernel's per-node concurrency accounting, this queue has an active limit of one on its single node.

The current C7 ioctl body queues ioctl 0x520a's richtap_rtp_work at state+0x648 and ioctl 0x5212's richtap_stop_work at state+0x668. Both use the same workqueue pointer at state+0x448. Therefore these two kernel work items cannot execute concurrently on the pinned target. This tightens the 2026-11-03 report: it described a possible HAL-producer/kernel-stop overlap, but did not establish overlap between the kernel stop worker and the kernel RTP worker. The target source/config excerpt and previous queue analysis are preserved in [the pinned workqueue review](../haptic_richtap_worker_queue_bound_serialization_20261103/README.md).

The queue serializes stop behind an already-running RTP worker. That worker calls the stock-exact richtap_rtp_start function. On its timeout path, the stock routine requests 602.5-752.6 ms of sleeps, plus I2C and scheduling time. A stop ioctl queued during that path can wait for the remainder of the worker before stop_work starts. This is a conditional delay, not a measured latency bound. The stock timing details are in [the IRQ gate revalidation](../haptic_richtap_irq_gate_20261103/irq_gate_revalidation.json).

## HAL completion remains unresolved

The hash-bound HAL disassembly shows that tiktap_stop sets stop_flag, issues ioctl 0x5212 through open/ioctl/close, and does not join the detached producer thread. The ioctl queues stop_work and returns; closing the file does not wait for the queued work. The producer checks stop_flag only at its recorded checkpoints, so it may still be active after the stop request. Its accesses are plain byte loads/stores. tiktap_start and tiktap_on also clear the flag; external serialization of those entrypoints is unknown.

This is only a possible late producer publication. The candidate stop worker's reviewed path does not access FIFO nodes or mapped payload, and no late write, FIFO corruption, or resulting hardware behavior was observed. Candidate C7 was not installed. The latest adb devices query returned no device, so this review remains static.

## Reconstruction status

Map statuses did not change. aw_i2c_probe, richtap_file_unlocked_ioctl, and richtap_stop_work remain reviewed hardening deviations; richtap_rtp_work remains candidate_under_static_validation. The haptic driver remains **INCOMPLETE**. No source changed, so no rebuild was required. The detailed machine-readable result and SHA-256 bindings are in [report.json](report.json); Docker disassembly is preserved alongside it.
