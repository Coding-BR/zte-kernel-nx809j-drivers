# Target 315: `syna_tcm_get_touch_data`

This attestation records the isolated offline reconstruction of stock entry
`0x00128514` from the NX809J ZTE TPD module.

## Scope

- Preserves the valid bit-count range of 1 through 32 and the stock `-241`
  invalid-input result.
- Preserves the out-of-range success behavior that clears the output value.
- Preserves little-endian bit extraction across byte boundaries, including the
  final partial byte and destination write.

## Gates

1. Joern v4.0.548 strict gate: **PASS**; one mapped stock identity, zero
   mapped call deltas, zero unresolved calls and zero parser problems. The
   graph contains 45 calls and 5 control structures.
2. Host contract harness: **PASS** in two identical ASan/UBSan cycles. The
   harness checks invalid inputs, out-of-range fields, boundary crossings and
   every supported width against an independent bit-level oracle. Both
   binaries have SHA-256
   `6b3742c2fa6c90d995239923d7175dcc7e8f370dc8b9184ad4516c49bbb18ff8`.
3. AArch64 cross-compiler syntax check and candidate Assembly emission:
   **PASS** using Android clang 19.0.1 and `aarch64-linux-android34`.
4. The source, harness, stock decompilation, P-Code, stock assembly,
   candidate assembly and Joern report are hash-attested in
   `microproof_attestation_v1.json`.

## Promotion status

This target is **not promoted as hardware-equivalent**. A canonical GKI
module build, KCFI/relocation review, independent kernel review and controlled
smartphone validation remain required. No smartphone test was run in this
cycle.
