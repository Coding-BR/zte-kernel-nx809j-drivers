# zte_led — `aw22xxx_interrupt_setup@00102530`

Status: `PROMOTED_OFFLINE_EXACT`.

The candidate is an AArch64 exact island materialized from the preserved stock assembly. Its ELF-bounded body is 260 bytes / 65 instructions, preserving the interrupt-clear log sequence, I2C register order, bit masks and direct external calls.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly comparison passed with 65/65 instructions and relocation parity, Joern scoped/slice passed, and the KCFI comparison passed with the same absence of a valid preamble on both sides. The host harness passed reproducibly with 58/58 covered functions.

Ghidra required a dynamic boundary repair because automatic analysis stopped at an early fragment after `_printk`. The fresh candidate export repairs `aw22xxx_interrupt_setup` to the ELF-bounded 260-byte body; the protocol records the declared assembly-only semantic exemption because Ghidra's normalized C/P-Code shape is not authoritative for this exact assembly island.

Limitations: physical interrupt/I2C behavior, device-tree, sanitizers, register/state ledgers and independent runtime review remain deferred. This is offline/static promotion only.
