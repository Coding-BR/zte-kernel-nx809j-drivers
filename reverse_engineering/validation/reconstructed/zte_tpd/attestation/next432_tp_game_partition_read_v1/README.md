# `tp_game_partition_read` v1

Offline reconstruction attestation for stock entry `0x0010c504` in `zte_tpd`.

## Result

Status: **OFFLINE EXACT / HARDWARE DEFERRED**.

Joern strict analysis passed with zero parse problems. The ASan/UBSan host harness passed five behavioral cases in two cycles. The canonical Docker build passed two cycles with identical artifact SHA256:

`69c3ea6cae47fe301d6a6820d8e4e7198ff511f23c29be93691dace3b9a6c33e`

The recovered source uses the stock `.rodata` logging string and lets the kernel compiler provide the stack-protector canary. The isolated candidate exactly matches stock: 54 AArch64 instructions, 216 symbol bytes, the KCFI type ID `0xf4e9d97c`, and normalized relocation targets.

This is an **offline exact** result, not a claim of hardware equivalence. No smartphone or hardware test was executed.

## Evidence

- `stock_decompiled.c`: Ghidra decompilation.
- `stock_pcode.jsonl`: Ghidra P-Code export.
- `stock_assembly.asm` and `candidate_assembly.asm`: Docker-generated AArch64 Assembly.
- `assembly_comparison.json`: passing opcode, symbol-size and relocation comparison.
- `stock_kcfi.json`, `candidate_kcfi.json`, `kcfi_comparison.json`, `kcfi_status.json`: KCFI evidence.
- `joern_gate_report.json`, `joern_gate_summary.json`, `joern_input_manifest.json`: mandatory Joern gate.
- `host_harness_report.json`: sanitized host behavior tests.
- `canonical_build_report.json` and `canonical_logs/`: two-cycle canonical Docker build and reproducibility evidence.
- `microtask_attestation.json`: machine-readable promotion decision.

## Remaining gate

Hardware/procfs validation remains deferred until the controlled smartphone test stage.
