# Exact revalidation: `syna_tcm_testing_0500_check_lower_bound`

- Driver: `zte_tpd`
- Microtask: `254_syna_tcm_testing_0500_check_lower_bound`
- Stock entry: `0011e8ac`
- Promotion: `PROMOTED_OFFLINE_EXACT`

The reconstructed unsigned checker matches stock at 25 AArch64 instructions and 100 ELF-symbol bytes. The comparison proves the `ldrh` loads, unsigned lower-bound predicate, error branch, error-string bytes, `_printk` argument order and normalized module-local relocations.

The canonical Android 16 GKI 6.12.23/vendor_dlkm Docker build passed in two cycles and produced the reproducible module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`. KCFI matched the stock type ID `0xa33285f2` with section and symbol size equality.

The direct ASan/UBSan harness passed two reproducible repetitions covering zero equality, maximum unsigned equality and the `0 < 65535` lower violation, including one exact `printk` record with row/column/value/limit ordering. Joern strict resolved one source method with 13 calls, one control structure, zero unresolved calls and zero parser errors.

Limitations: kernel `printk` and ABI context are stubbed by the host harness; Android runtime, module loading and NX809J hardware behavior remain deferred.
