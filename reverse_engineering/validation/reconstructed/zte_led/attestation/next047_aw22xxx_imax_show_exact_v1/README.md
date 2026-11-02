# `aw22xxx_imax_show` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_imax_show@001042ac` to the reconstructed `zte_led` candidate. The exact island preserves the 488-byte/122-instruction AArch64 body, all 13 `snprintf` calls, the current-ID bounds check, final formatter, observed `brk #0x5512` tail, stack/PAC sequence and KCFI preamble.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly/relocation and fresh Ghidra C/P-Code comparison passed strictly, Joern scoped/slice and KCFI passed, and the host harness passed reproducibly with 58/58 covered functions.

The result is offline/static evidence only. Sysfs runtime behavior, sanitizers, ledgers, counterexample search and independent hardware/runtime review remain deferred.
