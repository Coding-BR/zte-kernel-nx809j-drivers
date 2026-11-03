# haptic_86938 reconstruction status

## Current canonical snapshot — 2026-11-03

- Stock module SHA-256: `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`.
- Lifetime-hardened candidate SHA-256: `6cbdd9dbab1a4581f98654fa845e77a94b99d4ef68bc4d64bf656c4c6f5e1fb3` (6,700,392 bytes), bound in `reconstruction_map.json` and synchronized with the Docker curated snapshot.
- Two isolated canonical Docker builds produced byte-identical modules for target kernel commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`; inputs and outputs are recorded in `haptic_ram_firmware_revalidation_20261103/docker_builds.json`.
- The ABI audit passes target vermagic and symbol CRC checks, but strict stock import parity remains false: `gpio_free` is absent and nine lifetime-support imports are additional. This is a declared lifetime-hardened candidate, not a stock-equivalent module; see `haptic_ram_firmware_revalidation_20261103/module_abi_audit.json`.
- Twenty-one function mappings remain declared hardening deviations with semantic equivalence not established; a distinct independent whole-driver review is pending.
- The module remains **INCOMPLETE** as a full reconstruction/replacement candidate. Full C-level semantic equivalence, runtime concurrency, firmware-unload behavior, whole-driver independent review and NX809J hardware behavior remain unverified. No hardware load is claimed.

## Update 2026-11-03 — Richtap/TikTap worker teardown

The source closes user file access, waits for active RAM callbacks, then synchronously drains the TikTap/Richtap workers at `+0x628`, `+0x648` and `+0x668` before releasing the IRQ. Static inspection found ioctl producers for `+0x648` (`0x520a`) and `+0x668` (`0x5212`); the teardown blocks and drains those user operations first. No queue producer for `+0x628` was found in the reconstructed source. The module disassembly confirms all three cancellation calls precede `devm_free_irq`, and destroys the workqueue before retiring state. This is offline static evidence; it does not establish runtime race freedom.

## Remaining gates

Full C-level semantic equivalence, strict ABI parity, independent whole-driver review, kernel concurrency validation and controlled NX809J hardware validation remain open.

## Update 2026-11-03 — PFN-mapped FIFO VMA lifetime revalidation

The current candidate `7e0af6fc3bbac603f1dbc2e59774897f7cc1f019b8aab7747a6d798a1be54098` statically addresses HAP-RICHTAP-04. After a successful `remap_pfn_range`, `richtap_file_mmap` attaches the initial VMA to the sidecar lifetime context while the file operation is still active. The exact Docker kernel source at commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55` confirms `vm_ops->open` runs for cloned and split VMAs and `vma_close` dispatches the close callback. At teardown, `haptic_lifetime_retire_state` clears the page address from device state and defers `free_pages` while VMA references remain; the last VMA close releases the retired pages and lifetime context.

The current candidate disassembly contains the mmap attachment and retirement callbacks. This closes the previously reported page-use-after-free path by static reasoning for this candidate. No source changed in this review; runtime mapping/unbind races and NX809J hardware behavior remain untested. The lifetime hardening remains a declared deviation from stock semantics pending independent review. See `../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_richtap_vma_teardown_revalidation_20261103/README.md`.

## Update 2026-11-03 — LED-child sysfs teardown revalidation

The current candidate statically closes the LED/sysfs callback window recorded as HAP-LED-01 and HAP-SYSFS-01/02/03. Probe registers both attribute groups on the LED child device. `aw_remove` sets the shutdown gate, calls `led_classdev_unregister` while state is valid, and only then drains firmware callbacks, work and timers or releases device resources. In the pinned kernel, LED unregister invokes `device_unregister`; `device_del` removes the child kobject; sysfs removal recursively deactivates the attribute nodes and waits for active kernfs operations to drain. Thus in-flight show/store callbacks finish before teardown proceeds, and no new callback can start afterward.

The current `brightness_set` returns at the shutdown gate, including the LED-off callback from unregister. `ram_update_store` also checks shutdown and submits firmware through the tracked callback path. Stores already in flight are drained by child-device removal; work they submitted is canceled afterward. The current module disassembly confirms the unregister occurs before worker cancellation, IRQ release, workqueue destruction and state retirement. This statically resolves the previously identified LED/sysfs races for this candidate. No runtime reproduction was performed; independent review, strict ABI parity and hardware behavior remain open. Evidence: `../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_richtap_sysfs_teardown_revalidation_20261103/README.md`.

