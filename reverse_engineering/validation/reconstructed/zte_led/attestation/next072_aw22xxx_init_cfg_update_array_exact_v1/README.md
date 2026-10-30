# zte_led `aw22xxx_init_cfg_update_array` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_init_cfg_update_array@00101738` to the reconstructed zte_led candidate. The exact Assembly island preserves the 336-byte/84-instruction AArch64 chip-enable routine, stack-canary tail, initial register read/enable write, timing delay and complete ordered I2C initialization sequence.

Validation used the Docker engineering snapshot at `C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia`, image `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, and two clean reproducible cycles. Assembly/relocation, fresh Ghidra body/P-Code operation shape, Joern scope/slice, input identity and map identity passed. The independent host harness passed reproducibly with 58/58 reconstructed functions covered, including this function in `test_i2c_hardware_irq`.

KCFI is explicitly not applicable: neither stock nor candidate has a valid preamble (`BOTH_NO_VALID_KCFI_PREAMBLE`), so no type ID is fabricated or claimed. Strict normalized decompiled-C equality remains a documented Ghidra rendering limitation for this candidate; the exact Assembly island, relocation, P-Code shape, Docker and host evidence are preserved. Physical hardware, sanitizer, lock/lifetime, counterexample and independent runtime review remain deferred.
