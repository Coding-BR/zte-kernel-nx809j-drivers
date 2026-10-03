# Exact revalidation: `syna_tcm_detect_device`

- Driver: `zte_tpd`
- Microtask: `268_syna_tcm_detect_device`
- Stock entry: `00121944`
- Promotion: `PROMOTED_OFFLINE_EXACT`

The reconstructed detector matches stock at 99 AArch64 instructions and 396 ELF-symbol bytes. The reviewed contract covers the NULL-device error, detection-state reset, protocol selection, quick-setup and reinit bit forwarding, detector-error diagnostics, handler validation, quick return, bootloader/application/unknown firmware modes, and invalid-protocol errors.

The canonical Android 16 GKI 6.12.23/vendor_dlkm Docker build passed in two cycles and produced the reproducible module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`. KCFI matched the stock type ID `0xaed6ff3a` with section and symbol-size equality.

The direct ASan/UBSan harness passed two reproducible repetitions covering four contract groups: invalid inputs, detector errors with and without a response buffer, missing handlers, and successful firmware-mode paths. Joern strict resolved the target with 49 calls, 12 control structures, zero unresolved calls and zero parser errors.

Limitations: kernel `printk`, detector implementation and TouchComm state are stubbed by the host harness; Android runtime, module loading and NX809J hardware behavior remain deferred.
