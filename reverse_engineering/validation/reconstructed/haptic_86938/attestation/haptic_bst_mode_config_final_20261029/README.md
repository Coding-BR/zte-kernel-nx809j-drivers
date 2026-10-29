# aw8693x_bst_mode_config reconstruction candidate

- Stock entry: `0x00105cac`; function body: 204 bytes / 51 AArch64 instructions.
- Mode `0`: log bypass at stock line 510 and clear bit `0x20` in register `0x06`.
- Mode `1`: log boost at stock line 504 and set bit `0x20` in register `0x06`.
- Other values: emit the stock error log at line 516 with the original mode value.
- KCFI: stock and candidate type ID `0x1d0adf6e`.
- Assembly/relocations, normalized Ghidra C/P-Code, Joern, KCFI, identity, and Docker reproducibility gates all passed. Candidate SHA-256: `f93d7f3e7ae2cdcf66cf9cedf3b8b4b18dc1d9c66732d06cf19615e4a3ef083e` (4757888 bytes).
- Promotion remains unauthorized; status is `candidate_under_static_validation`.

The first C branch layout had correct size but different branch and relocation order. Reordering the control flow to match the stock mode-1, bypass, invalid sequence produced the exact 204-byte / 51-instruction body.

This attestation covers one function only. The haptic module still has unmapped functions and unresolved module-wide ABI parity; no hardware or full-driver equivalence is claimed.
