# zte_led — `aw22xxx_irq_v15@00102638`

Status: `PROMOTED_OFFLINE_EXACT`.

The candidate is an AArch64 exact island materialized from the preserved stock assembly. Its ELF-bounded body is 580 bytes / 145 instructions, preserving the IRQ status branches, I2C register order, bit masks, workqueue scheduling and direct external calls.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly comparison passed with 145/145 instructions and relocation parity, Joern scoped/slice passed, and the KCFI comparison passed with matching type ID `0xd2f00be1`. The host harness passed reproducibly with 58/58 covered functions.

Ghidra required a dynamic boundary repair because automatic analysis stopped at an early fragment after `_printk`. The fresh candidate export repairs `aw22xxx_irq_v15` to the ELF-bounded 580-byte body; the protocol records the declared assembly-only semantic exemption because Ghidra's normalized C/P-Code shape is not authoritative for this exact assembly island.

Limitations: physical IRQ/I2C/workqueue behavior, device-tree, sanitizers, register/state ledgers and independent runtime review remain deferred. This is offline/static promotion only.
