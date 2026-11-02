# Haptic `vibrator_timer_func` reconstruction

Target: stock `vibrator_timer_func@001096b4`, 52 bytes, KCFI type `0xe3cff753`.

The callback is registered for the hrtimer at `parent+0x330`. It clears the 32-bit state at `parent+0x40`, queues the work item at `parent+0x428` on CPU 32 using the workqueue at `parent+0x448`, and returns `HRTIMER_NORESTART`. The embedded work item and state offsets are cross-checked against `vibrator_init` and `vibrator_work_routine`; the inferred callback signature is confirmed by the matching KCFI type.

`core_v1/hard_protocol_report.json` records `CORE_GATES_PASS`. All eight automated core gates pass: input and map identity, scoped Joern and usage slice, two reproducible Docker builds, exact assembly and relocation comparison, candidate Ghidra C/P-Code comparison, and KCFI. Both clean builds produced identical module SHA-256 `47746580fed5c25d78b5c0f1a625b592ab2b964e47e7af6cae0be9114a644911` (3,235,080 bytes). The function body matches all 13 instructions and 52 bytes, including the `R_AARCH64_CALL26` relocation to `queue_work_on`; KCFI type `0xe3cff753` matches stock.

The function-level pass does not complete the `haptic_86938` module audit. The Docker audit still reports no canonical reconstructed `.ko`, an incomplete function map, and failed module-level vermagic, alias, and undefined-symbol parity checks. Promotion remains unauthorized. The core runner also records additional evidence still required for promotion and makes no hardware-behavior claim.

The stock `aw_remove` sequence cancels this work item before canceling the hrtimer. That ordering is preserved and flagged in `pre_candidate/MP5_LOCK_LIFETIME_CONTRACT.json` for a separate teardown-race review; this reconstruction does not change or certify the teardown sequence.
