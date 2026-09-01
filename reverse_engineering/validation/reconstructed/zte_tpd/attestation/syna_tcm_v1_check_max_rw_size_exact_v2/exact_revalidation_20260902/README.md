# `syna_tcm_v1_check_max_rw_size` — exact offline revalidation

This package records the function-level reconstruction of `zte_tpd` at stock
entry `0x0011f790`. The candidate is rebuilt from the main repository through
the canonical Docker snapshot and is proven equal at the ELF function
boundary: 41 AArch64 instructions and 164 bytes.

Evidence covers the two-cycle Docker build, relocation-aware AArch64
comparison, KCFI, strict Joern analysis, repaired Ghidra decompilation/P-Code,
and a five-case ASan/UBSan contract harness executed twice. The Ghidra
constant-return difference after `_printk` is recorded as
`ghidra_call_return_constant_propagation_artifact`; exact body bytes, P-Code,
Assembly and relocations remain mandatory independent gates.

This is an offline static reconstruction attestation. It does not claim
hardware validation, Android module loading, or device-level behavior.
