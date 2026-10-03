# syna_spi_alloc_mem — offline exact attestation

Target `207_syna_spi_alloc_mem`, stock entry `0x0011a0e4`, has a 632-byte
`.text` body containing 158 instructions. The candidate preserves the stock
AArch64 instruction words, section, symbol size and relocation surface.

The stock and candidate both report `NO_VALID_KCFI_PREAMBLE`: the four bytes
immediately before the stock entry are the final `ret` instruction of
`syna_spi_power_on`. No artificial KCFI type ID was added; the KCFI comparison
passes the shared absence and matching symbol size.

Source sync, canonical two-cycle build, strict Joern, exact AArch64 comparison,
KCFI comparison and Docker clang ASan/UBSan host contract all passed. The host
contract covers xfer allocation/reuse, rx/tx allocation, allocation failures,
invalid device and signed-size boundary paths in eight cases. Hardware
validation remains deferred.

The candidate module is bound to SHA-256
`21d4027094fda512bd508afbdf8dc0a5ba613565e7b93d6a3abef1776dbfdba1`, and the
exact source is bound to SHA-256
`54f0623d794e00689159536174d3bae31f157400cdf77b804e784d39430e0d19`.
