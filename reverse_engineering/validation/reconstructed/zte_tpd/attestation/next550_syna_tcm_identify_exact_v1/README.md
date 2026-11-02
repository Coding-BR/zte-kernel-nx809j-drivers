# syna_tcm_identify exact attestation

Target: `zte_tpd`, task `271_syna_tcm_identify`, stock entry `0x00121f54`.

The recovered C source is retained for Joern and the ASan/UBSan host contract;
the promoted module uses an exact AArch64 object because the recovered C
produces the right relocation surface but not the stock opcodes. The exact
object preserves 123 instructions, 43 relocation sites, the 492-byte `.text`
symbol and KCFI type ID `0xe19ba5c4`. Canonical Docker, Joern strict, KCFI and
the two-cycle host contract all passed.

Hardware validation remains deferred.
