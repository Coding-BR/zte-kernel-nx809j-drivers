# Target 302: `syna_tcm_do_fw_update_ex`

This attestation records the isolated offline reconstruction of stock entry
`0x00125c18` from the NX809J ZTE TPD module.

## Scope

- Preserves the image validity gate and the two partition descriptors proven at
  image offsets `+0x30` and `+0x70`.
- Preserves mode-dependent flag normalization, byte-offset accumulation at the
  flash-access context `+0x8c`, and the update-in-progress marker at TCM `+0x388`.
- Preserves the order `set_up_flash_access`, primary update, secondary update,
  reset, and managed-allocation cleanup.
- Preserves the optimized primary update flag derived from
  `setup_release_required & optimize & 1`.
- Adds typed null checks while keeping firmware-update errors and cleanup
  paths explicit.

## Gates

1. Joern v4.0.548 strict gate: **PASS**; one mapped function, 112 calls, 19
   control structures, zero unresolved calls, zero mapped-call deltas, and no
   parser problems.
2. Host contract harness: **PASS** in two identical ASan/UBSan cycles; binary
   SHA-256 was identical in both cycles.
3. AArch64 cross-compiler syntax check and candidate Assembly emission:
   **PASS**.
4. Repository regression suite and diff checks remain required before merge.

## Review findings

Joern reports one high-severity lifetime review finding at the observed
`devm_kfree` site. It remains visible in the Joern report and is not
suppressed. Canonical kernel review must confirm that the managed allocation is
owned by the device returned by `syna_request_managed_device()`.

## Promotion status

This target is **not promoted as hardware-equivalent**. The stock local mutex
initialization is not represented by the current opaque access-layout header
and remains a canonical-build review item. KCFI/relocation comparison,
independent review, and controlled smartphone validation are still required.
No smartphone test was run in this cycle.
