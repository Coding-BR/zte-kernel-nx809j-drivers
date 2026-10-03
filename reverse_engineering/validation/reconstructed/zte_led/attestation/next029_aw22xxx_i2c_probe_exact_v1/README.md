# zte_led — `aw22xxx_i2c_probe@00101b68`

Status: `PROMOTED_OFFLINE_EXACT`.

The candidate is an AArch64 exact island materialized from the preserved stock assembly. Its body is 1688 bytes / 422 instructions, with explicit `CALL26` relocations for local helpers and preserved binding, pinctrl, GPIO, IRQ, firmware and zlog effects.

Validation used the Docker snapshot/toolchain for two reproducible cycles. Assembly comparison passed with 422/422 instructions and relocation parity, Joern scoped/slice passed, and KCFI matched stock with type ID `0x0c5e2bbf`. Ghidra required a dynamic boundary repair because analysis split the island into false nested functions; the fresh export retained the 1688-byte body and P-Code identity. The host harness passed reproducibly with 58/58 covered functions.

The comparison pipeline also records narrow equivalences for the compiler lock key and stripped BSS symbols, requiring identical ADRP/ADD sites and matching ELF section-relative addresses.

Limitations: physical I2C/GPIO/IRQ/DT hardware, sanitizers, register/state ledgers and independent runtime review remain deferred. This is offline/static promotion only.
