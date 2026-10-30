# Target 313: `syna_tcm_erase_mtp_data`

This attestation records the isolated offline reconstruction of stock entry
`0x001281c8` from the NX809J ZTE TPD module.

## Scope

- Preserves delay-mode selection, flash-access setup and bootloader-version
  gating.
- Preserves the erase geometry calculation from the Ghidra decompilation,
  P-Code and AArch64 assembly, including the two-byte and four-byte command
  layouts.
- Sends command `0x11`, preserves transport-delay fallback, propagates the
  transport result and performs firmware-mode and managed-memory cleanup.

## Gates

1. Joern v4.0.548 strict gate: **PASS**; one mapped stock identity, zero
   mapped call deltas, zero unresolved calls and zero parser problems. The
   graph contains 111 calls and 19 control structures. Joern raised high
   review findings for stack-context synchronization and managed lifetime.
2. Host contract harness: **PASS** in two identical ASan/UBSan cycles; both
   binaries have SHA-256
   `eada2c65ce546d9517432617274e8c5d7729865bcc9f4a6ba8d1ec51e7e04376`.
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
