# syna_tcm_buf_copy exact attestation

Target: `zte_tpd`, task `270_syna_tcm_buf_copy`, stock entry `0x00121c10`.
The source implementation is `syna_tcm_buf_copy_2.c`; the stock ELF symbol is
the duplicate occurrence `syna_tcm_buf_copy` at `.text+0x1b388`.

The candidate preserves all 208 AArch64 instructions, 80 relocation sites,
the `.text` section and the 832-byte ELF symbol size. Stock and candidate both
have no valid KCFI preamble for this duplicate occurrence. The canonical
Docker build passed two cycles, Joern strict passed, and the ASan/UBSan host
contract passed two reproducible cycles.

Hardware validation remains deferred.
