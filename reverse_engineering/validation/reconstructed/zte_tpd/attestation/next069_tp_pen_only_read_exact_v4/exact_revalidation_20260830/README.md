# `tp_pen_only_read` offline-exact revalidation

This package records the reproducible offline revalidation of `zte_tpd::tp_pen_only_read` at stock entry `0x0010c724`.

- Stock body: 240 bytes; stock and candidate assembly each contain 60 instructions and 240 bytes in `.text`, with matching relocation classes.
- Candidate: `candidate_source/tp_pen_only_read.c`. This target has no separate `tp_pen_only_read_exact.S`; its AArch64/KCFI sequence is preserved in the C implementation with inline assembly and validated from the compiled module.
- Docker canonical build: two cycles passed with identical module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- KCFI: passed with stock/candidate type ID `0xf4e9d97c`, `.text`, 240-byte symbol.
- Strict Joern: passed; one mapped function, 31 calls, 3 control structures, zero unresolved calls and zero parser problems. One `userspace_egress` review observation remains.
- Docker ASan/UBSan host harness: two reproducible cycles, 4 direct cases, passed.

The evidence is offline and function-level. It does not establish procfs integration, concurrent lifetime behavior, physical NX809J hardware behavior, or kernel-runtime safety.
