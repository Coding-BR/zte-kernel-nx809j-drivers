# Exact revalidation: `syna_tcm_testing_0A00_check_upper_bound`

- Driver: `zte_tpd`
- Stock entry: `0x0011d25c`
- Stock body: 100 bytes
- Candidate C source SHA-256: `e71957a47d3748ae620af6095cfc3c6fd73642c98ae5eac1dd1b0c4079fad0d2`
- Main source and Docker-curated source are byte-identical.

## Gates

- Canonical Docker build: PASS, 2 independent cycles, Android 16 GKI 6.12.23 / arm64 / clang-r536225; candidate module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.
- AArch64 extraction/comparison: PASS; 25 instructions and 100-byte symbol in stock and candidate.
- KCFI: PASS; stock and candidate type ID `0xa33285f2`, `.text`, 100 bytes.
- Host ASan/UBSan harness: PASS in 2 reproducible Docker cycles, 3 direct boundary cases per cycle.
- Joern strict gate: PASS; source function resolved, 11 calls, 1 control structure, zero unresolved calls and zero parser problems.

The direct harness covers equality, signed lower values and an upper-bound violation, including the stock row/column logging order. Android runtime and physical hardware behavior remain deferred.
