# `zte_touch_deinit` offline exact attestation

This package records the function-level reconstruction of `zte_touch_deinit`
at stock entry `0x0010e0d0` for the ZTE NX809J / RedMagic 11 Pro+ target.

The final v2 AArch64 comparison is used. The exact linked source and its
rodata include are retained, together with readable C source, Ghidra
decompilation and direct host teardown contract. Source sync, strict Joern,
exact AArch64 comparison, KCFI presence/size comparison, two-cycle canonical
Docker build and two-cycle ASan/UBSan host execution all pass.

The candidate has 94/94 instructions and 376/376 symbol bytes. Both stock and
candidate report `NO_VALID_KCFI_PREAMBLE`; this is a matching KCFI decision,
not a type-ID claim. Android runtime and NX809J physical hardware behavior
remain deferred.
