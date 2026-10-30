# `get_ram_num` current-source attestation

Stock identity: `get_ram_num@0010b648`, 460 bytes (115 AArch64 instructions). Current candidate source SHA-256: `a2a1035fe5596a4b82e7d2e91d9f689ab3d1893de3278f9d2648f93b7d70077a`.

## Diagnosis

The function source had not changed: its current SHA-256 already matched the earlier attestation. The stale binding was in the surrounding evidence. `core_final_v2` captured an older whole-driver source inventory and reconstruction-map hash; since then, other candidate sources, the Makefile, and the map changed. Its candidate module (`53ced20c…`) and Ghidra export (129 functions, `get_ram_num` at `00104658`) therefore no longer represented the current driver tree.

The first fresh protocol run rebuilt the current tree in Docker and correctly stopped because the supplied Ghidra export did not match that new module. I preserved the old artifacts, exported the new reproducible module through Ghidra 12.1.2, and reran the protocol with the refreshed export. The candidate source itself did not need another code change.

## Verified

- `core_final_v4_execution` passed all required gates. `core_final_v5_execution` repeated the checks against the final map and passed `MAP_IDENTITY` as well.
- Stock and candidate match exactly: 115 AArch64 instructions, 460 bytes, identical section and relocations.
- Strict normalized Ghidra C and P-Code comparisons pass without a decompiler fallback. The fresh export contains 132 functions; `get_ram_num` is at `00104850` and remains 460 bytes.
- Two clean Docker builds produced byte-identical modules with SHA-256 `87bc5d418e961f591706261ef74290a4e9fa7b296b851c0b52e909d12e5b44ce` (5,906,088 bytes).
- Joern scoped analysis and usage slice pass. The final input manifest binds the current candidate source and reconstruction map.
- KCFI entry-preamble checking is `NOT_REQUIRED`: no unambiguous standalone stock preamble belongs to this entry. The complete function body and its indirect callback callsites are covered by the exact assembly comparison.

Reports: [final core report](core_final_v5_execution/hard_protocol_report.json), [assembly comparison](core_final_v4_execution/assembly/comparison.json), [Ghidra semantic comparison](core_final_v4_execution/ghidra/semantic_comparison.json), [fresh Ghidra export provenance](ghidra_candidate_export_run_v2.json).

## Status and limits

The map retains `candidate_under_static_validation` and `PROVEN_OFFLINE_EXACT`. Whole-driver equivalence and hardware behavior are not established, and module promotion remains unauthorized.
