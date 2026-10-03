# Target 312: `syna_tcm_read_mtp_data`

This attestation records the isolated offline reconstruction of stock entry
`0x00127e84` from the NX809J ZTE TPD module.

## Scope

- Preserves the stock signature, two local buffer mutexes and delay selection.
- Preserves bootloader-version gating, write-block rounding and forwarding of
  the rounded length, offset and delay mode to
  `syna_tcm_read_flash_mtp_config`.
- Preserves exact-length copy, short/null buffer errors, firmware-mode cleanup
  and ordered managed cleanup.
- Explicitly preserves the absence of the update flag at `tcm+0x388`, which
  distinguishes this read-side function from `syna_tcm_update_mtp_data`.

## Gates

1. Joern v4.0.548 strict gate: **PASS**; one mapped stock identity, zero
   mapped call deltas, zero unresolved calls and zero parser problems. The
   graph contains 93 calls and 22 control structures. Joern raised high
   review findings for stack-buffer mutex initialization and managed lifetime.
2. Host contract harness: **PASS** in two identical ASan/UBSan cycles; both
   binaries have SHA-256
   `c1b3b89ef5790a8544af83149b50aa57cba99f08dc8971f4187c4ba5e31fc45a`.
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
