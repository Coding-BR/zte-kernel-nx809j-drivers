# `syna_pal_mem_cpy` exact revalidation

This attestation promotes `syna_pal_mem_cpy` at stock entry `0011d67c` and 104 bytes to `PROMOTED_OFFLINE_EXACT`.

The evidence binds the reconstructed source to the stock module through the canonical Docker build with image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, two reproducible cycles, strict AArch64 opcode/relocation comparison, KCFI, scoped Joern analysis and a two-cycle ASan/UBSan host contract. The candidate module SHA-256 is `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.

The Ghidra C views are not textually equal: one export keeps a common-return outer non-null guard, while the other emits inverted conditions and early returns. The exact 104-byte body and P-Code operation shape agree, and the comparator records this function-specific difference as `ghidra_syna_pal_mem_cpy_branch_inversion_artifact`. No binary, Assembly, relocation, KCFI, Docker or Joern gate was weakened.

Hardware, Android runtime, kernel integration and whole-driver equivalence remain deferred. This package is an offline function-level attestation only.
