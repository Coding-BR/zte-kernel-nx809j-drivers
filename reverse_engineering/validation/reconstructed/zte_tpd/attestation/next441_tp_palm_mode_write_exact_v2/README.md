# `tp_palm_mode_write` Attestation

Status: `OFFLINE_EXACT`

This microtask reconstructs the stock `zte_tpd` sysfs-write function `tp_palm_mode_write` at AArch64 function level. Hardware execution is intentionally deferred.

## Static contract

- Stock entry: `0x0010cddc`
- Function size: `208` bytes
- Instruction count: `52`
- Input parser: `kstrtouint_from_user(..., 10, ...)`
- Value contract: any successful nonzero input becomes `1`; zero remains `0`
- Log format: `"\\0015tpd: %s val = %d\\n"`
- Callback: indirect call at `tpd_cdev + 0xfb0`, guarded by KCFI type `0xc3d43b4d`
- Invalid input: returns `-EINVAL` (`-22`) without log or callback

## Required gates

| Gate | Result |
| --- | --- |
| Ghidra decompilation and P-Code | PASS |
| Joern strict analysis | PASS; no blockers, parse problems or unresolved calls |
| Host ASan/UBSan harness | PASS; 3 cases, 2 runs |
| Canonical Docker build | PASS; 2 cycles |
| AArch64 instruction/relocation comparison | PASS; exact 52/52 instructions and 208/208 bytes |
| KCFI comparison | PASS; type `0xc3d43b4d` |

## Evidence

- Candidate artifact SHA-256: `5c8c71a85a593eaedb7a6089275e420478c0d23428f0371b6fdf7cc68048db27`
- Candidate artifact size: `29503400` bytes
- Candidate source SHA-256: `aeb192ff05b16dc5eeab194e5d31f79798653275998d8c78e3633d7c85fdbc8e`
- Reconstruction map SHA-256: `0e3bf81f781257701a67c9791feda332aa00df67b35566ccb7f11018df84c34f`
- Stock assembly SHA-256: `12b9dbe9f22fb19241016553018f8280e12b2f6804368fbc27e1d8bd36e44`
- Candidate assembly SHA-256: `9024fef31224aa1a04995cb8108ba5d3f56f28a18513c312ef3602e2acbdf9a7`

The stock and candidate assembly manifests, relocation comparison, KCFI reports, Joern reports, host harness, canonical build logs, source sync report and module artifact are stored beside this file.

`OFFLINE_EXACT` is not a claim of hardware equivalence. Promotion remains disabled until controlled device validation is performed separately.
