# aw8693x_set_bst_vol reconstruction

## Static behavior

Stock entry 00104a80 has a 64-byte AArch64 body and KCFI ID 0x1d0adf6e. The second argument is byte-sized. Values below 6 are clamped to 5; values above 24 are clamped to 25. The function calls i2c_w_bits(haptic, 6, 0xffffffe0, value) and discards the helper return.

## Validation

core_runnerbound_v2/hard_protocol_report.json passes all eight automated core gates: input/map identity, Joern and slice, two clean Docker builds, assembly and relocations, KCFI, and candidate Ghidra C/P-Code. Both Docker cycles produced SHA-256 1264be5db107f275aafda41473142acd799194dafe499e691aafef7b59227dc7 (2,543,416 bytes). Stock and candidate match exactly at 16 instructions and 64 bytes, including the i2c_w_bits relocation. KCFI matches at 0x1d0adf6e.

The fresh Ghidra export is in candidate_ghidra_v1/haptic_86938.ko; normalized decompiled C and P-Code match the stock function. The pinned Docker ASan/UBSan host harness checks eight input values and rejects six seeded mutations of the clamp bounds, register, or mask.

The first core run, core_runnerbound_v1, is retained as diagnostic evidence. Its source, KCFI, Docker, Joern and assembly gates passed; Ghidra comparison was not executed until the candidate export was generated and bound in the final job.

## Limits

The host harness models the wrapper contract only. It does not establish hardware behavior or whole-driver equivalence. Hardware validation was not performed; whole-driver semantic equivalence remains NOT_ESTABLISHED; module promotion is not authorized.
