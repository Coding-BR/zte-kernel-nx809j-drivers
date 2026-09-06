# Exact attestation: `aw22xxx_multi_breath_pattern_store`

Target: `aw22xxx_multi_breath_pattern_store@0x00105054`, with a stock body of 400 bytes.

The promoted implementation preserves the 100-instruction AArch64 sysfs-store callback, including hexadecimal parsing, state offset `0x2f8`, the kthread creation/wakeup path, the four I2C writes used by the disable path, stack-canary handling and KCFI type `0x95c41a97`.

Validation result: `CORE_GATES_PASS`; assembly comparison passed for instructions, relocations, section and symbol size; KCFI, Joern, Docker reproducibility and the existing 58-function host harness passed. This is offline/static evidence and makes no hardware-execution claim.
