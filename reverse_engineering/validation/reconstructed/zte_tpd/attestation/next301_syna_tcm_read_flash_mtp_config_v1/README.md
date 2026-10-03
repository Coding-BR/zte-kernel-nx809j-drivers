# Target 301: `syna_tcm_read_flash_mtp_config`

This attestation records the isolated offline reconstruction of stock entry
`0x00125a18` from the NX809J ZTE TPD module.

## Scope

- Preserves the boot-info version 3 requirement.
- Preserves the zero-length fallback to `erase_page_size_bytes`.
- Preserves the MTP read address `v3_page_size_bytes + offset`.
- Preserves managed output allocation, resizing, zeroing, flash delegation,
  error propagation, and observed error codes.
- Adds explicit TCM, boot-info, destination, and zero-length checks before
  dereferences or I/O. These hardening changes are recorded as deliberate
  non-equivalences.

## Gates

1. Joern v4.0.548 strict gate: **PASS**; one mapped function, 77 calls, 14
   control structures, zero unresolved calls, zero mapped-call deltas, and no
   parser problems.
2. Host contract harness: **PASS** in two identical ASan/UBSan cycles; binary
   SHA-256 was identical in both cycles.
3. AArch64 cross-compiler syntax check and candidate Assembly emission:
   **PASS**.
4. Repository regression suite and diff checks remain required before merge.

## Review findings

Joern reports two high-severity lifetime review findings at the observed
`devm_kfree`/`devm_kmalloc` sites. They remain visible in the Joern report and
are not suppressed. The calls mirror the stock managed-device ownership model;
canonical kernel build review must confirm ownership in the real module.

## Promotion status

This target is **not promoted as hardware-equivalent**. Canonical module build,
KCFI/relocation comparison, independent review, and controlled smartphone
validation remain required. No smartphone test was run in this cycle.
