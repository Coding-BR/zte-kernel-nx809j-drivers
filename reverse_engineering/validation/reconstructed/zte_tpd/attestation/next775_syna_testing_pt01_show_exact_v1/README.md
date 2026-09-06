# syna_testing_pt01_show — offline exact attestation

Target `225_syna_testing_pt01_show`, stock entry `0x0011c410`, has a 600-byte
`.text` body containing 150 instructions. The candidate preserves the stock
AArch64 instruction words, section, symbol size and relocation surface,
including the named `pt01_limits` relocation and KCFI type ID `0x4e31a072`.

Source sync, canonical two-cycle build, strict Joern, exact AArch64 comparison,
KCFI comparison and Docker clang ASan/UBSan host contract all passed. The host
contract covers disconnected state, missing testing item, PT01 limit placement,
result formatting, byte output and cleanup in six cases. Hardware and live
sysfs registration remain deferred.

The candidate module is bound to SHA-256
`49a1c670f27d40a4a6fed9a65a281ed3687b4c0b30da498fce440bd336fb8ff4`, and the
exact source is bound to SHA-256
`5c40e8eb8fc36b6861b417ad3bd27d3f05d3a26ccfe02d4dd4fa4aca0bf49674`.
