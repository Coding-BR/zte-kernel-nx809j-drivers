# Target 311: `syna_pal_mem_alloc`

This attestation records the isolated offline reconstruction of stock entry
`0x00127e18` from the NX809J ZTE TPD module.

## Scope

- Preserves the managed-device request order and NULL return on a missing
  managed device.
- Preserves rejection of non-positive sizes without an allocator call.
- Preserves direct forwarding of positive size values to `devm_kmalloc` with
  the stock flag `0xdc0` and direct return of the allocator result.

## Gates

1. Joern v4.0.548 strict gate: **PASS**; one mapped stock identity, zero
   mapped call deltas, zero unresolved calls and zero parser problems. The
   graph contains 8 calls and 2 control structures. Joern raised one high
   review finding for devm allocation lifetime.
2. Host contract harness: **PASS** in two identical ASan/UBSan cycles; both
   binaries have SHA-256
   `9adf6786f55879223a21f53604e2ebb54594637f9eb3b4a2900d2f8a8f12aecc`.
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
