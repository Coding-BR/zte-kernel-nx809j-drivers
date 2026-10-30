# Exact revalidation: `syna_dev_suspend`

- Driver: `zte_tpd`
- Stock entry: `0x0011337c`
- Stock body: 392 bytes
- Candidate C source SHA-256: `8965d9418478181e349a3660b5a56ee55a3b871779632d2d52b228cf9b451669`
- Candidate exact assembly SHA-256: `9e56e5424b82d83e707ccd5f04747bd98cd3e8360958e35e944ff518623e3fdf`
- Curated Docker source: C source byte-identical to the main reconstruction.

## Gates

- Canonical Docker build: PASS, 2 independent cycles, Android 16 GKI 6.12.23 / arm64 / clang-r536225; candidate module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 extraction/comparison: PASS; 98 instructions and 392-byte symbol in stock and candidate.
- KCFI: PASS; stock and candidate type ID `0x2a703c0b`, section `.text`, size 392 bytes.
- Host ASan/UBSan harness: PASS in 2 cycles, 6 direct cases per cycle; reproducible harness binary hash `6f522d560677d88c979ebcbecc574b8d03c7747a533d4370cf61590f11ca495b`.
- Joern strict gate: PASS; 103 calls, 15 control structures, 0 unresolved calls, no mapped call deltas, and 0 parser problems.

This is an offline exact promotion. Android runtime lifecycle and physical hardware behavior remain deferred.
