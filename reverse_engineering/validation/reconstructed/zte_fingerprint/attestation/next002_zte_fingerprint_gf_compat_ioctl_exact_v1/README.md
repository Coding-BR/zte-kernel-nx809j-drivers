# Exact attestation: `gf_compat_ioctl`

Target: `gf_compat_ioctl@0x00100dc4`, with a stock body of 32 bytes.

The promoted implementation uses an inline assembly island because the C-only model omitted the stock compatibility mask. It preserves all 8 AArch64 instructions, including `and x2, x2, #0xffffffff`, the `gf_ioctl` `CALL26` relocation, PAC/stack handling and KCFI type `0x2af6cdbb`.

Validation result: `CORE_GATES_PASS`; assembly comparison passed for instructions, relocations, section and symbol size; KCFI, Joern, Docker reproducibility and the 30-function host harness passed. This is offline/static evidence and makes no hardware-execution claim.
