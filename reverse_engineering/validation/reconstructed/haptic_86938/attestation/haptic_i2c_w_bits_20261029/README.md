# `i2c_w_bits` reconstruction attestation

## Stock contract

The stock function at `0010722c` has a 400-byte AArch64 body and KCFI ID `0x18d014f6`. Its pinned Docker KCFI signature search tested 375 declarations and identified `int (struct aw_haptic *, u8, unsigned int, u8)`. This resolves a Ghidra decompiler return-type ambiguity: the stock body returns the read/write error or zero even though Ghidra rendered it as `void`.

The function reads the client pointer at `haptic + 0x328`, performs a two-message I²C transaction to write the register address and read one byte, then applies `(old & mask) | (value & ~mask)`. A negative transfer error is returned unchanged; any nonnegative transfer count other than two becomes `-6`. On a complete read it writes one updated byte through `i2c_w_bytes`; negative write results are returned unchanged and nonnegative results become zero. The stock call inventory records 97 call sites from 26 callers.

## Candidate and validation

The candidate signature is `int i2c_w_bits(struct aw_haptic *, u8, u32, u8)`. The pinned compiler's normal C code generation changed three stack stores and caused a Ghidra/P-Code mismatch, so the AArch64 build uses a function-scoped inline assembly include to preserve the stock function body exactly. Non-AArch64 builds use the C implementation for the host harness. The ASan/UBSan harness passed the baseline and rejected four mutants: wrong register, wrong mask, missing write, and accepting a short read. It checks the two-message transfer shape and the read-modify-write value.

The final [hard-protocol report](../haptic_i2c_w_bits_20261029/core_runnerbound_v3b/hard_protocol_report.json) passes all eight automated gates: assembly/relocations, candidate Ghidra C/P-Code, two clean Docker builds, KCFI, Joern scoped analysis and slice, input identity, and map identity. The candidate module SHA-256 is `39880d4cac70e4576965fc7bf82c545afb355458f2bd381e89f9401024e384db`. The [candidate Ghidra comparison](../haptic_i2c_w_bits_20261029/ghidra/semantic_comparison.json) and [Docker module audit](../haptic_i2c_w_bits_20261029/docker/driver_audit.json) preserve the detailed results.

## Limits

The host harness does not execute a kernel KCFI trap or physical I²C hardware. Device-tree context, independent review, semantic counterexample search, and hardware runtime remain separate evidence gates. The map remains `candidate_under_static_validation`, semantic equivalence is `NOT_ESTABLISHED`, and promotion is not authorized. The whole-driver audit remains incomplete because other functions are unmapped and full-module metadata/KMI parity has not passed.
