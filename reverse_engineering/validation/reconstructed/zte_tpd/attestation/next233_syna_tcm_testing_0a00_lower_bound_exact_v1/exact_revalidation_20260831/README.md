# Exact revalidation: `syna_tcm_testing_0A00_check_lower_bound`

- Driver: `zte_tpd`
- Microtask: `233_syna_tcm_testing_0a00_check_lower_bound`
- Stock entry: `0011d2c4`
- Promotion: `PROMOTED_OFFLINE_EXACT`

The reconstructed function matches the stock function at 25 AArch64 instructions and 100 ELF-symbol bytes. The comparison resolves only module-local relocation differences and proves the signed `ldrsh` loads, lower-bound branch, return predicate, error-string bytes, argument order and `_printk` call target.

The canonical Android 16 GKI 6.12.23/vendor_dlkm Docker build passed in two cycles and produced the reproducible module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`. KCFI matched the stock type ID `0xa33285f2` with section and symbol size equality.

The direct ASan/UBSan harness passed two reproducible repetitions covering equality, the signed lower violation (`-32768 < -1`) and the signed upper value (`32767 >= -32768`), including one exact `printk` record with row/column/value/limit ordering. Joern strict resolved one source method with 11 calls, one control structure, zero unresolved calls and zero parser errors.

Limitations: the kernel `printk` and ABI context are stubbed by the host harness; Android runtime, module loading, zlog transport and NX809J hardware behavior remain deferred.
