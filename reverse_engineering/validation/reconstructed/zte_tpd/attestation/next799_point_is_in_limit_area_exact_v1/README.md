# `point_is_in_limit_area` offline exact attestation

This package records the current function-level reconstruction of
`point_is_in_limit_area` at stock entry `0x0010feec` for the ZTE NX809J /
RedMagic 11 Pro+ target.

The exact linked source is `point_is_in_limit_area_exact.S`; the readable C
source and direct host contract are retained as supporting evidence. All
offline gates pass: source synchronization and a reproducible two-cycle
canonical Docker build, strict Joern, exact AArch64 instruction/relocation
comparison, matched KCFI absence, and two-cycle ASan/UBSan host execution.

The candidate has 112/112 instructions and 448/448 symbol bytes, with 24
normalized relocation pairs. Hardware and Android runtime behavior remain
deferred.
