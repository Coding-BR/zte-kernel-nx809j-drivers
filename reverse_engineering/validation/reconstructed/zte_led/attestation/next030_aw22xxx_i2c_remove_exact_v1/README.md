# zte_led — `aw22xxx_i2c_remove@00102204`

Status: `PROMOTED_OFFLINE_EXACT`.

The candidate is an AArch64 exact island materialized from the preserved stock assembly. Its body is 196 bytes / 49 instructions, with the stock teardown order for proc, sysfs, LED, GPIO/IRQ and device-memory cleanup, plus the preserved global state update.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly comparison passed with 49/49 instructions and relocation parity, including independently proven `.data+0x398`, `.bss+0x61d4` and `.bss+0x6268` storage mappings. Joern scoped/slice passed, KCFI matched stock with type ID `0xa8cfcee2`, and the host harness passed reproducibly with 58/58 covered functions.

Ghidra required a dynamic boundary repair because automatic analysis split the exact island into a false 44-byte function. The fresh candidate export repairs `aw22xxx_i2c_remove` to the ELF-bounded 196-byte body; the protocol records the declared assembly-only semantic exemption because Ghidra's normalized C/P-Code shape is not authoritative for this exact assembly island.

Limitations: physical I2C/GPIO/IRQ/DT, sanitizers, register/state ledgers and independent runtime review remain deferred. This is offline/static promotion only.
