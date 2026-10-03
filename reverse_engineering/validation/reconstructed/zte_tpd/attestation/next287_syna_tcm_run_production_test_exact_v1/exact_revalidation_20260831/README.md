# Exact revalidation: `syna_tcm_run_production_test`

- Driver: `zte_tpd`
- Microtask: `287_syna_tcm_run_production_test`
- Stock entry: `00123c34`
- Promotion: `PROMOTED_OFFLINE_EXACT`

The effective module implementation is `syna_tcm_run_production_test_exact.S`. The normalized C source preserves the stock validation, response-mode selection, command `0x2A`, one-byte test payload, callback result propagation, optional response-buffer copy and diagnostic strings. The exact AArch64 symbol matches stock at 98 instructions and 392 ELF-symbol bytes, including relocations and KCFI preamble.

The Android 16 GKI 6.12.23/vendor_dlkm Docker build over the curated candidate snapshot passed in two cycles and produced the reproducible module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`. KCFI matched stock type ID `0x0b6a0563`, `.text` section and symbol size.

The direct ASan/UBSan host harness passed two reproducible repetitions covering null device, invalid firmware mode, explicit response mode, IRQ-controlled delay, polling fallback, write failure with post-callback payload, positive write result, successful response copy and copy failure. Joern strict resolved the source function with 33 calls, 8 control structures, zero unresolved calls and zero parser errors.

Limitations: kernel printk, transport write callback and response-buffer copy are deterministic stubs; the host harness does not execute the AArch64 `.S` body, and Android transport timing and NX809J hardware behavior remain deferred.
