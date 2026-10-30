# zte_tpd `syna_tcm_clear_data_duplicator` exact attestation

Status: `CORE_GATES_PASS` / offline-only.

This attestation binds stock `syna_tcm_clear_data_duplicator@00124124` to the reconstructed TPD candidate. The function preserves the data-duplicator clear command path, argument handling and status/error behavior.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225` and two clean canonical cycles. Assembly/relocation comparison, Ghidra body bounds, P-Code operation shape, Joern scope/slice, KCFI, input identity, map identity and Docker reproducibility all passed. The host artifact directory uses a deterministic short hash to avoid Windows path-length failure while retaining the full audit label in the report and container path.

Ghidra produced the narrow `ghidra_branch_inversion_shared_return_artifact`, where equivalent null/non-null command branches are rendered in inverted order. The fallback is allowed only with equal body bytes/P-Code and independent relocation-aware Assembly parity; it is not a generic C waiver and does not claim hardware or runtime equivalence. Runtime, KUnit/lockdep/KCSAN, fuzzing and independent review remain required for production promotion.
