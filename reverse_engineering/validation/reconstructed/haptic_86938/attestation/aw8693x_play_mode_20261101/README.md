# aw8693x_play_mode reconstruction

Stock identity: `aw8693x_play_mode@00104798`, 740 bytes, KCFI type `0x1d0adf6e`.

## Cause and fix

The first ordinary C reconstruction compiled reproducibly, but Clang emitted 692 bytes and 173 instructions. That body failed strict stock opcode and relocation comparison.

The fix uses the repository stock-function materializer. It preserves all 185 stock instruction words and 69 relocations. Twelve `.rodata.str1.1` references are rebound to local labels backed by exact string bytes extracted from the stock module. The instructions are embedded in an AArch64 `naked` C wrapper, allowing the kernel compiler to emit KCFI metadata for the declared C prototype.

## Automated result

`protocol_core_v7/hard_protocol_report.json` reports `CORE_GATES_PASS`. Exact assembly/relocations, candidate Ghidra normalized C and P-Code, KCFI, two-cycle Docker reproducibility, Joern, and source/map identity passed. The report fingerprints the same staged map blob that is included in this commit.

The function remains a candidate under static validation; promotion is not authorized. Bounded model, callback-table review, host harness, independent review, KMI types, KUnit/lockdep/KCSAN, LLVM IR diagnosis, lock/lifetime review, sanitizers, semantic counterexample search, and the state/effect ledger remain outstanding. The full `haptic_86938` module is incomplete; this function result does not establish driver-wide reconstruction.

Ghidra logged an unsupported DWARF-version warning while importing the candidate ELF, but ELF analysis completed, 146 functions were exported, and the scoped function comparison passed.
