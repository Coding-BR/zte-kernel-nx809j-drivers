# `tpd_clean_all_event` offline exact attestation

This package records the current function-level reconstruction of
`tpd_clean_all_event` at stock entry `0x0010f95c` for the ZTE NX809J /
RedMagic 11 Pro+ target.

The exact linked source is `tpd_clean_all_event_exact.S`; the readable C
source and direct host contract are retained as supporting evidence. The
offline gates pass: source synchronization, a reproducible two-cycle
canonical Docker build, strict Joern, exact AArch64 comparison, KCFI type
comparison and two-cycle ASan/UBSan host execution covering two cases.

The candidate has 41/41 instructions and 164/164 symbol bytes, with matching
KCFI type ID `0xe5c47d60`. Hardware and Android runtime behavior remain
deferred.
