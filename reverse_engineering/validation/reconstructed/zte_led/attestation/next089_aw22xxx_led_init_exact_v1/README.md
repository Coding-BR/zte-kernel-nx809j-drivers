# Exact attestation: `aw22xxx_led_init`

Target: `aw22xxx_led_init@0x00106204`, with a stock body of 400 bytes.

The promoted implementation preserves the 100-instruction AArch64 initialization routine, including the reset/I2C sequence, chip-enable transitions, `aw22xxx_imax_code` bounds handling, delays, diagnostics and stack-canary path.

KCFI exception: the stock extractor reported `NO_VALID_KCFI_PREAMBLE` because the candidate preamble overlaps the function body. This direct function therefore has no fabricated type ID; the exception is recorded in `kcfi/stock.json` and the job explicitly sets `kcfi_required: false`.

Validation result: `CORE_GATES_PASS`; assembly comparison passed for instructions, relocations, section and symbol size; KCFI exception handling, Joern, Docker reproducibility and the existing 58-function host harness passed. This is offline/static evidence and makes no hardware-execution claim.
