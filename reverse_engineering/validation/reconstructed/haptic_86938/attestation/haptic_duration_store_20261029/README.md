# Haptic `duration_store` reconstruction

Target: stock `duration_store@0010a368`, 136 bytes, KCFI type `0x95c41a97`.

The reconstructed sysfs store parses an unsigned integer with base autodetection, returns a negative `kstrtouint` error unchanged, updates the 32-bit field at `driver_data - 0x54` only when the parsed value is nonzero, and returns the supplied byte count on success. The compiler stack-canary path is preserved.

## Validation

`core_v3/hard_protocol_report.json` records `CORE_GATES_PASS`. All eight core gates pass: stock/map/source identity, scoped Joern analysis and usage slice, two reproducible Docker builds, exact AArch64 instructions/relocations, candidate Ghidra C/P-Code equivalence, and KCFI. The function body matches all 34 instructions and 136 bytes, with both stock relocations (`kstrtouint` and `__stack_chk_fail`) matching. KCFI type `0x95c41a97` matches.

The two clean Docker builds used `nubia-sm8850-kernel-builder:latest` with `clang-r536225` and produced identical module SHA-256 `2f7425891dbaa797fedaccca8753b44b7449d46908426fa6d4fdfeb594dc49cc` (2,984,760 bytes).

`pre_candidate/` preserves the stock identity, call signature, state effects, control/error cases, review notes, lock/bus findings, and an unexecuted oracle draft. `joern_source_view/` contains the source-hash-bound analysis view used by the passing Joern gates.

This is function-level static evidence. Promotion remains unauthorized. No hardware behavior or complete-driver equivalence is claimed; the broader `haptic_86938` audit remains incomplete.
