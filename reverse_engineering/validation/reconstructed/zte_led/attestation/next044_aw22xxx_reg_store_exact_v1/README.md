# `aw22xxx_reg_store` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_reg_store@00103528` to the reconstructed `zte_led` candidate. The exact island preserves the 188-byte/47-instruction AArch64 body, stack layout, `sscanf` argument order, register bound, I2C write, error `printk` and PAC/KCFI sequence.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly comparison passed with 47/47 instructions and relocation parity, fresh Ghidra C/P-Code comparison passed, Joern scoped/slice passed, KCFI passed with matching type ID `0x95c41a97` and body size, and the host harness passed reproducibly with 58/58 covered functions.

The result is offline/static evidence only. I2C/sysfs runtime behavior, sanitizers, ledgers, counterexample search and independent hardware/runtime review remain deferred.
