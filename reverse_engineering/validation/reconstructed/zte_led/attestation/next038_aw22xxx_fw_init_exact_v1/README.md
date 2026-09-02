# `aw22xxx_fw_init` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds the stock `aw22xxx_fw_init@00102df0` to the reconstructed `zte_led` candidate. The implementation is preserved as an exact 212-byte AArch64 Assembly island with 53 instructions because the original C form produced a different relocation layout and an extra KCFI preamble.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly comparison passed with 53/53 instructions and relocation parity, fresh Ghidra C/P-Code comparison passed, Joern scoped/slice passed, KCFI passed with `BOTH_NO_VALID_KCFI_PREAMBLE`, and the host harness passed reproducibly with 58/58 covered functions.

The result is offline/static evidence only. Hardware timer/workqueue behavior, sanitizers, ledgers, counterexample search and independent runtime review remain deferred.
