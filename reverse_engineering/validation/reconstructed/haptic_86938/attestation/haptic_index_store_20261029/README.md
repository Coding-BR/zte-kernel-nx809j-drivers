# haptic_86938: index_store

Static reconstruction candidate for stock `index_store` at `0x0010a6b4` (284 bytes). Source: `kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_114_index_store.c`.

The sysfs callback parses an unsigned integer with base autodetection and returns parse errors unchanged. Values greater than the byte limit at `driver_data + 0x3b4` are logged and ignored while the callback returns `count`. Accepted values are logged, stored as 32 bits at `driver_data - 0x64` under the haptic mutex, then passed to operations-table slot `+0xa8` before unlocking.

## ABI and compiler evidence

The callback's KCFI type is `0x95c41a97`. The indirect operation uses KCFI type `0x1d0adf6e`, matching `void (struct aw_haptic *, u8)`; the stock call passes the parsed 32-bit value in the second ABI register, and the callback type truncates it to `u8`. The operation is identified by its table slot because the available relocation inventory does not yet name its target.

## Docker and Ghidra evidence

Two clean Docker builds with pinned `clang-r536225` were byte reproducible (module SHA-256 `a5f4d653422a2de39635e3061d2444ac6408a08ff79190fe177a0a7005f35dab`). Ghidra exported 118 functions; the scoped candidate export identifies `index_store` at `0x001065ac`, with a 284-byte body. Strict assembly comparison passes for all 71 instructions, symbol size, section, and relocations.

## Core validation

`core_v1/hard_protocol_report.json` reports `CORE_GATES_PASS`. All eight required gates pass: strict Assembly and relocation comparison, candidate Ghidra P-Code, reproducible Docker build, input identity, scoped Joern analysis and slice, KCFI, and reconstruction-map identity. Normalized Ghidra C and P-Code operation shape match directly; no decompiler fallback was used. The callback's KCFI type ID `0x95c41a97` matches stock, and the indirect operation type ID is `0x1d0adf6e`.

The protocol's promotion decision remains `NOT_AUTHORIZED`; 17 additional promotion gates remain. The map therefore stays `candidate_under_static_validation`. The whole `haptic_86938` driver remains incomplete. This attestation establishes the core static gates for `index_store` only and does not authorize module promotion.
