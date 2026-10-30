# Exact revalidation: `syna_tcm_get_event_data`

- Driver: `zte_tpd`
- Microtask: `269_syna_tcm_get_event_data`
- Stock entry: `00121ad4`
- Promotion: `PROMOTED_OFFLINE_EXACT`

The reconstructed event-data path matches stock at 79 AArch64 instructions and 316 ELF-symbol bytes. The reviewed contract covers NULL device/code validation, read-error propagation, optional destination handling, report and response code ranges, empty-buffer short circuits, copy-error propagation, and the boundary code values.

The canonical Android 16 GKI 6.12.23/vendor_dlkm Docker build passed in two cycles and produced the reproducible module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`. KCFI matched the stock type ID `0x2431fd45` with section and symbol-size equality.

The direct ASan/UBSan harness passed two reproducible repetitions across four contract groups. Joern strict resolved the target with 46 calls, 10 control structures, zero unresolved calls and zero parser errors.

Limitations: the TCM read callback and buffer-copy transport are deterministic host stubs; Android runtime, SPI/IRQ transport, firmware, module loading and NX809J hardware behavior remain deferred.
