# syna_sysfs_get_delta_show — offline exact attestation

Target `213_syna_sysfs_get_delta_show`, stock entry `0x0011aadc`, has a
1.224-byte `.text` body containing 306 instructions. The candidate preserves
the stock AArch64 instruction words, section, symbol size and relocation
surface, including the stock KCFI type ID `0x4e31a072`.

Source sync, canonical two-cycle build, strict Joern, exact AArch64 comparison,
KCFI comparison and Docker clang ASan/UBSan host contract all passed. The host
contract covers report-enable failure, report polling/cleanup and unavailable
managed-device paths in three cases. Hardware and live sysfs registration
remain deferred.

The candidate module is bound to SHA-256
`4b4bdf227900ad6de22c0712a8834053f827b4e35d25ae3fcd3a3781dabfa84f`, and the
exact source is bound to SHA-256
`c97a19b5953d3e81a651e302a4d56d99b80d0e4d7126ed481c6981bb7330fb03`.
