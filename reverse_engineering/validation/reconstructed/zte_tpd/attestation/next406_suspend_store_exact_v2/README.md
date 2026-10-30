# `suspend_store` Attestation

Status: `OFFLINE_EXACT`

This microtask reconstructs the stock `zte_tpd` function `suspend_store` at AArch64 function level. Hardware execution remains deferred.

## Static contract

- Stock entry: `0x0010a2ac`
- Function size: `276` bytes
- Instruction count: `69`
- Parse userspace input with `kstrtouint_from_user` in base 10
- Return `-EINVAL` on parse failure without taking the mutex
- Normalize successful input to boolean zero or one
- Compare and update device state at `tpd_cdev + 0x16` under mutex `tpd_cdev + 0xc60`
- Invoke the optional callback at `tpd_cdev + 0xe60` with value zero
- Preserve the inline callback KCFI literal `0x38d5b490`

## Required gates

| Gate | Result |
| --- | --- |
| Ghidra decompilation and P-Code | PASS |
| Joern strict analysis | PASS; zero unresolved calls |
| Host ASan/UBSan harness | PASS; 4 cases, 2 cycles |
| Canonical Docker build | PASS; 2 cycles, reproducible |
| AArch64 instruction/relocation comparison | PASS; exact 69 instructions and 276 bytes |
| KCFI comparison | PASS; type `0xc3d43b4d`, callback literal `0x38d5b490` |

## Evidence

- Candidate artifact SHA-256: `d2cfb37652bd209e597011ea7896bce1c43c1c3e9312c506717646dd09bf04f3`
- Candidate artifact size: `17699128` bytes
- Candidate source SHA-256: `4fc41fd624044d5b6f6230fe1ceb8d5bf2f3116d2d5ae259051a134c4eda7680`
- Stock assembly SHA-256: `67878b848098ebcc0ecfec6206a69dbe0d887eac19ed18528411e6b2449595e3`
- Candidate assembly SHA-256: `d6d33301bdca0ff8247a7121b93403fcf758d979c0c71667d4164e74baadcc73`

The stock and candidate assembly manifests, relocation comparison, KCFI reports, Joern reports, host harness, canonical build report, source sync report and module artifact are stored beside this file.

`OFFLINE_EXACT` does not claim hardware equivalence. Controlled device validation remains a separate step.
