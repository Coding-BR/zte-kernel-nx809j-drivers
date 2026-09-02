# `aw22xxx_rgb_store` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_rgb_store@001046d0` to the reconstructed `zte_led` candidate. The exact island preserves the 188-byte/47-instruction AArch64 body, dual `%x %x` parsing, index bound `<= 8`, RGB field offset arithmetic, value store, diagnostic printk path, invalid-input `-EINVAL` path, stack/PAC sequence and KCFI preamble.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly/relocation and fresh Ghidra C/P-Code comparison passed strictly, Joern scoped/slice and KCFI passed, and the host harness passed reproducibly with 58/58 covered functions.

The result is offline/static evidence only. Sysfs runtime behavior, sanitizers, ledgers, counterexample search and independent hardware/runtime review remain deferred.
