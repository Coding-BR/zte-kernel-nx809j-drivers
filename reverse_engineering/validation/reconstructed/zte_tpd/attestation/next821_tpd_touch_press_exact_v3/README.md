# `tpd_touch_press` offline exact attestation

This package records the function-level reconstruction of `tpd_touch_press`
at stock entry `0x0010e254` for the ZTE NX809J / RedMagic 11 Pro+ target.

The final AArch64 comparison is used. The exact linked source and its rodata
include are retained, together with readable C source, Ghidra decompilation,
P-Code and the direct host touch-press contract. Source sync, strict Joern,
exact AArch64 comparison, KCFI type/size comparison, two-cycle canonical
Docker build and two-cycle ASan/UBSan host execution all pass.

The candidate has 529/529 instructions and 2116/2116 symbol bytes, with the
matching KCFI type ID `0x73b3656d`. Android runtime and NX809J physical
hardware behavior remain deferred.
