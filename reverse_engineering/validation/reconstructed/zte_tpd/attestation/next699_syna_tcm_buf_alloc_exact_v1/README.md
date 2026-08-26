# syna_tcm_buf_alloc — offline exact attestation

Target `236_syna_tcm_buf_alloc`, stock entry `0x0011d594`, has a 232-byte
function body. The exact AArch64 source preserves all 58 instructions and the
stock relocation/string surface.

All offline gates passed: source sync, two-cycle canonical Android 16 arm64
build, strict Joern, exact AArch64 opcode/relocation/ELF-symbol comparison,
KCFI comparison, and two-cycle ASan/UBSan host oracle. Stock and candidate
KCFI reports both classify the symbol as `NO_VALID_KCFI_PREAMBLE` because the
available preamble overlaps the function body; this is recorded as an
equivalent `BOTH_NO_VALID_KCFI_PREAMBLE` result, not as a fabricated type ID.

The attestation proves offline function-level parity only. Android runtime,
physical NX809J hardware, and device-managed allocator behavior remain
deferred.
