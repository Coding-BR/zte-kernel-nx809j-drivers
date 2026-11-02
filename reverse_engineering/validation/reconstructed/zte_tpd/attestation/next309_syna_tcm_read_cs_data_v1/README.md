# Target 309: `syna_tcm_read_cs_data`

This attestation records the isolated offline reconstruction of stock entry
`0x001277fc` from the NX809J ZTE TPD module.

## Scope

- Preserves the stock signature, delay selection and setup of the two local
  protocol buffers.
- Preserves write-block rounding, including the stock zero-block read path,
  and forwards rounded length, offset and delay mode to
  `syna_tcm_read_flash_boot_cs_config`.
- Preserves null/short-buffer rejection, exact-length copy, return values,
  firmware-mode cleanup and both managed-device cleanup call sites.
- Adds bounded rounding for overflowed host inputs without changing valid
  stock paths.

## Gates

1. Joern v4.0.548 strict gate: **PASS**; one mapped stock identity, zero
   mapped call deltas, zero unresolved calls and zero parser problems. The
   graph contains 86 calls and 20 control structures. Joern raised high
   review findings for stack-buffer mutex initialization and managed lifetime.
2. Host contract harness: **PASS** in two identical ASan/UBSan cycles; both
   binaries have SHA-256
   `d2de52188f8703207d9062f3145e1d9c9d8e8146fa9b9479daf54f5b32a7b582`.
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
