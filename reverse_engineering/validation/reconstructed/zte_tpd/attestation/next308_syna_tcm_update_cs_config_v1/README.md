# Target 308: `syna_tcm_update_cs_config`

This attestation records the isolated offline reconstruction of stock entry
`0x00127414` from the NX809J ZTE TPD module.

## Scope

- Preserves the stock signature, delay selection and update-state flag at
  `tcm+0x388`.
- Preserves the flash-access setup, boot-config read, signed marker scan and
  the recovered `access+0x38` flash-base word.
- Preserves block alignment, zero-block search, input copy, rounded write
  length, write error propagation and firmware-mode cleanup.
- Preserves both managed-device cleanup call sites and records the recovered
  `access+0x2c` write-block field and `tcm_buffer` geometry.
- Adds bounded arithmetic and byte-wise reads for malformed or overflowed
  host inputs without changing valid stock paths.

## Gates

1. Joern v4.0.548 strict gate: **PASS**; one mapped stock identity, zero
   mapped call deltas, zero unresolved calls and zero parser problems. The
   graph contains 175 calls and 44 control structures. Joern raised high
   review findings for stack-buffer mutex initialization and managed lifetime.
2. Host contract harness: **PASS** in two identical ASan/UBSan cycles; both
   binaries have SHA-256
   `9c422317ccfce333f621bbffbc8a971ababcc69e24ddb268dd70a211d0f7988a`.
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
