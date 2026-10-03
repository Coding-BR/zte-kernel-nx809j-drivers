# `aw22xxx_reg_show` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_reg_show@00103414` to the reconstructed `zte_led` candidate. The exact island preserves the 272-byte/68-instruction AArch64 body, stack layout, `aw22xxx_reg_access` table, register scan, `snprintf` format, `strlen` accumulation, `-14` overflow return and PAC/KCFI sequence. Its padding places the function so the local I2C branch offsets remain identical to stock.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly comparison passed with 68/68 instructions and relocation parity, fresh Ghidra C/P-Code comparison passed, Joern scoped/slice passed, KCFI passed with matching type ID `0xae84bcd4` and body size, and the host harness passed reproducibly with 58/58 covered functions.

The result is offline/static evidence only. I2C/sysfs runtime behavior, sanitizers, ledgers, counterexample search and independent hardware/runtime review remain deferred.
