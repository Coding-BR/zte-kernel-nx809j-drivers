# aw22xxx_recover_work_routine exact-island attestation

Status: PROMOTED_OFFLINE_EXACT.

This attestation binds stock `aw22xxx_recover_work_routine@001053b8` to the reconstructed zte_led candidate. The exact island preserves the 524-byte/131-instruction AArch64 recovery workqueue callback, ordered I2C reset/programming sequence, delays, logging, stack-canary protection and two-stage `lamp_effect`/`fan_effect` restoration.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly/relocation and fresh Ghidra C/P-Code comparison passed, Joern scoped/slice and KCFI passed, and the host harness passed reproducibly with 58/58 covered functions.

The result is offline/static evidence only. Asynchronous runtime behavior, sanitizers, lifetime ledgers, counterexample search and independent hardware/runtime review remain deferred.
