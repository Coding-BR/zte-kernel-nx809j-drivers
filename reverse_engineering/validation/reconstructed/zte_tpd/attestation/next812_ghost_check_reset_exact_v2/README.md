# `ghost_check_reset` offline exact attestation

This package records the current function-level reconstruction of
`ghost_check_reset` at stock entry `0x0010f924` for the ZTE NX809J /
RedMagic 11 Pro+ target.

The exact linked source is `ghost_check_reset_exact.S`; the readable C
source and direct host contract are retained as supporting evidence. The
offline gates pass: source synchronization, a reproducible two-cycle
canonical Docker build, strict Joern, exact AArch64 comparison, KCFI type
comparison and two-cycle ASan/UBSan host execution.

The candidate has 13/13 instructions and 52/52 symbol bytes, with matching
KCFI type ID `0xe5c47d60`. Hardware and Android runtime behavior remain
deferred.
