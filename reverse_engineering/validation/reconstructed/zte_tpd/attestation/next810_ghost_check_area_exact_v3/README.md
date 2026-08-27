# `ghost_check_area` offline exact attestation

This package records the current function-level reconstruction of
`ghost_check_area` at stock entry `0x0010f2ac` for the ZTE NX809J /
RedMagic 11 Pro+ target.

The exact linked source is `ghost_check_area_exact.S`; the readable C source
and direct host contract are retained as supporting evidence. The offline
gates pass: source synchronization, a reproducible two-cycle canonical
Docker build, strict Joern, exact AArch64 comparison, KCFI presence/size
comparison and two-cycle ASan/UBSan host execution.

The candidate has 84/84 instructions and 336/336 symbol bytes. Both stock
and candidate have no valid KCFI preamble, so the KCFI type ID is not
applicable. Hardware and Android runtime behavior remain deferred.
