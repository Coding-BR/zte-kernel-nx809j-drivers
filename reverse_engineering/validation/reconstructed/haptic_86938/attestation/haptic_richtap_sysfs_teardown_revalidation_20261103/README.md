# LED-child sysfs teardown revalidation — 2026-11-03

## Conclusion

The current Haptic candidate (`7e0af6fc3bbac603f1dbc2e59774897f7cc1f019b8aab7747a6d798a1be54098`) statically closes the previously reported LED and sysfs callback teardown window (HAP-LED-01, HAP-SYSFS-01, HAP-SYSFS-02 and HAP-SYSFS-03). Probe registers the vibrator and AW-specific attribute groups on the LED child device. `aw_remove` sets the shutdown gate and unregisters that child before freeing state, workqueues or buffers.

The pinned target kernel confirms the complete drain path: `led_classdev_unregister` calls `device_unregister`; `device_del` removes the child kobject; `kobject_del` calls `sysfs_remove_dir`; and `kernfs_remove` recursively marks nodes as removing/deactivated and waits until active operations drain. Thus stores and shows already executing on those nodes return before `led_classdev_unregister` completes, and no later callback can begin. The current module disassembly places this unregister before cancellation and resource retirement.

The current `brightness_set` rejects work after the shutdown gate, including the LED-off callback triggered by unregister. `ram_update_store` rejects new work at shutdown and routes firmware requests through the tracked callback counter. Stores already running are drained by kobject removal; any work or firmware callback they submitted is then waited for or canceled before state release. This is offline static evidence, not a runtime race test.

The evidence is bound to current candidate SHA-256 `7e0af6fc3bbac603f1dbc2e59774897f7cc1f019b8aab7747a6d798a1be54098`. Its two clean Docker rebuilds are byte-identical and pass source identity, traceability and reproducibility. The full audit remains incomplete on strict undefined-symbol parity (`gpio_free` absent; nine additional lifetime-support imports); independent review and hardware validation remain open.

## Evidence

- `target_kernel_led_sysfs_drain.txt` — exact target-kernel LED, device, kobject, sysfs and kernfs teardown code at commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`.
- `docker_llvm_objdump_sysfs_teardown.txt` — current candidate code for probe, remove, LED brightness and RAM update callbacks.
- `source_tree_sync_dry_run.json` — read-only mirror audit; no copy or deletion was applied. Curated-only evidence was preserved.
- The earlier callback inventories are retained in `haptic_richtap_lifetime_review_20261102/` and are linked from the function map.

No runtime or NX809J hardware test was run.
