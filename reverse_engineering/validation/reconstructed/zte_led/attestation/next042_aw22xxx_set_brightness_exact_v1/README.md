# `aw22xxx_set_brightness` exact attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_set_brightness@001033dc` to the reconstructed `zte_led` candidate. The current typed C implementation emits the exact 52-byte AArch64 body with 13 instructions: the stock brightness store, `system_wq` relocations, mode `0x20`, work offset `0x1c0`, `queue_work_on` call and PAC return sequence. No assembly island was necessary.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly comparison passed with 13/13 instructions and relocation parity, fresh Ghidra C/P-Code comparison passed, Joern scoped/slice passed, KCFI passed with matching type ID `0xb35420b3` and body size, and the host harness passed reproducibly with 58/58 covered functions.

The result is offline/static evidence only. Runtime queue scheduling, hardware LED behavior, sanitizers, ledgers, counterexample search and independent hardware/runtime review remain deferred.
