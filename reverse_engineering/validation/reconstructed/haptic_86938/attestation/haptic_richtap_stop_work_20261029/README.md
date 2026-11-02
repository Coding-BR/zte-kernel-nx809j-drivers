# haptic_86938: richtap_stop_work

Static reconstruction candidate for stock `richtap_stop_work` at `0x00108ba0` (196 bytes). Source: `kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_112_richtap_stop_work.c`.

The callback receives the work item at `haptic + 0x668`. It locks the haptic mutex at `haptic + 0x2f0`, invokes the operations-table slots `+0xf0` and `+0x38` with the haptic pointer while locked, unlocks, invokes slot `+0x110` with value zero, and clears the 32-bit state at `haptic + 0x6bc`. Stock ELF relocation evidence identifies slot `+0x38` as `aw8693x_stop`; the other callback destinations are recorded by slot and KCFI type, without assigning unsupported names.

## ABI and concurrency evidence

The work callback's KCFI type is `0xa607748c`. The indirect calls use KCFI types `0x847a0830`, `0x847a0830`, and `0x1d0adf6e`, corresponding to `void (struct aw_haptic *)`, `void (struct aw_haptic *)`, and `void (struct aw_haptic *, u8)`. The source preserves the observed lock boundary: the first two operations run under the mutex; the third runs after unlock.

## Docker and Ghidra evidence

Two clean Docker builds with pinned `clang-r536225` were byte reproducible (module SHA-256 `997e8835d77994e0008e54162aabb3f25b760fbe1ecc02f0ae3c1682f5562a38`). Ghidra exported 116 functions; the scoped candidate export identifies `richtap_stop_work` at `0x00106354`, with a 196-byte body. Strict assembly comparison passes for all 49 instructions, symbol size, section, and relocations.

## Core validation

`core_v1/hard_protocol_report.json` reports `CORE_GATES_PASS`. All eight required gates pass: strict Assembly and relocation comparison, candidate Ghidra P-Code, reproducible Docker build, input identity, scoped Joern analysis and slice, KCFI, and reconstruction-map identity. Normalized Ghidra C and P-Code operation shape match directly; no decompiler fallback was used. The callback's KCFI type ID `0xa607748c` matches stock.

The protocol's promotion decision remains `NOT_AUTHORIZED`; 17 additional promotion gates remain. The map therefore stays `candidate_under_static_validation`. The whole `haptic_86938` driver remains incomplete. This attestation establishes the core static gates for `richtap_stop_work` only and does not authorize module promotion.
