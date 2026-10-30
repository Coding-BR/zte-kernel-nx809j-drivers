# zte_led `aw22xxx_play` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_play@001015f4` to the reconstructed zte_led candidate. The exact Assembly island preserves the 324-byte/81-instruction AArch64 playback callback, timed pattern loop, indexed `user_para_data` progression, workqueue transition, four-register I2C shutdown sequence and authenticated terminal sequence.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, and two clean reproducible cycles. Assembly/relocation, fresh Ghidra body/P-Code operation shape, Joern scope/slice, KCFI type/size, input identity and map identity passed. The independent host harness passed reproducibly with 58/58 reconstructed functions covered, including `aw22xxx_play` in `test_work_timer_and_pattern`.

The module has the same valid KCFI record on both sides: type ID `0xc069e464`, little-endian preamble `64e469c0` and 324-byte symbol size. Strict normalized decompiled-C equality remains a documented Ghidra rendering limitation for this candidate; it does not override the exact Assembly island, relocation, P-Code shape, KCFI or Docker evidence. Physical hardware, sanitizer, lock/lifetime, counterexample and independent runtime review remain deferred.
