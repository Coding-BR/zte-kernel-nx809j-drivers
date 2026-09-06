# Exact attestation: `aw22xxx_multi_breath_pattern_show`

Target: `aw22xxx_multi_breath_pattern_show@0x00105018`, with a stock body of 56 bytes.

The promoted implementation preserves the 14-instruction AArch64 sysfs-show callback, including the `aw22xxx` state access at `dev + 0x98`, the `multi_breath_pattern` field at offset `0x2f8`, the exact format string, `snprintf` call and sign extension of the return value. The KCFI type is `0xae84bcd4`.

Validation result: `CORE_GATES_PASS`; assembly comparison passed for instructions, relocations, section and symbol size; KCFI, Joern, Docker reproducibility and the existing 58-function host harness passed. This is offline/static evidence and makes no hardware-execution claim.
