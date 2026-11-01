# aw8693x_parse_dt reconstruction status

Target: aw8693x_parse_dt@00104d80 in haptic_86938.

## Problem found and corrected

The first candidate had two compiler-sensitive mismatches. KERN_INFO already emits the kernel severity prefix, while the source also included a literal 6, duplicating the level. The duration_time and trig_config branches also used an error-first layout that changed the generated AArch64 block order. The source now uses one severity prefix and takes the stock success-copy path first.

The validation harness also had coverage and runner defects found during independent review. It now exercises the three target OF error classes, asserts the order of all 16 reads and 19 property lookups, hashes the harness inputs, uses its own temporary directory, and distinguishes mutant compilation from mutant execution.

## Function-level result

- Docker’s two-cycle build and hard protocol pass.
- Stock and candidate parser bodies match: 340 AArch64 instructions, 144 relocations, 1,360 bytes; Ghidra normalized C/P-Code and KCFI pass.
- ASan/UBSan host harness passes. Candidate returns 0; the seeded mutant compiles (0) and fails the oracle (1).
- Independent review found no remaining parser-semantic mismatch.

## Driver integration is still incomplete

Stock .rela.data+0xe0 points to aw8693x_parse_dt, and the stock caller guards the invocation with KCFI type 0x2e77d32a. The candidate has the exact parser but does not define aw8693x_func_list. The broader Docker audit reports incomplete_or_failed: no canonical reconstructed .ko exists, and alias/import parity checks fail. So the function is statically equivalent, while the full haptic driver is not complete or promoted. Board-specific DT and hardware validation remain deferred.

See CALLBACK_TABLE_AUDIT.json, SUPPLEMENTAL_GATE_EVIDENCE.json, and independent_review_final.md.