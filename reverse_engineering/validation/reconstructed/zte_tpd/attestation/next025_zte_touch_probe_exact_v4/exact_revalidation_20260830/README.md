# Exact revalidation: `zte_touch_probe`

This package records the offline exact-function revalidation of microtask `025_zte_touch_probe` for `zte_tpd`.

- Stock entry: `0x001087e4`; stock body and ELF symbol: 3,712 bytes.
- Docker canonical build: two identical cycles; candidate module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: PASS; 928 instructions and 3,712 bytes on both sides. The recovered probe preserves allocation and publication, device-tree property gates/defaults, field offsets, logging, initialization calls, and error/return paths.
- KCFI comparison: PASS; `.text`, 3,712 bytes, type ID `0xc7f8c87c` on stock and candidate.
- Joern strict gate: PASS; parse-clean, one-to-one function identity, 594 calls, 61 control structures, and zero unresolved calls. The review retains one high-severity lifetime finding and two high-severity synchronization findings for runtime follow-up.
- Host contract: two reproducible Docker ASan/UBSan cycles covering four direct probe-property and branch-effect cases.

The claim is offline exact-function parity only. Platform-bus/device-tree runtime, dependent driver state, allocation lifetime, synchronization, smartphone execution, and NX809J hardware behavior remain outside the host harness; the Joern findings are not treated as resolved by static parity.
