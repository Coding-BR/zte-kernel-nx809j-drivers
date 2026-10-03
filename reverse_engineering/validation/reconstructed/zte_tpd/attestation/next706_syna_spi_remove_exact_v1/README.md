# syna_spi_remove — offline exact attestation

Target `202_syna_spi_remove`, stock entry `0x00119670`, has a 396-byte body.
The exact AArch64 source preserves all 99 body instructions, the stock
relocation/string surface, and KCFI type ID `0x509a2353`.

Source synchronization, two-cycle canonical Android 16 arm64 build, strict
Joern, exact AArch64 opcode/relocation/ELF-symbol comparison, KCFI comparison,
and two-cycle ASan/UBSan host oracle all passed. The host contract covers
managed and invalid-device buffer cleanup, GPIO and regulator branches, null
resources, and final-state cleanup.

The `.data` relocations are retained as stock-relative offsets and are
validated through the pipeline's same-section offset equivalence; the buffer
globals retain their named stock symbols. Hardware validation remains
deferred.

