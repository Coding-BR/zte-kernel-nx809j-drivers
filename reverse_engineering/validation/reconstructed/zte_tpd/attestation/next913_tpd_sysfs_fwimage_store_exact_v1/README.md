# zte_tpd `tpd_sysfs_fwimage_store` exact attestation

Status: `CORE_GATES_PASS` / offline-only.

This attestation binds stock `tpd_sysfs_fwimage_store@0010dff0` to the reconstructed TPD candidate. The function preserves the sysfs firmware-image update path, input handling, update dispatch and status/error behavior.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225` and two clean canonical cycles. Assembly/relocation comparison, Ghidra body bounds, P-Code operation shape, Joern scope/slice, KCFI, input identity, map identity and Docker reproducibility all passed.

Ghidra produced the narrow `ghidra_external_label_control_flow_artifact`, where an external-label call/return edge is structured differently between imports. The fallback is allowed only with equal body bytes/P-Code and independent relocation-aware Assembly parity; it is not a generic C waiver and does not claim hardware or runtime equivalence. Runtime, KUnit/lockdep/KCSAN, fuzzing and independent review remain required for production promotion.
