# syna_dev_connect — offline exact attestation

Target `160_syna_dev_connect`, stock entry `0x00112714`, has a 1004-byte
body. The exact AArch64 source preserves all 251 body instructions, the
stock relocation/string surface, and KCFI type ID `0xae20471c`.

Source synchronization, two-cycle canonical Android 16 arm64 build, strict
Joern, exact AArch64 opcode/relocation/ELF-symbol comparison, KCFI comparison,
and two-cycle ASan/UBSan host oracle all passed. The host contract covers null
TCM, already-connected state, detection failure, managed-device failure, and
threaded-IRQ failure.

The attestation proves offline function-level parity only. Android runtime,
physical NX809J hardware, and the real workqueue/timer/firmware environment
remain deferred.
