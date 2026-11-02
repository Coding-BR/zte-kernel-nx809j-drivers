# `tpd_id0_report_work` offline exact attestation

This package records the current function-level reconstruction of
`tpd_id0_report_work` at stock entry `0x0010fca8` for the ZTE NX809J /
RedMagic 11 Pro+ target.

The initial AArch64 report is retained only in the temporary work area; this
package uses the final `v2` comparison. The exact linked source is
`tpd_id0_report_work_exact.S`, with readable C source and direct host
contract retained as supporting evidence. Source sync, strict Joern, exact
AArch64 comparison, KCFI, two-cycle canonical Docker build and two-cycle
ASan/UBSan host execution all pass.

The candidate has 10/10 instructions and 40/40 symbol bytes, with matching
KCFI type ID `0xa607748c`. Hardware and Android runtime behavior remain
deferred.
