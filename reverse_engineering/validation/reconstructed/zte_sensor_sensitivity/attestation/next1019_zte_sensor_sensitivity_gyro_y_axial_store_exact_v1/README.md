# Exact attestation: gyro_y_axial_store

Target: `gyro_y_axial_store@0x00101440`, stock body 236 bytes.

The promoted implementation preserves the 59-instruction AArch64 callback,
including `kstrtoint`, the `< 201` range check, gyro Y offset `0x58`, error
logging, stack-canary path, and KCFI type ID `0x95c41a97`.

Validation:

- Docker hard-protocol core: `CORE_GATES_PASS`.
- Assembly comparison: 59 instructions / 236 bytes; instructions, relocations,
  section and symbol size all pass.
- KCFI comparison: pass, type ID `0x95c41a97`.
- Joern scoped gate and slice: pass.
- Host callback harness: pass and reproducible.
- No physical-device execution or hardware verification is claimed.
