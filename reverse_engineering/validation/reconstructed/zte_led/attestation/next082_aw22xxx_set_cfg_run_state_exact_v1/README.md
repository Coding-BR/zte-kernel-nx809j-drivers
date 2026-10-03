# zte_led `aw22xxx_set_cfg_run_state` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_set_cfg_run_state@00103fa8` to the reconstructed zte_led candidate. The exact Assembly island preserves the 288-byte/72-instruction AArch64 packed-effect state transition helper, including mode/sub-mode extraction, ordered logging and all state-mask transitions for modes 1, 2 and 3.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225` and two clean reproducible cycles. Assembly/relocation, fresh Ghidra body/P-Code operation shape, Joern scope/slice, KCFI presence/size, input identity and map identity passed. The independent host harness passed reproducibly with 58/58 reconstructed functions covered, including this function in `test_firmware_and_configuration`.

The normalized decompiled-C equality is recorded as false because this is an explicit assembly-only exact island; no Ghidra decompiler fallback was used, and the fresh candidate body, ordered instruction shape and P-Code operation shape passed. Both stock and candidate have no valid KCFI preamble, so KCFI is not applicable while size parity is retained. Offline/static evidence does not prove physical AW22xxx LED behavior. The module-level stock-only `mem_alloc_profiling_key` difference remains a pre-existing baseline.
