# Exact revalidation: `syna_dev_process_touch_report`

- Driver: `zte_tpd`
- Stock entry: `0x00113c74`
- Stock body: 1,340 bytes
- Candidate C source SHA-256: `046ca214a6e37419b2c951e289e3da4db2315f570d06158e237c757094666258`
- Candidate exact assembly SHA-256: `33ac669d99a011c49db8dc54f845657d39fe023ce0a792757d30d632ea22e199`
- Curated Docker source: C source byte-identical to the main reconstruction.

## Gates

- Canonical Docker build: PASS, 2 independent cycles, Android 16 GKI 6.12.23 / arm64 / clang-r536225; candidate module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 extraction/comparison: PASS; 335 instructions and 1,340-byte symbol in stock and candidate.
- KCFI: PASS; stock and candidate type ID `0x9f93c40a`, section `.text`, size 1,340 bytes.
- Host ASan/UBSan harness: PASS in 2 cycles, 11 direct cases per cycle; reproducible harness binary hash `60a35eee695abceddbdaeb6a7a73aaab2787ebd33b6d6755dbc425f887ce4b2d`.
- Joern strict gate: PASS; 250 calls, 50 control structures, 0 unresolved calls, no mapped call deltas, and 0 parser problems.

This is an offline exact promotion. Android runtime lifecycle and physical hardware behavior remain deferred.
