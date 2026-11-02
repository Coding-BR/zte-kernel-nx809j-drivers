# Exact revalidation: `report_ufp_uevent`

- Driver: `zte_tpd`
- Stock entry: `0x00110960`
- Stock body: 644 bytes
- Candidate C source SHA-256: `1bffe5763b8914bf00a785e34d5cee051b43fd47e2b776afed59a2be06c32136`
- Candidate exact assembly SHA-256: `e1043cdf888c21bba88a255ec5becacf7f2a7388b2d7b280e2b7c0473fc01c3`
- Candidate exact rodata include SHA-256: `9b18b55a48f04fc92289c247439b666cf69da301a828b20a4b6cffaba914784b`
- Curated Docker source: C source byte-identical to the main reconstruction source.

## Gates

- Canonical Docker build: PASS, 2 independent cycles, Android 16 GKI 6.12.23 / arm64 / clang-r536225; both module hashes `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 extraction/comparison: PASS; 161 instructions and 644-byte symbol in stock and candidate.
- KCFI: PASS; stock and candidate type ID `0x454a91cb`, section `.text`, size 644 bytes.
- Host ASan/UBSan harness: PASS in 2 cycles, 7 direct cases per cycle; reproducible harness binary hash `bf05281b73f60e51bcad2ffd778c2216a460121f61e9ea1fc0e67b7ec583005c`.
- Joern strict gate: PASS; 103 calls, 20 control structures, 0 unresolved calls, no mapped call deltas, 0 parser problems.

This is an offline exact promotion. Hardware execution, kernel runtime traces, and physical uevent delivery remain deferred.
