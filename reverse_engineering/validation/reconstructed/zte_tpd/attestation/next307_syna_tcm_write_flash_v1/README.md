# Target 307: `syna_tcm_write_flash`

This attestation records the isolated offline reconstruction of stock entry
`0x0012704c` from the NX809J ZTE TPD module.

## Scope

- Preserves the access-context geometry at `+0x2c`, `+0x30`, `+0x40`,
  `+0x48`, `+0x4c`, `+0x50`, `+0x80` and the stock total counter at `+0x90`.
- Preserves mutex acquisition, nested release-depth behavior, chunk sizing to
  the write-block multiple, and the two-byte little-endian block header.
- Preserves managed buffer replacement, including the stock three static
  `syna_request_managed_device` call sites and old-buffer release path.
- Preserves delay calculation, transport flag suppression, fallback to
  `tcm->command_delay_ms`, command `0x12`, payload length and indirect
  `write_message` invocation.
- Preserves partial-write accounting and error returns `-22`, `-241` and
  `-243`. Safe guards prevent division by zero, chunk overflow and unbounded
  loops outside the valid stock geometry contract.

## Gates

1. Joern v4.0.548 strict gate: **PASS**; one mapped stock identity, three of
   three mapped `syna_request_managed_device` call sites, zero call deltas,
   zero unresolved calls and zero parser problems.
2. Host contract harness: **PASS** in two identical ASan/UBSan cycles; both
   binaries have SHA-256
   `adcc4c43b35f3b9ef336984116747d4eaa673ff5db2ccac7f2af9ef4d73761d2`.
3. AArch64 cross-compiler syntax check and candidate Assembly emission:
   **PASS**.
4. Repository regression suite and diff checks remain required before merge.

## Promotion status

This target is **not promoted as hardware-equivalent**. Joern records high
review findings for mutex synchronization and managed lifetime, which require
independent kernel review. A canonical GKI module build, KCFI/relocation
review, independent review and controlled smartphone validation remain
required. No smartphone test was run in this cycle.
