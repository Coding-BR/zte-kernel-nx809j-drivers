# `get_finger_lock_flag` offline-exact revalidation

This package records the reproducible offline revalidation of `zte_tpd::get_finger_lock_flag` at stock entry `0x0010c92c`.

- Stock body: 208 bytes; stock and candidate assembly each contain 52 instructions and 208 bytes in `.text`, with matching relocation classes.
- Candidate: `candidate_source/get_finger_lock_flag.c`; this target has no separate `.S` file and is validated from the compiled C/AArch64 module output.
- Docker canonical build: two cycles passed with identical module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- KCFI: passed with stock/candidate type ID `0xf4e9d97c`, `.text`, 208-byte symbol.
- Strict Joern: passed; one mapped function, 17 calls, 1 control structure, zero unresolved calls and zero parser problems. One `userspace_egress` review observation remains.
- Docker ASan/UBSan host harness: two reproducible cycles, 4 direct cases, passed.

The evidence is offline and function-level. It does not establish procfs integration, concurrent lifetime behavior, physical NX809J hardware behavior, or kernel-runtime safety.
