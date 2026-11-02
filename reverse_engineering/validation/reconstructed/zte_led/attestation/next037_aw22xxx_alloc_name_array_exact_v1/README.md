# zte_led — `aw22xxx_alloc_name_array@00102b8c`

Status: `PROMOTED_OFFLINE_EXACT`.

The candidate is an AArch64 exact island materialized from the preserved stock assembly. Its ELF-bounded ELF symbol is 612 bytes / 153 instructions, preserving the name-array allocations, initialization strings and reverse-order cleanup paths.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly comparison passed with 153/153 instructions and relocation parity, Joern scoped/slice passed, and KCFI passed with `BOTH_NO_VALID_KCFI_PREAMBLE` for the 612-byte ELF symbol. The host harness passed reproducibly with 58/58 covered functions.

Ghidra required a dynamic boundary repair because the primary body is 528 bytes while the ELF symbol also contains a cold cleanup tail. The fresh candidate export repairs `aw22xxx_alloc_name_array` at `0010374c` to the 528-byte primary body; the protocol keeps the complete 612-byte ELF body authoritative and records the declared P-Code fallback.

Limitations: physical allocation/failure behavior, device-tree, sanitizers, register/state ledgers, semantic counterexample search and independent runtime review remain deferred. This is offline/static promotion only.
