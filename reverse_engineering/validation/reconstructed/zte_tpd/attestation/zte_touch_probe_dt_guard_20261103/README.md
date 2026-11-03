# zte_tpd probe-dispatch guard and current-candidate review

`zte_touch_pdev_unregister` clears the child slot before unregistering the platform device. The current dispatcher previously relied on that slot to recognize the synthetic child. A manual bind during the teardown window could make the child pass that identity check.

The dispatcher now requires an OF node compatible with `zte_tp` before calling the main touchscreen probe. The NX809J target overlay uses that compatible; the synthetic child comes from `platform_device_alloc` and is never assigned an OF node. Current-module disassembly shows the new guard, and the callback KCFI type ID remains `0xc7f8c87c`.

The canonical Docker builder passed two reproducible cycles; both produced SHA-256 `58f43110317979745449c4b355b71f7eabf24dd6782ed26bb787af16eebd2a38` with the target vermagic. The pdev-unregister mapping remains an intentional hardening deviation; the overall map remains partial. No runtime or hardware validation was performed. Evidence hashes and target-kernel source hashes are in `review.json`.
