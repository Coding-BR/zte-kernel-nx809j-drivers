# Exact revalidation: `syna_tcm_set_data_duplicator`

- Driver: `zte_tpd`
- Microtask: `291_syna_tcm_set_data_duplicator`
- Stock entry: `001240d4`
- Promotion: `PROMOTED_OFFLINE_EXACT`

The effective implementation is `syna_tcm_set_data_duplicator_exact.S`. It preserves the stock null-device error and the indexed callback/context stores at the `0x10` dispatcher stride. The current Docker candidate matches stock at 19 AArch64 instructions and 76 ELF-symbol bytes, including relocations and KCFI preamble.

The Android 16 GKI 6.12.23/vendor_dlkm Docker build over the curated candidate snapshot passed in two cycles and produced the reproducible module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`. KCFI matched stock type ID `0x6f1c1b70`, `.text` section and symbol size.

The direct ASan/UBSan host contract passed two reproducible repetitions covering callback/context storage at the boundary report code and null-device failure. Joern strict resolved the function with 11 calls, 2 control structures, zero unresolved calls and zero parser errors.

Limitations: printk and dispatcher storage are exercised through host stubs; Android runtime and NX809J hardware behavior remain deferred.
