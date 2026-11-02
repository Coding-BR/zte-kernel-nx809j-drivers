# Exact revalidation: `syna_tcm_reset`

- Driver: `zte_tpd`
- Microtask: `273_syna_tcm_reset`
- Stock entry: `001221ac`
- Promotion: `PROMOTED_OFFLINE_EXACT`

The reconstruction uses `syna_tcm_reset_exact.S` as the module's effective implementation; `syna_tcm_reset.c` remains the direct-source contract oracle. The emitted symbol matches stock at 91 AArch64 instructions and 364 ELF-symbol bytes, including the delay selection, KCFI-guarded send callback, firmware-mode update, optional post-reset callback and post-reset error path.

The canonical Android 16 GKI 6.12.23/vendor_dlkm Docker build passed in two cycles and produced the reproducible module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`. KCFI matched the stock type ID `0x627e4777` with section and symbol-size equality.

The direct ASan/UBSan harness passed two reproducible repetitions covering NULL input, successful command send, command failure and successful post-reset callback. Joern strict resolved the C contract with 87 calls, 14 control structures, zero unresolved calls and zero parser errors.

Limitations: host callback stubs execute on x86_64 and do not execute the AArch64 `.S` body; SPI, IRQ, MMIO, firmware transport, concurrency and NX809J hardware behavior remain deferred.
