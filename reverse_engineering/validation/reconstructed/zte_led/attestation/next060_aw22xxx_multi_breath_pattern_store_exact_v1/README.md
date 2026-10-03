# aw22xxx_multi_breath_pattern_store exact-island attestation

Status: PROMOTED_OFFLINE_EXACT.

This attestation binds stock aw22xxx_multi_breath_pattern_store@00105054 to the reconstructed zte_led candidate. The exact island preserves the 400-byte/100-instruction AArch64 body, sscanf parsing, state transitions, four I2C writes, kthread creation/error path and stack-canary path.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly/relocation and fresh Ghidra C/P-Code comparison passed, Joern scoped/slice and KCFI passed, and the host harness passed reproducibly with 58/58 covered functions.

The result is offline/static evidence only. Sysfs runtime behavior, sanitizers, ledgers, counterexample search and independent hardware/runtime review remain deferred.
