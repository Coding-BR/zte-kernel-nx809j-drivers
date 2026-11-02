# Exact attestation: gyro_z_axial_show

Target: `gyro_z_axial_show@0x00101530`, stock body 128 bytes.

The promoted implementation preserves the 32-instruction AArch64 callback,
including gyro Z offset `0x5c`, logging and sprintf behavior, and KCFI type ID
`0xae84bcd4`.

Validation:

- Docker hard-protocol core: `CORE_GATES_PASS`.
- Assembly comparison: 32 instructions / 128 bytes; instructions, relocations,
  section and symbol size all pass.
- KCFI comparison: pass, type ID `0xae84bcd4`.
- Joern scoped gate and slice: pass.
- Host callback harness: pass and reproducible.
- No physical-device execution or hardware verification is claimed.
