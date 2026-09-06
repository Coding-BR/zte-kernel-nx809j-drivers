# Exact revalidation: `tpd_proc_deinit`

This package records the offline exact-function revalidation of microtask `015_tpd_proc_deinit` for `zte_tpd`.

- Stock entry: `0x00107fa4`; stock body and ELF symbol: 544 bytes.
- Docker canonical build: two identical cycles; candidate module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: PASS; 136 instructions and 544 bytes on both sides. The NULL-directory early return, 30-entry removal order, parent pointer for every child, and final `touchscreen` removal with NULL parent are preserved. Module-specific relocation addresses are normalized by the comparison gate.
- KCFI comparison: PASS; `.text`, 544 bytes, type ID `0xe5c47d60` on stock and candidate.
- Joern strict gate: PASS; parse-clean, one-to-one function identity, one control structure, 32 calls, and zero unresolved calls.
- Host contract: two reproducible Docker ASan/UBSan cycles, three direct cases, 60 removals total.

The claim is offline exact-function parity only. ProcFS kernel concurrency, live device state, smartphone execution, and NX809J hardware behavior remain deferred.
