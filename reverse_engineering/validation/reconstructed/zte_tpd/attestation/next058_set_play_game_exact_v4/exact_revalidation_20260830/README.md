# `set_play_game` offline-exact revalidation

This package records the reproducible offline revalidation of `zte_tpd::set_play_game` at stock entry `0x0010bd08`.

- Stock body: 196 bytes; stock and candidate assembly each contain 49 instructions and 196 bytes in `.text`.
- Candidate: `candidate_source.c` plus the selected mechanically lifted `candidate_source_exact.S`.
- Docker canonical build: two cycles passed with identical module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- KCFI: passed with stock/candidate type ID `0xc3d43b4d`, `.text`, 196-byte symbol.
- Strict Joern: passed; one mapped function, 28 calls, 3 control structures, zero unresolved calls and zero parser problems. No review findings were emitted.
- Docker ASan/UBSan host harness: two reproducible cycles, 3 direct cases, passed.

The evidence is offline and function-level. It does not establish procfs integration, concurrent lifetime behavior, physical NX809J hardware behavior, or kernel-runtime safety.
