# `tp_sensibility_level_write` offline exact attestation

This package records the function-level reconstruction of
`tp_sensibility_level_write` at stock entry `0x0010c3f8` for the ZTE NX809J /
RedMagic 11 Pro+ target.

The final v2 AArch64 comparison is used. The exact linked source is
`tp_sensibility_level_write_exact.S`, with readable C source, Ghidra
decompilation and direct host contract retained as supporting evidence. Source
sync, strict Joern, exact AArch64 comparison, KCFI, two-cycle canonical Docker
build and two-cycle ASan/UBSan host execution all pass.

The candidate has 66/66 instructions and 264/264 symbol bytes, with matching
KCFI type ID `0xc3d43b4d`. Android runtime and NX809J physical hardware
behavior remain deferred.
