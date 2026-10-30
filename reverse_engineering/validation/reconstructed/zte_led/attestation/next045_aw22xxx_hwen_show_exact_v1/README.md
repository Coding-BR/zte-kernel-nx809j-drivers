# `aw22xxx_hwen_show` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_hwen_show@001035e8` to the reconstructed `zte_led` candidate. The exact island preserves the 80-byte/20-instruction AArch64 body, GPIO lookup, raw-value read, `snprintf` formatting, signed return conversion and PAC/KCFI sequence.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly comparison passed with 20/20 instructions and relocation parity, fresh Ghidra C/P-Code comparison passed, Joern scoped/slice passed, KCFI passed with matching type ID `0xae84bcd4` and body size, and the host harness passed reproducibly with 58/58 covered functions.

The result is offline/static evidence only. GPIO/sysfs runtime behavior, sanitizers, ledgers, counterexample search and independent hardware/runtime review remain deferred.
