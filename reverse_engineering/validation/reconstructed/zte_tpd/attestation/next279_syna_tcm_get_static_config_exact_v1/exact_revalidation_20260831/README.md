# Exact revalidation: `syna_tcm_get_static_config`

- Driver: `zte_tpd`
- Microtask: `279_syna_tcm_get_static_config`
- Stock entry: `00122eac`
- Promotion: `PROMOTED_OFFLINE_EXACT`

The module's effective implementation is `syna_tcm_get_static_config_exact.S`; the reconstructed C source was independently exercised as the direct contract oracle. The emitted symbol matches stock at 139 AArch64 instructions and 556 ELF-symbol bytes, including firmware-mode and length guards, delay selection, command `0x21`, response-buffer locking/copying, unlock/error paths and write-error propagation.

The canonical Android 16 GKI 6.12.23/vendor_dlkm Docker build passed in two cycles and produced the reproducible module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`. KCFI matched the stock type ID `0x135bb445` with section and symbol-size equality.

The direct ASan/UBSan harness passed two reproducible repetitions covering validation, size and delay guards, write failure, response copy and invalid-buffer handling. Joern strict resolved the C contract with 102 calls, 14 control structures, zero unresolved calls and zero parser errors.

Limitations: host mutex, write callback, logging and buffer ownership are deterministic stubs; the host harness does not execute the AArch64 `.S` body, and Android transport timing and NX809J hardware behavior remain deferred.
