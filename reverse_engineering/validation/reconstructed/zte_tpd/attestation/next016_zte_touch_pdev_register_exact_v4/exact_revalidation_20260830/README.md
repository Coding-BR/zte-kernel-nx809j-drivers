# Exact revalidation: `zte_touch_pdev_register`

This package records the offline exact-function revalidation of microtask `016_zte_touch_pdev_register` for `zte_tpd`.

- Stock entry: `0x001081c8`; stock body and ELF symbol: 224 bytes.
- Docker canonical build: two identical cycles; candidate module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 comparison: PASS; 56 instructions and 224 bytes on both sides. The registration log, `platform_device_alloc("zte_touch", PLATFORM_DEVID_NONE)`, storage offset `0xdd0`, allocation/add failure cleanup, callback clear at `0xea0`, release call, original error return, and success callback installation are preserved.
- KCFI comparison: PASS; `.text`, 224 bytes, type ID `0x6fbb3035` on stock and candidate.
- Joern strict gate: PASS; parse-clean, one-to-one function identity, 45 calls, two control structures, and zero unresolved calls.
- Host contract: two reproducible Docker ASan/UBSan cycles covering allocation failure, add failure, zero-result success, and positive-result normalization.

The claim is offline exact-function parity only. Platform-bus lifecycle, live device state, smartphone execution, and NX809J hardware behavior remain deferred.
