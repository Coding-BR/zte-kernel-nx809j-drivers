# `syna_tcm_get_features` — exact offline revalidation

This package records the function-level reconstruction of `zte_tpd` at stock
entry `0x00123a08`. The candidate is rebuilt from the main repository source
through the canonical Docker snapshot and is proven equal at the ELF function
boundary: 138 AArch64 instructions and 552 bytes.

Evidence included here covers the two-cycle Docker build, relocation-aware
AArch64 comparison, KCFI type ID `0x39266119`, strict Joern analysis, Ghidra
decompilation/P-Code, and an eight-case ASan/UBSan host contract executed twice.

Ghidra required the recorded repair `ClearGhidraNoReturn(_printk)` followed by
`ExtendGhidraFunctionBody(syna_tcm_get_features, 552)`. Its remaining C-shape
difference is accepted only by the function-specific
`ghidra_syna_tcm_get_features_printk_cleanup_cfg_artifact`, while body bytes,
P-Code operation shape, KCFI, Assembly and relocations remain independent gates.

This is an offline static reconstruction attestation. It does not claim
hardware validation, firmware transport validation, or device-level behavior.
