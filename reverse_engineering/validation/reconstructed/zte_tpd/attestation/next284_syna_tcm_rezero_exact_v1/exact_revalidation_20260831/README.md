# Exact revalidation: `syna_tcm_rezero`

- Driver: `zte_tpd`
- Microtask: `284_syna_tcm_rezero`
- Stock entry: `001237ec`
- Promotion: `PROMOTED_OFFLINE_EXACT`

The module's effective implementation is `syna_tcm_rezero_exact.S`; the normalized C source was synchronized in the main tree and Docker curated snapshot and independently exercised as the direct contract oracle. The emitted symbol matches stock at 67 AArch64 instructions and 268 ELF-symbol bytes, including firmware-mode and delay selection, command `0x27`, empty payload shape, KCFI preamble and write-error reporting.

The canonical Android 16 GKI 6.12.23/vendor_dlkm Docker build passed in two cycles and produced the reproducible module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`. KCFI matched the stock type ID `0x627e4777` with section and symbol-size equality.

The direct ASan/UBSan harness passed two reproducible repetitions covering null/mode validation, IRQ-controlled zero delay, polling fallback, explicit delay, empty payload and write-error propagation. Joern strict resolved the C contract with 28 calls, 6 control structures, zero unresolved calls and zero parser errors.

Limitations: kernel printk, write callback and transport timing are deterministic stubs; the host harness does not execute the AArch64 `.S` body, and Android transport timing and NX809J hardware behavior remain deferred.
