# rdbg threaded IRQ lifetime audit — 2026-11-03

## Scope and identity

This review covers `rdbg_open`, `rdbg_release`, and `on_interrupt_from` in the stock module and current reconstructed candidate `6a25975d91059eae065cd28058515a767ceefe6ec4210347bc5712d3071ca2bc`. The current map is `29e3e5e934e487107786f1279c1f5347664be15315b1887943470040be8dfde0`; all eight functions remain `PROMOTED_OFFLINE_EXACT`. The repository candidate and canonical Docker copy match.

The target IRQ-core implementation was read from the read-only Docker kernel source volume `nubia_sm8850_kernel_src_nx809j_oout_20261030`, pinned at commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`. No reconstruction code or map changed, so no rebuild was needed. No IRQ injection, open/close stress, module load/unload, or NX809J hardware test was run.

## Finding: the requested IRQ outlives its open state

Stock `rdbg_open` calls `request_threaded_irq` with `on_interrupt_from` as the threaded handler, `dev_id` pointing to that minor's `rdbg_data`, and flags `IRQF_ONESHOT | IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING`. The flags do not include `IRQF_SHARED`.

After the IRQ request succeeds, `initialize_smq` can fail. The `smq_bail` path destroys initialized SMQ state and the write mutex, then returns the error without calling `free_irq`. Normal `rdbg_release` completes the wait object, destroys the SMQ state and mutex, resets `device_opened`, and returns; it also never calls `free_irq` or `synchronize_irq`. The stock IRQ handler calls `complete` on the completion at offset `0x08` from the saved `dev_id`. Stock module cleanup later frees the client array, with no IRQ release in that function either.

The pinned target IRQ core keeps a successful non-managed `request_threaded_irq` action until `free_irq` removes it. Its `__setup_irq` path requires both existing and new actions to opt into `IRQF_SHARED`; otherwise it returns `-EBUSY`. Therefore, after a successful open and close, a later open of the same minor can reach the still-registered IRQ and fail its duplicate non-shared request with `-EBUSY`. An IRQ can also still invoke the completion handler after close; reinitializing or eventually freeing that client record while the action remains registered creates a potential race or stale `dev_id`/callback reference.

This is a **static IRQ lifetime hazard preserved from stock**. The evidence establishes the missing release and the target IRQ-core behavior; it does not reproduce a use-after-free or prove which runtime event will trigger one. The related platform-driver and module-exit risks are recorded separately in the [platform-driver lifetime audit](../platform_driver_lifecycle_audit_20261103/README.md).

## Reconstruction disposition

The stock assembly/Ghidra and current candidate mapping agree on the request, completion, and release paths. This finding is not a reconstruction mismatch. Keep the exact candidate and map unchanged, and do not load it as a live replacement.

A hardened variant would need to track IRQ ownership and call `free_irq(irq, dev_id)` on the `smq_bail` path and before destroying/reusing per-open state on release. `free_irq` in the pinned kernel removes the action, synchronizes in-flight handlers, and stops its IRQ thread. Any such change would be a declared hardening deviation requiring independent review and the canonical Docker build gates.

## Evidence binding

The machine-readable record contains hashes for the current module/map, source, stock assembly/Ghidra functions, and pinned IRQ-core implementation: [`irq_lifetime_audit_20261103.json`](irq_lifetime_audit_20261103.json).
