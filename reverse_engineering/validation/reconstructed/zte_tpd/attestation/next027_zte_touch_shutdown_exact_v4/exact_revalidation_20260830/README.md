# Exact revalidation: `zte_touch_shutdown`

This package records the offline exact-function revalidation of microtask `027_zte_touch_shutdown` for `zte_tpd`.

- Stock entry: `0x001096a0`; stock body and ELF symbol: 224 bytes.
- Docker canonical build: two identical cycles; candidate module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: PASS; 56 instructions and 224 bytes on both sides. The callback guard/dispatch, workqueue teardown order, cancellation offsets, firmware-data release/clear, and final delayed-work cancellation are preserved.
- KCFI comparison: PASS; `.text`, 224 bytes, type ID `0x24a11bb9` on stock and candidate.
- Joern strict gate: PASS; parse-clean, one-to-one function identity, 32 calls, one control structure, and zero unresolved calls. The review retains three high-severity synchronization findings for runtime follow-up.
- Host contract: two reproducible Docker ASan/UBSan cycles covering two direct callback-present and callback-absent teardown cases.

The claim is offline exact-function parity only. Callback lifetime, delayed-work synchronization, platform-bus teardown, smartphone execution, and NX809J hardware behavior remain outside the host harness; the synchronization findings are not treated as resolved by static parity.
