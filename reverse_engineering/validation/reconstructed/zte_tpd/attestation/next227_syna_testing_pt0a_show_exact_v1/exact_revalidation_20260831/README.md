# Exact revalidation: `syna_testing_pt0a_show`

- Driver: `zte_tpd`
- Stock entry: `0x0011c944`
- Stock body: 724 bytes
- Candidate C source SHA-256: `f577ee47d85f32854998f88f049e31bc6531fb181b295354e978ea2cd3f8326b`
- Candidate exact assembly SHA-256: `b8d4005b3765f07dbb9c3b97040e7ee579d205688842cbad8f6db8ad6b9608b8`
- Main source and Docker-curated source are byte-identical for the C and exact assembly inputs.

## Gates

- Canonical Docker build: PASS, 2 independent cycles, Android 16 GKI 6.12.23 / arm64 / clang-r536225; candidate module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.
- AArch64 extraction/comparison: PASS; 181 instructions and 724-byte symbol in stock and candidate.
- KCFI: PASS; stock and candidate type ID `0x4e31a072`, `.text`, 724 bytes.
- Host ASan/UBSan harness: PASS in 2 reproducible Docker cycles, 8 direct cases per cycle.
- Joern strict gate: PASS; source function resolved, 117 calls, 14 control structures, zero unresolved calls and zero parser problems.

Joern records one high-severity lifetime review finding for the stock-preserving `devm_kfree` call. It is retained as a review item and does not change the parity result. This is an offline exact promotion; Android sysfs integration and physical hardware behavior remain deferred.
