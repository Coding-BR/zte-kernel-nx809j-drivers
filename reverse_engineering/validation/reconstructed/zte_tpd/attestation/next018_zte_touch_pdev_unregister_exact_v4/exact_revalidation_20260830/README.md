# Exact revalidation: `zte_touch_pdev_unregister`

This package records the offline exact-function revalidation of microtask `018_zte_touch_pdev_unregister` for `zte_tpd`.

- Stock entry: `0x001083b4`; stock body and ELF symbol: 96 bytes.
- Docker canonical build: two identical cycles; candidate module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: PASS; 24 instructions and 96 bytes on both sides. The `tpd_cdev + 0xdd0` test, stock null-slot guard call, `platform_device_unregister` call, and no-op nonzero-slot path are preserved.
- KCFI comparison: PASS; `.text`, 96 bytes, type ID `0xe5c47d60` on stock and candidate.
- Joern strict gate: PASS; parse-clean, one-to-one function identity, 10 calls, one control structure, and zero unresolved calls.
- Host contract: two reproducible Docker ASan/UBSan cycles covering nonzero-slot no-op, null-slot guard/unregister, repeated null-slot behavior, and guard-pointer replacement.

The null-slot behavior is reproduced as observed stock behavior and is not a safety approval. Platform-bus lifecycle, live device state, smartphone execution, and NX809J hardware behavior remain deferred.
