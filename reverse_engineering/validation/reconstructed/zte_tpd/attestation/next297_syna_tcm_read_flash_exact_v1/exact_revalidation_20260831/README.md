# syna_tcm_read_flash — offline exact revalidation

Target `297_syna_tcm_read_flash`, stock entry `0x001247c8`, body `744` bytes.

This package records a function-level offline exact promotion using the Docker
engineering environment and the curated candidate snapshot. The materialization
preserves parameter validation, chunk calculation, command-payload encoding,
transport-delay fallback, response validation, bounded copy and error returns.

Gates passed:

- canonical Docker build: two accepted cycles, reproducible module SHA-256
  `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`;
- AArch64 opcode/relocation/ELF comparison: `186` instructions and `744` bytes;
- KCFI parity: both stock and candidate explicitly report
  `BOTH_NO_VALID_KCFI_PREAMBLE`, with matching `.text` and `744`-byte symbols;
- Docker ASan/UBSan host contract: `8` cases in `2` repetitions, reproducible;
- strict Joern: `115` calls, `13` control structures, zero unresolved calls and zero parser errors.

The KCFI condition is a stock property of this adjacent symbol layout and is
recorded as parity, not as an invented type ID.

The promotion is offline exact at function level. Android runtime, transport,
IRQ, MMIO and NX809J hardware behavior remain deferred.
