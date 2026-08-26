# syna_sysfs_reset_store — offline exact attestation

Target `214_syna_sysfs_reset_store`, stock entry `0x0011afa8`, has a
384-byte function body. The exact AArch64 source preserves all 96 body
instructions, the stock relocation/string surface, and the valid KCFI
preamble `0x9ce291cd`.

Source synchronization, two-cycle canonical Android 16 arm64 build, strict
Joern, exact AArch64 opcode/relocation/ELF-symbol comparison, KCFI comparison,
and two-cycle ASan/UBSan host oracle all passed. The host contract covers parse
failure, disconnected hardware, software reset success/failure, hardware
callback/event paths, missing callback, and unknown option handling.

The attestation proves offline function-level parity only. Android runtime,
physical NX809J hardware, and the real sysfs/kobject environment remain
deferred.
