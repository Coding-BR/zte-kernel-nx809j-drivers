# Exact attestation: gyro_enable_store

Target: `gyro_enable_store@0x00101154`, stock body 240 bytes.

The promoted implementation preserves the 60-instruction AArch64 callback,
including `kstrtoint`, validation of values 0/1, gyro state offset `0x50`,
mutex lock/unlock, stack-canary path, and KCFI type ID `0x95c41a97`.

Validation:

- Docker hard-protocol core: `CORE_GATES_PASS`.
- Assembly comparison: 60 instructions / 240 bytes; instructions, relocations,
  section and symbol size all pass.
- KCFI comparison: pass, type ID `0x95c41a97`.
- Joern scoped gate and slice: pass.
- Host callback harness: pass and reproducible.
- No physical-device execution or hardware verification is claimed.
