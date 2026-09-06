# Exact revalidation: `syna_dev_set_up_app_fw`

- Driver: `zte_tpd`
- Stock entry: `0x00112c90`
- Stock body: 216 bytes
- Candidate C source SHA-256: `c74443fc5c9a5b0cc36165113b025b52b7333716c4f0bd407bf326c98f70c65d`
- Candidate exact assembly SHA-256: `b2d180c429147802b14f6f7983f936289da4fdff8f1153c81f67aafd7cda15b7`
- Curated Docker source: C source byte-identical to the main reconstruction.

## Gates

- Canonical Docker build: PASS, 2 independent cycles, Android 16 GKI 6.12.23 / arm64 / clang-r536225; both module hashes `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 extraction/comparison: PASS; 54 instructions and 216-byte symbol in stock and candidate.
- KCFI: PASS; stock and candidate type ID `0xae20471c`, section `.text`, size 216 bytes.
- Host ASan/UBSan harness: PASS in 2 cycles, 6 direct cases per cycle; reproducible harness binary hash `69619121a7ba351706e14e233da82aaef2361311d30244abefa40481a63f41e9`.
- Joern strict gate: PASS; 44 calls, 13 control structures, 0 unresolved calls, no mapped call deltas, and 0 parser problems.

This is an offline exact promotion. Kernel runtime resource behavior and physical hardware behavior remain deferred.
