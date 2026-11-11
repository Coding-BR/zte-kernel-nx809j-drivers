# zte_fingerprint netlink initialization and lifetime audit

## Finding and correction

The stock `netlink_init` machine code returns `1` when `netlink_kernel_create` fails. The previous `zte_fp_init` caller checked only `ret < 0`, so it could continue registering the platform driver with no netlink socket. The caller now handles every nonzero result, unwinds the class and chrdev, skips platform registration, and returns `-ENOMEM` for the positive failure sentinel. `netlink_init` remains assembly-identical to stock.

The host harness injects socket creation failure and verifies the error return and full rollback. Its reproducible run passes all 30 covered functions.

## Teardown review

The target kernel's `panel_event_notification_trigger` holds `panel_client_mutex` while invoking callbacks. `panel_event_notifier_unregister` takes the same mutex before removing the client, then frees it after the callback critical section drains. The driver's remove path releases `device_list_lock` before canceling notifier work and unregistering the callback; its callback does not acquire `device_list_lock`. The module exit path unregisters the platform driver before closing netlink. These lock and teardown orders prevent a callback from using freed state or sending after netlink teardown under the inspected target implementation.

The target source builds `zte_parity.o` into `vmlinux`, and the target `Module.symvers` identifies the notifier exports as `vmlinux`. This explains why the candidate has no `panel_event_notifier` module dependency even though stock metadata lists one. The strict import set still differs: stock `gpio_free` is absent; `devres_open_group` and `devres_release_group` are present, with matching target KMI CRCs.

## Build and promotion state

Two clean canonical Docker builds produced hash `38fc17bccc50c4251f439923657a6ca670c22ba496ccf37ffa718fb9cb8210e2`; kernel source identity matched. The current curated module remains `e79cc7305b471d2a94192ef26708bf273c552d78c15c7b24e190a1972dfdde21`, which predates this init fix. The validator reports runtime content and layout differences and strict import parity failure, so the fresh module was not promoted. Do not describe the current module artifact as containing this source fix.

All 30 stock function identities were compared again: 19 exact and 11 declared deviations remain. `netlink_init` is exact; `init_module` is now 336 bytes versus 276 stock bytes and remains a hardening deviation pending independent review.

## Evidence

- `audit.json`: finding, notifier locking evidence, hashes, status and limitations.
- `abi_surface.json`: target KMI CRC and import/dependency audit.
- `assembly_comparison.json` and `candidate_assembly/`: fresh module comparison with stock Ghidra functions.
- `validator_final.json` and `validator_final.md`: final two clean Docker builds and candidate/fresh differences after the map update.
- `curated_sync_final.json`: final versioned source/map synchronization to the Docker snapshot.
- `abi_surface.json`: CRC, vermagic, imports and dependency audit against stock and the target kernel.
- `kernel_development/drivers/validation/zte_fingerprint/host_test_report.json`: deterministic host test result.

Independent review of the 11 declared deviations and phone runtime validation remain pending. This batch is not `static_verified`.
