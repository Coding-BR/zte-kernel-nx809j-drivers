# zte_led — `aw22xxx_hw_reset@001022c8`

Status: `PROMOTED_OFFLINE_EXACT`.

The candidate is an AArch64 exact island materialized from the preserved stock assembly. Its ELF-bounded body is 156 bytes / 39 instructions, preserving the GPIO reset sequence, 1000/1500 microsecond timing constants, error path and direct external calls.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly comparison passed with 39/39 instructions and relocation parity, Joern scoped/slice passed, and the KCFI comparison passed with the same absence of a valid preamble on both sides. The host harness passed reproducibly with 58/58 covered functions.

Ghidra required a dynamic boundary repair because automatic analysis stopped at a 40-byte fragment. The fresh candidate export repairs `aw22xxx_hw_reset` to the ELF-bounded 156-byte body; the protocol records the declared assembly-only semantic exemption because Ghidra's normalized C/P-Code shape is not authoritative for this exact assembly island.

Limitations: physical GPIO/reset timing, device-tree, sanitizers, register/state ledgers and independent runtime review remain deferred. This is offline/static promotion only.
