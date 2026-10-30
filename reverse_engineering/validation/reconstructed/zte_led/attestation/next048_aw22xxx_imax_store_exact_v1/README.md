# `aw22xxx_imax_store` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_imax_store@00104498` to the reconstructed `zte_led` candidate. The exact island preserves the 240-byte/60-instruction AArch64 body, sscanf parsing and bounds check, the 13-entry imax lookup, cap-to-0xf, ordered reset/register I2C writes, invalid-input `-EINVAL` path, stack/PAC sequence and KCFI preamble.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly/relocation and fresh Ghidra C/P-Code comparison passed strictly, Joern scoped/slice and KCFI passed, and the host harness passed reproducibly with 58/58 covered functions.

The result is offline/static evidence only. Sysfs runtime behavior, sanitizers, ledgers, counterexample search and independent hardware/runtime review remain deferred.
