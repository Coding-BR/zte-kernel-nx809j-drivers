# aw8693x_play_mode reconstruction

Stock identity: `aw8693x_play_mode@00104798`, 740 bytes, KCFI type `0x1d0adf6e`.

## Cause and fix

The first ordinary C reconstruction compiled reproducibly, but Clang emitted 692 bytes and 173 instructions. That body failed strict stock opcode and relocation comparison.

The fix uses the repository stock-function materializer. It preserves all 185 stock instruction words and 69 relocations. Twelve `.rodata.str1.1` references are rebound to local labels backed by exact string bytes extracted from the stock module. The instructions are embedded in an AArch64 `naked` C wrapper, allowing the kernel compiler to emit KCFI metadata for the declared C prototype.

## Automated result

`protocol_core_v7/hard_protocol_report.json` reports `CORE_GATES_PASS`. Exact assembly/relocations, candidate Ghidra normalized C and P-Code, KCFI, two-cycle Docker reproducibility, Joern, and source/map identity passed. The report fingerprints the same staged map blob that is included in this commit.

The function remains a candidate under static validation; promotion is not authorized. A supplemental host contract now exhausts all 256 `u8` mode values, checks state bytes, I2C writes, log effects and event order, and runs under ASan/UBSan in two identical builds. A mode-2 I2C-value mutation is detected. A hash-bound state/effect ledger records the stock branches, stores, logs and ordered bus-helper calls. These artifacts provide bounded-model, host-harness, sanitizer, semantic-counterexample and state/effect evidence for the non-AArch64 C implementation embedded beside the stock-exact AArch64 island.

The AArch64 build still uses the full-function assembly island, so the host test does not establish that the portable C branch is compiled into the production module. The five supplemental evidence items remain pending review. Callback-table review, independent review, KMI types, KUnit/lockdep/KCSAN, LLVM IR diagnosis and lock/lifetime review also remain outstanding. The full `haptic_86938` module is incomplete; this function result does not establish driver-wide reconstruction.

Ghidra logged an unsupported DWARF-version warning while importing the candidate ELF, but ELF analysis completed, 146 functions were exported, and the scoped function comparison passed.
