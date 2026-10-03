# `tp_wake_gesture_write` Attestation

Status: `OFFLINE_EXACT`

This microtask reconstructs the stock `zte_tpd` function `tp_wake_gesture_write` at AArch64 function level. Hardware execution remains deferred.

## Static contract

- Stock entry: `0x00109b1c`
- Function size: `208` bytes
- Instruction count: `52`
- Parse userspace input with `kstrtouint_from_user` in base 10
- Return `-EINVAL` on parse failure without logging or invoking the callback
- Normalize successful input to boolean zero or one
- Load the optional callback from `tpd_cdev + 0xe30`
- Return the original write count on success

## Required gates

| Gate | Result |
| --- | --- |
| Ghidra decompilation and P-Code | PASS |
| Joern strict analysis | PASS; zero unresolved calls |
| Host ASan/UBSan harness | PASS; 3 cases, 2 cycles |
| Canonical Docker build | PASS; 2 cycles, reproducible |
| AArch64 instruction/relocation comparison | PASS; exact 52 instructions and 208 bytes |
| KCFI comparison | PASS; type `0xc3d43b4d`, callback type `0x6af8b499` |

## Evidence

- Candidate artifact SHA-256: `54e0eafa0e63aace10bf7dc28fb9b32698ab74c75df8fcf749f7ba8564f906a5`
- Candidate artifact size: `17699776` bytes
- Candidate source SHA-256: `6dcf116774e4e0e459c2a0a2cdf11057cadf604982ef06e48350745a25ca36fe`
- Stock assembly SHA-256: `a706f5b4d44d0112480b07a097cbabbc649e3015337ecea752efd1e16c113034`
- Candidate assembly SHA-256: `c715948990b321249d288191e383efe4835c9d9deb274d161718becc5f6f3de5`

The stock and candidate assembly manifests, relocation comparison, KCFI reports, Joern reports, host harness, canonical build report, source sync report and module artifact are stored beside this file.

`OFFLINE_EXACT` does not claim hardware equivalence. Controlled device validation remains a separate step.
