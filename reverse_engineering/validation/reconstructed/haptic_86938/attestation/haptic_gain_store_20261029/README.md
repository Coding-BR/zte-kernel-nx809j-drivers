# haptic_86938: gain_store

Static reconstruction candidate for stock `gain_store` at `0x0010a93c` (236 bytes). Source: `kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_111_gain_store.c`.

The callback parses an unsigned value with base autodetection and returns parse errors unchanged. On success it logs the value, locks the haptic mutex, stores a 32-bit value at the stock field offset, calls the operation at table offset `0x88` with the haptic pointer and `u8` value, unlocks, and returns `count`.

## Discrepancy corrected

The first candidate used decimal formatting in the log message. Stock uses `value=0x%02x`; that string changes the `.rodata` relocations. The source now matches the stock format exactly. The strict assembly comparison reports 59 matching instructions, matching symbol size (236 bytes), and matching relocation targets and strings.

## Docker and Ghidra evidence

Two clean Docker builds using the pinned `clang-r536225` toolchain were byte reproducible (module SHA-256 `82f0038f25088b2bf84df6437ca09c9bc0f63a659b4a24a36e70bb69ad64deb8`). Ghidra exported 115 functions from that module; the scoped candidate export identifies `gain_store` at `0x0010621c`, with a 236-byte body.

## Core validation

`core_v1/hard_protocol_report.json` reports `CORE_GATES_PASS`. All eight required gates pass: strict Assembly and relocation comparison, candidate Ghidra P-Code, reproducible Docker build, input identity, scoped Joern analysis and slice, KCFI, and reconstruction-map identity. Normalized Ghidra C and P-Code operation shape match directly; no decompiler fallback was used. The callback's KCFI type ID is `0x95c41a97` in both stock and candidate.

The protocol's promotion decision remains `NOT_AUTHORIZED`; 17 additional promotion gates remain. The map therefore stays `candidate_under_static_validation`. The whole-driver audit still marks `haptic_86938` incomplete. This attestation establishes the core static gates for `gain_store` only and does not authorize module promotion.
