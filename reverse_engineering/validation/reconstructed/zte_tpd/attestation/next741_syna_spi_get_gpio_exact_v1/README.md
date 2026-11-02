# syna_spi_get_gpio — offline exact attestation

Target `208_syna_spi_get_gpio`, stock entry `0x0011a35c`, has a 224-byte
`.text` body containing 56 instructions. The current-workspace candidate
preserves the stock AArch64 instruction words, symbol size and relocation
surface.

The stock ELF has no valid KCFI preamble for this function because the
candidate preamble overlaps `syna_spi_alloc_mem+0x274`. The dedicated KCFI
decision therefore records `KCFI_NOT_APPLICABLE_DIRECT_CALL_ONLY`: all five
incoming stock and candidate references are direct unconditional calls, with
one target address each. The candidate compiler's extra KCFI preamble is not
claimed as a stock type-ID match.

The current-workspace source sync, shared canonical two-cycle build, strict
Joern gate, exact AArch64 comparison, direct-call KCFI decision and Docker
clang ASan/UBSan host contract all passed. The host contract covers GPIO label,
request, direction and error paths in six cases. Device Tree, GPIO and printk
behavior are stubbed offline; hardware validation remains deferred.

The candidate module is bound to SHA-256
`530b8548f775fedc4181f70396dc2216d2dbcd8ab305008de8908223c22e3d3e`, and the
current exact source is bound to SHA-256
`730ed378f2a922b49030c410a5fc7d02331ef49af9ba9362acb129b0636d4270`.
