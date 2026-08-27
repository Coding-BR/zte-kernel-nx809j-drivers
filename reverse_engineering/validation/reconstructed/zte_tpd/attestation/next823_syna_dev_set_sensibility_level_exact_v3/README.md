# `syna_dev_set_sensibility_level` offline exact attestation

This package records the function-level reconstruction of
`syna_dev_set_sensibility_level` at stock entry `0x00111578` for the ZTE NX809J
/ RedMagic 11 Pro+ target.

The final AArch64 comparison is used. The exact linked source is retained,
together with readable C source, Ghidra decompilation, P-Code and the direct
host contract. Source sync, strict Joern, exact AArch64 comparison, KCFI
type/size comparison, two-cycle canonical Docker build and two-cycle
ASan/UBSan host execution all pass.

The candidate has 103/103 instructions and 412/412 symbol bytes, with the
matching KCFI type ID `0x1eb3b73d`. Android runtime and NX809J physical
hardware behavior remain deferred.
