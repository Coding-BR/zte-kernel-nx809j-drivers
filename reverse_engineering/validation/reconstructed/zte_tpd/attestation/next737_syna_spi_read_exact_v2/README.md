# syna_spi_read — offline exact attestation

Target `203_syna_spi_read`, stock entry `0x00119800`, has a 736-byte `.text`
body containing 184 instructions. The candidate preserves the stock AArch64
instruction words, KCFI type `0x28a4201f`, symbol size and relocation surface.

The canonical two-cycle build, strict Joern gate, exact AArch64 comparison,
KCFI comparison and two-cycle ASan/UBSan host contract all passed. The host
contract covers missing context/device, invalid length, allocation and SPI
failures, null output, default success and segmented success. SPI, mutex,
allocation, stack-register and printk behavior are stubbed offline; hardware
validation remains deferred.

The candidate module is bound to SHA-256
`530b8548f775fedc4181f70396dc2216d2dbcd8ab305008de8908223c22e3d3e`, and the
exact source is bound to SHA-256
`33c8f06dcc70806124f18c8c25be322f4fb3047419f4ade86f705943eab284db`.
