# zte_tpd `syna_tcm_sleep` exact attestation

Status: `CORE_GATES_PASS` / offline-only.

This attestation binds stock `syna_tcm_sleep@001238fc` to the reconstructed TPD candidate. The source preserves the null-device error (`-241`), polling-mode delay selection, sleep/wake command selection, callback invocation and error propagation.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225` and two clean canonical cycles. Assembly/relocation comparison, Ghidra body bounds, P-Code operation shape, Joern scope/slice, KCFI, input identity, map identity and Docker reproducibility all passed.

Ghidra produced the known narrow `ghidra_multi_branch_printk_status_control_flow_artifact`: stock renders a shared status epilogue while the candidate renders equivalent printk branches as early returns. This fallback is allowed only with equal body bytes/P-Code and independent relocation-aware Assembly parity; it is not a generic C waiver and does not claim hardware or runtime equivalence. Runtime, hardware, KUnit/lockdep/KCSAN, fuzzing and independent review remain required for production promotion.
