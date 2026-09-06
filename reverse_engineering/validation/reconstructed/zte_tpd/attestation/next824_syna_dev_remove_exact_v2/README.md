# `syna_dev_remove` offline exact attestation

This package records the function-level reconstruction of `syna_dev_remove`
at stock entry `0x001125bc` for the ZTE NX809J / RedMagic 11 Pro+ target.

The final C reconstruction is retained together with the final candidate and
stock AArch64 disassemblies, Ghidra decompilation, P-Code and direct host
teardown contract. Source sync, strict Joern, exact AArch64 comparison, KCFI
type/size comparison, two-cycle canonical Docker build and two-cycle
ASan/UBSan host execution all pass.

The candidate has 77/77 instructions and 308/308 symbol bytes, with the
matching KCFI type ID `0x24a11bb9`. Android runtime and NX809J physical
hardware behavior remain deferred.
