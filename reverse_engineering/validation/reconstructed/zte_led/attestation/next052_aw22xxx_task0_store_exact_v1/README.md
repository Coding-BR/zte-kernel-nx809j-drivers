# `aw22xxx_task0_store` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_task0_store@001047cc` to the reconstructed `zte_led` candidate. The exact island preserves the 212-byte/53-instruction AArch64 body, `%x` parsing, task0 field offset `0x2ec`, success and error printk paths, CPU `0x20` `queue_work_on` scheduling, `-EINVAL` failure return and stack/PAC sequence.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly/relocation and fresh Ghidra C/P-Code comparison passed strictly, Joern scoped/slice and KCFI passed, and the host harness passed reproducibly with 58/58 covered functions.

The result is offline/static evidence only. Sysfs runtime behavior, sanitizers, ledgers, counterexample search and independent hardware/runtime review remain deferred.
