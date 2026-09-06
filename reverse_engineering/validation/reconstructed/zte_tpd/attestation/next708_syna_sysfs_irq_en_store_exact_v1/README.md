# syna_sysfs_irq_en_store — offline exact attestation

Target `215_syna_sysfs_irq_en_store`, stock entry `0x0011b12c`, has a
404-byte body. The exact AArch64 source preserves all 101 body instructions,
the stock relocation/string surface, and KCFI type ID `0x9ce291cd`.

Source synchronization, two-cycle canonical Android 16 arm64 build, strict
Joern, exact AArch64 opcode/relocation/ELF-symbol comparison, KCFI comparison,
and two-cycle ASan/UBSan host oracle all passed. The host contract covers
parse failure, missing callback, disconnected hardware, bare connection,
enable/disable success and failure, unknown options, and the bare-mode state.

The attestation proves offline function-level parity only. Android runtime,
physical NX809J hardware, and the real sysfs/kobject environment remain
deferred.

