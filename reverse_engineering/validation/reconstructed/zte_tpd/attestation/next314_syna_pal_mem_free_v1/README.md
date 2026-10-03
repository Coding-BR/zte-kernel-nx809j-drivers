# Target 314: `syna_pal_mem_free`

This attestation records the isolated offline reconstruction of stock entry
`0x001284c0` from the NX809J ZTE TPD module.

## Scope

- Requests the managed device before attempting any release.
- Preserves the null-pointer guard and the unavailable-device branch.
- Forwards the original allocation unchanged to `devm_kfree` when the device
  and allocation are both available.

## Gates

1. Joern v4.0.548 strict gate: **PASS**; the mapped function identity is
   present, with zero mapped call deltas, zero unresolved calls and zero parser
   problems. The current source tree resolves two same-named mapped methods
   because of the legacy companion source; both identities are covered. The
   graph contains 11 calls and 5 control structures.
2. Host contract harness: **PASS** in two identical ASan/UBSan cycles; both
   binaries have SHA-256
   `b11739a6c41f12931ed29c37e2bbe818baae55d3242892533c03d878f87518e3`.
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
