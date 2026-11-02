# `tp_pen_only_read` v1

Offline reconstruction attestation for stock entry `0x0010c724` in `zte_tpd`.

## Result

Status: **OFFLINE EXACT / HARDWARE DEFERRED**.

The mandatory Joern strict gate passed with zero parse problems. The isolated
ASan/UBSan host harness passed four cases in two cycles. The canonical Docker
build passed two cycles with identical artifact bytes and SHA256
`e5dd75b1ada0aff906d27e1501bf2b50cf8b41ea47cbd32880b6d68f144153df`.

The candidate matches stock at function level: 60 AArch64 instructions, 240
symbol bytes, identical resolved relocations, and KCFI type ID
`0xf4e9d97c` with matching symbol size. The verified contract uses the
callback at `tpd_cdev + 0xf80`, the value byte at `tpd_cdev + 0x441`, and the
stock ten-byte `snprintf` buffer.

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
