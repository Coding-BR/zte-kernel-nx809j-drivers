# zte_tpd `syna_tcm_clear_command_processing` exact attestation

Status: `CORE_GATES_PASS` / offline-only.

This attestation binds stock `syna_tcm_clear_command_processing@00124178` to the reconstructed TPD candidate. The function preserves command-processing state clearing, the indirect callback path, KCFI behavior and error handling.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225` and two clean canonical cycles. Assembly/relocation comparison, fresh Ghidra body bounds, normalized C, P-Code operation shape, Joern scope/slice, KCFI, input identity, map identity and Docker reproducibility all passed. This target required no semantic fallback.

The evidence is offline/static only; it does not claim physical touchscreen behavior. Runtime, KUnit/lockdep/KCSAN, fuzzing and independent review remain required for production promotion.
