# Exact revalidation: `syna_dev_resume`

- Driver: `zte_tpd`
- Stock entry: `0x00112d6c`
- Stock body: 1,548 bytes
- Candidate C source SHA-256: `a9aa884c3cd5715bf7fc47b2552dc3579d8b7299f5cbd200dc738b586f6a59c8`
- Candidate exact assembly SHA-256: `e3d6605b21eb7e1e849f010781ef8832cafb51d0500efa3ae10d31a7f91d6345`
- Curated Docker source: C source byte-identical to the main reconstruction.

## Gates

- Canonical Docker build: PASS, 2 independent cycles, Android 16 GKI 6.12.23 / arm64 / clang-r536225; both module hashes `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 extraction/comparison: PASS; 387 instructions and 1,548-byte symbol in stock and candidate.
- KCFI: PASS; stock and candidate type ID `0x2a703c0b`, section `.text`, size 1,548 bytes.
- Host ASan/UBSan harness: PASS in 2 cycles, 6 direct cases per cycle; reproducible harness binary hash `6c70d3701eacf14c4602041170fee0cbd9c3c891a02928fb28fd96c49c3ceb0d`.
- Joern strict gate: PASS; 287 calls, 73 control structures, 0 unresolved calls, no mapped call deltas, and 0 parser problems.

This is an offline exact promotion. Android runtime lifecycle and physical hardware behavior remain deferred.
