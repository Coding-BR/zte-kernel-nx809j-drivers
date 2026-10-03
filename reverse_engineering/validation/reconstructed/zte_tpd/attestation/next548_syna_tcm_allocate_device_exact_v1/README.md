# `syna_tcm_allocate_device` exact offline attestation

- Stock entry: `00121124` (`.text` offset `0x1a89c`)
- Exact body: 1,448 bytes / 362 AArch64 instructions
- KCFI: `0x6dc86eaa`, present and equal to stock
- Relocations, section and ELF symbol size: equal to stock
- Gates: source sync, two-cycle canonical build, strict Joern, AArch64 comparison, KCFI, and two-cycle ASan/UBSan host contract all passed
- Alignment sanitizer is disabled in the host contract only for intentional unaligned recovered byte-layout stores.
- Decision: `PROMOTED_OFFLINE_EXACT`
- Hardware validation remains deferred.
