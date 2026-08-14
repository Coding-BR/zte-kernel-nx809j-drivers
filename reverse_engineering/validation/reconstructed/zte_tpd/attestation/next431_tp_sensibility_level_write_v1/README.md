# `tp_sensibility_level_write` v1

Offline reconstruction attestation for stock entry `0x0010c3f8` in `zte_tpd`.

## Result

Status: **PARTIAL / NOT PROMOTED**.

Joern strict analysis passed with zero parse problems. The ASan/UBSan host harness passed six behavioral cases in two cycles. The canonical Docker build passed two cycles with identical artifact SHA256:

`003bedfbe72b014323f27bd9986ee4270f0087856bb9dbb6fa804383d621b150`

The source was refined using the stock Assembly and `.rodata` evidence. The logging format, normalized relocation targets and explicit AArch64 callback guard now match the observed contract. The KCFI type identity also matches (`0xc3d43b4d`). Two prologue instructions remain different, leaving an eight-byte symbol-size delta.

This microtask is therefore **not promoted as 100% equivalent**. No smartphone or hardware test was executed.

## Evidence

- `stock_decompiled.c`: Ghidra decompilation.
- `stock_pcode.jsonl`: Ghidra P-Code export.
- `stock_assembly.asm` and `candidate_assembly.asm`: Docker-generated AArch64 Assembly.
- `assembly_comparison.json`: opcode, symbol-size and relocation comparison.
- `stock_kcfi.json`, `candidate_kcfi.json`, `kcfi_comparison.json`, `kcfi_status.json`: KCFI evidence.
- `joern_gate_report.json`, `joern_gate_summary.json`, `joern_input_manifest.json`: mandatory Joern gate.
- `host_harness_report.json`: sanitized host behavior tests.
- `canonical_build_report.json` and `canonical_logs/`: two-cycle canonical Docker build and reproducibility evidence.
- `microtask_attestation.json`: machine-readable promotion decision.

## Next action

Inspect the two remaining prologue instructions against the stock P-Code and compiler variable ordering before considering promotion. The current state is safe for offline analysis only.
