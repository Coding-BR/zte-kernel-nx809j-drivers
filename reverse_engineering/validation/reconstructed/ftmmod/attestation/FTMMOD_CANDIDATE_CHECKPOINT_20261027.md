# FTMMOD candidate checkpoint — 2026-10-27

This is a draft reconstruction checkpoint. The hard protocol has not passed in full and no microtask promotion or hardware equivalence is authorized.

- Candidate source: `kernel_development/drivers/reconstructed/ftmmod/ftmmod.c`, SHA-256 `41e22f79185d29890ebb4e06e5fa6dfb3e7b849d4192a042bc21500916758da8`.
- Two clean Docker builds of the pinned target produced identical candidate bytes, SHA-256 `6e5eb9147bf3061779d0f3059cd8efad291b3a859e7f7689a8e52134df0079de`.
- The r3 core report records PASS for input and map identity, Joern scoped analysis and slice, reproducible Docker build, KCFI, and assembly/relocations. Its assembly comparison covers all nine selected functions and reports matching instructions, referenced relocation identities, sections, and sizes.
- The candidate Ghidra export is bound to the r2 build by `candidate_ghidra_provenance_20261027_r1.json`. Ghidra reported an unsupported DWARF version while importing debug sections; its ELF analysis completed and exported nine functions. The export used Java 21, while the environment lock records Java 26 for the prior stock analysis.
- The r3 `CANDIDATE_GHIDRA_PCODE` gate is FAIL: `show_simlock_status` and `ftm_probe` differ in one P-Code operation each. The stock `.bss` has `ftm_sysdev_priv_data.0` at offset 0, while the candidate has it at offset 8. Ghidra's loaded addresses give the stock access a low-page offset of `0xfe0` and the candidate access offset zero, producing `INT_ADD` versus `COPY`. This is a diagnosis to investigate, not an equivalence approval.
- The stock and candidate local state objects have the same names and widths, but their `.bss` order differs. Data layout and relocation effects require further analysis and independent review.

Evidence is in `hard_protocol_core_20261027_r2/`, `hard_protocol_core_20261027_r3/`, `candidate_ghidra_export_20261027_r1/`, and the vendor symbol provenance JSON alongside this file. No device execution is evidenced by this checkpoint.

The exact job input bytes for r2 and r3 are preserved as `job_input_exact.json` inside each run directory, matching the job hashes in their input manifests. The active job uses canonical LF line endings for Git; the snapshots preserve the historical mixed line endings. Joern source CPG files are retained alongside the reports.
