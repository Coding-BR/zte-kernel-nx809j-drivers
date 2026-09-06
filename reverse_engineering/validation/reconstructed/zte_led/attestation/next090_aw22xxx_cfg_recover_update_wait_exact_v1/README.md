# Exact attestation: `aw22xxx_cfg_recover_update_wait`

Target: `aw22xxx_cfg_recover_update_wait@0x00106394`, with a stock body of 968 bytes.

The promoted implementation preserves the 242-instruction AArch64 firmware/configuration recovery path, including state transitions, firmware request/release handling, I2C programming loop, wait intervals, effect updates and stack-canary path.

KCFI exception: the stock extractor reported `NO_VALID_KCFI_PREAMBLE` because the candidate preamble overlaps the function body. This direct function therefore has no fabricated type ID; the exception is recorded in `kcfi/stock.json` and the job explicitly sets `kcfi_required: false`.

Validation result: `CORE_GATES_PASS`; assembly comparison passed for instructions, relocations, section and symbol size; KCFI exception handling, Joern, Docker reproducibility and the existing 58-function host harness passed. This is offline/static evidence and makes no hardware-execution claim.
