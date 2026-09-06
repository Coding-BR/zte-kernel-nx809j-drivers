# Exact revalidation: `tpd_probe_work_deinit`

This package records the offline exact-function revalidation of microtask `021_tpd_probe_work_deinit` for `zte_tpd`.

- Stock entry: `0x001084c0`; stock body and ELF symbol: 68 bytes.
- Docker canonical build: two identical cycles; candidate module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: PASS; 17 instructions and 68 bytes on both sides. The entry printk and `cancel_delayed_work_sync` call using `tpd_cdev + 2256` (`0x8d0`) are preserved; module-local string relocation addresses are normalized.
- KCFI comparison: PASS; `.text`, 68 bytes, type ID `0xe5c47d60` on stock and candidate.
- Joern strict gate: PASS; parse-clean, one-to-one function identity, four calls, and zero unresolved calls.
- Host contract: two reproducible Docker ASan/UBSan cycles covering the printk/offset contract and repeated teardown invocation.

The claim is offline exact-function parity only. Workqueue cancellation, timer scheduler behavior, live device state, smartphone execution, and NX809J hardware behavior remain deferred.
