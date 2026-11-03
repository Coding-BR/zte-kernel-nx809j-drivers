# Haptic Richtap IRQ/stop lock revalidation — 2026-11-03

## Result

HAP-RICHTAP-06 is statically closed for overlap between the active Richtap IRQ handler and the `+0x668` stop worker in candidate module `d2705ec78d029bd9510231c83d0e3f01da9133201d749e3e7933b0896fbae421` (6,700,448 bytes). The earlier finding was bound to candidate `175f305a0f7d4348bed2a6db8eb901ddfb3f3eaa59d844ececd861f25e23a34c`.

## Evidence

- The repository module and Docker-curated module have the same SHA-256.
- Read-only Docker `llvm-objdump` output shows `irq_handle` taking the shared lock before calling `irq_handle_stock_exact` and releasing it after that call. `richtap_stop_work` takes the same lock before its per-device mutex and holds the shared lock through the callback sequence and state update.
- Stock Ghidra decompilation and assembly show the IRQ path locking state offset `+0x370` and the stop worker locking state offset `+0x2f0`. Those stock locks are distinct and do not serialize the paths against each other.
- The candidate checks shutdown both before and after taking the shared lock. Removal establishes the shutdown gate, synchronizes the IRQ, cancels work item `+0x668`, and only then destroys the workqueue and retires state.
- The pinned Docker image is `sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`; LLVM is 18.1.3. The raw inspection is in [docker_llvm_objdump_irq_stop.txt](docker_llvm_objdump_irq_stop.txt).
- Binding hashes and the detailed static disposition are in [haptic_irq_stop_lock_revalidation.json](haptic_irq_stop_lock_revalidation.json). A read-only full-tree sync check found zero missing or content-mismatched source files; it lists curated-only attestation files as extras. The check was not applied because its apply mode would remove those files. See [source_tree_sync_dry_run.json](source_tree_sync_dry_run.json).

## Limits

This conclusion covers serialization between these two paths on the stated candidate hash. It does not establish serialization of every I2C operation in the driver. No runtime schedule, hardware behavior, FIFO completion behavior under stress, or independent review is claimed. HAP-RICHTAP-03 remains separately tracked for teardown lifetime. The module and reconstruction source were unchanged in this revalidation, so Docker was used for read-only ELF inspection and no rebuild was needed.
