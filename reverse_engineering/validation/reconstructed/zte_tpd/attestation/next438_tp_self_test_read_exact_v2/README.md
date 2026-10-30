# `tp_self_test_read` Attestation

Status: `OFFLINE_EXACT`

This microtask reconstructs the stock `zte_tpd` proc-read function `tp_self_test_read` at AArch64 function level. Hardware execution is intentionally deferred.

## Static contract

- Stock entry: `0x0010cae8`
- Function size: `356` bytes
- Instruction count: `89`
- Read gate: a nonzero `*offset` returns `0`
- Data buffer: `3520` bytes from `__kmalloc_cache_noprof` with cache offset `+0x60`
- Self-test callback: `tpd_cdev + 0xf98`, with KCFI type check `0x64f25fb2`
- State container: `tpd_cdev + 0xc58`; nested buffer is freed with `vfree()` and the container with `kfree()`
- State reset: `tpd_cdev + 0x448` is written as zero
- Allocation failure: logs the stock message and returns `-12`

## Required gates

| Gate | Result |
| --- | --- |
| Ghidra decompilation and P-Code | PASS |
| Joern strict analysis | PASS; no blockers or unresolved calls |
| Host ASan/UBSan harness | PASS; 4 cases, 2 runs |
| Canonical Docker build | PASS; 2 cycles |
| AArch64 instruction/relocation comparison | PASS; exact 89/89 instructions and 356/356 bytes |
| KCFI comparison | PASS; type `0xf4e9d97c` |

Joern records three lifetime and one userspace-egress review findings for the observed allocation, cleanup and `simple_read_from_buffer` contract. They are preserved in `joern_gate_report.json`; they do not block the strict gate.

## Evidence

- Candidate artifact SHA-256: `bd011ad09edd2709573b22fa3aa4262f781b03e9dbe63a578988a94334ecb1b8`
- Candidate artifact size: `29716152` bytes
- Candidate source SHA-256: `88aab8e0df90933760df6d9fe7f82b1d7ef044392a09b04033d9ac090fd6173e`
- Reconstruction map SHA-256: `0b4e948df87f82d5777008bb449d4cbeea8025fe8c5ac75a2e101a7bd03d7955`
- Stock assembly SHA-256: `599f1ab306d8eef3a6da0d250253acb8e555638c8208bcb8b3242db608368425`
- Candidate assembly SHA-256: `a4e7ee9a5711ab7a9097ee6babe86cb7eaaabd47570c02b8272c5345a486b44e`

The stock and candidate assembly manifests, relocation comparison, KCFI reports, Joern reports, host harness, canonical build logs, source sync report and module artifact are stored beside this file.

`OFFLINE_EXACT` is not a claim of hardware equivalence. Promotion remains disabled until controlled device validation is performed separately.
