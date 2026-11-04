# RAM firmware worker and remove review — candidate C7

**Review date:** 2026-11-04  
**Review type:** static lifecycle revalidation  
**Candidate SHA-256:** `a2ec3ce4d51e1878e199017bda6cb01623589f54dc3c074f6b22a0586fd3ad0b`  
**Map SHA-256:** `41a7bdcaa16dea5f62a50dab9967e5fc60f9a4625ab65a4232a5bba7bb1a7002`

## Conclusion

The reviewed RAM firmware path has a statically supported teardown sequence: new producers are blocked and drained, delayed RAM work is synchronously cancelled, outstanding asynchronous firmware callbacks are counted and drained, and delayed RAM work is cancelled a second time before state retirement. The second cancellation covers retry work queued by a firmware callback before that callback drops its in-flight reference. I found no remaining RAM-worker path in this reviewed scope that can queue against state after the second cancellation and callback drain.

This is a static lifetime review, not a runtime test or a claim that the whole driver is complete. One liveness risk remains: teardown waits for firmware callbacks. The pinned target kernel defaults the firmware fallback timeout to 60 seconds, but runtime configuration can set it to zero, which disables the finite timeout. The current device setting could not be read because `adb devices -l` reported no connected device. A stalled or non-completing firmware request could therefore delay remove indefinitely when that runtime setting is zero.

## Evidence and control flow

1. Stock Ghidra and stock AArch64 assembly were reviewed for `aw_i2c_probe`, `aw_remove`, `ram_work_routine`, `ram_load`, and `ram_update_store`. Probe initializes the RAM delayed work before publishing the driver state. The additional FIFO/TikTap work items are initialized on the successful probe path before publication; the allocation-failure paths that return before publication do not initialize those items. The candidate's published-state conditional cancellation therefore matches the observed initialization boundary.
2. `ram_work_routine` checks probe completion before requesting firmware. Before publication it retries after `0xfa` jiffies unless shutdown has started. After publication it uses the tracked firmware request helper.
3. `ram_update_store` also uses the tracked helper. The helper increments the callback count before `request_firmware_nowait`, rolls it back on an immediate submission error, and rechecks shutdown around registration. The completion callback either releases firmware after shutdown or invokes `ram_load`; it decrements the count only after the load/retry path returns.
4. `aw_remove` blocks file access, unregisters the LED class device to drain its sysfs producers, synchronously cancels the delayed RAM work, waits for tracked firmware callbacks, then synchronously cancels the delayed RAM work again. It proceeds to state retirement only after this sequence. When the private workqueue pointer is null, the candidate takes the separate callback-wait path; the reviewed probe flow has not initialized the RAM delayed work on that unpublished partial state.
5. In the pinned kernel, `cancel_delayed_work_sync` disables the work during cancellation/flush, then restores it. Kernel documentation qualifies the guarantee when racing enqueues exist. The candidate closes the relevant producers before the first cancel, waits for tracked callbacks that can enqueue a retry, then performs the second cancel. The pinned `request_firmware_nowait` implementation schedules the callback work only after successful setup and holds module/device references through callback completion.

## Open limit

The safety argument depends on callback completion for teardown progress. The pinned source has a default 60-second timeout (`loading_timeout`); its sysfs writer permits zero, interpreted as no finite timeout. ADB currently lists no device, so this report cannot establish the live value or exercise unbind while a request is pending. No source change was made in this review, and no new build was required.

## Candidate and map state

- Candidate module: 6,723,232 bytes; SHA-256 above.
- Stock module SHA-256: `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`.
- Map covers 160 function mappings: 135 `PROMOTED_OFFLINE_EXACT`, 23 `reviewed`, and two `candidate_under_static_validation` (`richtap_rtp_work`, `richtap_update_fifo_data`). The five functions in this review remain `reviewed`; their statuses were not changed.
- The driver remains **INCOMPLETE** as a whole-driver reconstruction. Candidate installation, dynamic device testing, and whole-driver independent review remain pending.

## Reproduction evidence

This review is bound to the canonical Docker candidate C7 and target kernel commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`. The pinned kernel source/config hashes and relevant excerpts are in `target_kernel_ram_lifecycle_excerpt.txt` and `target_kernel_led_sysfs_drain_excerpt.txt`. Candidate disassembly and relocations are in `candidate_c7_ram_lifetime_disassembly.txt` and `candidate_c7_ram_lifetime_relocations.txt`.

Stock evidence is preserved under `../../offline_static/`:

- Ghidra decompilation: `ghidra_stock_repaired/haptic_86938.ko/decompiled/0064_001073c0_aw_i2c_probe.c`, `0065_0010823c_aw_remove.c`, `0147_0010e190_ram_work_routine.c`, `0104_0010b2e0_ram_load.c`, and `0103_0010b228_ram_update_store.c`.
- Stock assembly: `stock_assembly/0064_aw_i2c_probe_001073c0.asm`, `0065_aw_remove_0010823c.asm`, `0147_ram_work_routine_0010e190.asm`, `0104_ram_load_0010b2e0.asm`, and `0103_ram_update_store_0010b228.asm`.

SHA-256 values for the candidate, map, reviewed source functions, stock evidence, and captured kernel/tool excerpts are recorded in `report.json`.
