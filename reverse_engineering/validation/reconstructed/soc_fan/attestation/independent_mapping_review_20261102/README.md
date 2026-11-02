# soc_fan independent mapping review — 2026-11-02

All fifteen stock-to-source mappings were rechecked against the current candidate module. I freshly extracted the candidate assembly with the pinned Docker LLVM toolchain and compared every function with its same-named stock function. All fifteen pass exact AArch64 instruction, relocation, section, and symbol-size checks; no relocation normalization was needed. Candidate assembly records are complete for every function. See `assembly_comparison.json` and `mapping_review.json` for the per-function results.

The map now records `PROMOTED_OFFLINE_EXACT`, `OFFLINE_EXACT`, and `independent_review: PASS` for all functions. Existing per-function stock P-Code and core protocol evidence remain attached to each mapping. The full module audit and hardware state are recorded after the map update below.