## Historical checkpoint — 2026-11-02 (superseded by the 2026-11-03 snapshot above)

- Stock module SHA-256: `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`.
- Current candidate SHA-256: `175f305a0f7d4348bed2a6db8eb901ddfb3f3eaa59d844ececd861f25e23a34c`; it matches the repository artifact, Docker curated module and `reconstruction_map.json`.
- The canonical all-driver Docker audit records `static_verified`, two reproducible clean builds, zero errors and zero warnings for this candidate. A fresh revalidation is preserved at `attestation/haptic_baseline_revalidation_20261102/docker_audit.json`. This verifies the build/ELF/KMI/traceability scope, not hardware behavior.
- Fresh assembly extraction compared all 160 mapped stock functions against this exact candidate: 158 match instruction bytes, relocations, sections and sizes; two have different instruction encodings for reviewed unsigned adjacent-boundary predicates. All 160 match in relocations, sections and symbol sizes; the two predicate reports record no unresolved differences. This is not strict binary identity for those two functions.
- Fresh `.rela.data` inspection confirms `richtap_misc` points to `left_fops`; the `unlocked_ioctl` slot at `+0x50` targets `richtap_file_unlocked_ioctl`, and `mmap` at `+0x60` targets `richtap_file_mmap`. Both bodies and slot relocations match stock.
- `awrw_show` and `awrw_store` are restored to stock-exact source; the current mapping review records zero active hardening deviations.

The current comparison and its extraction manifests are in `attestation/current_module_assembly_review_20261102/`. It is bound to candidate `175f305…`, stock `05e946…`, and the current map. Dated checkpoints below are hash-scoped: reports naming candidate `d617743…` or `44a432…` describe earlier artifacts. The previous statements that the current candidate lacked the Richtap callbacks or that AWRW remained a hardening deviation are superseded.

## Current remaining gates

The driver remains **INCOMPLETE** as a full source reconstruction and replacement candidate. The map declares `partial_c_microtasks`; exact assembly coverage and two predicate-equivalence findings do not establish full C-level semantic equivalence, callback lifetime/concurrency safety, or behavior on the NX809J. The current per-function review artifact records dispositions for all 160 identities, but does not name a distinct human reviewer for a whole-driver sign-off. Kernel-level KUnit/Lockdep/KCSAN and controlled hardware validation remain open; no hardware load is claimed.

## Update 2026-11-02 — Richtap lifetime static review

