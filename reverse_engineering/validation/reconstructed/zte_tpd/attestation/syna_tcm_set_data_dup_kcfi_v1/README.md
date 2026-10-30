# Versioned exact revalidation: `syna_tcm_set_data_duplicator`

- Driver: `zte_tpd`
- Microtask: `291_syna_tcm_set_data_duplicator`
- Stock entry: `001240d4`
- Effective implementation: `syna_tcm_set_data_duplicator_exact.S`
- Status: `PROMOTED_OFFLINE_EXACT` with revalidation `20260901`

This unit preserves the stock 76-byte AArch64 function, including the null-device error path, indexed callback/context stores and the `0x10` dispatcher stride. The candidate matched stock at 19 instructions, all compared relocations, `.text` section and KCFI type ID `0x6f1c1b70`.

The canonical Android 16 GKI 6.12.23/vendor_dlkm Docker build used the curated engineering snapshot, clang `clang-r536225`, two clean cycles and produced the reproducible candidate module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.

Ghidra 12.1.2 matched body size and P-Code operation shape. Its candidate decompiler propagated the external `_printk` return into `uVar1`; the stock decompiler emitted the literal error `0xffffff0f`. The comparator records this as the narrow `ghidra_call_return_constant_propagation_artifact`; exact bytes, P-Code, relocation-aware AArch64 assembly and KCFI remain mandatory.

The strict Joern gate resolved one source function with 11 calls, 2 control structures, zero unresolved calls and zero parser errors. The direct ASan/UBSan Docker host oracle passed two cases in two reproducible repetitions.

All detailed reports are under `exact_revalidation_20260901/`. The full candidate Ghidra export is under `ghidra_candidate_20260901_repaired/zte_tpd.ko`.

Limitations: printk and dispatcher storage use host stubs; transport, IRQ, MMIO, flash hardware, Android runtime and physical module loading remain outside this offline attestation.
