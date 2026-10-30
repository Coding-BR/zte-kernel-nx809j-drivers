# syna_sysfs_info_show — offline exact attestation

Target `211_syna_sysfs_info_show`, stock entry `0x0011a5a0`, has a 1.020-byte
`.text` body containing 255 instructions. The candidate preserves the stock
AArch64 instruction words, section, symbol size and relocation surface, with
the stock KCFI preamble `0x4e31a072` immediately before the entry.

Source sync, canonical two-cycle build, strict Joern, exact AArch64 comparison,
KCFI comparison and Docker clang ASan/UBSan host contract all passed. The host
contract covers disconnected, bare and connected states, bootloader/application
and unknown firmware modes, metadata formatting and controlled formatter
failures in eight cases. Hardware and live sysfs registration remain deferred.

The candidate module is bound to SHA-256
`812b4194a1656b2ae1f3002b1495dfd2f8b3e249fdcd97c8eaada6069d1241b4`, and the
exact source is bound to SHA-256
`f39ad76028824053bfcf403ead27e985185bebd02d67df998c95ee963e5d7262`.
