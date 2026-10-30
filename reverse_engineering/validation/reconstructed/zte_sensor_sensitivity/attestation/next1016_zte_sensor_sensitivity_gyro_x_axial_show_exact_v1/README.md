# Exact attestation: gyro_x_axial_show

Target: `gyro_x_axial_show@0x00101248`, stock body 128 bytes.

The promoted implementation preserves the 32-instruction AArch64 callback,
including gyro X offset `0x54`, logging and sprintf behavior, and KCFI type ID
`0xae84bcd4`.

Validation:

- Docker hard-protocol core: `CORE_GATES_PASS`.
- Assembly comparison: 32 instructions / 128 bytes; instructions, relocations,
  section and symbol size all pass.
- KCFI comparison: pass, type ID `0xae84bcd4`.
- Joern scoped gate and slice: pass.
- Host callback harness: pass and reproducible.
- No physical-device execution or hardware verification is claimed.
