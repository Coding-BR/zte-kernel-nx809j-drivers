# `cont_store` reconstruction checkpoint

Stock identity: `cont_store@0010be5c`, 268 bytes (67 AArch64 instructions). Candidate source SHA-256: `1923e7060d11807c74ffb6b0f165653f4b78dca3912b1cbbb6c924fadf4efa7d`.

## Recovered behavior

The sysfs store parses an unsigned integer with base 0. A parse error returns the negative errno without invoking callbacks. A successful parse always invokes `aw8693x_stop`; a nonzero value additionally invokes `aw8693x_upload_lra(haptic, 1)` and then `aw8693x_cont_config`. Success returns the original `count`. The target itself takes no lock, allocates no memory, and schedules no work.

The callback table was resolved from `.rela.data` and bound to stock function entries: slot `0x38` is `aw8693x_stop`, `0x118` is `aw8693x_upload_lra`, and `0x48` is `aw8693x_cont_config`. The KCFI IDs match the three callsites in the stock body.

## Verification

`core_v2_execution` passed assembly and relocation comparison, Docker reproducibility, input and map identity, Joern scoped analysis and usage slice, KCFI, and strict normalized-C/P-Code comparison without fallback. `core_v3_execution` repeated the checks after the final map evidence update and passed `MAP_IDENTITY`.

Stock and candidate match exactly at 67 instructions / 268 bytes, including section and relocations. The fresh Ghidra export has 133 functions; `cont_store` is at `001085c4` with a 268-byte body. Two clean Docker builds produced byte-identical modules with SHA-256 `6c15216073679544015323cee055ea4078f36fd86edac76413fd0a56ac2df8c5` (5,987,344 bytes).

The ASan/UBSan host harness passes the parse-error path, zero path, callback order and mode, and callback-table reload behavior. It uses stubs for the observed device-data offset and callback table; it does not emulate kernel concurrency or hardware.

Reports: [final core report](core_v3_execution/hard_protocol_report.json), [semantic comparison](core_v2_execution/ghidra/semantic_comparison.json), [assembly comparison](core_v2_execution/assembly/comparison.json), [callback table relocation evidence](callback_table_relocations.json), [host harness result](host_harness/harness_result.json), [Ghidra export provenance](ghidra_candidate_export_run_v1.json).

## Status and limits

The map records `candidate_under_static_validation` and `PROVEN_OFFLINE_EXACT`. Whole-driver equivalence and hardware behavior are not established; module promotion remains unauthorized.
