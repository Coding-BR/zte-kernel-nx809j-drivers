# aw22xxx_para_store exact-island attestation

Status: PROMOTED_OFFLINE_EXACT.

This attestation binds stock aw22xxx_para_store@00104bc0 to the reconstructed zte_led candidate. The exact island preserves the 1108-byte/277-instruction AArch64 body, 25-field sscanf layout, allocation retry/codetag path, cleanup, write_idx capacity guard, 25 byte stores and the observed brk guard.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly/relocation and fresh Ghidra C/P-Code comparison passed with narrowly scoped section-relative address normalization, Joern scoped/slice and KCFI passed, and the host harness passed reproducibly with 58/58 covered functions.

The result is offline/static evidence only. Sysfs runtime behavior, sanitizers, ledgers, counterexample search and independent hardware/runtime review remain deferred.
