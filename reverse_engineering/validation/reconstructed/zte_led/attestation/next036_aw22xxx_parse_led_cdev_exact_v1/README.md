# zte_led — `aw22xxx_parse_led_cdev@00102984`

Status: `PROMOTED_OFFLINE_EXACT`.

The candidate is an AArch64 exact island materialized from the preserved stock assembly. Its ELF-bounded body is 520 bytes / 130 instructions, preserving the LED child-property parser, callback pointer setup, class-device registration and error paths.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly comparison passed with 130/130 instructions and relocation parity, Joern scoped/slice passed, and KCFI passed with `BOTH_NO_VALID_KCFI_PREAMBLE` because the stock entry has no valid standalone preamble. The host harness passed reproducibly with 58/58 covered functions.

Ghidra required a dynamic boundary repair because automatic analysis did not retain the exact ELF function boundary. The fresh candidate export repairs `aw22xxx_parse_led_cdev` at `001035f4` to the ELF-bounded 520-byte body; normalized decompiled C and ordered P-Code shape pass for this function.

Limitations: physical LED class-device behavior, device-tree, sanitizers, register/state ledgers, semantic counterexample search and independent runtime review remain deferred. This is offline/static promotion only.
