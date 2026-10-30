# `set_stability_level` offline exact attestation

This package records the function-level reconstruction of `set_stability_level`
at stock entry `0x0010c23c` for the ZTE NX809J / RedMagic 11 Pro+ target.

The exact linked source is `set_stability_level_exact.S`, with readable C
source, Ghidra decompilation and direct host contract retained as supporting
evidence. Source sync, strict Joern, exact AArch64 comparison, KCFI, two-cycle
canonical Docker build and ASan/UBSan host execution all pass.

The candidate has 49/49 instructions and 196/196 symbol bytes, with matching
KCFI type ID `0xc3d43b4d`. Android runtime and NX809J physical hardware
behavior remain deferred.
