# aw8693x_set_wav_seq reconstruction

## Static behavior

Stock entry 00104bb0 has an 88-byte AArch64 body and KCFI ID 0x7b877e65. It stores the third argument as one byte and calls i2c_w_bytes(haptic, (u8)(index + 10), &sequence, 1). The helper return is discarded. The wrapper preserves the kernel stack canary check and __stack_chk_fail path.

## Problem found and correction

The first candidate declared index as int, following Ghidra's decompiler guess. It matched all 22 stock instructions and both call relocations, but emitted KCFI ID 0xc32020f2 instead of 0x7b877e65. The stock ID matches the byte-sized argument class used by aw8693x_set_wav_loop. Changing index to u8 preserved the exact instruction sequence and produced the stock KCFI ID. The source-level caller typedef is not independently established, so semantic equivalence remains NOT_ESTABLISHED.

The first hard-protocol attempt also lacked paths.candidate_ghidra_export; as a result, candidate Ghidra/P-Code comparison was not executed. The job now binds the fresh candidate export to the module hash, and the final run executes that gate.

## Validation

core_runnerbound_v3/hard_protocol_report.json passes all eight automated gates: input/map identity, Joern and slice, two clean Docker builds, assembly and relocations, KCFI, and candidate Ghidra C/P-Code. Both Docker cycles produced SHA-256 3e0e035ba958363670d1d87c22cdb948e64b23929395dae6c540ca899da3b937 (2,541,896 bytes). Stock and candidate match exactly at 22 instructions and 88 bytes, including i2c_w_bytes and __stack_chk_fail relocations. KCFI matches at 0x7b877e65.

The fresh Ghidra export is in candidate_ghidra_v1/haptic_86938.ko; normalized decompiled C and P-Code match the stock function. The P-Code comparison covers 72 records. The pinned Docker ASan/UBSan host harness passes six input cases and rejects four seeded mutations of register offset, payload, and write length.

The first two core attempts are retained as diagnostic evidence: core_runnerbound_v1 records the initial KCFI mismatch, and core_runnerbound_v2 records the corrected KCFI with the omitted candidate-export path. The final gate report does not authorize promotion.

## Limits

The host harness models the wrapper contract only. It does not establish hardware behavior, caller typedefs, or whole-driver equivalence. Hardware validation was not performed; whole-driver semantic equivalence remains NOT_ESTABLISHED; module promotion is not authorized.
