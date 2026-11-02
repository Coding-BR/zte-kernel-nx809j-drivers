# Versioned exact revalidation: `syna_tcm_set_post_reset_callback`

- Driver: `zte_tpd`; microtask: `294_syna_tcm_set_post_reset_callback`; stock entry: `001241bc`
- Effective implementation: `syna_tcm_set_post_reset_callback_exact.S`
- Status: `PROMOTED_OFFLINE_EXACT`, revalidated `20260901`

The stock 72-byte AArch64 function is preserved, including the two stores at offsets `0x23e0` and `0x23d8` and the null-device error `0xffffff0f`. Candidate and stock matched 18 instructions, relocations, `.text` symbol size and KCFI type ID `0xef5efc68`.

The canonical Android 16 GKI 6.12.23/vendor_dlkm Docker build used the curated engineering snapshot, clang `clang-r536225`, two clean cycles and reproduced module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.

Ghidra 12.1.2 matched body size and P-Code shape; its candidate decompiler propagated `_printk` into `uVar1`, recorded by the narrow constant-return artifact detector. The ASan/UBSan Docker oracle passed 2 cases in 2 repetitions. Strict Joern found 7 calls, 2 control structures, zero unresolved calls and zero parser errors.

Detailed reports are under `exact_revalidation_20260901/`; the complete candidate export is under `ghidra_candidate_20260901_repaired/zte_tpd.ko`.

Limitations: printk and callback storage use host stubs; Android runtime, hardware and physical module loading remain outside this offline attestation.
