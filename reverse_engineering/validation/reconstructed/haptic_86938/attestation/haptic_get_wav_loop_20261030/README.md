# `aw8693x_get_wav_loop` offline attestation

Stock target: `aw8693x_get_wav_loop@00105df0` in `haptic_86938.ko` (420 bytes, 105 AArch64 instructions). Stock module SHA-256: `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`.

Candidate source SHA-256: `6d50ff223f535102a8f9a09235eda3fe9bce7c0d33650823878d3b91c58b406b`. Candidate module SHA-256: `40c7650f9f49fd18769295a4fcdeb0d68aae6604788204ac3d2aabe19c6570e7` (5,990,328 bytes), reproduced by two clean Docker cycles.

## Diagnosis and correction

The first exact assembly comparison found four register-allocation differences: the candidate kept the high nibble in a separate temporary and masked a second register, while stock masks the byte in place. The source was rewritten to preserve the high nibble, then mask the byte value in place; the resulting function matches all stock instructions.

The next core run stopped because its job did not point to a candidate Ghidra export. I exported the rebuilt candidate module with Ghidra 12.1.2, bound that export in the job, and reran the strict semantic comparison. The final map-closure run confirms the same candidate module and current reconstruction-map hash.

## Verification

- `plan_v5` is `READY` with no blockers. `core_final_v4_execution` passes all eight required gates: assembly/relocations, candidate Ghidra/P-Code, Docker reproducibility, input identity, Joern scoped analysis and slice, KCFI, and map identity.
- Stock and candidate match exactly: 105 instructions, 420 bytes, `.text` section, and compared relocations. Strict normalized Ghidra C and P-Code comparisons pass without fallback.
- KCFI type ID is `0xdffa4199`; the callback table relocation at slot `+0x138` resolves to this function. The stock `loop_show` wrapper supplies the haptic pointer and output buffer.
- The ASan/UBSan host harness passes patterned bytes/output order, negative helper result with a zero local, short-transfer helper result `-6`, and negative result with partial writes. It checks the 128-byte output, terminal NUL, haptic stores, buffer bounds, and surrounding guards.
- Joern scoped analysis and the target usage slice pass. The independent reviewer reports `PASS` from stock evidence through the final core report.

The source reads four bytes from register `0x12`, ignores the helper result, stores low/high nibbles at haptic offsets `+0x27/+0x26` through `+0x2d/+0x2c`, formats eight sequence lines, and returns the accumulated `snprintf` lengths. The exact expected output and error cases are in [the test contract](microproofs/TEST_CONTRACT.md).

## Limits

The nominal pointee type is not fully resolved because KCFI collides for `char *` and `unsigned char *`; `char *` is best supported by the stock wrapper. The physical meaning of register `0x12` and actual device response remain unknown, and hardware validation was not performed. The function is marked `PROVEN_OFFLINE_EXACT`, while the map status remains `candidate_under_static_validation`; whole-driver equivalence and module promotion are not established.

## Reports

- [Final core report](core_final_v4_execution/hard_protocol_report.json)
- [Final input manifest](core_final_v4_execution/input_manifest.json)
- [Assembly comparison](core_final_v4_execution/assembly/comparison.json)
- [Ghidra semantic comparison](core_final_v4_execution/ghidra/semantic_comparison.json)
- [Independent review](independent_review.json)
- [Candidate Ghidra export provenance](ghidra_candidate_export_run_v1.json)
- [Host harness result](host_harness/harness_result.json)
