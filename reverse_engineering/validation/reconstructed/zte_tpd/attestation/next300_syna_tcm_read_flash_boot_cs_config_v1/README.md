# Target 300: `syna_tcm_read_flash_boot_cs_config`

This attestation records the isolated offline reconstruction of stock entry
`0x001254bc` from the NX809J ZTE TPD module.

## Scope

- Preserves the boot-info version gate for versions 1 and 3.
- Preserves little-endian base-offset decoding and the direct-read route
  `base_offset + offset`.
- Preserves the zero-offset boot customer-config route, including the observed
  signed-byte prefix scan and the selected-length copy.
- Preserves managed allocation, output resizing, zeroing, flash delegation,
  error propagation, and temporary-buffer cleanup call shape.
- Keeps the still-unidentified context words at `+0x34` and `+0x38` out of the
  candidate because this function reads them only through the delegated helper;
  no unproven header change was introduced.
- Adds explicit null, short-buffer, and capacity checks before dereferences or
  copies. These are hardening changes and are recorded as non-equivalences.

## Gates

1. Joern v4.0.548 strict gate: **PASS**; one mapped function, 227 calls, 49
   control structures, zero unresolved calls, zero mapped-call deltas, and no
   parser problems.
2. Host contract harness: **PASS** in two identical ASan/UBSan cycles; binary
   SHA-256 was identical in both cycles.
3. AArch64 cross-compiler syntax check and candidate Assembly emission:
   **PASS**.
4. Repository regression suite and diff checks remain required before merge.

## Review findings

Joern reports six high-severity lifetime review findings at the observed
`devm_kmalloc`/`devm_kfree` sites. They remain visible in the Joern report and
are not suppressed. The calls mirror the stock managed-device ownership model;
canonical kernel build review must confirm that the destination buffers are
owned by the same managed device in the real module.

## Promotion status

This target is **not promoted as hardware-equivalent**. Canonical module build,
KCFI/relocation comparison, independent review, and controlled smartphone
validation remain required. No smartphone test was run in this cycle.
