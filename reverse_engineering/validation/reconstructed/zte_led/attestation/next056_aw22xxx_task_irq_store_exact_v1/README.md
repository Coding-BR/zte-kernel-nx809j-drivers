# `aw22xxx_task_irq_store` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_task_irq_store@001049e0` to the reconstructed `zte_led` candidate. The exact island preserves the 188-byte/47-instruction AArch64 body, unsigned `sscanf` parsing, task_irq u32 offset `0x2e8`, success/error `_printk` branches, `-22` parse failure and stack/PAC cleanup.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly/relocation and fresh Ghidra C/P-Code comparison passed strictly, Joern scoped/slice and KCFI passed, and the host harness passed reproducibly with 58/58 covered functions.

The result is offline/static evidence only. Procfs runtime behavior, sanitizers, ledgers, counterexample search and independent hardware/runtime review remain deferred.
