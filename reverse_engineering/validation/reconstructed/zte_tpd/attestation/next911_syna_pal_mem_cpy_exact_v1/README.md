# zte_tpd `syna_pal_mem_cpy` exact attestation

Status: `CORE_GATES_PASS` / offline-only.

This attestation binds stock `syna_pal_mem_cpy@0011d67c` to the reconstructed TPD candidate. The function preserves the guarded memory-copy path, size/branch behavior and return handling.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225` and two clean canonical cycles. Assembly/relocation comparison, Ghidra body bounds, P-Code operation shape, Joern scope/slice, KCFI, input identity, map identity and Docker reproducibility all passed.

Ghidra produced the narrow `ghidra_syna_pal_mem_cpy_branch_inversion_artifact`, where equivalent non-null/size branches are rendered in inverted order. The fallback is allowed only with equal body bytes/P-Code and independent relocation-aware Assembly parity; it is not a generic C waiver and does not claim hardware or runtime equivalence. Runtime, KUnit/lockdep/KCSAN, fuzzing and independent review remain required for production promotion.
