# `cont_drv_lvl_store@00106554` reconstruction

This callback was absent from the reconstructed driver despite the stock
`dev_attr_cont_drv_lvl` store slot pointing to it. The source now parses two
hexadecimal values, stores their low bytes at driver-data offsets `+0x3f2`
and `+0x3f3`, then performs a locked read/modify/write of register `0x1d`.
The stock preserves register bit 7, replaces the lower bits with the first
value, writes the second value as the next byte, ignores both bus return codes,
and returns the original count even when parsing does not yield two values.

The candidate source is
`kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_061_cont_drv_lvl_store.c`.
The map remains `candidate_under_static_validation`; semantic equivalence is
not promoted.

Fresh run `core_v5` passed all eight hard-protocol gates: assembly and
relocations, candidate Ghidra P-Code, two-cycle Docker reproducibility, input
and map identity, scoped Joern, Joern slice, and KCFI. The candidate module
SHA-256 is
`e7238c21f7e0e2e9a7d01eafd62ed705ac8ee97913f6a21e4e2a1a09b335fa62`, matching
the module exported in `ghidra_export_v2`.

The assembly comparison records one mathematically equivalent swap of the
register operands in a single `ORR`. The Ghidra comparison records the
corresponding byte-expression operand-order normalization; function body size
and P-Code operation shape match. Both narrow equivalences are documented in
their reports.

The generated `core_v5/promotion_decision.json` still requires a host
harness, independent review, bounded-model and lock/lifetime work, and hardware
runtime validation. Register `0x1d` semantics and the driver's object lifetime
remain open. The private sysfs attribute group and the remaining callbacks are
unfinished.

`core_v1` through `core_v4` and the earlier Ghidra prechecks are retained as
diagnostics of code-generation and decompiler normalization issues resolved
before the passing `core_v5` run.
