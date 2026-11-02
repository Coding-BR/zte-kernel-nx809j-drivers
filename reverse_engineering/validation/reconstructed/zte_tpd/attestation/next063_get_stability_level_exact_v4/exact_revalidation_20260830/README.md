# `get_stability_level` offline-exact revalidation

This package records the reproducible offline revalidation of `zte_tpd::get_stability_level` at stock entry `0x0010c148`.

- Stock body: 240 bytes; stock and candidate assembly each contain 60 instructions and 240 bytes in `.text`, with matching relocation classes.
- Candidate: `candidate_source/get_stability_level.c` plus the selected mechanically lifted `candidate_source/get_stability_level_exact.S`.
- Docker canonical build: two cycles passed with identical module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- KCFI: passed with stock/candidate type ID `0xf4e9d97c`, `.text`, 240-byte symbol.
- Strict Joern: passed; one mapped function, 42 calls, 2 control structures, zero unresolved calls and zero parser problems. One `userspace_egress` review observation remains.
- Docker ASan/UBSan host harness: two reproducible cycles, 2 direct cases, passed.

The evidence is offline and function-level. It does not establish sysfs integration, concurrent lifetime behavior, physical NX809J hardware behavior, or kernel-runtime safety.
