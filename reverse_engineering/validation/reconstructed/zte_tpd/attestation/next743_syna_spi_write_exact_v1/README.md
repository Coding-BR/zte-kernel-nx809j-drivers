# syna_spi_write — offline exact attestation

Target `204_syna_spi_write`, stock entry `0x00119ae4`, has a 696-byte `.text`
body containing 174 instructions. The current-workspace candidate preserves
the stock AArch64 instruction words, KCFI type `0x28a4201f`, symbol size and
relocation surface.

The current-workspace source sync, canonical two-cycle build, strict Joern
gate, exact AArch64 comparison, KCFI comparison and Docker clang ASan/UBSan
host contract all passed. The host contract covers missing context/device,
invalid length, allocation and SPI failures, null input, default success and
segmented success in eight cases. SPI, mutex, allocation, stack-register and
printk behavior are stubbed offline; hardware validation remains deferred.

The candidate module is bound to SHA-256
`b3952a77cb75cd0d01c06c4022ad8188c383def6b628bf3d8da55b83ba5d6e2a`, and the
exact source is bound to SHA-256
`08f3725705a20b54e992f9b61970c2cbaea3be6e6cae8cfe1fc446197be21213`.
