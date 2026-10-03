# Exact revalidation: `syna_cdev_ioctls`

- Driver: `zte_tpd`
- Stock entry: `0x001150ec`
- Stock body: 8,584 bytes
- Candidate C source SHA-256: `5e0d09a4ae2cdd432c1789fb423b5414d1e6af1c683ca4b27c97d72ff41ed57a`
- Candidate exact assembly SHA-256: `1b5bfa64bc1b1cda3e118f755cc8ef0c3f58f780fe45be8d4854e524de9b2368`
- Curated Docker source: C and exact assembly byte-identical to the main reconstruction.

## Gates

- Canonical Docker build: PASS, 2 independent cycles, Android 16 GKI 6.12.23 / arm64 / clang-r536225; candidate module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.
- AArch64 extraction/comparison: PASS; 2,146 instructions and 8,584-byte symbol in stock and candidate.
- KCFI: PASS; stock and candidate type ID `0x2af6cdbb`, section `.text`, size 8,584 bytes.
- Host ASan/UBSan harness: PASS in 2 cycles, 14 direct route tests per cycle.
- Joern strict gate: PASS with a documented CPG limitation: the exact assembly source yields 0 syntactic calls and `joern_cpg_gap=true`; 8 mapped call groups are recovered by the assembly-layout fallback, with 1 grouped call-delta record. Parser problems and unresolved calls are zero.

This is an offline exact promotion reconciled manually because the generic attester requires a direct source-hash link that would be false for this split exact-assembly target. The attestation records that audit rejection and preserves the truthful scope: the host gate covers the 14 constituent route contracts, while the exact symbol is validated by the AArch64/KCFI/object gates. Android runtime ioctl behavior and physical hardware behavior remain deferred.
