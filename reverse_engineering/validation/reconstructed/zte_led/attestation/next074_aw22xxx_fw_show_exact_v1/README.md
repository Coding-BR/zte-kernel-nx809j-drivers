# zte_led `aw22xxx_fw_show` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_fw_show@00103764` to the reconstructed zte_led candidate. The exact Assembly island preserves the 56-byte/14-instruction AArch64 sysfs callback, including the firmware-name format string, `aw22xxx_fw_name` binding and `snprintf` return path.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225` and two clean reproducible cycles. Assembly/relocation, fresh Ghidra body/normalized decompiled-C/P-Code operation shape, Joern scope/slice, KCFI type/size, input identity and map identity passed. The independent host harness passed reproducibly with 58/58 reconstructed functions covered, including this function in `test_sysfs_and_proc`.

The module has the same valid KCFI record on both sides: type ID `0xae84bcd4`, little-endian preamble `d4bc84ae` and 56-byte symbol size. Physical hardware, sanitizers, lock/lifetime ledger, semantic counterexample search and independent runtime review remain deferred.
