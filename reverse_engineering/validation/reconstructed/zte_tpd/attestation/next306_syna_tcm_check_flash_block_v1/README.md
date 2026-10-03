# Target 306: `syna_tcm_check_flash_block`

This attestation records the isolated offline reconstruction of stock entry
`0x00126e70` from the NX809J ZTE TPD module.

## Scope

- Preserves the stock partition-class calculation, `ROR32(partition_id - 1,
  1)`, including the primary, APP_CONFIG, direct-return and TOOL_BOOT_CONFIG
  classes.
- Preserves partition offsets `+0x10`, `+0x14` and `+0x18`, access geometry at
  `+0x2c`, and TCM application geometry at `tcm + 0xb8` and `tcm + 0xba`.
- Preserves APP_CONFIG size/length behavior, including the stock behavior of
  returning the data length when only the length differs.
- Preserves TOOL_BOOT_CONFIG version 1 and version 3 block-count offsets at
  `boot_info + 0x0c` and `boot_info + 0x10`.
- Uses explicit little-endian reads and a missing-boot-info guard for defined
  host behavior while keeping valid stock paths unchanged.

## Gates

1. Joern v4.0.548 strict gate: **PASS**; one mapped stock identity, zero
   mapped-call deltas, zero unresolved calls and zero parser problems. The two
   small arithmetic/layout helpers are listed explicitly in the Joern source
   inventory.
2. Host contract harness: **PASS** in two identical ASan/UBSan cycles; both
   binaries have SHA-256
   `53c6e1a81e4610011b786c901604b392f421ba5d32201e57091381a24af8e243`.
3. AArch64 cross-compiler syntax check and candidate Assembly emission:
   **PASS**.
4. Repository regression suite and diff checks remain required before merge.

## Promotion status

This target is **not promoted as hardware-equivalent**. A canonical GKI module
build, KCFI/relocation review, independent review and controlled smartphone
validation remain required. No smartphone test was run in this cycle.
