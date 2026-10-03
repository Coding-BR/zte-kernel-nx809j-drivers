# syna_spi_enable_irq — offline exact attestation

Target `205_syna_spi_enable_irq`, stock entry `0x00119da0`, has a 216-byte
`.text` body containing 54 instructions. The current-workspace candidate
preserves the stock AArch64 instruction words, KCFI type `0x342e61b1`, symbol
size and relocation surface.

The current-workspace source sync, canonical two-cycle build, strict Joern
gate, exact AArch64 comparison, KCFI comparison and Docker clang ASan/UBSan
host contract all passed. The host contract covers invalid owner, missing IRQ,
enable/disable transitions and idempotent enable/disable behavior in six
cases. Linux IRQ, mutex and printk behavior are stubbed offline; hardware
validation remains deferred.

The candidate module is bound to SHA-256
`530b8548f775fedc4181f70396dc2216d2dbcd8ab305008de8908223c22e3d3e`, and the
current exact source is bound to SHA-256
`8559c3ec33ff47c17f279683a03d60f1d6a4a9fa1e938cfc786a4796158ac5a9`.
