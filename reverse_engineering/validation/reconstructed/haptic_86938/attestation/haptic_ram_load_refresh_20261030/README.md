# ram_load current-source attestation

Stock identity: ram_load@0010b2e0, 872 bytes (218 AArch64 instructions), KCFI type ID 0x879dc3f4. Current source SHA-256: 30527b298f497433acd79f0a626469519a26ca62c33b12af8a6d058cbd0cf4a6.

## Result

The current source passes all eight automated function-scoped core gates in [the final protocol report](core_final_v5/hard_protocol_report.json). The pinned Docker toolchain extracted the function by ELF symbol extent: stock and candidate each have 872 bytes and 218 instructions, and the relocation-aware assembly comparison passes. KCFI type IDs, section, and symbol sizes match. The two clean Docker build outputs are byte-identical at SHA-256 abf59d499834b0909141b4256c09a4c0ef4cb14fab2b41c5e069b30da4f1a948; the preserved candidate module is [here](candidate_module/haptic_86938.ko).

ram_load retries firmware loading according to the stock delayed-work policy, checks the firmware checksum, copies the payload into a zeroed container, calls the operations-table updater, and invokes get_ram_num after success.

## Ghidra boundary issue and resolution

The first candidate Ghidra auto-analysis export assigned only 820 bytes to ram_load, truncating a 52-byte tail. That was a function-boundary error in Ghidra analysis, not a candidate ELF symbol-size difference. The candidate ELF symbol is 872 bytes. After extending the Ghidra function body at candidate entry 001042ec to that ELF-bounded 872-byte range, a fresh export records the complete body. The boundary decision is independently supported by the Docker ELF-symbol extraction and the passing 218-instruction, relocation-aware assembly comparison.

Ghidra still reports bad instruction data near 0x00104654, and its normalized C does not match stock. The protocol therefore uses the explicit exact-assembly-island fallback: it relies on ELF-bounded instruction bytes, relocation parity, fresh module identity, and matching P-Code operation shape. It does not claim normalized-C equivalence or treat decompiler output as authoritative. See the [semantic comparison](core_final_v5/ghidra/semantic_comparison.json), [assembly comparison](core_final_v5/assembly/comparison.json), and [Ghidra export run record](ghidra_candidate_export_run.json).

## Evidence and limits

- Candidate module SHA-256: abf59d499834b0909141b4256c09a4c0ef4cb14fab2b41c5e069b30da4f1a948; size 5,820,144 bytes.
- Candidate Ghidra export: [candidate_ghidra_v1/haptic_86938.ko](candidate_ghidra_v1/haptic_86938.ko); repair and export logs are under [ghidra_run_v1](ghidra_run_v1).
- All eight core gates pass: Docker reproducibility, assembly/relocations, Ghidra P-Code shape, KCFI, Joern scoped checks, input identity, and map identity.
- The broader driver audit remains incomplete. Its report flags the absent curated .ko, vermagic, aliases, undefined-symbol parity, and candidate-versus-fresh-module parity. Those whole-module checks do not pass here.
- This is function-scoped static evidence. It does not establish whole-driver semantic equivalence, hardware behavior, or module promotion.

The report is bound to the source hash above. The status map remains candidate_under_static_validation pending independent review and broader promotion requirements.
