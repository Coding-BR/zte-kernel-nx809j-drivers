# Exact revalidation: `syna_tcm_set_report_dispatcher`

- Driver: `zte_tpd`
- Microtask: `290_syna_tcm_set_report_dispatcher`
- Stock entry: `00124014`
- Promotion: `PROMOTED_OFFLINE_EXACT`

The typed C implementation preserves null validation, the low-code warning, the dispatcher stride and field offsets, callback/data storage and the registration diagnostic. The current Docker candidate matches stock at 47 AArch64 instructions and 188 ELF-symbol bytes, including relocations and KCFI preamble.

The Android 16 GKI 6.12.23/vendor_dlkm Docker build over the curated candidate snapshot passed in two cycles and produced the reproducible module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`. KCFI matched stock type ID `0x6f1c1b70`, `.text` section and symbol size.

The direct ASan/UBSan host contract passed two reproducible repetitions covering low report code `0x0F`, high boundary code `0xFF`, callback/data storage and null-device failure. Joern strict resolved the function with 14 calls, 3 control structures, zero unresolved calls and zero parser errors.

Limitations: printk and dispatcher storage are exercised through host stubs; Android runtime and NX809J hardware behavior remain deferred.
