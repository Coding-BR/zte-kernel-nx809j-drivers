# Target 304: `syna_tcm_do_fw_update`

This attestation records the isolated offline reconstruction of stock entry
`0x001267b0` from the NX809J ZTE TPD module.

## Scope

- Preserves the parser call, the 0x310-byte parser-output layout, and the
  parser error propagation contract.
- Preserves `flash_area` splitting into high-16-bit offset and low-16-bit
  length, the TCM timing read at `+0x1e8`, and forwarding to
  `syna_tcm_do_fw_update_ex` with optimization enabled.
- Preserves forced reflash selection of request flags `9`.
- Preserves the stock comparison against parsed partition index `3`, including
  the short identification early return, protocol-dependent ID offsets `0x0e`
  and `0x10`, the device build ID at `tcm + 0x0c`, and the device ID at
  `tcm + 0xc0`.
- Uses byte-wise little-endian reads for unaligned image fields. This keeps the
  AArch64 stock semantics without introducing C undefined behavior under UBSan.

## Gates

1. Joern v4.0.548 strict gate: **PASS**; one mapped stock identity, zero
   mapped-call deltas, zero unresolved calls, and zero parser problems. The
   four small layout/endian helpers are listed explicitly in the Joern source
   inventory.
2. Host contract harness: **PASS** in two identical ASan/UBSan cycles; both
   binaries have SHA-256
   `3d2154f3104adffffae5efcde089ce2b926440c476d01c7f3770117393ab2e1a`.
3. AArch64 cross-compiler syntax check and candidate Assembly emission:
   **PASS**.
4. Repository regression suite and diff checks remain required before merge.

## Promotion status

This target is **not promoted as hardware-equivalent**. A canonical GKI module
build, KCFI/relocation review, independent review, and controlled smartphone
validation remain required. No smartphone test was run in this cycle.
