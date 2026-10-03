# `tpd_id9_report_work` offline exact attestation

This package records the current function-level reconstruction of
`tpd_id9_report_work` at stock entry `0x0010fe34` for the ZTE NX809J /
RedMagic 11 Pro+ target.

The exact linked source is `tpd_id9_report_work_exact.S`; the readable C
source and direct host contract are retained as supporting evidence. The
offline gates pass: source synchronization, a reproducible two-cycle
canonical Docker build, strict Joern, exact AArch64 comparison, KCFI type
comparison and two-cycle ASan/UBSan host execution covering two cases.

The candidate has 10/10 instructions and 40/40 symbol bytes, with matching
KCFI type ID `0xa607748c`. Hardware and Android runtime behavior remain
deferred.
