# Exact attestation: `aw22xxx_recover_work_routine`

Target: `aw22xxx_recover_work_routine@0x001053b8`, with a stock body of 524 bytes.

The promoted implementation preserves the 131-instruction AArch64 recovery routine, including the reset and I2C read/write sequence, bit clearing, delays, effect restoration, calls to `aw22xxx_cfg_recover_update_wait`, stack-canary handling and KCFI type `0xa607748c`.

Validation result: `CORE_GATES_PASS`; assembly comparison passed for instructions, relocations, section and symbol size; KCFI, Joern, Docker reproducibility and the existing 58-function host harness passed. This is offline/static evidence and makes no hardware-execution claim.
