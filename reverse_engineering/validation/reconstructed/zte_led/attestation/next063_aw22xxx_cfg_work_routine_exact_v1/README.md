# aw22xxx_cfg_work_routine exact-island attestation

Status: PROMOTED_OFFLINE_EXACT.

This attestation binds stock aw22xxx_cfg_work_routine@001052d0 to the reconstructed zte_led candidate. The exact island preserves the 228-byte/57-instruction AArch64 work routine, conditional state updates, one-time configuration initialization and the request_firmware_nowait callback path.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly/relocation and fresh Ghidra C/P-Code comparison passed, Joern scoped/slice and KCFI passed, and the host harness passed reproducibly with 58/58 covered functions.

The result is offline/static evidence only. Asynchronous dynamic-configuration runtime behavior, sanitizers, lifetime ledgers, counterexample search and independent hardware/runtime review remain deferred.
