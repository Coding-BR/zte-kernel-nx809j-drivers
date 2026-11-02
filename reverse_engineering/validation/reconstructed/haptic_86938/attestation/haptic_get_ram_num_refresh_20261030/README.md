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

## Current Docker snapshot revalidation — 2026-11-02

The Docker workspace did not previously contain `curated/haptic_86938`. The current versioned source was synchronized there and hash-checked (194 files; initial manifest SHA-256 `611ffda4facdab3c7b7a5637dfc8ca19eff1b710c8487decbccc6e84c181d45f`; final matching source/curated manifest SHA-256 `7d830641989ae7b89065c34258a94d23ce0c64f25a57cd34130d7bbd3c0cbad0`). Two fresh builds from that curated snapshot produced the same module SHA-256 `d6177430412b5355d6b662eb79b2b8939b14a48c3c32f717b6f4c8e8e65e569f`, matching the repository candidate `.ko`; the reconstruction map now binds this candidate hash.

The first Ghidra 12.1.2 export had 176 functions, 13 ELF-confirmed truncated bodies, and 16 spurious interior entries. The repaired export has 160 functions and an ELF body-size audit confirms all 160 match their unique same-name symbols. The P-Code error at `ram_load@00105cb4` was fixed by applying the kernel-header-backed `__noreturn` property to `__fortify_panic`; the final export has zero decompiler errors. The raw export, repair log, and before/after audits are preserved under `../haptic_current_docker_snapshot_20261102/`.

`get_ram_num` is at candidate entry `00106020`, decompiles to 460 bytes, and has a current candidate P-Code export. The protocol rerun passes all required automated gates, including exact assembly/relocation, Ghidra/P-Code, strict Joern, Docker reproducibility, input identity and current map identity. Final report: `../haptic_current_docker_snapshot_20261102/core_snapshot_final_20261102/hard_protocol_report.json`.

The function remains `candidate_under_static_validation` and the run does not authorize promotion. The whole-driver audit remains incomplete because the 160 mappings have not passed independent review. The Ghidra boundary/decompiler defects are resolved; whole-driver static verification and hardware behavior remain unestablished.

## Status and limits

The map retains `candidate_under_static_validation` and `PROVEN_OFFLINE_EXACT`. Whole-driver equivalence and hardware behavior are not established, and module promotion remains unauthorized.
