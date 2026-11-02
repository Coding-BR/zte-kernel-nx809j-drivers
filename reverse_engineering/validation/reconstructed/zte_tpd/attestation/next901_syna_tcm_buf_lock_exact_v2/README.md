# zte_tpd `syna_tcm_buf_lock` exact attestation

Status: `CORE_GATES_PASS` / offline-only.

This attestation binds stock `syna_tcm_buf_lock@0011ede8` to the reconstructed TPD candidate. The function preserves the nested-lock diagnostic path, mutex acquisition and lock-depth byte increment.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225` and two clean canonical cycles. Assembly/relocation comparison, Ghidra body bounds, P-Code operation shape, Joern scope/slice, KCFI, input identity, map identity and Docker reproducibility all passed.

Ghidra produced the narrow `ghidra_syna_tcm_buf_lock_back_edge_branch_artifact`: one import renders the diagnostic branch as a fall-through/back-edge while the other renders an inverted conditional with an early return. The fallback is allowed only with equal body bytes/P-Code and independent relocation-aware Assembly parity; it is not a generic C waiver and does not claim hardware or runtime equivalence. Runtime, KUnit/lockdep/KCSAN, fuzzing and independent review remain required for production promotion.
