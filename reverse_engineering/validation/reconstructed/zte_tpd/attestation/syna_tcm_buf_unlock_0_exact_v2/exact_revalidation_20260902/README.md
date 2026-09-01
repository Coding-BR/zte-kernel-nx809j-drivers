# `syna_tcm_buf_unlock_0` exact revalidation

This attestation promotes the reconstructed `syna_tcm_buf_unlock_0` against the stock symbol `syna_tcm_buf_unlock` at Ghidra entry `00122140`, ELF `.text` offset `0x1b8b8`, and 104 bytes to `PROMOTED_OFFLINE_EXACT`.

The evidence binds the source to the stock module through the canonical Docker build with image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, two reproducible cycles, strict AArch64 opcode/relocation comparison, KCFI, scoped Joern analysis, an explicit Ghidra function pair, and a 14-test ASan/UBSan host contract executed twice. The candidate module SHA-256 is `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.

The stock and candidate Ghidra symbols have different names because the reconstructed source uses `_0` to avoid a duplicate C symbol. The explicit pair `syna_tcm_buf_unlock=syna_tcm_buf_unlock_0` is preserved in the job and semantic report. Ghidra C control flow is documented as `ghidra_syna_tcm_buf_unlock_shared_cleanup_artifact`; exact body bytes, P-Code operation shape, Assembly, normalized relocations, KCFI and Docker gates remain independent requirements.

Hardware, Android runtime, kernel integration and whole-driver equivalence remain deferred. This package is an offline function-level attestation only.
