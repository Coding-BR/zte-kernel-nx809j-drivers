# syna_spi_probe — offline exact attestation

Target `201_syna_spi_probe`, stock entry `0x00118544`, has a 4392-byte
`.text` body containing 1098 instructions. The exact AArch64 candidate
preserves the stock instruction words, KCFI preamble/type, section and
relocation surface after auditable same-site storage normalization.

The canonical two-cycle build, strict Joern gate, KCFI comparison, exact
AArch64 comparison, and two-cycle ASan/UBSan host contract all passed. The
host contract covers default success, SPI setup failure, allocation failure,
and GPIO failures for the I/O-switch and IRQ resource paths. Device Tree,
regulator, SPI controller and GPIO behavior are stubbed offline; hardware
validation remains deferred.

The candidate module is bound to SHA-256
`aa00cb54a4c19cb95e3a126cd371d068cbe2e49bc3b1cfa09422d485ef4b6a41`, and the
exact source is bound to SHA-256
`0d1f42842508f6de9e14abd1921bef3f685653007842bff744308eaa3856fa22`.
