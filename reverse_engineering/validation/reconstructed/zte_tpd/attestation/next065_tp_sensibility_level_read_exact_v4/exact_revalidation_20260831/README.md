# `tp_sensibility_level_read` offline-exact revalidation

This package records the reproducible offline revalidation of `zte_tpd::tp_sensibility_level_read` at stock entry `0x0010c304`.

- Stock body: 240 bytes; stock and candidate assembly each contain 60 instructions and 240 bytes in `.text`, with matching relocation classes.
- Candidate: `candidate_source/tp_sensibility_level_read.c` plus the selected mechanically lifted `candidate_source/tp_sensibility_level_read_exact.S`.
- Docker canonical build: two cycles passed with identical module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.
- KCFI: passed with stock/candidate type ID `0xf4e9d97c`, `.text`, 240-byte symbol.
- Strict Joern: passed with explicit kernel analysis defines `__user`, `__init` and `__exit`; one mapped function, 33 calls, 2 control structures, zero unresolved calls and zero parser problems. One `userspace_egress` review observation remains.
- Docker ASan/UBSan host harness: two reproducible cycles, 3 direct cases, passed.

The evidence is offline and function-level. It does not establish sysfs integration, concurrent lifetime behavior, physical NX809J hardware behavior, or kernel-runtime safety.
