# haptic_86938: aw8693x_get_reg

Static reconstruction candidate for stock `aw8693x_get_reg` at `0x00106020` (288 bytes). It reads register ranges `0x00..0x31`, `0x33..0x41`, and `0x43..0x82`; the I²C read results are ignored. It formats every byte except `0x32` and `0x42`, appending to the caller's buffer from the supplied offset with the stock `0x1000 - length` capacity and returning the accumulated length.

## ABI and compiler evidence

The function KCFI type is `0xdf86a5ee`. The candidate type ID, section, symbol size, and stock KCFI preamble match. The source signature was checked through both KCFI and the stock AArch64 calling sequence.

## Static validation

Two clean Docker builds with pinned `clang-r536225` are byte-identical (module SHA-256 `2e19782ab7257a05973f256beb961b75303c7d0a62adb73df5b3b7a39136e134`). Ghidra 12.1.2 exported 120 functions; the scoped candidate identifies `aw8693x_get_reg` at `00106854`, with a 288-byte body. Strict assembly comparison passes for all 72 instructions, symbol size, section, and relocations. Normalized Ghidra C and P-Code match directly without fallback.

`core_v1/hard_protocol_report.json` reports `CORE_GATES_PASS`; all eight required core gates pass, including reproducible Docker builds, Joern analysis and slice, KCFI, and map identity. Promotion remains unauthorized: 12 additional evidence gates are still required, so the map stays `candidate_under_static_validation` and the whole `haptic_86938` driver remains incomplete.
