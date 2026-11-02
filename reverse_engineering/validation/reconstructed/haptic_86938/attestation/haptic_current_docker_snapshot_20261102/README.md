# haptic_86938 current Docker snapshot — 2026-11-02

## Source snapshot and build

`engenharia/curated/haptic_86938` was created from the versioned driver tree and synchronized by SHA-256. The initial 194-file tree digest was `611ffda4facdab3c7b7a5637dfc8ca19eff1b710c8487decbccc6e84c181d45f`. After binding the candidate hash in the map and refreshing `STATUS.md` with the final report links, the final source and curated manifests match at `7d830641989ae7b89065c34258a94d23ce0c64f25a57cd34130d7bbd3c0cbad0`. No stale source files were removed. The final report is `curated_source_sync.json`.

Two clean builds from the curated snapshot, using image `nubia-sm8850-kernel-builder:nx809j-repro` (`sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`) and the pinned NX809J toolchain, produced identical module SHA-256 `d6177430412b5355d6b662eb79b2b8939b14a48c3c32f717b6f4c8e8e65e569f` (6,581,144 bytes). That fresh module was copied into the Docker curated tree after the clean builds and target checks passed; the repository candidate `.ko` has the same hash.

The audit passes AArch64/REL, alias, undefined-symbol, namespace, target-kernel identity, vermagic, reproducible-build, allocated runtime content, section layout, modinfo parity, and candidate-hash binding. Its full-driver status remains `incomplete_or_failed` because the 160 reconstruction mappings have not passed independent review. `static_verified` and hardware verification are empty. See `docker_curated_rebuild_audit_snapshot_final.json`.

## Current Ghidra export

The first Ghidra 12.1.2 export had 176 functions. A comparison against unique same-name ELF `STT_FUNC` symbols found 13 truncated bodies and 16 spurious interior entries. The raw export and before audit are retained for diagnosis; do not use that export for semantic comparisons.

`ExtendGhidraFunctionBodies.java` was applied to the 13 functions using sizes from the current Docker-built module's ELF symbol table. This removed the 16 interior entries and brought the export to 160 functions. `audit_ghidra_function_boundaries.py` then confirmed 160/160 exact name-and-size matches, with no ambiguous names or remaining mismatches. The before and after reports are `ghidra_function_boundary_audit_before.json` and `ghidra_function_boundary_audit_final.json`.

The remaining P-Code warning came from Ghidra treating `__fortify_panic` as returning. The pinned kernel source declares it `__noreturn` in `include/linux/fortify-string.h` (SHA-256 `f4c3d99baaaa0c8e3db8106ec3e2fb178ac789878caa672441244e67118a1b7d`). `SetGhidraFunctionNoReturn.java` applied that source-backed property and the final export completed without decompiler errors: all 160 functions decompile. The repaired export is `ghidra_candidate_export_final/haptic_86938.ko`; its run log is `ghidra_noreturn_repair_console.log`.

## `get_ram_num` core revalidation

The protocol was rerun against the Docker curated source tree, repaired Ghidra export, and reconstruction map bound to candidate SHA-256 `d6177430412b5355d6b662eb79b2b8939b14a48c3c32f717b6f4c8e8e65e569f`. `get_ram_num@00106020` passes all automated core gates: assembly/relocations, candidate Ghidra/P-Code, Docker reproducibility, input identity, Joern scoped analysis, Joern usages slice and map identity. KCFI entry-preamble checking is `NOT_REQUIRED` for this function. Final report: `core_snapshot_final_20261102/hard_protocol_report.json`.

The consolidated repair record, including module, Ghidra, ELF-boundary, kernel-header, Docker, map and core-report hashes, is `ghidra_function_boundary_repair.json`.

The full Docker audit still reports `incomplete_or_failed` because the 160 mappings have not passed independent review (158 remain `candidate_under_static_validation`; `awrw_show` and `awrw_store` are documented hardening deviations). This function's core pass does not authorize promotion. Bounded-model, host-harness, semantic-counterexample, state/effect, sanitizer and independent-review evidence remain required; the driver is incomplete.
