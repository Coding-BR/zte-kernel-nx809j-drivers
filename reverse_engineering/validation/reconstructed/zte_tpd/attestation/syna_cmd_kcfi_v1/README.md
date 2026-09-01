# Versioned exact revalidation: `syna_tcm_clear_command_processing`

- Driver: `zte_tpd`
- Microtask: `293_syna_tcm_clear_command_processing`
- Stock entry: `00124178`
- Effective implementation: `syna_tcm_clear_command_processing_exact.S`
- Status: `PROMOTED_OFFLINE_EXACT` with revalidation `20260901`

The stock 64-byte AArch64 function is preserved, including the null guard, callback load at `0x3a0`, KCFI guard value `-1686231200`, software breakpoint `0x8228` and indirect callback. The candidate matched 16 instructions, relocations, `.text` section, symbol size and KCFI type ID `0x9b7e2760`.

The canonical Android 16 GKI 6.12.23/vendor_dlkm Docker build used the curated engineering snapshot, clang `clang-r536225`, two clean cycles and reproduced module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.

Ghidra 12.1.2 matched normalized C, body size and P-Code shape directly. The direct ASan/UBSan Docker oracle passed 3 cases in 2 reproducible repetitions. Strict Joern resolved 12 calls, 3 control structures, zero unresolved calls and zero parser errors.

Detailed reports are under `exact_revalidation_20260901/`; the full candidate Ghidra export is under `ghidra_candidate_20260901_repaired/zte_tpd.ko`.

Limitations: callback dispatch and breakpoint behavior use host stubs; Android runtime, IRQ/MMIO context, hardware and physical module loading remain outside this offline attestation.
