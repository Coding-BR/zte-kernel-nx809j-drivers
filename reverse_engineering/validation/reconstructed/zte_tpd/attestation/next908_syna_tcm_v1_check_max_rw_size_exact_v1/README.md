# zte_tpd `syna_tcm_v1_check_max_rw_size` exact attestation

Status: `CORE_GATES_PASS` / offline-only.

This attestation binds stock `syna_tcm_v1_check_max_rw_size@0011f790` to the reconstructed TPD candidate. The function preserves the maximum read/write-size validation and the diagnostic/error return path.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225` and two clean canonical cycles. Assembly/relocation comparison, Ghidra body bounds, P-Code operation shape, Joern scope/slice, KCFI, input identity, map identity and Docker reproducibility all passed.

Ghidra produced the narrow `ghidra_call_return_constant_propagation_artifact`, where an imported diagnostic call return is propagated differently from the stock explicit error constant. The fallback is allowed only with equal body bytes/P-Code and independent relocation-aware Assembly parity; it is not a generic C waiver and does not claim hardware or runtime equivalence. Runtime, KUnit/lockdep/KCSAN, fuzzing and independent review remain required for production promotion.
