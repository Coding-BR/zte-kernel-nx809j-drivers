# Exact revalidation: `syna_tcm_set_game_partition_config`

- Driver: `zte_tpd`
- Microtask: `283_syna_tcm_set_game_partition_config`
- Stock entry: `00123518`
- Promotion: `PROMOTED_OFFLINE_EXACT`

The module's effective implementation is `syna_tcm_set_game_partition_config_exact.S`; the reconstructed C source was synchronized in the main tree and Docker curated snapshot and independently exercised as the direct contract oracle. The emitted symbol matches stock at 180 AArch64 instructions and 720 ELF-symbol bytes, including payload allocation, firmware-mode and delay handling, game-partition payload construction, diagnostic output, command `0xc7`, KCFI preamble and write-error reporting.

The canonical Android 16 GKI 6.12.23/vendor_dlkm Docker build passed in two cycles and produced the reproducible module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`. KCFI matched the stock type ID `0x1dbae285` with section and symbol-size equality.

The direct ASan/UBSan harness passed two reproducible repetitions covering null/mode validation, allocation failure, polling and explicit delay, payload bytes, diagnostic allocation/logging and write-error propagation. Joern strict resolved the C contract with 80 calls, 13 control structures, zero unresolved calls and zero parser errors.

Limitations: allocator, kernel printk, write callback and transport timing are deterministic stubs; the host harness does not execute the AArch64 `.S` body, and Android transport timing and NX809J hardware behavior remain deferred.
