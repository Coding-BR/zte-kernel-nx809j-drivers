# `tp_sensibility_level_read` offline exact attestation

This package records the function-level reconstruction of
`tp_sensibility_level_read` at stock entry `0x0010c304` for the ZTE NX809J /
RedMagic 11 Pro+ target.

The exact linked source is `tp_sensibility_level_read_exact.S`, with readable
C source, Ghidra decompilation and direct host contract retained as supporting
evidence. Source sync, strict Joern, exact AArch64 comparison, KCFI, two-cycle
canonical Docker build and ASan/UBSan host execution all pass.

The candidate has 60/60 instructions and 240/240 symbol bytes, with matching
KCFI type ID `0xf4e9d97c`. Android runtime and NX809J physical hardware
behavior remain deferred.
