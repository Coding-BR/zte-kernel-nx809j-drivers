# Exact revalidation: `syna_tcm_get_testing_0A00`

- Driver: `zte_tpd`
- Stock entry: `0x0011cc1c`
- Stock body: 12 bytes
- Candidate C source SHA-256: `9b20b9cfbf5e96a13de72093c7b2330c095a4378d4a70380a4e51282a40bd3ae`
- Candidate exact assembly SHA-256: `b8d4005b3765f07dbb9c3b97040e7ee579d205688842cbad8f6db8ad6b9608b8`
- Main source and Docker-curated source are byte-identical for the C and exact assembly inputs.

## Gates

- Canonical Docker build: PASS, 2 independent cycles, Android 16 GKI 6.12.23 / arm64 / clang-r536225; candidate module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.
- AArch64 extraction/comparison: PASS; 3 instructions and 12-byte symbol in stock and candidate.
- KCFI: PASS; stock and candidate type ID `0x2b399469`, `.text`, 12 bytes.
- Host ASan/UBSan harness: PASS in 2 reproducible Docker cycles.
- Joern strict gate: PASS; source function resolved, 1 call, zero control structures, zero unresolved calls and zero parser problems.

This is an offline exact promotion; runtime and physical hardware behavior remain deferred.
