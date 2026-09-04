# zte_led `aw22xxx_effect_show` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_effect_show@00103998` to the reconstructed zte_led candidate. The exact Assembly island preserves the 56-byte/14-instruction AArch64 sysfs callback, including the `effect` field load at offset `0x2f0`, `snprintf` format string and signed return conversion.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225` and two clean reproducible cycles. Assembly/relocation, fresh Ghidra body/decompiled-C/P-Code operation shape, Joern scope/slice, KCFI type/size, input identity and map identity passed. The independent host harness passed reproducibly with 58/58 reconstructed functions covered, including this function in `test_sysfs_and_proc`.

Offline/static evidence does not prove physical AW22xxx LED behavior. The module-level stock-only `mem_alloc_profiling_key` difference is retained as a pre-existing baseline. Sanitizers, lock/lifetime ledger, semantic counterexample search and independent runtime review remain deferred.
