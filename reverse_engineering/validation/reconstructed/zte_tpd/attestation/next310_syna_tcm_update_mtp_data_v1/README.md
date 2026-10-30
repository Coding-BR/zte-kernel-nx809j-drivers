# Target 310: `syna_tcm_update_mtp_data`

This attestation records the isolated offline reconstruction of stock entry
`0x00127b14` from the NX809J ZTE TPD module.

## Scope

- Preserves the stock signature, delay selection, stack access context and
  update-state flag at `tcm+0x388`.
- Preserves bootloader-version gating, write-block alignment, the recovered
  v3 page-base field at `access+0x3c` and the `0xdc0` devm allocation flags.
- Preserves rounded payload allocation, exact input copy, write invocation,
  result replacement on success and the stock devm-owned payload lifetime.
- Preserves firmware-mode cleanup, update-state clearing and cleanup of the
  setup-owned allocation at `access+0x40`.
- Adds bounded arithmetic for malformed or overflowing host inputs without
  changing valid stock paths.

## Gates

1. Joern v4.0.548 strict gate: **PASS**; one mapped stock identity, zero
   mapped call deltas, zero unresolved calls and zero parser problems. The
   graph contains 106 calls and 20 control structures. Joern raised high
   review findings for stack-buffer mutex initialization and managed
   allocation lifetime.
2. Host contract harness: **PASS** in two identical ASan/UBSan cycles; both
   binaries have SHA-256
   `c72f3c7dbb3209df9abb120b3fc4dfd43233adbf37b30ea01da87f8a156fd431`.
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
