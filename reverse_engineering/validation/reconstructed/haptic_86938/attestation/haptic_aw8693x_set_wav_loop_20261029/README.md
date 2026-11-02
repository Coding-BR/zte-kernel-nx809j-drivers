# aw8693x_set_wav_loop reconstruction

## Static behavior

Stock entry 00104c0c has a 64-byte AArch64 body and KCFI ID 0x7b877e65. Bit 0 of index selects one of two masks. For an even index, the value shifts left by four and mask 0xffffff0f preserves the other register bits. For an odd index, the value is unchanged and mask 0xfffffff0 is used. The register is ((index >> 1) & 0x7f) + 0x12. The helper return is discarded.

The pinned KCFI oracle tested 504 declarations and matched byte-like aliases (u8, unsigned char and char) for both arguments. This conflicts with the decompiler uint/int guesses, so the candidate uses u8 to preserve the observed byte operations; exact caller typedef remains open.

## Validation

The final hard-protocol report at core_runnerbound_v1/hard_protocol_report.json passes all eight automated gates: input/map identity, Joern and slice, two clean Docker builds, assembly and relocations, KCFI, and candidate Ghidra C/P-Code. Both Docker cycles produced SHA-256 64b3d860d643d8f216e05701cd7e3bf6f3f03c87fff02af54546afdcfd938e6c. The stock and candidate bodies match exactly at 16 instructions and 64 bytes, including the i2c_w_bits relocation. The pinned KCFI oracle tested 504 declarations; matches were byte-like aliases (u8, unsigned char and char) for both inputs, while Ghidra guessed uint/int. The candidate uses u8 and leaves the exact caller typedef open for review. The host ASan/UBSan harness covers six inputs and rejects five seeded mutations. Direct C first compiled to a 60-byte conditional-select body; its KCFI-matching C trial is preserved at candidate_module_c_v1/haptic_86938.ko and its size mismatch is recorded in prebuild_runnerbound_v1. The final AArch64 assembly island preserves the stock branch sequence, with a C fallback for the host harness. The exact-assembly Ghidra fallback was enabled but the core report says it was not used. See core_runnerbound_v1/assembly/comparison.json, core_runnerbound_v1/ghidra/semantic_comparison.json, prebuild_runnerbound_v1/assembly_comparison.json and prebuild_runnerbound_v2/assembly_comparison.json.

## Limits

Host tests model the wrapper contract only. They do not establish hardware behavior or whole-driver equivalence. Semantic equivalence remains NOT_ESTABLISHED.