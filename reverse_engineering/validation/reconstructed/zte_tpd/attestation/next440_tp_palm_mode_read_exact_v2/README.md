# `tp_palm_mode_read` Attestation

Status: `OFFLINE_EXACT`

This microtask reconstructs the stock `zte_tpd` proc-read function `tp_palm_mode_read` at AArch64 function level. Hardware execution is intentionally deferred.

## Static contract

- Stock entry: `0x0010cce8`
- Function size: `240` bytes
- Instruction count: `60`
- Read gate: a nonzero `*offset` returns `0`
- Refresh callback: `tpd_cdev + 0xfa8`, with KCFI type check `0x73fc0d79`
- State field: `tpd_cdev + 0x478`
- Log format: `"\\0015tpd: %s val: %d.\\n"`
- Value format: `"%u\\n"`, capped at ten bytes for `snprintf`
- Userspace copy: `simple_read_from_buffer`

## Required gates

| Gate | Result |
| --- | --- |
| Ghidra decompilation and P-Code | PASS |
| Joern strict analysis | PASS; no blockers, parse problems or unresolved calls |
| Host ASan/UBSan harness | PASS; 3 cases, 2 runs |
| Canonical Docker build | PASS; 2 cycles |
| AArch64 instruction/relocation comparison | PASS; exact 60/60 instructions and 240/240 bytes |
| KCFI comparison | PASS; type `0xf4e9d97c` |

Joern records one expected high-severity userspace-egress review finding for `simple_read_from_buffer`; it is preserved in `joern_gate_report.json` and does not block the strict gate.

## Evidence

- Candidate artifact SHA-256: `2a6dec8afaaac10c331c59ab6e4773be14bec9cba8f7ef65498c1b7d52a29cd1`
- Candidate artifact size: `29556448` bytes
- Candidate source SHA-256: `65e6027e95c07915b956ace077fc2adc0f2bd9b20e418a5b3a43d1a28b70b7a0`
- Reconstruction map SHA-256: `eb1ec6663de391b8915187325b8a02471ab61a1fbf215dc93154cd314719fa85`
- Stock assembly SHA-256: `becf12d1b867105b9cb5253e27c82bedd80eb7fe0421692f032261f845a23b1d`
- Candidate assembly SHA-256: `a87067a83ba29244fed72bae48e97c1a8f2971a293dcc6ce0f1f2d250036543c`

The stock and candidate assembly manifests, relocation comparison, KCFI reports, Joern reports, host harness, canonical build logs, source sync report and module artifact are stored beside this file.

`OFFLINE_EXACT` is not a claim of hardware equivalence. Promotion remains disabled until controlled device validation is performed separately.
