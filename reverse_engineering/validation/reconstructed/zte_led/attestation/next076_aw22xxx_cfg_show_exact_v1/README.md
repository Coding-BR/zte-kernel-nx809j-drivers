# zte_led `aw22xxx_cfg_show` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_cfg_show@0010384c` to the reconstructed zte_led candidate. The exact Assembly island preserves the 132-byte/33-instruction AArch64 sysfs callback, including configuration-index bounds handling, the configuration-name pointer table, formatting, diagnostic printk and strlen return path.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225` and two clean reproducible cycles. Assembly/relocation, fresh Ghidra body/P-Code operation shape, Joern scope/slice, KCFI type/size, input identity and map identity passed. The independent host harness passed reproducibly with 58/58 reconstructed functions covered, including this function in `test_sysfs_and_proc`.

Strict normalized decompiled-C equality was not required for this assembly-only promotion; the exact Assembly/relocation and P-Code shape gates passed. Physical hardware, sanitizers, lock/lifetime ledger, semantic counterexample search and independent runtime review remain deferred.
