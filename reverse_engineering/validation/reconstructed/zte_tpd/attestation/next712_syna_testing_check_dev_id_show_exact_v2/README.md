# syna_testing_check_dev_id_show — offline exact attestation

Target `223_syna_testing_check_dev_id_show`, stock entry `0x0011bf08`, has a
744-byte body. The exact AArch64 source preserves all 186 body instructions,
the stock relocation/string surface, and KCFI type ID `0x4e31a072`.

Source synchronization, two-cycle canonical Android 16 arm64 build, strict
Joern, exact AArch64 opcode/relocation/ELF-symbol comparison, KCFI comparison,
and two-cycle ASan/UBSan host oracle all passed. The host contract covers
callback absence, disconnected hardware, null test item, callback failure,
successful device-ID output, and the expected cleanup paths.

The attestation proves offline function-level parity only. Android runtime,
physical NX809J hardware, and the real sysfs/kobject environment remain
deferred.
