# `syna_dev_set_sensibility_level` Offline Exact Attestation

Target: `zte_tpd`, stock entry `0x00111578`.

Status: `OFFLINE_EXACT`. Hardware promotion is intentionally `DEFERRED`.

## Evidence

- Ghidra pseudocode and P-Code are preserved in `stock_decompiled.c` and `stock_pcode.jsonl`.
- The linked candidate uses `syna_dev_set_sensibility_level_exact.S`, mechanically lifted from the stock AArch64 sequence.
- Stock and candidate match at function level: 103 instructions, 412 bytes, `.text` section, 18 relocations, and stock `.rodata.str1.1` string offsets.
- KCFI matches: type ID `0x1eb3b73d`, `.text`, 412-byte symbol.
- Joern strict gate: `PASS`, with zero parser problems and zero unresolved calls for the requested function.
- Host ASan/UBSan harness: `PASS` in two runs, 11 cases, identical binary hash.
- Canonical Docker build: `PASS` in two cycles; artifact SHA256 `4dde73988904c8248dc29909d2791e88d5878d35d7c6ce967f548f47caf1c69f` and size `28524232` bytes.

The historical C export remains included as semantic reference. The exact linked implementation follows the stock branch layout, load ordering, KCFI preamble, relocations, and string offsets. No smartphone or firmware transport test was executed.

## Reproduction order

1. Run the canonical source-sync gate.
2. Build the module with the pinned Docker/toolchain environment for two cycles.
3. Extract stock and candidate function Assembly from their ELF modules and run the function comparator.
4. Extract and compare KCFI records.
5. Run the host harness twice with ASan/UBSan.
6. Run the strict Joern gate against the current reconstruction map.

The JSON reports in this directory are the hash-bound outputs for this target.
