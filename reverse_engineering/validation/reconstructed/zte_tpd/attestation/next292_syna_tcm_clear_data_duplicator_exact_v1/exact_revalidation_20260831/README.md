# Exact revalidation: `syna_tcm_clear_data_duplicator`

- Driver: `zte_tpd`
- Microtask: `292_syna_tcm_clear_data_duplicator`
- Stock entry: `00124124`
- Promotion: `PROMOTED_OFFLINE_EXACT`

The effective implementation is `syna_tcm_clear_data_duplicator_exact.S`. It preserves the stock null-device error and the zeroing of the complete `0x1000`-byte data-duplicator table beginning at the reconstructed `0x13d8` base. The current Docker candidate matches stock at 20 AArch64 instructions and 80 ELF-symbol bytes, including relocations and KCFI preamble.

The Android 16 GKI 6.12.23/vendor_dlkm Docker build over the curated candidate snapshot passed in two cycles and produced the reproducible module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`. KCFI matched stock type ID `0xd57a6509`, `.text` section and symbol size.

The direct ASan/UBSan host contract passed two reproducible repetitions covering table clearing and null-device failure. Joern strict resolved the function with 7 calls, 2 control structures, zero unresolved calls and zero parser errors.

Limitations: printk and table storage are exercised through host stubs; Android runtime and NX809J hardware behavior remain deferred.
