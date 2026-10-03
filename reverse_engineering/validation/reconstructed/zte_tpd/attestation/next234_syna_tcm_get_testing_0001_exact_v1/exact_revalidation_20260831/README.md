# Exact revalidation: `syna_tcm_get_testing_0001`

- Driver: `zte_tpd`
- Microtask: `234_syna_tcm_get_testing_0001`
- Stock entry: `0011d32c`
- Promotion: `PROMOTED_OFFLINE_EXACT`

The reconstructed getter matches stock at 3 AArch64 instructions and 12 ELF-symbol bytes. The `ADRP/ADD` relocation pair resolves to the same `test_0001` object and the return sequence is identical.

The canonical Android 16 GKI 6.12.23/vendor_dlkm Docker build passed in two cycles and produced the reproducible module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`. KCFI matched the stock type ID `0x2b399469` with section and symbol size equality.

The direct ASan/UBSan harness passed two reproducible repetitions and directly verified that the getter returns the address of `test_0001` and preserves object aliasing. Joern strict resolved one source method with one call, zero control structures, zero unresolved calls and zero parser errors.

Limitations: the harness uses a minimal stand-in for `struct testing_item` and proves only the zero-argument object-identity contract; Android runtime, module loading, firmware interaction and NX809J hardware behavior remain deferred.
