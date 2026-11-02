# zte_led `aw22xxx_effect_store` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_effect_store@001039d4` to the reconstructed zte_led candidate. The exact Assembly island preserves the 724-byte/181-instruction AArch64 sysfs callback, including `sscanf` validation, mutex ordering, `init_flag` and `g_cfg_cur_state` transitions, firmware/config helper calls, and the two I2C recovery paths.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225` and two clean reproducible cycles. Assembly/relocation, fresh Ghidra body/P-Code operation shape, Joern scope/slice, KCFI type/size, input identity and map identity passed. The independent host harness passed reproducibly with 58/58 reconstructed functions covered, including this function in `test_sysfs_and_proc`.

The normalized decompiled-C equality is recorded as false because this is an explicit assembly-only exact island; no Ghidra decompiler fallback was used, and the fresh candidate body, ordered instruction shape and P-Code operation shape passed. Offline/static evidence does not prove physical AW22xxx LED behavior. The module-level stock-only `mem_alloc_profiling_key` difference remains a pre-existing baseline.
