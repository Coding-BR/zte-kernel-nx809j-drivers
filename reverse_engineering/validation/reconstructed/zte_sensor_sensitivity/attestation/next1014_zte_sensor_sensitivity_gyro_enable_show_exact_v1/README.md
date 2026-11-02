# Exact attestation: gyro_enable_show

Target: `gyro_enable_show@0x001010d0`, stock body 128 bytes.

The promoted implementation preserves the 32-instruction AArch64 callback,
including the gyro state offset `0x50`, printk/sprintf behavior, and KCFI type
ID `0xae84bcd4`.

Validation:

- Docker hard-protocol core: `CORE_GATES_PASS`.
- Assembly comparison: 32 instructions / 128 bytes; instructions, relocations,
  section and symbol size all pass.
- KCFI comparison: pass, type ID `0xae84bcd4`.
- Joern scoped gate and slice: pass.
- Host callback harness: pass and reproducible.
- The generic Docker auditor limitations are preserved in its report; no
  physical-device execution or hardware verification is claimed.
