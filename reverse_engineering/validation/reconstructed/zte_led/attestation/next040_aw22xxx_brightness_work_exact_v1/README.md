# `aw22xxx_brightness_work` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_brightness_work@00102f28` to the reconstructed `zte_led` candidate. The implementation is preserved as an exact 588-byte AArch64 Assembly island with 147 instructions and the stock KCFI preamble/type ID `0xa607748c`. It retains the stock workqueue state transitions, register writes, sleeps, logging calls and stack-canary path.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly comparison passed with 147/147 instructions and relocation parity, fresh Ghidra C/P-Code comparison passed, Joern scoped/slice passed, KCFI passed with matching type ID and body size, and the host harness passed reproducibly with 58/58 covered functions.

The result is offline/static evidence only. Runtime workqueue scheduling, hardware bus behavior, sanitizers, ledgers, counterexample search and independent hardware/runtime review remain deferred.
