# `aw22xxx_rgb_show` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_rgb_show@0010458c` to the reconstructed `zte_led` candidate. The exact island preserves the 320-byte/80-instruction AArch64 body, all nine RGB formatter calls, field offsets `0x2fc` through `0x31c`, indices 0 through 8, PAGE_SIZE accounting and accumulated return length, plus the stack/PAC sequence and KCFI preamble.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly/relocation and fresh Ghidra C/P-Code comparison passed strictly, Joern scoped/slice and KCFI passed, and the host harness passed reproducibly with 58/58 covered functions.

The result is offline/static evidence only. Sysfs runtime behavior, sanitizers, ledgers, counterexample search and independent hardware/runtime review remain deferred.
