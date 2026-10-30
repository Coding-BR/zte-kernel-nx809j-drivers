# `syna_tcm_buf_unlock` — exact offline revalidation

This package records the function-level reconstruction of `zte_tpd` at stock
entry `0x0011ee40`. The duplicate stock ELF symbol is selected at the
section-relative `.text` offset `0x185b8`. The candidate is rebuilt from the
main repository through the canonical Docker snapshot and is proven equal at
the ELF function boundary: 26 AArch64 instructions and 104 bytes.

Evidence covers the two-cycle Docker build, relocation-aware AArch64
comparison, the matching absence of a KCFI preamble, strict Joern analysis,
Ghidra decompilation/P-Code, and a 14-test ASan/UBSan host contract executed
twice.

Ghidra required `ClearGhidraNoReturn(_printk)` followed by
`ExtendGhidraFunctionBody(syna_tcm_buf_unlock, 104)`. Its remaining C-shape
difference is accepted only by the function-specific
`ghidra_syna_tcm_buf_unlock_shared_cleanup_artifact`; body bytes, P-Code
operation shape, Assembly and relocations remain independent gates.

This is an offline static reconstruction attestation. It does not claim
hardware validation, SPI/IRQ validation, or device-level behavior.
