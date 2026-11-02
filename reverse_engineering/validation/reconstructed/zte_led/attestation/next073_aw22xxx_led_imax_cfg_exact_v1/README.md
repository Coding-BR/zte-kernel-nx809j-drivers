# zte_led `aw22xxx_led_imax_cfg` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_led_imax_cfg@0010188c` to the reconstructed zte_led candidate. The exact Assembly island preserves the 112-byte/28-instruction AArch64 callback, the two IMAX register writes, the `param_1+0x2f0` state update and the diagnostic print path.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, and two clean reproducible cycles. Assembly/relocation, fresh Ghidra body/P-Code operation shape, Joern scope/slice, KCFI type/size, input identity and map identity passed. The independent host harness passed reproducibly with 58/58 reconstructed functions covered, including this function in `test_i2c_hardware_irq`.

The module has the same valid KCFI record on both sides: type ID `0x9b5ae72b`, little-endian preamble `2be75a9b` and 112-byte symbol size. Strict normalized decompiled-C equality remains a documented Ghidra rendering limitation for this candidate; the exact Assembly island remains the byte-level authority. Physical hardware, sanitizer, lock/lifetime, counterexample and independent runtime review remain deferred.
