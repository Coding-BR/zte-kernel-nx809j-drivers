# `aw22xxx_task_irq_show` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_task_irq_show@001049a4` to the reconstructed `zte_led` candidate. The exact island preserves the 56-byte/14-instruction AArch64 body, `snprintf` format `task_irq = %u\n`, task_irq field offset `0x2e8`, output bound `0x1000`, return conversion and stack/PAC cleanup.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly/relocation and fresh Ghidra C/P-Code comparison passed strictly, Joern scoped/slice and KCFI passed, and the host harness passed reproducibly with 58/58 covered functions.

The result is offline/static evidence only. Procfs runtime behavior, sanitizers, ledgers, counterexample search and independent hardware/runtime review remain deferred.
