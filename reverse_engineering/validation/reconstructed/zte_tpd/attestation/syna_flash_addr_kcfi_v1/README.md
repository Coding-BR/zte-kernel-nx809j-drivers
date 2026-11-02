# Versioned exact revalidation: `syna_tcm_read_flash_address`

- Driver: `zte_tpd`; microtask: `295_syna_tcm_read_flash_address`; stock entry: `00124208`
- Effective implementation: `syna_tcm_read_flash_address_exact.S`
- Status: `PROMOTED_OFFLINE_EXACT`, revalidated `20260901`

The stock AArch64 body is 732 bytes and 183 instructions. The candidate matched the stock `.text` symbol size, instruction sequence, relocation sequence and KCFI type ID `0xaa5cbef1`. The canonical Android 16 GKI 6.12.23/vendor_dlkm Docker build used the curated engineering snapshot, clang `clang-r536225`, two clean path-independent cycles and reproduced module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.

Fresh Ghidra 12.1.2 analysis matched body size and 568-operation P-Code shape. Its candidate C emitter restructured shared cleanup into early returns and changed temporary types; the comparator recorded this as the narrow `ghidra_cfg_restructuring_external_call_artifact`. The exception does not waive bytes, relocations, KCFI, P-Code, assembly or Joern gates.

Strict Joern found 96 calls, 21 control structures, zero unresolved calls and zero parser errors. The Docker ASan/UBSan host contract passed 8 cases in 2 reproducible repetitions.

Detailed reports are under `exact_revalidation_20260901/`; the complete candidate export is under `ghidra_candidate_20260901_repaired/zte_tpd.ko`.

Limitations: allocator, device and printk behavior use host stubs; Android runtime, hardware and physical module loading remain outside this offline attestation.
