# rdbg platform-driver teardown hardening — 2026-11-10

## Result

This batch addresses three lifetime/resource findings from the prior stock audit for `init_module@00101638` and `cleanup_module@00101974`:

1. `cleanup_module` unregisters the platform driver before destroying shared client storage.
2. Every init failure after successful platform-driver registration unregisters that driver before freeing `clients`; the `platform_driver_register` failure path also frees the separately allocated `clients` array.
3. Cleanup releases the full 16-minor range passed to `alloc_chrdev_region`, rather than requesting release of one minor.

These are intentional deviations from stock behavior. The reconstruction map now classifies both functions as `HARDENED_STOCK_DEVIATION`. The candidate remains offline-only.

## Evidence and reasoning

- The stock Ghidra decompilation and assembly show `platform_driver_register` before `alloc_chrdev_region`, with no matching `platform_driver_unregister` on later init errors or in stock cleanup.
- The prior pinned-kernel audit establishes that `do_init_module` does not call the module exit routine after init fails, that a successful driver registration remains on the bus until explicitly unregistered, and that the character-device unregister implementation matches the requested minor count exactly.
- The same audit establishes a separate allocation leak when `platform_driver_register` fails: init has already allocated 16 `rdbg_data` records (`16 * 0x1c8` bytes) and returned without freeing them.
- The pinned NX809J `Module.symvers` exports `platform_driver_unregister` (`0xbd0cdbf7`, `vmlinux`, `EXPORT_SYMBOL_GPL`) and `unregister_chrdev_region` (`0x0bc5fb0d`, `vmlinux`, `EXPORT_SYMBOL`). The module's GPL license permits the former import.
- Source review confirms that all post-registration init error paths converge on `platform_driver_unregister` before `kfree(clients)`. The ordinary exit path unregisters the driver before iterating/destroying device nodes or freeing client storage.
- The newly emitted candidate assembly confirms the registration-failure branch frees and clears `clients` without unregistering a driver that did not register; the `alloc_chrdev_region` failure branch unregisters only the platform driver; later failures release the character-device range and then unregister the platform driver before freeing `clients`.

## Build and static gates

- Two clean Docker builds of the updated source matched at SHA-256 `0a4382429d683cf40fb4027f02ab7f3988d56fc5f5bcf3de3609d442389a0580` (784784 bytes). The same candidate is stored in the repository and the canonical Docker curated tree.
- The final fresh-build audit, KCFI comparison, and stock-assembly comparison are preserved beside this file. The expected hardening differences are reported explicitly; no claim of stock-exact assembly is made for these functions.
- KCFI type IDs match for both functions. Strict stock assembly comparison fails as expected: `init_module` is 844 bytes versus stock 824, and `cleanup_module` is 192 bytes versus stock 180; both add the required calls/control-flow and retain their expected code sections.
- The generic audit remains incomplete because the candidate's import set differs from stock (`free_irq` and `platform_driver_unregister`) and the hardened mappings have not received an independent second review. Both new/previous imports are present in the target exports; their presence does not remove the review requirement.
- Final source synchronization to the Docker curated snapshot is recorded in [`source_sync_final.json`](source_sync_final.json).

## Limits and remaining work

- This is static evidence. No failure-injection run, module reload test, KUnit, lockdep, KCSAN, or phone test was performed. ADB had no attached device, and no module action was taken.
- The strict Joern gate was not run: Java 21 is present, but the configured task-pinned Joern install and its hash-bound install marker are absent. A global `C:\Tools\joern-cli` launcher exists, but it is not bound to the repository lock, so its output would not satisfy the pinned gate.
- The firmware/remote-subsystem memory-ordering question remains open. A platform-driver unregister call also needs controlled runtime/reload validation before the candidate is used on hardware.
- This review was performed by the implementing agent; no independent reviewer was available. The generic audit correctly leaves mapping review incomplete.

## Identity

Machine-readable source and evidence hashes are recorded in [`platform_driver_teardown_hardening_20261110.json`](platform_driver_teardown_hardening_20261110.json).
