# zte_led — `aw22xxx_read_chipid@00102364`

Status: `PROMOTED_OFFLINE_EXACT`.

The candidate is an AArch64 exact island materialized from the preserved stock assembly. Its ELF-bounded body is 460 bytes / 115 instructions, preserving the I2C page/register sequence, retry path, chip-ID branches, timing constants, state writes and direct external calls.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly comparison passed with 115/115 instructions and relocation parity, Joern scoped/slice passed, and the KCFI comparison passed with the same absence of a valid preamble on both sides. The host harness passed reproducibly with 58/58 covered functions.

Ghidra required a dynamic boundary repair because automatic analysis stopped at an early fragment after `_printk`. The fresh candidate export repairs `aw22xxx_read_chipid` to the ELF-bounded 460-byte body; the protocol records the declared assembly-only semantic exemption because Ghidra's normalized C/P-Code shape is not authoritative for this exact assembly island.

Limitations: physical I2C/chip behavior, device-tree, sanitizers, register/state ledgers and independent runtime review remain deferred. This is offline/static promotion only.
