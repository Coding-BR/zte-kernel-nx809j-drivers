# Exact revalidation: `syna_tcm_clear_command_processing`

- Driver: `zte_tpd`
- Microtask: `293_syna_tcm_clear_command_processing`
- Stock entry: `00124178`
- Promotion: `PROMOTED_OFFLINE_EXACT`

The effective implementation is `syna_tcm_clear_command_processing_exact.S`. It preserves the stock null checks, the `terminate` callback lookup at offset `0x3a0`, KCFI guard value and indirect callback invocation. The current Docker candidate matches stock at 16 AArch64 instructions and 64 ELF-symbol bytes, including relocations and KCFI preamble.

The Android 16 GKI 6.12.23/vendor_dlkm Docker build over the curated candidate snapshot passed in two cycles and produced the reproducible module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`. KCFI matched stock type ID `0x9b7e2760`, `.text` section and symbol size.

The direct ASan/UBSan host contract passed two reproducible repetitions covering null device, null terminate callback and callback invocation with the original device pointer. Joern strict resolved the function with 12 calls, 3 control structures, zero unresolved calls and zero parser errors.

Limitations: KCFI break handling and callback execution are represented by host stubs; Android runtime and NX809J hardware behavior remain deferred.
