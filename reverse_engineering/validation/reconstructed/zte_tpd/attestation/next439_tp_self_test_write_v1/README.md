# `tp_self_test_write` Attestation

Status: `OFFLINE_EXACT`

This microtask reconstructs the stock `zte_tpd` proc-write function `tp_self_test_write` at AArch64 function level. Hardware execution is intentionally deferred.

## Static contract

- Stock entry: `0x0010cc50`
- Function size: `148` bytes
- Instruction count: `37`
- Firmware allocation request: `0x100000` bytes
- Test callback: `tpd_cdev + 0xfa0`, with KCFI type check `0x73fc0d79`
- Result source: `tpd_cdev + 0x448`
- Result destination: first qword of the firmware container at `tpd_cdev + 0xc58`
- Successful return: original `count`
- Allocation failure: logs the stock message and returns `-12`

## Required gates

| Gate | Result |
| --- | --- |
| Ghidra decompilation and P-Code | PASS |
| Joern strict analysis | PASS; no blockers, parse problems or unresolved calls |
| Host ASan/UBSan harness | PASS; 3 cases, 2 runs |
| Canonical Docker build | PASS; 2 cycles |
| AArch64 instruction/relocation comparison | PASS; exact 37/37 instructions and 148/148 bytes |
| KCFI comparison | PASS; type `0xc3d43b4d` |

## Evidence

- Candidate artifact SHA-256: `3c9c29854e6788e25a9b27b4a4697db46c64dd9f849e6697295e61f726d19339`
- Candidate artifact size: `29591104` bytes
- Candidate source SHA-256: `d6574aa44a629e01f5bcffafd5d85be225b303d662a591d4b9002cb0b0fb3c99`
- Reconstruction map SHA-256: `1f37b32b4014f5a23d3e63f2b762f1e47927dbda3e5e8ce7f213381190315995`
- Stock assembly SHA-256: `c3c77b74e4ab429361d9d57adfa5d0814303a9f59b461b6d87f3c71f6e4d1a18`
- Candidate assembly SHA-256: `13cdbc98b3ef505bb6711762de9bc141b4268a33edcfa1e9d8b1a97c11a7cb26`

The stock and candidate assembly manifests, relocation comparison, KCFI reports, Joern reports, host harness, canonical build logs, source sync report and module artifact are stored beside this file.

`OFFLINE_EXACT` is not a claim of hardware equivalence. Promotion remains disabled until controlled device validation is performed separately.
