# rdbg SMQ read-concurrency audit — 2026-11-03

## Scope and identity

This review covers the consumer queue in `rdbg_read`, the single-open guard in `rdbg_open`, and the pinned target VFS read path. The current candidate module SHA-256 is `6a25975d91059eae065cd28058515a767ceefe6ec4210347bc5712d3071ca2bc`; map SHA-256 is `29e3e5e934e487107786f1279c1f5347664be15315b1887943470040be8dfde0`. The candidate and Docker curated files match; all eight map entries remain `PROMOTED_OFFLINE_EXACT`.

Kernel-source inspection used the read-only volume `nubia_sm8850_kernel_src_nx809j_oout_20261030`, pinned at commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`. No reconstruction source or map changed, so no rebuild was needed. No concurrent-read stress or hardware test was run.

## Finding: shared-file reads can race on consumer SMQ state

`rdbg_open` rejects a second open of the same minor through `device_opened`, but that flag does not serialize operations through the one open file. Multiple threads or processes can share that file description and call `read()` concurrently.

In the pinned kernel, `ksys_read` obtains the file with `fdget_pos`. That helper takes `f_pos_lock` only when `FMODE_ATOMIC_POS` is set and the file is shared (or uses `iterate_shared`). `do_dentry_open` sets `FMODE_ATOMIC_POS` for regular files and directories; it does not set it for this character device. The `rdbg` open path also does not add a driver lock or otherwise serialize `read()` calls. The VFS therefore does not provide the missing queue lock for this device.

The consumer SMQ is initialized with a NULL lock pointer. `smq_ctor` assigns the supplied lock only for the producer queue, and `initialize_smq` passes NULL for the consumer. In `rdbg_read`, the consumer-side `mutex_lock` is conditional on `consumer->lock`, so it is skipped. The producer mutex protects kernel writes and producer reset state; it does not protect the consumer dequeue path.

When multiple IRQ completions are pending, concurrent readers can both inspect/update `index_sent_read`, dequeue the same or adjacent sent nodes, and race while writing `index_free_write` and its free-node entry. This can duplicate or skip packets and corrupt the local queue bookkeeping. The finding follows from the source, stock Ghidra/assembly, and target VFS locking rules; it is not a reproduced runtime race.

## Cross-subsystem ordering evidence and limit

The stock read assembly contains `dsb ld` before copying the received block. The stock write assembly contains a `dsb ld` in the free-node reclamation path and calls `qcom_smem_state_update_bits` after publishing an outbound message. In the pinned kernel, the SMP2P provider's `qcom_smp2p_kick` executes `wmb()` before sending the mailbox/IPC notification. These observations describe the kernel-side path. They do not prove the remote firmware's matching acquire/release behavior or resolve concurrent local readers.

## Reconstruction disposition

Stock and the current candidate agree on these paths, so this is not a reconstruction mismatch. Keep the exact source/map unchanged and keep `rdbg` offline-only. A hardened variant would need a per-consumer lock around dequeue/free-index updates (or an equivalent serialized read design); that change would be a declared hardening deviation requiring independent review and the canonical Docker build gates.

The machine-readable evidence binds candidate, source, stock Ghidra/assembly, current candidate assembly comparison, and the pinned VFS/SMP2P source hashes: [`smq_read_concurrency_audit_20261103.json`](smq_read_concurrency_audit_20261103.json).
