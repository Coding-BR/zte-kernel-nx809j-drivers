# Exact revalidation: `syna_tcm_v1_terminate`

- Driver: `zte_tpd`
- Microtask: `263_syna_tcm_v1_terminate`
- Stock entry: `00120e64`
- Promotion: `PROMOTED_OFFLINE_EXACT`

The reconstructed teardown function matches stock at 34 AArch64 instructions and 136 ELF-symbol bytes. The comparison preserves the NULL branch, state check at offset `0x1f8`, mode byte at `0x1fc`, transition to state 2, completion offset `0x220`, `_printk` calls and completion control flow.

The canonical Android 16 GKI 6.12.23/vendor_dlkm Docker build passed in two cycles and produced the reproducible module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`. KCFI matched the stock type ID `0x9b7e2760` with section and symbol size equality.

The direct ASan/UBSan harness passed two reproducible repetitions covering NULL input, inactive state, active state with unfinished completion, and active state with completion already done. It verifies logging, mode propagation, state transition, completion address and no duplicate completion. Joern strict resolved one source method with 18 calls, three control structures, zero unresolved calls and zero parser errors.

Limitations: kernel `printk`, completion implementation and ABI context are stubbed by the host harness; Android runtime, module loading and NX809J hardware behavior remain deferred.
