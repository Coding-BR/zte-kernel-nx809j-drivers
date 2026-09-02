# `aw22xxx_create_proc_entry` exact-island attestation

Status: `PROMOTED_OFFLINE_EXACT`.

This attestation binds stock `aw22xxx_create_proc_entry@00102ec4` to the reconstructed `zte_led` candidate. The implementation is preserved as an exact 96-byte AArch64 Assembly island with 24 instructions. The stock `proc_ops_awid` callback table is preserved through the exact `.rodata` image and a typed 96-byte ELF object alias, allowing strict Assembly and Ghidra parity.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly comparison passed with 24/24 instructions and relocation parity, fresh Ghidra C/P-Code comparison passed, Joern scoped/slice passed, KCFI passed with `BOTH_NO_VALID_KCFI_PREAMBLE`, and the host harness passed reproducibly with 58/58 covered functions.

The result is offline/static evidence only. Runtime procfs behavior, sanitizers, ledgers, counterexample search and independent hardware/runtime review remain deferred.
