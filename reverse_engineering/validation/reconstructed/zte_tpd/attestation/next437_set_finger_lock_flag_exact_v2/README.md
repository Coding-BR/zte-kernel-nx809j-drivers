# `set_finger_lock_flag` Attestation

Status: `OFFLINE_EXACT`

This microtask reconstructs the stock `zte_tpd` function `set_finger_lock_flag` at AArch64 function level. Hardware execution is intentionally deferred.

## Static contract

- Stock entry: `0x0010ca00`
- Function size: `228` bytes
- Instruction count: `57`
- State field: `tpd_cdev + 0x474`
- Enable gate: `ufp_tp_ops + 0xa0`
- Completion object: `ufp_tp_ops + 0x80`
- Busy/device field: `tpd_cdev + 0x458`
- Error path: invalid userspace integer returns `-22` and preserves state
- Enabled path: calls `complete()` when the UFP gate is active, then reports the uevent only when the device is not busy

## Required gates

| Gate | Result |
| --- | --- |
| Ghidra decompilation and P-Code | PASS |
| Joern strict analysis | PASS; no review findings |
| Host ASan/UBSan harness | PASS; 4 cases, 2 runs |
| Canonical Docker build | PASS; 2 cycles |
| AArch64 instruction/relocation comparison | PASS; exact 57/57 instructions and 228/228 bytes |
| KCFI comparison | PASS; type `0xc3d43b4d` |

## Evidence

- Candidate artifact SHA-256: `f8afde59b011baec213d0b37bafab252ec23489f31e3bd5c05cf6a06fcb5a35f`
- Candidate artifact size: `29824296` bytes
- Candidate source SHA-256: `54258d1580118f8d977e692acdaea439555fc01ade35e3fa28ca91ad3aea2a3c`
- Reconstruction map SHA-256: `2ab78e6325a2294afcd3c4de7503c7b370dc410ed9e66487d37e8a9b43f9b301`
- Stock assembly SHA-256: `c2e8557db8ad294e76a33fa1dd2dd7d47e83afb0597914d0fb8ed312897276e2`
- Candidate assembly SHA-256: `46372838ff7b03aeeb788538fa98d23296d68eceaf646e2c8cbc6d717812c509`

The stock and candidate assembly manifests, relocation comparison, KCFI reports, Joern reports, host harness, canonical build logs, source sync report and module artifact are stored beside this file.

`OFFLINE_EXACT` is not a claim of hardware equivalence. Promotion remains disabled until controlled device validation is performed separately.
