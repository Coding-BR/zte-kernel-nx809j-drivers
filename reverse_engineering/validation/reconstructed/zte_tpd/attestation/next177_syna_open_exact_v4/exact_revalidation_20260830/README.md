# Exact revalidation: `syna_open`

- Driver: `zte_tpd`
- Stock entry: `0x001148a0`
- Stock body: 60 bytes
- Candidate C source SHA-256: `b652e9be3dbee11e7101e5ef9f092f37fd38f1b9396279812d96392440ddb878`
- Candidate exact assembly SHA-256: `6fc74818dbe2a297c539e93a3e8ecc86a196f7440028c68c228ca5e177dce088`
- Curated Docker source: C and exact assembly byte-identical to the main reconstruction.

## Gates

- Canonical Docker build: PASS, 2 independent cycles, Android 16 GKI 6.12.23 / arm64 / clang-r536225; candidate module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.
- AArch64 extraction/comparison: PASS; 15 instructions and 60-byte symbol in stock and candidate.
- KCFI: PASS; stock and candidate type ID `0x9829071d`, section `.text`, size 60 bytes.
- Host ASan/UBSan harness: PASS in 2 cycles, 2 direct cases per cycle; reproducible harness binary hash `384c6520dbf972ac117b21ed8352203d05737229c4d091fcb89b44457a76caa1`.
- Joern strict gate: PASS; 6 calls, 0 control structures, 0 unresolved calls, no mapped call deltas, and 0 parser problems.

This is an offline exact promotion. Android runtime lifecycle and physical hardware behavior remain deferred.
