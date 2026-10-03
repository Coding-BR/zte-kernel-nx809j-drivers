# Exact attestation: `get_aw22xxx_id`

Target: `get_aw22xxx_id@0x00106760`, with a stock body of 192 bytes.

The promoted implementation preserves the 48-instruction AArch64 read callback, including the null-buffer path, bounded `strnlen`, `simple_read_from_buffer`, fortify checks and KCFI type `0xf4e9d97c`.

Validation result: `CORE_GATES_PASS`; assembly comparison passed for instructions, relocations, section and symbol size; KCFI, Joern, Docker reproducibility and the existing 58-function host harness passed. This is offline/static evidence and makes no hardware-execution claim.
