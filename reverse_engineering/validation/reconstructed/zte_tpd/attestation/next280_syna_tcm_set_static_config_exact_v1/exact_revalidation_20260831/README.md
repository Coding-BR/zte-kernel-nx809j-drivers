# Exact revalidation: `syna_tcm_set_static_config`

- Driver: `zte_tpd`
- Microtask: `280_syna_tcm_set_static_config`
- Stock entry: `001230dc`
- Promotion: `PROMOTED_OFFLINE_EXACT`

The module's effective implementation is `syna_tcm_set_static_config_exact.S`; the reconstructed C source was independently exercised as the direct contract oracle. The emitted symbol matches stock at 82 AArch64 instructions and 328 ELF-symbol bytes, including firmware-mode, delay and static-config-size guards, command `0x22`, logging paths and write-error propagation.

The canonical Android 16 GKI 6.12.23/vendor_dlkm Docker build passed in two cycles and produced the reproducible module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`. KCFI matched the stock type ID `0x135bb445` with section and symbol-size equality.

The direct ASan/UBSan harness passed two reproducible repetitions covering null/mode validation, static-config length mismatch, default and suppressed delay selection, successful write and write-error propagation. Joern strict resolved the C contract with 49 calls, 10 control structures, zero unresolved calls and zero parser errors.

Limitations: kernel printk, write callback and transport timing are deterministic stubs; the host harness does not execute the AArch64 `.S` body, and Android transport timing and NX809J hardware behavior remain deferred.