A read-only review bound to the current candidate and stock assembly found four high-confidence static lifetime risks: the misc device is registered before `g_aw_haptic` is published; open file descriptors are not drained by `misc_deregister` while `aw_remove` frees the Richtap buffer and pages first; ioctl `0x5212` can queue work at `+0x668`, which this remove body does not cancel; and PFN mappings can outlive the pages released by remove. The exact target kernel `misc.c` and `mm/memory.c` were inspected from the Docker source volume at source commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`. Runtime manifestation remains unverified. No reconstruction source changed. See the [Richtap lifetime review](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_richtap_lifetime_review_20261102/README.md).

## Update 2026-11-02 — asynchronous RAM firmware callback lifetime

A second static review confirmed that `ram_work_routine` and `ram_update_store` submit `ram_load` through `request_firmware_nowait` with raw state context. The pinned kernel schedules a separate firmware work item and calls the callback later; `aw_remove` cancels only the embedded delayed work, while driver-core devres releases state after remove returns. The failure callback can also reschedule the delayed work after cancellation. The firmware review adds a fifth lifetime risk; runtime behavior remains unverified. See the [RAM firmware callback review](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_richtap_lifetime_review_20261102/ram_firmware_callback_lifetime.json).
## Update 2026-11-02 — per-device workqueue release

The stock probe stores a successful `alloc_workqueue` result at state offset `+0x448`; the complete `aw_remove` body and stock assembly export contain no direct `destroy_workqueue` path. The target API uses a separate destroy operation to drain and release the allocated queue. This supports a per-unbind resource leak finding and is the sixth static lifetime risk; the whole-module indirect-call audit remains open. Runtime resource retention is untested. See the [workqueue release review](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_richtap_lifetime_review_20261102/workqueue_release_review.json).
## Dated function-scoped checkpoints
## Update 2026-11-02 — aw8693x_play_mode

The function aw8693x_play_mode (stock entry 00104798) was revalidated in its function-scoped Docker run against candidate SHA-256
d6177430412b5355d6b662eb79b2b8939b14a48c3c32f717b6f4c8e8e65e569f (that historical snapshot; current canonical candidate is 175f305a0f7d4348bed2a6db8eb901ddfb3f3eaa59d844ececd861f25e23a34c). Its fresh
candidate Ghidra export has executable MD5 fb463a0a82b6191a9e8d3903c5c28988.
Protocol core v8, v9 and the map-bound v10 run pass all eight automated core
gates, including assembly/relocations, Ghidra/P-Code, KCFI, Joern, input
identity and map identity. Both Docker build cycles are byte-identical.

The bounded AArch64 model matches stock and candidate for all 256 u8 inputs.
The Docker host contract passes two reproducible ASan/UBSan builds with 2,150
checks each. It detects mutations to an RTP I2C value, printk priority and
printk site code. That audit fixed a gap in the earlier harness, whose printk
shim erased the priority prefix and whose assertions checked only text
fragments. The versioned state/effect ledger now binds the stock, candidate,
model, host report and core report by hash.

The mapping remains candidate_under_static_validation and semantic equivalence
is not established. The protocol runner is non-promoting by design; all eight
automated gates pass, but promotion remains unauthorized. The callback-table,
independent-review, KMI, KUnit/Lockdep/KCSAN, LLVM IR, lock/lifetime,
sanitizer, semantic-counterexample and evidence-acceptance gates remain open.
The entire haptic_86938 driver remains incomplete. See the aw8693x_play_mode
revalidation notes at
../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/aw8693x_play_mode_20261101/REVALIDATION_NOTES_20261102.md.

## Update 2026-11-02 — aw8693x_creat_node

The function-scoped protocol run used candidate d6177430412b5355d6b662eb79b2b8939b14a48c3c32f717b6f4c8e8e65e569f at that time; the current canonical candidate is 175f305a0f7d4348bed2a6db8eb901ddfb3f3eaa59d844ececd861f25e23a34c. The fresh full-module comparison confirms this function body matches stock. The 104-byte function body, instruction/relocation sequence, P-Code shape, KCFI, Docker reproducibility, Joern gates and final map-bound core_v7 pass. The first fresh Ghidra comparison found only a type-rendering discrepancy for the same 40-byte sysfs group object: stock emits object while candidate emits address-of; the object moved from .data+0x190 to .data+0x2a0. A scoped same-name/same-section binding fallback is now documented and independently backed by the ELF table audit; no other C syntax is normalized.

The fresh ELF audit confirms the five ordered 0644 callbacks and NULL terminator, the Docker ASan/UBSan harness passes, and the current KCFI comparison matches all ten sysfs callback type IDs. The function remains candidate_under_static_validation; raw strict normalized-C equality is false, semantic equivalence is not established, and promotion is unauthorized. Independent review and remaining KMI/semantic-counterexample evidence are still open. See attestation/haptic_aw8693x_creat_node_20261102/README.md.

## Update 2026-11-02 — I²C module registration core revalidation

haptic_86938_i2c_init (init_module@001119fc) and
haptic_86938_i2c_exit (cleanup_module@00111a64) pass the current hard
protocol core. The final report at
reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_i2c_registration_20261102/protocol_core_v6_mapbound/hard_protocol_report.json
records all eight automated gates as PASS. Those function-scoped Docker cycles produced SHA-256 d6177430412b5355d6b662eb79b2b8939b14a48c3c32f717b6f4c8e8e65e569f at that time. The current canonical module is 175f305a0f7d4348bed2a6db8eb901ddfb3f3eaa59d844ececd861f25e23a34c; the fresh whole-module assembly review confirms both registration function bodies match stock. Function-scoped assembly,
relocations, Ghidra decompilation/P-Code, KCFI and Joern gates pass. The
registration-object audit separately passes all 31 checks.

The first fresh run exposed a stale candidate Ghidra export; it was regenerated
from the reproducible Docker module and the final core run now binds the export,
map, 191 source files and 10 runner scripts by hash. The registration functions
remain candidate_under_static_validation; semantic equivalence and promotion
are not claimed. The broader callback-table gate, host harness, KMI type review,
LLVM IR diagnosis, semantic counterexample and independent review remain
outstanding. The whole haptic_86938 driver remains incomplete. See the
revalidation notes at
../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_i2c_registration_20261102/REVALIDATION_NOTES.md.

## Update 2026-11-01 — aw_remove

The `aw_remove@0010823c` callback has an exact source candidate. Its 300-byte AArch64 body, relocations, and KCFI type match stock; the host teardown harness passes three GPIO scenarios, and two Docker builds are byte-identical. The earlier data audit described a pre-callback candidate and is historical. In the current candidate, `richtap_misc.fops` relocates to `left_fops`, with `unlocked_ioctl` at `left_fops + 0x50` and `mmap` at `left_fops + 0x60`; both target function bodies match stock. See `attestation/current_module_assembly_review_20261102/richtap_fops_relocation_review.json`. Whole-driver semantic and hardware gates remain open. Promotion and hardware readiness are not claimed. See [the aw_remove attestation](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_aw_remove_20261101/README.md).

## Update 2026-11-01 — richtap_file_mmap

`richtap_file_mmap@0010e92c` is now implemented in the candidate and wired to `left_fops.mmap`. Protocol core v10 passes all seven required gates. The function body matches stock at 248 bytes / 62 instructions, with matching relocations and KCFI ID `0x7de14acc`; two Docker builds are byte-identical. A direct `.altinstructions` audit also caught and fixed the missing `ARM64_BTI` record at `+0x1c`; all four function-scoped ARM64 alternative records now match stock. See the [mmap attestation](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_richtap_file_mmap_20261101/README.md).
## Whole-driver evidence and prior repairs

The repaired stock Ghidra export contains 160/160 exact name-and-size identities, and the `__fortify_panic` non-returning annotation removes the prior P-Code failure in `ram_load@00105cb4`. Those repairs remain preserved under `attestation/haptic_current_docker_snapshot_20261102/`.

The earlier `get_ram_num@00106020` function-scoped hard-protocol run passed its automated core gates, but its report remains bound to the candidate hash recorded in that report. The current full-function assembly review independently confirms the current candidate body; whole-driver semantic, kernel-concurrency, sanitizer and hardware gates remain open.

The current verdict is based on the canonical Docker audit plus the hash-bound assembly and Richtap relocation review above. Static verification does not authorize deployment or a 100% reconstruction claim.

## Update 2026-11-02 — managed LED teardown can requeue vibrator work

The stock remove callback cancels state+0x428 before returning. Target driver-core cleanup releases the managed LED afterward; target led-class unregister sets the LED off and invokes the driver's synchronous brightness_set callback. On the successful-RAM path, the callback still sees state+0x6 set and can requeue state+0x428. The LED framework flushes only its own work item, so the driver work can race teardown and devres state release. This is the seventh conditional static lifetime risk; runtime manifestation is unverified. No source changed and no rebuild was needed. See the [LED teardown callback review](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_richtap_lifetime_review_20261102/led_teardown_callback_lifetime.json).
## Update 2026-11-02 — LED-child sysfs window during remove

Raw stock relocations show that the LED child's generic sysfs group contains ram_update_store and activate_aw_store; the AW-specific group contains rtp_auto_sin_store and is reachable through function-table slot 1 in aw_i2c_probe. Target devres removes the LED child only after aw_remove returns. During that window, the stores can resubmit state+0x428/state+0x3a0 after aw_remove cancels them, or request asynchronous RAM firmware with raw state context. This adds a confirmed producer path to HAP-FW-01 and HAP-LED-01; runtime behavior is unverified. No source changed and no rebuild was needed. See the [sysfs teardown review](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_richtap_lifetime_review_20261102/sysfs_remove_window_review.json).
## Update 2026-11-02 — complete synchronous sysfs store teardown window

The map binds all 33 generic and AW-specific store callbacks to exact candidate sources and stock assembly. Both sysfs groups live on the managed LED child, which target devres unregisters after aw_remove returns. The stock remove body does not remove the groups or take their callback mutex before freeing internal resources.

Four sysfs stores can resubmit work after remove-time cancellation: activate_store/activate_aw_store target state+0x428; aw_rtp_store/rtp_auto_sin_store target state+0x3a0. ram_update_store can submit the raw-state firmware callback. The remaining callbacks include I2C, timers, state mutation, and callback-owned allocations. Static race path only; no runtime or hardware reproduction. No source changed and Docker rebuild was unnecessary. See the complete store callback teardown review at ../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_richtap_lifetime_review_20261102/sysfs_store_callback_teardown_review.json.

## Update 2026-11-02 — sysfs show callbacks reach hardware during teardown

The two LED-child groups expose 38 show callbacks; all are mapped to exact candidate source and stock assembly. Eleven show callbacks use indirect chip-table calls. Hash-bound examples show RAM/register/sequence reads through I2C, and some getters update cached state. The groups remain until managed LED release after aw_remove returns, so synchronous show calls can overlap resource and bus teardown. The show paths contain no direct workqueue or async firmware relocation. No runtime reproduction or source change; Docker rebuild was unnecessary. See the show callback teardown review at ../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_richtap_lifetime_review_20261102/sysfs_show_callback_teardown_review.json.

## Update 2026-11-02 — timer/work cancellation order leaves a requeue window

Stock aw_remove calls cancel_work_sync on state+0x560 before hrtimer_cancel on +0x520; audio_timer_func can queue +0x560 and rearm its timer. It also drains +0x428 before canceling the producer timer at +0x330; vibrator_timer_func queues +0x428. A callback already running during the first work drain can therefore enqueue after that drain, and aw_remove has no second cancel for either item. Exact init, timer, worker, and remove assembly plus mapped candidate hashes are in [the timer/work teardown review](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_richtap_lifetime_review_20261102/timer_work_teardown_review.json). Static finding only; no runtime reproduction. No source changed and Docker rebuild was unnecessary.

## Update 2026-11-02 — Richtap ioctl can resubmit the RTP worker after cancellation

The stock 0x520a ioctl branch submits richtap_rtp_work at state+0x648. In aw_remove, that item is canceled before the RTP buffer at +0x608 and FIFO pages at +0x610 are freed; misc_deregister comes later and does not drain already-open file descriptors. An existing descriptor can therefore submit the worker during the teardown window. The 0x5213 ioctl does not queue work; it only logs and returns. Hash-bound stock assembly, Ghidra output, source mappings and the conditional static finding are recorded in richtap_ioctl_requeue_lifetime_review.json. Runtime behavior remains unverified. Reconstruction source did not change, so no Docker rebuild was needed.
## Historical finding 2026-11-02 — HAP-RICHTAP-03 callback effects resolved from stock ELF

The +0x668 stop worker calls stock function-table slots +0xf0, +0x38 and +0x110. A read-only Docker llvm-readelf inspection of the stock module resolves them to aw8693x_irq_clear, aw8693x_stop and aw8693x_set_rtp_aei. Their callback bodies perform I2C reads/writes; aw_remove releases the IRQ and never drains +0x668. The worker can therefore continue hardware/state operations through teardown and may outlive devres state release. The exact ELF relocations, assembly, Ghidra and source hashes are in richtap_stop_work_callback_teardown_review.json. This refines existing finding HAP-RICHTAP-03; runtime behavior remains unverified. No source changed and no Docker rebuild was needed.
## Update 2026-11-02 — Richtap IRQ and stop work lack shared serialization

Static stock analysis shows that the active Richtap threaded IRQ path services FIFO state without the mutex used by the +0x668 stop worker. Both paths read SYSINT; the stop worker also changes play mode, stops the chip through I2C, updates RTP AEI through aw8693x_set_rtp_aei(0), and clears the active flag. Their operations may overlap while the device is active. This is a conditional concurrency risk, not a reproduced failure; no hardware outcome is asserted. The hash-bound evidence and read-only Docker ELF inspection are in [the IRQ/stop serialization review](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_richtap_lifetime_review_20261102/richtap_irq_stop_serialization_review.json). No reconstruction source changed and no rebuild was needed.

## Update 2026-11-03 — partial probe teardown hardening

The stock probe can return success before publishing `g_aw_haptic` when workqueue or RTP/page allocation fails. The remove path now distinguishes that partial state from full initialization: it only cancels Richtap work and frees `+0x608` after publication, cancels the RAM delayed work only after `ram_work_init` could run, and avoids freeing an IRQ already released by the allocation-failure path. The probe wrapper records the partial singleton until remove so another I2C probe cannot reuse the global driver state meanwhile.

The candidate wraps `misc_register` to record successful registration and only calls `misc_deregister` for a published, registered device. The NX809J misc core's `list_del` is unsafe for an object never added to `misc_list`. Direct `gpio_free` calls were removed from probe cleanup and remove; the two GPIOs were acquired with `devm_gpio_request_one`, so devres now releases each once. On pages allocation failure the stock probe already frees the RTP buffer but leaves `+0x608` non-NULL; partial remove skips that stale pointer.

Two clean canonical Docker builds matched at SHA-256 `116f401d4f5d708f93d4c9cce26f516d1e0c0ac4a37c44aace2b0d6d453da051` (6,694,976 bytes). The refreshed canonical offline audit remains `INCOMPLETE` at 1/10 gates. It has no paired stock/Ghidra or engineering run, assembly manifest, or Ghidra function inventory; therefore map coverage is held incomplete rather than falsely failing a promoted function mapping. ABI/layout, microtask, current-stock KCFI, current build/parity, and independent-review evidence are also missing from the canonical audit inputs. This is static hardening/build evidence only; no hardware/runtime result is claimed. See [partial probe teardown attestation](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_partial_probe_teardown_20261103/README.md).
## Update 2026-11-03 — sysfs and Richtap teardown windows revalidated

The November 2 stock-based reviews identified sysfs callbacks that could overlap resource teardown and an ioctl path that could enqueue work after cancellation. The current candidate closes these static paths: `aw_remove` blocks file access and drains active ioctl operations, then unregisters the LED child before canceling work or freeing state. Both sysfs groups are attached to that child kobject; the pinned NX809J kernel's `device_unregister`/`kernfs_remove` path drains active callbacks synchronously. This disposition is bound to candidate SHA-256 `116f401d4f5d708f93d4c9cce26f516d1e0c0ac4a37c44aace2b0d6d453da051`; runtime and hardware behavior remain unverified. See [the teardown revalidation](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_sysfs_teardown_revalidation_20261103/README.md).
## Historical revalidation 2026-11-03 — HAP-RICHTAP-06 on candidate D2705EC7

This revalidation compared the earlier review bound to candidate `175f305a…e23a34c`. Candidate `d2705ec7…fae421` takes one shared mutex around the complete active `irq_handle_stock_exact` path and the complete `+0x668` stop-worker callback sequence. Docker LLVM disassembly confirms both lock paths in the D270 ELF. Stock Ghidra evidence shows the IRQ and stop worker used different per-device mutexes (`+0x370` and `+0x2f0`), with no shared lock. Candidate D2705EC7 therefore closed HAP-RICHTAP-06 for overlap between these two paths while the device is active.

During removal, the shutdown gate is set before teardown, IRQ synchronization and `cancel_work_sync(+0x668)` drain the two users before workqueue destruction and state retirement. This review is limited to that IRQ/stop pair; other I2C paths are outside its lock-coverage claim. Runtime stress, hardware behavior, and independent review remain pending. The read-only inspection used the D270 ELF already bound to the two builds in the preceding probe-interface publication update. See [the D270 IRQ/stop revalidation](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_irq_stop_lock_revalidation_20261103/README.md).

## Update 2026-11-03 — HAP-RICHTAP-03 stop-worker teardown closed on D4AECDD6

The prior HAP-RICHTAP-03 finding was bound to candidate `175f305a…e23a34c`. The current candidate `d4aecdd6…e4722e0` gates file operations and drains active ioctls before calling `cancel_work_sync(+0x668)`. The ioctl producer is therefore unable to enqueue new stop work, and any queued or running stop worker finishes before `devm_free_irq`. The worker's shutdown checks and shared IRQ/stop mutex remain present; later work cancellation and workqueue destruction occur before state retirement.

Read-only Docker disassembly shows the `+0x668` cancellation at `aw_remove+0x88`, before `devm_free_irq` at `aw_remove+0xe8`. Stock callback evidence shows the stop worker can perform I2C operations, and stock `aw_remove` did not drain this work item. The current candidate closes HAP-RICHTAP-03 and revalidates HAP-RICHTAP-06 for its exact module hash. Two clean post-promotion Docker builds matched at `d4aecdd6…e4722e0`; candidate runtime content and section layout match those builds. The overall audit remains incomplete because strict undefined-symbol parity has one missing stock import and nine additional lifetime-support imports. Runtime, hardware and independent review remain pending. See [the candidate-bound teardown revalidation](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_richtap_stop_work_teardown_revalidation_20261103/README.md).

## Revalidation 2026-11-03 — HAP-TIMER-WQ-01 statically addressed in current candidate

The prior finding describes the stock module's single-drain ordering. In the current lifetime-hardened candidate, `aw_remove` closes admission through `haptic_lifetime_block_file_access` first. The vibrator and audio timer callbacks check the shutdown gate before queuing work; the audio callback also rearms its timer only after that gate. The work wrappers apply the same gate before entering the stock worker bodies. The candidate then cancels both timers, drains the associated work, repeats both timer cancellations and work drains, and destroys the workqueue only afterward. Candidate disassembly confirms the call order and timer/work offsets. The exact target-kernel `hrtimer_cancel` waits for an active callback, and `cancel_work_sync` drains pending/running work. This statically addresses HAP-TIMER-WQ-01 for this candidate; it is not runtime or hardware validation. Candidate SHA-256: `7e0af6fc3bbac603f1dbc2e59774897f7cc1f019b8aab7747a6d798a1be54098`. The independent build remains `incomplete_or_failed` because strict undefined-symbol parity is still false. Evidence: [revalidation attestation](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_timer_work_teardown_revalidation_20261103/README.md).

## Revalidation 2026-11-03 — HAP-RICHTAP-05 statically addressed in current candidate

The historical ioctl finding remains correct for the stock module. In the current candidate, `haptic_lifetime_block_file_access` sets shutdown and marks the lifetime as dying before deregistering the misc device, then waits for active ioctl operations. The target kernel serializes `misc_open` and `misc_deregister` on `misc_mtx`; this blocks new opens and waits for an open callback already holding that mutex, while existing file descriptors are handled by the lifetime gate. `richtap_file_unlocked_ioctl` increments `active_ops` before invoking the stock-exact ioctl body and decrements it afterward. The stock-exact 0x520a branch queues the worker at state+0x648. Once active ioctls drain, `aw_remove` cancels +0x648 before freeing the RTP buffer at +0x608 and retiring state/FIFO pages. The worker has no self-requeue path in stock assembly and the candidate also gates entry after shutdown. This statically addresses HAP-RICHTAP-05 for candidate SHA-256 `7e0af6fc3bbac603f1dbc2e59774897f7cc1f019b8aab7747a6d798a1be54098`. No runtime or hardware reproduction was performed; strict undefined-symbol parity remains unresolved. Evidence: [revalidation attestation](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_richtap_ioctl_requeue_revalidation_20261103/README.md).
## Update 2026-11-03 — HAP-FW-01 RAM firmware and probe allocation failure

Stock Ghidra and assembly show that a NULL result from alloc_workqueue skipped ram_work_init, freed the probe state, and returned zero before misc/global publication. The exact probe now returns -ENOMEM on that branch; the wrapper clears i2c clientdata on any probe error. A successful path also requires state+0x448 before registering LED/sysfs, so delayed work at +0x3c0 cannot be used before initialization.

The current callback path counts asynchronous firmware requests, suppresses ram_load after shutdown, drains callbacks during remove, then cancels delayed work again before state retirement. Two isolated canonical Docker builds from the curated haptic_86938 snapshot matched at SHA-256 6cbdd9dbab1a4581f98654fa845e77a94b99d4ef68bc4d64bf656c4c6f5e1fb3 (6,700,392 bytes), target kernel commit 3356b35306d35d5a480e3b63df1a9f065b5d9f55.

The refreshed ABI audit remains incomplete: target vermagic and symbol CRC checks pass, while stock import parity is false (missing gpio_free and nine additional lifetime-support imports). This is static candidate evidence only; runtime and hardware behavior remain unverified. See [HAP-FW-01 revalidation](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_ram_firmware_revalidation_20261103/README.md).