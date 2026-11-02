# Exact revalidation: `syna_tcm_send_command`

- Driver: `zte_tpd`
- Microtask: `288_syna_tcm_send_command`
- Stock entry: `00123dc0`
- Promotion: `PROMOTED_OFFLINE_EXACT`

The effective module implementation is `syna_tcm_send_command_exact.S`. The normalized C source preserves null validation, command/payload forwarding, IRQ-versus-polling delay selection, response-code publication, conditional report/response buffer copies, original return propagation and the stock `-243` copy-failure behavior. The exact AArch64 symbol matches stock at 119 instructions and 476 ELF-symbol bytes, including relocations and KCFI preamble.

The Android 16 GKI 6.12.23/vendor_dlkm Docker build over the curated candidate snapshot passed in two cycles and produced the reproducible module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`. KCFI matched stock type ID `0x2e79609a`, `.text` section and symbol size.

The direct ASan/UBSan host harness passed two reproducible repetitions covering the eight contract cases for null handling, delay selection, callback result/error propagation, response-code output, report/response data paths and copy failures. Joern strict resolved the source function with 59 calls, 13 control structures, zero unresolved calls and zero parser errors.

Limitations: kernel printk, transport write callback and buffer copy are deterministic stubs; the host harness does not execute the AArch64 `.S` body, and Android transport timing and NX809J hardware behavior remain deferred.
