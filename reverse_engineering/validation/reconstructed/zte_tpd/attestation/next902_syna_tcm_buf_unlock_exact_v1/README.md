# zte_tpd `syna_tcm_buf_unlock` exact attestation

Status: `CORE_GATES_PASS` / offline-only.

This attestation binds stock `syna_tcm_buf_unlock@0011ee40` to the reconstructed TPD candidate. The function preserves the lock-depth decrement, the final mutex release, and the diagnostic path for an unmatched unlock.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225` and two clean canonical cycles. Assembly/relocation comparison, Ghidra body bounds, P-Code operation shape, Joern scope/slice, KCFI, input identity, map identity and Docker reproducibility all passed.

Ghidra produced the narrow `ghidra_syna_tcm_buf_unlock_shared_cleanup_artifact`: one import renders shared cleanup through a common epilogue while the other duplicates cleanup on control-flow branches. The fallback is allowed only with equal body bytes/P-Code and independent relocation-aware Assembly parity; it is not a generic C waiver and does not claim hardware or runtime equivalence. Runtime, KUnit/lockdep/KCSAN, fuzzing and independent review remain required for production promotion.
