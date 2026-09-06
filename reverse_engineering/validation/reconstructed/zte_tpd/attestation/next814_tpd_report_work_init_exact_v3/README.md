# `tpd_report_work_init` offline exact attestation

This package records the function-level reconstruction of `tpd_report_work_init`
at stock entry `0x0010fa04` for the ZTE NX809J / RedMagic 11 Pro+ target.

The final v2 AArch64 comparison is used. The exact linked source is
`tpd_report_work_init_exact.S`, with readable C source, Ghidra decompilation
and direct host contract retained as supporting evidence. Source sync, strict
Joern, exact AArch64 comparison, KCFI, two-cycle canonical Docker build and
two-cycle ASan/UBSan host execution all pass.

The candidate has 168/168 instructions and 672/672 symbol bytes, with matching
KCFI type ID `0x6fbb3035`. Android runtime and NX809J physical hardware
behavior remain deferred.
