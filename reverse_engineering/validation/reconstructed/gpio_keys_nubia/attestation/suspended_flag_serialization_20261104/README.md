# gpio_keys_nubia — serialize `suspended` access

Date: 2026-11-04. This is an offline static hardening candidate; it is not a completed hardware validation.

## Finding and change

The stock GPIO interrupt handler reads `gpio_button_data.suspended`, while suspend, rollback, and resume write that byte without a common lock. The field is at offset `0x10a`; the existing per-button `spinlock_t` is at `0x104` and is initialized before IRQ registration. The stock operations are byte-sized, so the finding is an unsynchronized old/new observation window, not evidence of a torn multi-byte value.

The candidate adds shared read/write helpers that derive the containing button record and protect the access with its existing `spin_lock_irqsave` lock. `READ_ONCE`/`WRITE_ONCE` remain inside the critical section, the structure layout is unchanged, and assembly trampolines preserve the surrounding control flow and the suspend rollback's live return value and condition flags. An IRQ that runs before the PM writer acquires the lock can still observe the previous state.

## Static validation

- Canonical Docker pipeline: `static_verified`; two clean builds produced the same candidate SHA-256: `71e0d676926830b9c108ef11172057405dfce9dee88d96717630d8381b035fdf` (242,256 bytes).
- Fresh AArch64 extraction: all 24 stock function identities present. Strict stock comparison has 20 exact identities and four expected hardening deviations: `gpio_keys_gpio_isr`, `gpio_keys_gpio_report_event`, `gpio_keys_resume`, and `gpio_keys_suspend`. No unintended differences were reported.
- The preserved `gpio_keys_gpio_report_event` body passes its separate strict comparison. Both new serialized accessors were extracted and their lock/read-write/unlock sequences confirmed.
- The map is hash-bound to the candidate and records 20 `PROMOTED_OFFLINE_EXACT` functions and four reviewed hardening deviations. Whole-driver semantic equivalence remains `UNPROVEN`.

Primary evidence: `hardening_attestation.json`, `docker_validation_final.json`, `assembly_comparison_stock.json`, and `assembly_comparison_reporter_body.json`; helper and candidate assembly manifests are in the sibling directories.

## Remaining gates

Independent review is not performed. Hardware validation is pending; the phone is now visible to ADB, but this batch did not load the module or trigger a GPIO action. The separate shutdown window remains open: `gpio_keys_shutdown` calls suspend without draining pending work/timers. Treat this candidate as statically validated only, not as a fully reconstructed or hardware-verified driver.
