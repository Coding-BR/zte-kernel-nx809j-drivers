# RDBG candidate identity and Ghidra repair — 2026-11-02

## Root cause

The repository candidate was stale relative to the current reconstructed source. Its SHA-256 was `7b8ec475c9e72c1c0163c57a609cf1158b3db2425828e158f27773e563abbae70` (781720 bytes); two clean Docker cycles from current source both produced SHA-256 `6a25975d91059eae065cd28058515a767ceefe6ec4210347bc5712d3071ca2bc` (781712 bytes). The only changed allocated runtime strings were the three source-path strings: the old module embedded `/zte_tpd/...`, while current builds embed `/rdbg/...` due to the pinned `KCFLAGS` path mapping. This left the old `.ko`, map hash, and Ghidra export bound to different build inputs.

The fresh Docker module was copied to both `kernel_development/drivers/reconstructed/rdbg/rdbg.ko` and `engenharia/curated/rdbg/rdbg.ko`; the reconstruction map now binds the fresh SHA-256. The pre-sync audit at `docker_curated_audit_final_20261102.json` captured the stale curated copy. After updating that generated binary, `docker_curated_audit_verified_20261102.json` reports matching candidate/map/fresh hashes and runtime content/layout, reproducible builds, and no module errors. Its eight warnings are the still-unreviewed function mappings.

## Ghidra evidence

The fresh import changed `init_module`'s Ghidra entry from `00101d88` to `00101d78`; the initial script run correctly stopped when the old address did not exist. The raw fresh export then identified four truncated function bodies and produced the new verified repair arguments:

| Function | Fresh Ghidra entry | Raw bytes | ELF `STT_FUNC` bytes | Repaired bytes |
|---|---:|---:|---:|---:|
| `init_module` | `00101d78` | 752 | 824 | 824 |
| `rdbg_open` | `00100698` | 1,488 | 1,532 | 1,532 |
| `rdbg_probe` | `00100c98` | 544 | 600 | 600 |
| `rdbg_write` | `00101290` | 1,064 | 1,068 | 1,068 |

`ExtendGhidraFunctionBodies.java` applied those sizes from unique ELF symbols, then `ExportKernelModuleAnalysis.java` exported the module with Ghidra 12.1.2. The export MD5 (`0e992a9ab5090ea892353a52d01cf8d4`) matches the current module. The final boundary audit reports 8 exact name/size matches, zero mismatches, all 8 functions decompiled, and zero decompiler errors. Reports: `ghidra_function_boundary_audit_fresh_raw.json` and `ghidra_function_boundary_audit_fresh_final.json`; export: `candidate_ghidra_fresh_20261102/rdbg.ko/`.

## Protocol result and remaining status

The final protocol report is `protocol_core_final_fresh_20261102/hard_protocol_report.json` (`CORE_GATES_PASS`). All 8 automated core gates pass: assembly/relocations, Ghidra/P-Code, reproducible Docker build, input identity, Joern scoped analysis, Joern slice, KCFI, and map identity. The Docker curated audit still does not mark RDBG static-verified because all 8 mappings require independent review; no hardware verification was run. This repair fixes build identity and Ghidra boundaries. It does not complete the reconstruction or authorize loading the module.
