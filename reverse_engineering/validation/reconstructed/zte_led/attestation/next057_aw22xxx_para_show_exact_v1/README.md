# `aw22xxx_para_show` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_para_show@00104aa0` to the reconstructed `zte_led` candidate. The exact island preserves the 284-byte/71-instruction AArch64 body, `write_idx/user_para_data` state accesses, 25-item iteration, CRLF formatting, output bounds and the observed `brk` guard path.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly/relocation and fresh Ghidra C/P-Code comparison passed strictly, Joern scoped/slice and KCFI passed, and the host harness passed reproducibly with 58/58 covered functions.

The result is offline/static evidence only. Procfs runtime behavior, sanitizers, ledgers, counterexample search and independent hardware/runtime review remain deferred.
