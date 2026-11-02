# Haptic 86938: callback table reconstruction

## Result

The missing aw8693x_func_list object is now represented in the candidate source. Docker produced a reproducible module in two cycles, and the static audit matched the stock ELF callback table.

The hard-protocol core gates for aw8693x_trig_init and aw8693x_misc_para_init pass: exact AArch64 instruction/relocation comparison, KCFI, candidate Ghidra P-Code, Joern scoped analysis, input identity, map identity, and two-cycle Docker reproducibility.

## Evidence

- aw8693x_func_list is 400 bytes in .data in both modules, with 50 slots and 48 matching function relocations.
- The null slots match stock at indices 11 and 18. Slot 28 resolves to aw8693x_parse_dt.
- aw8693x_trig_init matches stock at 940 bytes; aw8693x_misc_para_init matches at 704 bytes. Instructions, relocations, sections, and sizes match.
- Both functions carry KCFI type 0x847a0830; candidate Ghidra P-Code comparison passes.
- The two-cycle Docker candidate hash is 67cd51ec7ae16fdd6ecb1defe6e695e55a4bc027fbe7150f0285721b82c3b0b1.
- Full evidence is under protocol_core_v5/; the independent object audit is callback_table_audit.json.

## Remaining blocker

This does not complete haptic_86938. Stock aw_i2c_probe assigns the callback table to the device state at offset +0x5c8, but the candidate still has no reconstructed aw_i2c_probe, so runtime wiring is not established. The Docker driver audit also remains incomplete: the current reconstructed .ko has not been promoted, alias and undefined-symbol parity fail, and the traceability review reports unmapped/unreviewed functions. Hardware behavior has not been tested.

Keep these functions at candidate_under_static_validation; do not mark the driver complete until the probe path, full module parity, and required review gates pass.
