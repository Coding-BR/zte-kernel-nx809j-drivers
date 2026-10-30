# Exact revalidation: `syna_dev_connect`

- Driver: `zte_tpd`
- Stock entry: `0x00112714`
- Stock body: 1,004 bytes
- Candidate C source SHA-256: `f3ab5d8b4f0fa61e48a82ef5c88c10a5a6afec2d2cb325ecbb3c5c657f4acac6`
- Candidate exact assembly SHA-256: `6a18b27b38e0b6b1b14aa1c16d84b15b91f4caf1fe8455133112746a98075556`
- Curated Docker source: C source byte-identical to the main reconstruction.

## Gates

- Canonical Docker build: PASS, 2 independent cycles, Android 16 GKI 6.12.23 / arm64 / clang-r536225; both module hashes `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 extraction/comparison: PASS; 251 instructions and 1,004-byte symbol in stock and candidate.
- KCFI: PASS; stock and candidate type ID `0xae20471c`, section `.text`, size 1,004 bytes.
- Host ASan/UBSan harness: PASS in 2 cycles, 5 direct cases per cycle; reproducible harness binary hash `8bcae42090f7fc4ec3591660d9db071f5fac09ddf16cf456ecdfc3013dcd602c`.
- Joern strict gate: PASS; 188 calls, 20 control structures, 0 unresolved calls, no mapped call deltas, and 0 parser problems.

This is an offline exact promotion. Kernel runtime resource ownership and physical hardware behavior remain deferred.
