# zte_led `aw22xxx_cfg_update_wait_from_dyn_name` exact-island attestation

Status: `CORE_GATES_PASS` / offline-only.

This attestation binds stock `aw22xxx_cfg_update_wait_from_dyn_name@00103ea4` to the reconstructed `zte_led` candidate. The independently verified AArch64 island is 260 bytes / 65 instructions and preserves the firmware/configuration update path, including the init-flag branches, configuration-array initialization, `request_firmware`, configuration loading, delay and error handling.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225` and two clean reproducible cycles. Assembly/relocation comparison, fresh Ghidra body bounds, Ghidra P-Code operation shape, Joern scope/slice, KCFI, input identity, map identity and Docker reproducibility all passed.

The Ghidra normalized-C comparison is intentionally non-authoritative for this explicit `assembly_only` island. Fresh candidate Ghidra body size and P-Code shape remain mandatory and passed; the independent relocation-aware Assembly gate remains mandatory. This is not a claim of normalized-C equivalence or physical LED behavior. Runtime, hardware, KUnit/lockdep/KCSAN and fuzzing evidence remain required before any production promotion.
