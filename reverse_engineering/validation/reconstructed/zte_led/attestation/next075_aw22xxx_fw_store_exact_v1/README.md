# zte_led `aw22xxx_fw_store` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_fw_store@001037a0` to the reconstructed zte_led candidate. The exact Assembly island preserves the 168-byte/42-instruction AArch64 sysfs store callback, including hexadecimal parsing, the `init_flag` byte update, conditional `queue_work_on` path, `g_init_flg` reset and stack-canary failure path.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225` and two clean reproducible cycles. Assembly/relocation, fresh Ghidra body/normalized decompiled-C/P-Code operation shape, Joern scope/slice, KCFI type/size, input identity and map identity passed. The independent host harness passed reproducibly with 58/58 reconstructed functions covered, including this function in `test_sysfs_and_proc`.

The module has the same valid KCFI record on both sides: type ID `0x95c41a97`, little-endian preamble `971ac495` and 168-byte symbol size. Physical hardware, sanitizers, lock/lifetime ledger, semantic counterexample search and independent runtime review remain deferred.
