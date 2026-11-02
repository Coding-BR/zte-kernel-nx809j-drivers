# zte_tpd comparator correction — 2026-11-02

## Finding

The full-module comparison reported four failures even though the differences were already covered by narrowly scoped equivalence rules. `normalized_assembly()` renders direct conditional branches as symbolic text (for example, `b.ne <syna_cdev_remove+0xa4>`), while three rules only accepted the raw 32-bit branch opcode. The final dispatch-table rule had the same mismatch for `b.hi`.

The rules now recognize symbolic `b.eq`/`b.ne` only when both sides have the identical normalized branch and target. The dispatch rule recognizes symbolic `b.hi` only inside the exact AArch64 bounds-check and `ldrh`/`br` sequence. It still requires the uniquely occurring, relocation-free 18-entry u16 table to match byte for byte. No general relocation or instruction relaxation was added.

## Result

- Global assembly comparison: **367/367 passed**, zero failures. The report records two u32 setup reorderings, two signed printk argument reorderings, one equality `CMP` operand swap, and one dispatch-table relocation equivalence.
- Docker source synchronization: passed; 4 source files copied to the curated tree.
- Docker reproducibility: two clean cycles produced the same module, SHA-256 `a1d70b9f690df1b8c12962fd9e99b933496bcb5471a3919fe4e60b0bc2b95db4` (6,384,880 bytes).
- Fresh Ghidra export: MD5 `31f846df387626b04661fd4492889a4e`, matching that module; `tpd_set_screen_off_awake` was bounded to its ELF size of 88 bytes.
- Official protocol core: `CORE_GATES_PASS`; strict Joern, Docker reproducibility, assembly/relocations, KCFI, input/map identity, and candidate P-Code shape passed. Ghidra used the declared exact-assembly fallback for this assembly-only function.

## Evidence files

- [`global_assembly_comparison.json`](global_assembly_comparison.json)
- [`candidate_global_cycle_a1/manifest.json`](candidate_global_cycle_a1/manifest.json)
- [`source_sync_plan.json`](source_sync_plan.json)
- `hard_protocol_zte_tpd_7325e49cc7b8/zte_tpd/zte_tpd.ko` (module compared globally)
- `protocol_core_final/hard_protocol_report.json`
- `protocol_core_final/input_manifest.json`
- `protocol_core_final/docker/canonical_build_report.json`
- `protocol_core_final/assembly/comparison.json`
- `protocol_core_final/ghidra/semantic_comparison.json`
- `protocol_core_final/kcfi/comparison.json`
- `protocol_core_final/joern/joern_gate_report.json`
- `candidate_ghidra_export_a1_repaired/zte_tpd.ko/manifest.json`, `functions.jsonl`, and the selected function's decompilation/P-Code

The comparator can be rerun from the repository root with:

```powershell
python workspace_tools/reconstruction_pipeline/compare_function_assembly.py --stock-dir reverse_engineering/validation/reconstructed/zte_tpd/stock_assembly_hard_suspend_show_exact_20260828 --candidate-dir reverse_engineering/validation/reconstructed/zte_tpd/attestation/sa_core_20261102_fix3/candidate_global_cycle_a1 --all-function-identities --output reverse_engineering/validation/reconstructed/zte_tpd/attestation/sa_core_20261102_fix3/global_assembly_comparison.json
```

This closes the comparator defect and the automated core gates for the selected function. The protocol report explicitly leaves promotion unauthorized; host-harness, bounded-model, sanitizers, semantic-counterexample, state-effect-ledger, LLVM-IR diagnosis, and independent-review evidence remain outstanding. No reconstruction-map status or canonical module was promoted by this process.
