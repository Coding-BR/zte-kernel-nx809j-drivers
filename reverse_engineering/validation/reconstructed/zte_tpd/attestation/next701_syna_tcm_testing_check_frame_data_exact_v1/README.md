# syna_tcm_testing_check_frame_data — offline exact attestation

Target `231_syna_tcm_testing_check_frame_data`, stock entry `0x0011d0ec`,
has a 364-byte function body. The exact AArch64 source preserves all 91
instructions and the stock relocation/string surface.

Source synchronization, two-cycle canonical Android 16 arm64 build, strict
Joern, exact AArch64 opcode/relocation/ELF-symbol comparison, KCFI comparison,
and two-cycle ASan/UBSan host oracle all passed. Both stock and candidate KCFI
reports classify the symbol as `NO_VALID_KCFI_PREAMBLE` because the available
preamble overlaps the function body; this is recorded as an equivalent
`BOTH_NO_VALID_KCFI_PREAMBLE` result.

The attestation proves offline function-level parity only. Android runtime,
physical NX809J hardware, and the production testing subsystem remain
deferred.
