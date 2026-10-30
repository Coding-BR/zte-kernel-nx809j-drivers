# Exact revalidation: `zte_touch_remove`

This package records the offline exact-function revalidation of microtask `026_zte_touch_remove` for `zte_tpd`.

- Stock entry: `0x00109668`; stock body and ELF symbol: 52 bytes.
- Docker canonical build: two identical cycles; candidate module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: PASS; 13 instructions and 52 bytes on both sides. The printk format/arguments and the call to `zte_touch_deinit` remain in the stock order.
- KCFI comparison: PASS; `.text`, 52 bytes, type ID `0xe5c47d60` on stock and candidate.
- Joern strict gate: PASS; parse-clean, one-to-one function identity, three calls, zero control structures, and zero unresolved calls.
- Host contract: two reproducible Docker ASan/UBSan cycles covering three direct logging/deinitialization-order cases.

The claim is offline exact-function parity only. Platform-bus teardown, dependent driver state, smartphone execution, and NX809J hardware behavior remain outside the host harness.
