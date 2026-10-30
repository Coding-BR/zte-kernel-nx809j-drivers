# get_ram_num current-source attestation

Stock identity: `get_ram_num@0010b648`, 460 bytes (115 AArch64 instructions). Current source SHA-256: `a2a1035fe5596a4b82e7d2e91d9f689ab3d1893de3278f9d2648f93b7d70077a`.

## Diagnosis and correction

The older `get_ram_num` report was bound to an earlier source revision and recorded a 116-instruction/464-byte candidate. The current Docker-built candidate initially had the correct 115-instruction size but differed in the flag-test/error-path layout and in scheduling two first-`printk` arguments. The compiler had not been told that the inline branch could leave the normal path, and it hoisted argument setup across the arithmetic sequence.

The source now models the cold error edge with `asm goto`, preserves the stock flag-load/zero-store/test order, and constrains only the two argument registers whose scheduling differed. The current stock and candidate function bodies now match exactly.

## Result

All six required function-scoped core gates pass. The fresh Ghidra semantic comparison also passes strict normalized-C and P-Code checks; no decompiler fallback was used. Stock and candidate each contain 115 instructions / 460 bytes, with matching section and relocations. There is no unambiguous standalone stock KCFI preamble associated with this entry, so its standalone KCFI gate is `NOT_REQUIRED`; the exact assembly comparison covers the callback callsites in the function body.

Two clean Docker builds produced byte-identical module SHA-256 `53ced20c84cae9214caa6beffb7d20da29ef48f72162a250cd469144f0fa46fa` (5,821,048 bytes). The preserved module is [candidate_module/haptic_86938.ko](candidate_module/haptic_86938.ko). The full core report is [core_final_v2/hard_protocol_report.json](core_final_v2/hard_protocol_report.json), with assembly evidence in [comparison.json](core_final_v2/assembly/comparison.json) and Ghidra evidence in [semantic_comparison.json](core_final_v2/ghidra/semantic_comparison.json). Ghidra export provenance is recorded in [ghidra_candidate_export_run.json](ghidra_candidate_export_run.json).

## Scope and limits

This result establishes function-scoped static correspondence for the current source hash. It does not establish whole-driver equivalence or hardware behavior. The combined candidate remains unpromoted; 33 stock functions still have no reconstructed source, and the broader module audit is incomplete.
