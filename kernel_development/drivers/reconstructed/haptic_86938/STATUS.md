# haptic_86938 reconstruction status

## Current canonical snapshot — 2026-11-02

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
## Update 2026-11-02 — HAP-RICHTAP-03 callback effects resolved from stock ELF

The +0x668 stop worker calls stock function-table slots +0xf0, +0x38 and +0x110. A read-only Docker llvm-readelf inspection of the stock module resolves them to aw8693x_irq_clear, aw8693x_stop and aw8693x_set_rtp_aei. Their callback bodies perform I2C reads/writes; aw_remove releases the IRQ and never drains +0x668. The worker can therefore continue hardware/state operations through teardown and may outlive devres state release. The exact ELF relocations, assembly, Ghidra and source hashes are in richtap_stop_work_callback_teardown_review.json. This refines existing finding HAP-RICHTAP-03; runtime behavior remains unverified. No source changed and no Docker rebuild was needed.