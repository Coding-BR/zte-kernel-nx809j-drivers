# syna_testing_check_config_id_show — offline exact attestation

Target `224_syna_testing_check_config_id_show`, stock entry `0x0011c1f4`, has
a 536-byte `.text` body containing 134 instructions. The candidate preserves
the stock AArch64 instruction words, section, symbol size and relocation
surface, including the stock KCFI type ID `0x4e31a072`.

Source sync, canonical two-cycle build, strict Joern, exact AArch64 comparison,
KCFI comparison and Docker clang ASan/UBSan host contract all passed. The host
contract covers disconnected state, missing testing item, test result
formatting, config-ID output and cleanup in six cases. Hardware and live sysfs
registration remain deferred.

The candidate module is bound to SHA-256
`0645417368abb438a35b7d53bbb9880e8434062612c293d58cd7d376b045e881`, and the
exact source is bound to SHA-256
`f2fd4cdc0a5bbbc4fa4becf2c2d79889055dd7457ae1aad38dfc719982e6dca4`.
