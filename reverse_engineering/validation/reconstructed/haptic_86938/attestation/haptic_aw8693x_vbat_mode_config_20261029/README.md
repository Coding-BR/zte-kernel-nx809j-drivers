# aw8693x_vbat_mode_config reconstruction

## Static behavior

Stock entry 00104b78 has a 52-byte AArch64 body and KCFI ID 0x1d0adf6e. It compares the low input byte with exactly 1, then calls i2c_w_bits(haptic, 0x4c, 0xffffffbf, value), where value is 0x40 for input 1 and zero otherwise. The helper return is discarded.

The C candidate uses u8 to preserve the observed byte-level comparison. KCFI aliases do not by themselves establish the source typedef or caller type; the caller prototype remains an open review item.

## Validation

The fresh hard-protocol report at core_runnerbound_v2/hard_protocol_report.json passes all eight automated gates: map/input identity, Joern analysis and slice, two clean Docker builds, exact function assembly and relocations, KCFI, and fresh candidate Ghidra C/P-Code comparison. The two Docker outputs are byte-identical with SHA-256 6486da9e83b3244623e823f8908938879c30fdf5ea323d0be6bb4627166a2407. The function body is 13 instructions and 52 bytes. The ASan/UBSan host harness tests flags 0, 1, 2 and 255 and rejects five seeded mutants. The pinned KCFI oracle finds the same ID for bool, char, unsigned char and u8; the candidate uses u8 to preserve the observed byte comparison, while caller-type review remains open. See candidate_ghidra_v1/semantic_comparison.json, core_runnerbound_v2/docker/driver_audit.json, prebuild_runnerbound_v2/driver_audit.json and prebuild_runnerbound_v1/driver_audit.json. The first build stopped at Makefile parsing because the new object line lacked haptic_86938-y +=; that rule is corrected in the current source.

## Limits

Host tests model the wrapper call only. They do not establish hardware behavior or whole-driver equivalence. The map remains candidate_under_static_validation and semantic equivalence remains NOT_ESTABLISHED.