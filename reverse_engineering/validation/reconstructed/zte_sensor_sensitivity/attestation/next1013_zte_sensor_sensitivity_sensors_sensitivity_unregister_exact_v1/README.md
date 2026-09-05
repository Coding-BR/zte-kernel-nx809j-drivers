# Exact attestation: sensors_sensitivity_unregister

Target: `sensors_sensitivity_unregister@0x00100a44`, stock body 180 bytes.

The implementation preserves the stock 45-instruction AArch64 body, including
KCFI type ID `0xe5c47d60`, eight `device_remove_file` calls in accel/gyro order,
and the final `kfree`.

Validation:

- Docker hard-protocol core: `CORE_GATES_PASS`.
- Assembly comparison: 45 instructions / 180 bytes; instructions, relocations,
  section and symbol size all pass.
- KCFI comparison: pass, type ID `0xe5c47d60`.
- Joern scoped gate and slice: pass.
- Host cleanup harness: pass and reproducible.
- The generic Docker auditor reports its known offline acquisition/Ghidra
  limitations; that report is preserved and is not treated as a hardware claim.

No physical-device execution or hardware verification is claimed.
