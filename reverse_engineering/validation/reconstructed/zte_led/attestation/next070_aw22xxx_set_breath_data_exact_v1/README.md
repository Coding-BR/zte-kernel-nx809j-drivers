# zte_led `aw22xxx_set_breath_data` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_set_breath_data@001014e4` to the reconstructed zte_led candidate. The exact Assembly island preserves the 268-byte/67-instruction AArch64 callback, indexed pattern-byte transfers, `duration` update, the complete 0x92-step I2C write loop and authenticated return sequence.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, and two clean reproducible cycles. Assembly/relocation, fresh Ghidra body/P-Code, Joern scope/slice, KCFI type/size, input identity and map identity passed. The independent host harness passed reproducibly with 58/58 reconstructed functions covered, including `aw22xxx_set_breath_data` in `test_work_timer_and_pattern`.

The module has the same valid KCFI record on both sides: type ID `0x701625b6`, little-endian preamble `b6251670` and 268-byte symbol size. Physical hardware, sanitizer, lock/lifetime, counterexample and independent runtime review remain deferred.
