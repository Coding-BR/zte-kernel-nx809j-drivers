# zte_led `aw22xxx_cfg_store` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_cfg_store@001038d4` to the reconstructed zte_led candidate. The exact Assembly island preserves the 192-byte/48-instruction AArch64 sysfs callback, including `sscanf("%u", ...)` validation, the low-nibble configuration update, success/error `_printk` branches, return value and stack-canary path.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225` and two clean reproducible cycles. Assembly/relocation, fresh Ghidra body/P-Code operation shape, Joern scope/slice, KCFI type/size, input identity and map identity passed. The independent host harness passed reproducibly with 58/58 reconstructed functions covered, including this function in `test_sysfs_and_proc`.

Strict normalized decompiled-C equality was not required for this assembly-only promotion; the exact Assembly/relocation, body-size and P-Code operation-shape gates passed. The module-level stock-only `mem_alloc_profiling_key` difference is retained as a pre-existing baseline. Physical hardware, sanitizers, lock/lifetime ledger, semantic counterexample search and independent runtime review remain deferred.
