# `tp_game_partition_write` v1

Offline reconstruction attestation for stock entry `0x0010c5e0` in `zte_tpd`.

## Result

Status: **OFFLINE EXACT / HARDWARE DEFERRED**.

The mandatory Joern strict gate passed with zero parse problems. The isolated
ASan/UBSan host harness passed five cases in two cycles. The canonical Docker
build passed two cycles with identical artifact bytes and SHA256
`e31fa0680fdf8902a86f2c1c3cfb04ed381cb549b26756bfc21b0206f81ab118`.

The candidate matches stock at function level: 80 AArch64 instructions, 320
symbol bytes, identical normalized relocation targets, and KCFI type ID
`0xc3d43b4d` with matching symbol size.

This is an **offline exact** result, not a claim of hardware equivalence. No
smartphone or hardware test was executed.

## Evidence

- `stock_decompiled.c`, `stock_pcode.jsonl`: Ghidra exports.
- `stock_assembly.asm`, `candidate_assembly.asm`: AArch64 Assembly.
- `assembly_comparison.json`: instruction, section, size and relocation gate.
- `stock_kcfi.json`, `candidate_kcfi.json`, `kcfi_comparison.json`, `kcfi_status.json`: KCFI gate.
- `joern_gate_report.json`, `joern_gate_summary.json`, `joern_input_manifest.json`: mandatory Joern gate.
- `host_harness_report.json`: sanitized host behavior tests.
- `canonical_build_report.json` and `canonical_logs/`: two-cycle Docker reproducibility evidence.
- `candidate_zte_tpd.ko`: promoted offline candidate artifact.
- `microtask_attestation.json`: machine-readable promotion decision.

## Remaining gate

Hardware/procfs validation remains deferred until the controlled NX809J test
stage.
