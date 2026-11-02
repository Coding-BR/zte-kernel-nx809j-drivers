# `tp_pen_only_write` offline-exact revalidation

This package records the reproducible offline revalidation of `zte_tpd::tp_pen_only_write` at stock entry `0x0010c818`.

- Stock body: 272 bytes; stock and candidate assembly each contain 68 instructions and 272 bytes in `.text`, with matching relocation classes.
- Candidate: `candidate_source/tp_pen_only_write.c`; this target is validated from its C implementation and compiled AArch64 module output.
- Docker canonical build: two cycles passed with identical module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- KCFI: passed with stock/candidate type ID `0xc3d43b4d`, `.text`, 272-byte symbol.
- Strict Joern: passed; one mapped function, 54 calls, 6 control structures, zero unresolved calls and zero parser problems. One `userspace_ingress` review observation remains.
- Docker ASan/UBSan host harness: two reproducible cycles, 5 direct cases, passed.

The evidence is offline and function-level. It does not establish procfs integration, concurrent lifetime behavior, physical NX809J hardware behavior, or kernel-runtime safety.
