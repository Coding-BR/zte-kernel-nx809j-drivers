# rdbg platform-driver lifetime audit — 2026-11-03

## Scope and identity

This review covers `init_module@00101638` and `cleanup_module@00101974` in the stock `rdbg.ko` and the current reconstructed candidate. The candidate module SHA-256 is `6a25975d91059eae065cd28058515a767ceefe6ec4210347bc5712d3071ca2bc`; its reconstruction map SHA-256 is `29e3e5e934e487107786f1279c1f5347664be15315b1887943470040be8dfde0`. Both candidate files match the canonical Docker curated copy. The map remains 8/8 `PROMOTED_OFFLINE_EXACT`.

The static kernel-source checks used the read-only Docker volume `nubia_sm8850_kernel_src_nx809j_oout_20261030`, pinned at commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`. No reconstruction source or map changed, so no rebuild was needed. No module load, runtime fault injection, or hardware test was performed.

## Findings

### Platform-driver registration is not undone

Stock assembly passes `__this_module` to `__platform_driver_register` at `init_module` offset `0x80`, before `alloc_chrdev_region` at `0xa8`. In the pinned kernel, `__platform_driver_register` stores the owner and platform bus, then calls `driver_register`. A successful `bus_add_driver` puts the driver on the bus list and calls `driver_attach`.

After that registration succeeds, the stock init failure paths for `alloc_chrdev_region`, `cdev_add`, `class_create`, and `device_create` clean up the character-device/class/client resources but do not call `platform_driver_unregister`. The stock `cleanup_module` also has no unregister call. The pinned kernel implements `platform_driver_unregister` through `driver_unregister` and `bus_remove_driver`, which detach the driver and remove it from the bus list.

For a later init failure, the pinned module loader's `do_init_module` failure path marks the module going and calls `free_module`; it does not call the module exit function. Consequently, a platform-driver registration that succeeded earlier can remain on the platform bus while its driver structure and callbacks are being freed. On normal unload, omitting unregister can leave the registration behind when no bound-device module reference prevents unload. This is a **static lifetime hazard and potential stale callback reference**; no use-after-free was reproduced, and the exact runtime outcome depends on binding and timing.

If `platform_driver_register` itself returns an error, the stock init returns immediately without freeing the previously allocated `clients` array. The pinned driver-core error paths unwind a failed registration; the separate `kcalloc` allocation is still leaked. The stock allocation is `16 * 0x1c8` bytes (7296 bytes).

### Character-device range is not fully released

Init reserves 16 consecutive device numbers with `alloc_chrdev_region(..., count=16, ...)`. Stock `cleanup_module` calls `unregister_chrdev_region(..., 1)`. In the pinned kernel, `__unregister_chrdev_region` removes an entry only when major, base minor, **and range count** all match. The one-minor request therefore does not match the 16-minor allocation and leaves that range registered. This is a statically established resource leak in stock and in the exact candidate.

## Reconstruction disposition

These behaviors are present in the stock assembly/Ghidra evidence and are preserved by the exact candidate; they do not show a reconstruction mismatch. The mapping remains offline-exact, while `rdbg` remains incomplete as a safe runtime replacement. Do not load this candidate as a live module.

A separate hardened replacement would need to unregister the platform driver on every post-registration error and during normal cleanup, release `clients` if registration itself fails, and unregister the full character-device range. Those edits would be declared hardening deviations, followed by independent review and the canonical Docker build gates. No such source change is made in this audit.

## Evidence binding

Machine-readable hashes, exact pinned kernel source identities, stock assembly/Ghidra paths, and the path-by-path conclusions are recorded in [`platform_driver_lifecycle_audit_20261103.json`](platform_driver_lifecycle_audit_20261103.json).
