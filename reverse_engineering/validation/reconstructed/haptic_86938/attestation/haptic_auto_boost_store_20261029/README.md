# haptic_86938: auto_boost_store

Static reconstruction candidate for stock `auto_boost_store` at `0x0010c0a8` (236 bytes). Source: `kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_113_auto_boost_store.c`.

The sysfs callback parses an unsigned integer with base autodetection and returns parse errors unchanged. On success it locks the haptic mutex, invokes operations-table slot `+0x38` with the haptic pointer, invokes slot `+0xb0` with the haptic pointer and parsed value, unlocks, and returns `count`. Stock relocation evidence identifies slot `+0x38` as `aw8693x_stop`; the second destination is kept identified by slot pending a direct relocation record.

## ABI and concurrency evidence

The callback's KCFI type is `0x95c41a97`. Its indirect calls use KCFI types `0x847a0830` and `0x1d0adf6e`, matching `void (struct aw_haptic *)` and `void (struct aw_haptic *, u8)`. The source preserves the observed lock boundary around both operations.

## Docker and Ghidra evidence

Two clean Docker builds with pinned `clang-r536225` were byte reproducible (module SHA-256 `f8af8a072992ec2dd4c80157cebeddd533dd98ddd841c4e89089bd2056c829c4`). Ghidra exported 117 functions; the scoped candidate export identifies `auto_boost_store` at `0x0010646c`, with a 236-byte body. Strict assembly comparison passes for all 59 instructions, symbol size, section, and relocations.

## Core validation

`core_v1/hard_protocol_report.json` reports `CORE_GATES_PASS`. All eight required gates pass: strict Assembly and relocation comparison, candidate Ghidra P-Code, reproducible Docker build, input identity, scoped Joern analysis and slice, KCFI, and reconstruction-map identity. Normalized Ghidra C and P-Code operation shape match directly; no decompiler fallback was used. The callback's KCFI type ID `0x95c41a97` matches stock.

The protocol's promotion decision remains `NOT_AUTHORIZED`; 17 additional promotion gates remain. The map therefore stays `candidate_under_static_validation`. The whole `haptic_86938` driver remains incomplete. This attestation establishes the core static gates for `auto_boost_store` only and does not authorize module promotion.
