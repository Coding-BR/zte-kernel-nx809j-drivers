# Exact revalidation: `syna_dev_probe`

- Driver: `zte_tpd`
- Stock entry: `0x00112038`
- Stock body: 1,408 bytes
- Candidate C source SHA-256: `a499f12641e99b76e0df5b27889be91f889ff327d502ac9afb410a3bef5f514e`
- Candidate exact assembly SHA-256: `3a6d0c98eb140950bda39b5d85b9a7f06837660a557f93c628395cb9356610c9`
- Candidate exact include SHA-256: `d40533908a1cb0d0ae9b87a0c3b2d44c5e1bda39a65f77bd29d713bf6878c5ee`
- Curated Docker source: C source and exact assembly inputs match the main reconstruction.

## Gates

- Canonical Docker build: PASS, 2 independent cycles, Android 16 GKI 6.12.23 / arm64 / clang-r536225; both module hashes `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64 extraction/comparison: PASS; 352 instructions and 1,408-byte symbol in stock and candidate.
- KCFI: PASS; stock and candidate type ID `0xc7f8c87c`, section `.text`, size 1,408 bytes.
- Host ASan/UBSan harness: PASS in 2 cycles, 11 scenarios per cycle; reproducible harness binary hash `24f92a503355259da76df5cf9cde9a7e0a8cf00290429dc66ae8ac3ed15c7a7f`.
- Joern strict gate: PASS; 390 calls, 22 control structures, 0 unresolved calls and 0 parser problems.

## Review finding

Joern observed one additional mapped `syna_request_managed_device` call (3 observed versus 2 expected by the stock profile). No expected mapped call is missing, no source fallback was used, and the strict gate remained PASS. This difference is preserved in `joern/joern_gate_summary.json` for later semantic review.

This is an offline exact promotion. Kernel runtime teardown, device-tree/resource ownership, firmware transport, and physical hardware behavior remain deferred.
