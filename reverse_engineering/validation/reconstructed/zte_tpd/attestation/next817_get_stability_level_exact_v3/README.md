# `get_stability_level` offline exact attestation

This package records the function-level reconstruction of `get_stability_level`
at stock entry `0x0010c148` for the ZTE NX809J / RedMagic 11 Pro+ target.

The exact linked source is `get_stability_level_exact.S`, with readable C
source, Ghidra decompilation and direct host contract retained as supporting
evidence. Source sync, strict Joern, exact AArch64 comparison, KCFI, two-cycle
canonical Docker build and ASan/UBSan host execution all pass.

The candidate has 60/60 instructions and 240/240 symbol bytes, with matching
KCFI type ID `0xf4e9d97c`. Android runtime and NX809J physical hardware
behavior remain deferred.
