# `aw22xxx_hwen_store` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_hwen_store@0010363c` to the reconstructed `zte_led` candidate. The exact island preserves the 292-byte/73-instruction AArch64 body, `%x` validation and `-EINVAL` path, hardware-reset branch, GPIO-off/error paths, sleep arguments, stack canary and KCFI preamble.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly/relocation comparison passed, a fresh Ghidra export resolved `aw22xxx_hw_reset` and preserved matching P-Code shape; the only C difference is the recorded external-label control-flow rendering artifact. Joern scoped/slice, KCFI and the host harness passed with 58/58 covered functions.

The result is offline/static evidence only. GPIO/sysfs runtime behavior, sanitizers, ledgers, counterexample search and independent hardware/runtime review remain deferred.
