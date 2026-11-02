# `richtap_clean_buf` reconstruction attestation

## Diagnosis

The stock function at `0010eaa0` obtains its linked-list head from `aw_haptic + 0x610`. It traverses exactly 16 nodes. For each node it clears 1000 bytes at offset `0x18` and writes `0xff` to the state byte at offset zero. It preserves the next pointers and has no null, chain-length, or lock checks. The direct caller invokes it before taking a mutex; the reconstruction preserves that stock ordering and adds no lock.

The first hard-protocol run found a runner defect. The job correctly declared `kcfi_required: false`, and stock contains no valid KCFI preamble for this direct helper, but the `COMPILER_SENSITIVE` profile still made the KCFI comparator mandatory. The comparator therefore failed on KCFI presence even though strict assembly and Ghidra/P-Code matched. The root cause and first-run report are preserved in [protocol_gate_diagnosis.json](protocol_gate_diagnosis.json).

The runner now makes KCFI conditional on the per-function flag for `COMPILER_SENSITIVE`. `CALLBACK_ABI` continues to require its KCFI and callsite audit. The corrected core report records KCFI as `NOT_REQUIRED` for this function.

## Evidence

- Corrected hard-protocol report: `../cleanfinal/hard_protocol_report.json`. All applicable automated core gates pass, including input/map identity, pinned Joern and Joern slice, two reproducible Docker builds, strict assembly/relocation parity, and candidate Ghidra/P-Code parity.
- Stock and candidate function bodies are both 428 bytes and 107 instructions. The normalized Ghidra C and P-Code operation shape match.
- The two clean Docker builds produce the same 2,448,144-byte candidate module with SHA-256 `d45d6cf32620ff8a0cb67bc4897e65e8cbeae2c5ce8ff3f41f4d3f182f19ba85`.
- The ASan/UBSan host harness passed for 16 nodes and rejected all three seeded mutants. See [host harness results](../cleanfix/host_harness/harness_result.json) and its [reproduction instructions](../cleanfix/host_harness/README.md).
- The generic Docker audit confirms reproducible builds. It does not mark the full module statically verified: the assembled driver is incomplete, and whole-module vermagic, alias, undefined-symbol, and candidate-parity checks remain open.

## Status and limits

The map remains `candidate_under_static_validation`, with `semantic_equivalence: NOT_ESTABLISHED`; this attestation does not promote the whole driver. The haptic inventory has 160 stock functions, 37 source-backed candidates, and 123 functions still `NOT_STARTED`. No kernel-runtime or hardware test was performed. The host harness covers bounded memory behavior only.
