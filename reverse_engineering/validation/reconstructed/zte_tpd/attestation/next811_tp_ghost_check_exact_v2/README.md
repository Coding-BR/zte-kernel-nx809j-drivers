# `tp_ghost_check` offline exact attestation

This package records the current function-level reconstruction of
`tp_ghost_check` at stock entry `0x0010f400` for the ZTE NX809J /
RedMagic 11 Pro+ target.

The exact linked source is `tp_ghost_check_exact.S`; the readable C source
and direct host contract are retained as supporting evidence. The offline
gates pass: source synchronization, a reproducible two-cycle canonical
Docker build, strict Joern, exact AArch64 comparison, KCFI type comparison
and two-cycle ASan/UBSan host execution covering four cases.

The candidate has 328/328 instructions and 1312/1312 symbol bytes, with
matching KCFI type ID `0x2fad8a96`. Hardware and Android runtime behavior
remain deferred.
