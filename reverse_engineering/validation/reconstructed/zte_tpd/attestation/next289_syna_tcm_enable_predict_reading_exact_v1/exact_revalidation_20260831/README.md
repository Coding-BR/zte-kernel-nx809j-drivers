# Exact revalidation: `syna_tcm_enable_predict_reading`

- Driver: `zte_tpd`
- Microtask: `289_syna_tcm_enable_predict_reading`
- Stock entry: `00123fa0`
- Promotion: `PROMOTED_OFFLINE_EXACT`

The effective implementation is the typed C source `syna_tcm_enable_predict_reading.c`. It preserves the null-device error, the `enable & 1` mask, reset of offset `0x37c`, state write at `0x37a` and the stock enabled/disabled diagnostic. The current Docker candidate matches stock at 28 AArch64 instructions and 112 ELF-symbol bytes, with identical relocations and KCFI preamble.

The Android 16 GKI 6.12.23/vendor_dlkm Docker build over the curated candidate snapshot passed in two cycles and produced the reproducible module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`. KCFI matched stock type ID `0x38633085`, `.text` section and symbol size.

The preserved direct ASan/UBSan host contract passed two repetitions over the unchanged source, covering null handling, enable/disable masking, offset clearing, return values and diagnostics. Current Joern strict resolved the function with 10 calls, 2 control structures, zero unresolved calls and zero parser errors.

Limitations: printk is a deterministic host stub; no smartphone, module loading, SPI, IRQ, MMIO, firmware transport or NX809J hardware is exercised.
