# Richtap lifetime static review

Date: 2026-11-02  
Driver: `haptic_86938`  
Verdict: `STATIC_LIFETIME_RISKS_CONFIRMED; RUNTIME_UNVERIFIED`

## Scope and binding

This review follows the stock AArch64 instruction/relocation exports for `aw_i2c_probe`, `aw_remove`, Richtap `open`, `release`, `mmap`, `unlocked_ioctl`, and `richtap_stop_work`. It also inspects the exact target kernel source volume used by the canonical Docker build: kernel release `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k`, source commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`. The source volume was mounted read-only.

The report is bound to stock module SHA-256 `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e` and current candidate SHA-256 `175f305a0f7d4348bed2a6db8eb901ddfb3f3eaa59d844ececd861f25e23a34c`. The existing whole-module review says the Richtap callback bodies and fops relocations match stock. No reconstruction source was changed in this review, so no rebuild was needed.

## Findings

### HAP-RICHTAP-01 — publication race during probe

Stock `aw_i2c_probe` calls `misc_register`, then immediately stores the device pointer into `g_aw_haptic`. The target kernel's `misc_register` releases `misc_mtx` before returning. `misc_open` takes that mutex and invokes the driver `.open` callback while holding it. The stock `richtap_file_open` reads `g_aw_haptic` and stores it directly in `file->private_data` without a null or readiness check. An opener can therefore run after registration unlocks and before the following global store. On first probe the global is zero-initialized, so the successful open can retain a null state pointer; subsequent file operations dereference it.

This is a high-confidence static ordering race. Runtime reproduction has not been performed.

### HAP-RICHTAP-02 — open descriptors outlive freed device resources

Stock `richtap_file_open` stores a raw device-state pointer in `file->private_data`. The stock `aw_remove` cancels several workers, frees the buffer at state offset `+0x608`, releases the four-page region at `+0x610`, and only afterward calls `misc_deregister`. The target kernel implementation of `misc_deregister` removes the misc-device list entry and device node; it does not drain existing file descriptors. The driver's `release` drops the module reference but does not hold or release a per-device state reference. No dying-state admission check is present in the ioctl path.

An open descriptor can consequently race removal while the resources are being freed and can continue to call file operations after deregistration. In particular, ioctl `0x5209` accesses the `+0x608` buffer. The raw state pointer is also not pinned by the module reference: the latter keeps module code resident, while the device state follows the I2C device lifetime.

This is a high-confidence static lifetime defect path. Actual kernel manifestation has not been tested on hardware.

### HAP-RICHTAP-03 — work item at `+0x668` is not drained by remove

Stock ioctl command `0x5212` queues the work item at state offset `+0x668` on the queue at `+0x448`. Probe initializes that work item's callback as `richtap_stop_work`; the callback derives its state pointer by subtracting `0x668` from the work address and then accesses state fields and operations. `aw_remove` calls `cancel_work_sync` for the neighboring work item at `+0x648`, but the stock assembly contains no cancellation for `+0x668`. Because open descriptors remain usable and admission is not closed before resource release, the work can be submitted during teardown. The workqueue itself is also not destroyed in this remove body; this review records that as an unpaired release surface without inferring a leak from the missing call alone.

### HAP-RICHTAP-04 — PFN mapping can outlive the pages

Stock `richtap_file_mmap` maps 0x4000 bytes beginning at the PFN derived from state offset `+0x610`, through `remap_pfn_range`. `aw_remove` frees the order-2 page allocation before deregistering the misc device. The target kernel's `remap_pfn_range_internal` marks this mapping `VM_PFNMAP` and documents that these are raw PFN mappings without an associated `struct page`. The driver has no visible VMA open/close callbacks or page-lifetime reference accounting in the reviewed file operations. An existing mapping may therefore retain access to a PFN after the backing allocation is returned to the allocator.

This is a high-confidence page-lifetime risk from the static path; user-visible impact depends on runtime mapping and allocator reuse and has not been exercised.

### HAP-FW-01 — asynchronous RAM firmware callback can outlive remove

The stock delayed-work initializer queues `state+0x3c0` after 2000 ms. Its worker passes `work-0x3c0` as the raw context to `request_firmware_nowait` and supplies `ram_load` as the callback. The target kernel copies that context into a separate firmware-work object, schedules it on the system workqueue, and later calls `ram_load` with the saved pointer. The driver receives no handle for canceling that firmware-work object. The firmware loader's extra device reference protects the `struct device`; it does not pin the driver's devm state pointer held as callback context.

`aw_remove` cancels the delayed work at `+0x3c0` at entry but does not drain the separate firmware callback. The driver core releases devres after the remove callback returns. A still-pending callback can therefore access the state during/after teardown; on a missing-firmware path, `ram_load` can also queue `state+0x3c0` again after remove's cancellation. A second stock request path from `ram_update_store` uses the same callback and is included in the machine-readable evidence.

This is a high-confidence static lifetime path; reproduction is scheduler-dependent and has not been attempted on hardware. Exact stock assembly hashes and target-kernel `firmware_loader/main.c`, `drivers/base/dd.c`, and `drivers/leds/led-class.c` hashes are recorded in `ram_firmware_callback_lifetime.json`.
### HAP-WQ-01 — probe-created workqueue has no stock release path

Stock `aw_i2c_probe` calls `alloc_workqueue`, stores the returned non-NULL pointer at state offset `+0x448`, and checks that allocation succeeded. The complete stock `aw_remove` body does not load that pointer or call `destroy_workqueue`. A search of the full stock assembly export finds one direct `alloc_workqueue` relocation and no `destroy_workqueue` relocation. The exact target kernel header describes the allocation API as returning an allocated workqueue pointer and declares a separate `destroy_workqueue` API; its implementation unregisters and drains the queue.

Combining the pointer store, the absence of a release path in `aw_remove`, and the module-wide stock relocation search supports a per-unbind workqueue resource leak. The earlier MP5 count alone was insufficient; this addendum records the object location and teardown path. The indirect-call target audit is still incomplete, so the report states that limit explicitly.
## Recommended hardening sequence

1. Initialize and publish per-device state before registering the misc device; check registration failure and unwind it.
2. Add a per-device dying/admission gate and explicit references for each open file. Deregistration should prevent new opens; in-flight operations must drain before state resources are freed. Existing file descriptors should return `-ENODEV` after teardown begins.
3. Prevent all Richtap work submissions once teardown begins, then synchronously cancel both work items at `+0x648` and `+0x668` before destroying their queue or releasing state.
4. Track VMA lifetime and defer freeing the PFN pages until the last mapping closes, or replace the mapping with a page-backed interface that holds references.
5. Keep this hardening as a separately reviewed deviation from the stock-exact reconstruction, then bind its Docker build and behavioral checks to a new candidate hash.

## Evidence and limits

The machine-readable evidence, including SHA-256 bindings for the stock assembly, candidate semantic references, and target-kernel files, is in `richtap_lifetime_static_review.json`. The relevant target kernel code is also linked by commit at [drivers/char/misc.c](https://github.com/Coding-BR/android_kernel_nubia_sm8850_qwjujube/blob/3356b35306d35d5a480e3b63df1a9f065b5d9f55/kernel_platform/common/drivers/char/misc.c) and [mm/memory.c](https://github.com/Coding-BR/android_kernel_nubia_sm8850_qwjujube/blob/3356b35306d35d5a480e3b63df1a9f065b5d9f55/kernel_platform/common/mm/memory.c). Upstream v6.12 misc-device behavior is also documented in [Linux drivers/char/misc.c](https://github.com/torvalds/linux/blob/v6.12/drivers/char/misc.c).

This is static evidence from the stock module and the pinned target-kernel source. It does not include KUnit, KASAN, KCSAN, lockdep, controlled device testing, or a hardening patch. It does not claim a runtime crash, exploitability, or a hardware-verified result.
### HAP-LED-01 — managed LED teardown can queue canceled work again

The stock probe allocates the state with flags 0xdc0, including __GFP_ZERO, and vibrator_init registers the LED class device embedded at state+0xa8 as a managed child of the I2C device. The brightness callback is installed before probe finishes. After successful RAM loading, ram_load sets state+0x6 bit 0.

aw_remove calls cancel_work_sync for state+0x428 and then returns without unregistering the managed LED. The pinned driver core releases devres after remove returns. Its LED release calls led_classdev_unregister; unless LED_RETAIN_AT_SHUTDOWN is set, that routine calls led_set_brightness(LED_OFF). The target LED core directly invokes the driver's brightness_set callback when it is present. The callback sees the still-set state+0x6 bit and can queue state+0x428 again on state+0x448.

The LED core flushes its own set_brightness_work, not the driver's state+0x428 work. This creates a conditional post-remove submission that can run during teardown or race devres release of the state. The driver init does not set LED_RETAIN_AT_SHUTDOWN, and the embedded flags begin zeroed. This is the seventh static lifetime risk in this review series; it is conditional on successful RAM initialization and remains runtime-unverified. Full evidence and hashes are in led_teardown_callback_lifetime.json.

## LED teardown hardening follow-up

In a separate hardening candidate, set a per-device dying gate before teardown and have brightness_set reject new submissions once teardown starts. Unregister the LED while its state is still valid, stop all asynchronous producers, and cancel state+0x428 only after the LED callback can no longer queue it. Drain firmware callbacks and destroy state+0x448 before devres releases the state allocation. Keep this separate from the stock-exact reconstruction.
### HAP-SYSFS-01 — LED child sysfs callbacks remain live through aw_remove

Raw stock relocations establish that vibrator_attribute_group points to an attribute array containing ram_update_store and activate_aw_store. The AW-specific group also contains rtp_auto_sin_store. Stock aw_i2c_probe reaches aw8693x_creat_node through aw8693x_func_list slot 1, and both groups are created on state+0xf8, the LED class child device. The target LED core stores led_cdev as that child device's drvdata.

aw_remove cancels state+0x3a0 and state+0x428, then frees resources and returns. The I2C device's devres is released only after remove returns; the managed LED release then unregisters the LED child and removes its sysfs groups. A store during this interval can therefore queue state+0x3a0 or state+0x428 after cancellation. ram_update_store can also submit ram_load through request_firmware_nowait with the raw state pointer.

This confirms an additional live producer path into the previously recorded firmware and work lifetime findings. The path is conditional on successful group creation and a store during removal; runtime behavior remains unverified. Full raw-relocation, assembly, and target-kernel bindings are in sysfs_remove_window_review.json.

## Sysfs teardown hardening follow-up

In the separate hardening candidate, close admission to all LED-child sysfs callbacks before resource teardown, then unregister the LED child while state remains valid. Drain stores that were already in flight and any firmware callback or work they submitted. Cancel state+0x3a0 and state+0x428 only after those producers are stopped, then destroy state+0x448 before releasing its owning state.
### HAP-SYSFS-02 — synchronous store callbacks overlap aw_remove

The complete map contains 33 store callbacks in the two LED-child sysfs groups (28 generic and 5 AW-specific); all are mapped as PROMOTED_OFFLINE_EXACT. Their candidate sources and matching stock assembly exports are hash-bound in sysfs_store_callback_teardown_review.json. The managed LED child is unregistered by devres only after aw_remove returns, so these callbacks are still callable while stock remove frees internal resources. The remove body neither removes the groups nor takes their shared mutex.

The complete inventory finds four work submitters: activate_store and activate_aw_store can queue the same item at state +0x428; aw_rtp_store and rtp_auto_sin_store can queue the same item at +0x3a0. ram_update_store also submits the raw-state asynchronous firmware callback. Other stores can touch I2C, timers, shared state, or callback-owned allocations during the same window. This is a static race path; no runtime or hardware reproduction is claimed. This review extends the earlier sysfs finding with two newly confirmed work producers.

### HAP-SYSFS-03 — synchronous show callbacks can access hardware during remove

The two groups also expose 38 show callbacks (33 generic and 5 AW-specific), all bound to exact candidate sources and stock assembly. Eleven contain indirect calls through the chip callback table. Confirmed paths include RAM/register/sequence reads through I2C; loop and sequence getters also update cached state. duration_show and duration_aw_show read the embedded hrtimer, while f0_show, cali_show, and vbat_monitor_show take a mutex that aw_remove does not take. The managed LED unregister still happens after aw_remove returns, so these synchronous callbacks are not quiesced before internal resources and hardware are torn down.

No direct workqueue or asynchronous firmware submission relocation appears in the show bodies. Indirect helper chains beyond the five hash-bound I2C getters are not expanded here. This is a static overlap finding; runtime behavior is untested. See sysfs_show_callback_teardown_review.json.

### HAP-TIMER-WQ-01 — hrtimer callbacks can queue work after the sole remove drain

Stock aw_remove cancels the audio work item at state+0x560 before canceling its producer hrtimer at +0x520. The audio timer callback queues +0x560 and rearms itself. The vibrator work item at +0x428 is likewise canceled before its producer timer at +0x330; vibrator_timer_func queues +0x428. If either timer callback is active across this ordering, it can submit work after cancel_work_sync has returned. The later hrtimer_cancel waits for the timer callback, but aw_remove does not cancel the newly submitted work a second time.

haptic_init and vibrator_init bind both timer callbacks and work routines to these offsets; haptic_audio_store and vibrator_work_routine arm the timers. This is a high-confidence static ordering path, not a reproduced runtime failure. The IRQ handler has no direct workqueue relocation. See timer_work_teardown_review.json.
