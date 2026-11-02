# syna_spi_power_on — offline exact attestation

Target `206_syna_spi_power_on`, stock entry `0x00119e7c`, has a 616-byte
`.text` body containing 154 instructions. The current-workspace candidate
preserves the stock AArch64 instruction words, KCFI type `0x5f30282b`, symbol
size and relocation surface.

The current-workspace source sync, canonical two-cycle build, strict Joern
gate, exact AArch64 comparison, KCFI comparison and Docker clang ASan/UBSan
host contract all passed. The host contract covers regulator and GPIO
enable/disable branches, invalid regulator, error and delay paths in eight
cases. Regulator, GPIO, delay, printk and hardware behavior are stubbed
offline; hardware validation remains deferred.

The candidate module is bound to SHA-256
`90a645234371fa9853b39215ef1c551c4220d5c788aaeae6a12b242219a9d7a1`, and the
exact source is bound to SHA-256
`87885e7dae695f851c5f2efdf793b6a5948931d03204ed522b7b45b10c7ddb45`.
