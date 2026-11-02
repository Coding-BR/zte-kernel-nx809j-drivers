# haptic_86938: prct_mode_store

Static reconstruction candidate for stock `prct_mode_store` at `0x0010c208` (220 bytes). It parses two hexadecimal words with `sscanf`; only when both parse does it lock the haptic mutex, load the operations table at `driver_data + 0x520`, call slot `+0xd8` with the haptic pointer and both parsed words, unlock, and return the original `count`. Parse failure also returns `count` without changing state.

## ABI and compiler evidence

The callback's KCFI type is `0x95c41a97`. The indirect operation uses KCFI type `0x7b877e65`, resolved as `void (struct aw_haptic *, u8, u8)` from the same stock type ID and the existing `aw8693x_set_wav_seq` signature attestation. The code preserves the stock two-level operations-table lookup. Compiler register constraints keep the parsed words live across `mutex_lock`, matching the stock `ldp` and callback argument registers.

## Static validation

Two clean Docker builds with pinned `clang-r536225` are byte-identical (module SHA-256 `599be0a5ec6a7878773880daa04a501d77f36f5348ee6550211c0def3a0a93b0`). Ghidra 12.1.2 exported 119 functions; the scoped candidate identifies `prct_mode_store` at `0x0010671c`, with a 220-byte body. Strict assembly comparison passes for all 55 instructions, symbol size, section, and relocations. Normalized Ghidra C and P-Code match directly without fallback.

`core_v2/hard_protocol_report.json` reports `CORE_GATES_PASS`; all eight required core gates pass, including Docker reproducibility, Joern analysis and slice, KCFI, and map identity. The core protocol is non-promoting by design. Fourteen further promotion gates remain, so the map stays `candidate_under_static_validation`; the whole `haptic_86938` driver remains incomplete.
