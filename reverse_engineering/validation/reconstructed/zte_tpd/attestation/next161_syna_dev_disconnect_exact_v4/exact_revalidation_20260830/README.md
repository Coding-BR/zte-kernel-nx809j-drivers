# Exact revalidation: `syna_dev_disconnect`

- Driver: `zte_tpd`
- Stock entry: `0x00112b04`
- Stock body: 392 bytes
- Candidate C source SHA-256: `3446cdc7b12d264cbd7129a7ed6574239dcaec0dc8427b316c4c20eec9dee1fb`
- Candidate exact assembly SHA-256: `243a85694cf302a770c41a7f8497b00789c2836a174e95bb43d3a90a0796fbca`
- Candidate exact include SHA-256: `fc02ff81fda5e8f1ab0371c4f706558f4d77a4a330b7a31fe5eb4228ddb47686`
- Curated Docker source: C source byte-identical to the main reconstruction.

## Gates

- Canonical Docker build: PASS, 2 independent cycles, Android 16 GKI 6.12.23 / arm64 / clang-r536225; both module hashes `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 extraction/comparison: PASS; 98 instructions and 392-byte symbol in stock and candidate.
- KCFI: PASS; stock and candidate type ID `0xae20471c`, section `.text`, size 392 bytes.
- Host ASan/UBSan harness: PASS in 2 cycles, 5 direct cases per cycle; reproducible harness binary hash `109ec6be692325c13e741b815640e5f387a498526a0bb0a5e59663ed72b65bcf`.
- Joern strict gate: PASS; 124 calls, 18 control structures, 0 unresolved calls, no mapped call deltas, and 0 parser problems.

This is an offline exact promotion. Kernel runtime resource ownership and physical hardware behavior remain deferred.
