# syna_tcm_set_up_flash_access — offline exact revalidation

Target `296_syna_tcm_set_up_flash_access`, stock entry `0x001244e4`, body `740` bytes.

This package records a function-level offline exact promotion using the Docker
engineering environment and the curated candidate snapshot. The materialization
preserves parameter validation, identify and firmware-mode transitions, boot-info
decoding, bounds checks, flash timing fields, error returns and stack-canary exit
behavior from the stock function.

Gates passed:

- canonical Docker build: two accepted cycles, reproducible module SHA-256
  `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`;
- AArch64 opcode/relocation/ELF comparison: `185` instructions and `740` bytes;
- KCFI parity: both stock and candidate explicitly report
  `BOTH_NO_VALID_KCFI_PREAMBLE`, with matching `.text` and `740`-byte symbols;
- Docker ASan/UBSan host contract: `8` cases in `2` repetitions, reproducible;
- strict Joern: `99` calls, `15` control structures, zero unresolved calls and zero parser errors.

The KCFI condition is a stock property: the word immediately preceding this
symbol is the final instruction of the preceding function, so no valid KCFI
preamble exists on either module. It is recorded as parity, not as an invented
type ID.

The promotion is offline exact at function level. Android runtime, transport,
IRQ, MMIO, managed-device behavior and NX809J hardware remain deferred.
