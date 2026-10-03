# `get_play_game` offline-exact revalidation

This package records the reproducible offline revalidation of `zte_tpd::get_play_game` at stock entry `0x0010bc14`.

- Stock body: 240 bytes; stock and candidate assembly each contain 60 instructions and 240 bytes in `.text`.
- Candidate: `candidate_source.c` plus the selected mechanically lifted `candidate_source_exact.S`.
- Docker canonical build: two cycles passed with identical module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- KCFI: passed with stock/candidate type ID `0xf4e9d97c`, `.text`, 240-byte symbol.
- Strict Joern: passed; one mapped function, 42 calls, 2 control structures, zero unresolved calls and zero parser problems. One high-severity userspace-egress finding remains documented for runtime review.
- Docker ASan/UBSan contract harness: two reproducible cycles, 4 direct cases, passed. The harness models the read contract with fake cdev memory and is explicitly not a real procfs execution.

The evidence is offline and function-level. It does not establish procfs integration, concurrent lifetime behavior, physical NX809J hardware behavior, or kernel-runtime safety.
