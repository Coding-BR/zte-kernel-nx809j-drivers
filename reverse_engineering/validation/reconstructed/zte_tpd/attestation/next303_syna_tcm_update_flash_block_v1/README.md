# Target 303: `syna_tcm_update_flash_block`

This attestation records the isolated offline reconstruction of stock entry
`0x00125f38` from the NX809J ZTE TPD module.

## Scope

- Preserves the stock flash-block validation gate and the zero-result early
  return from `syna_tcm_check_flash_block`.
- Preserves erase geometry, little-endian erase payload construction, command
  `0x11`, transport-dependent delay fallback, and normal `syna_tcm_write_flash`
  forwarding.
- Preserves optimized command `0xfe`, six-byte chunk headers, block indexing,
  chunk delay calculation, managed buffer reuse, and lock-depth rollback.
- Uses the proven shared allocation field at context `+0x40` and explicit
  `+0x48`/`+0x4c` accesses for the stock buffer capacity and data length.
- Keeps the stock `+0x90` byte counter as a local semantic ledger because the
  promoted shared overlay currently ends at `+0x90`; no unproven header field
  was added.

## Gates

1. Joern v4.0.548 strict gate: **PASS**; one mapped stock identity, zero
   mapped-call deltas, zero unresolved calls, and zero parser problems. The
   source graph contained 391 calls and 64 control structures because the
   driver tree is analyzed together; the requested function identity remained
   unique.
2. Host contract harness: **PASS** in two identical ASan/UBSan cycles; both
   binaries have SHA-256
   `ef8bc13f6c9ebf10346f0f1cd5a7239db2ad5cd2d8bcea698b961cffa352d142`.
3. AArch64 cross-compiler syntax check and candidate Assembly emission:
   **PASS**.
4. Repository regression suite and diff checks remain required before merge.

## Review findings

Joern keeps six high-severity review findings visible for the observed
`mutex_lock`, `mutex_unlock`, `devm_kfree`, and `devm_kmalloc` sites. These are
not suppressed. Canonical kernel review must confirm mutex initialization,
managed-device ownership, and the lifetime of the buffer stored at `+0x40`.

## Promotion status

This target is **not promoted as hardware-equivalent**. A canonical GKI module
build, KCFI/relocation review, independent review, and controlled smartphone
validation remain required. No smartphone test was run in this cycle.
