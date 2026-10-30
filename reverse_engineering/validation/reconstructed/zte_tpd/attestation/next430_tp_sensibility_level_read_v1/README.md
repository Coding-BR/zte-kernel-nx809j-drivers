# `tp_sensibility_level_read` v1

Offline reconstruction attestation for stock entry `0x0010c304` in `zte_tpd`.

## Result

Status: **PARTIAL / NOT PROMOTED**.

Joern strict analysis passed with zero parse problems. The ASan/UBSan host harness passed four behavioral cases in two cycles. The canonical Docker build passed two cycles with identical artifact SHA256:

`3462dcf890894d89f3c3c7d94d0e356695b4bfdc71d53f53d2a9cc1e415a8577`

The source was refined using the stock Assembly and `.rodata` evidence. The logging format and normalized relocation targets now match, and the stack frame is the same size. The remaining difference is one AArch64 instruction and four symbol bytes in the stack-guard/control-flow path. KCFI type identity matches (`0xf4e9d97c`), but the symbol-size surface does not.

This microtask is therefore **not promoted as 100% equivalent**. No smartphone or hardware test was executed.

## Evidence

- `stock_decompiled.c`: Ghidra decompilation.
- `stock_pcode.jsonl`: Ghidra P-Code export.
- `stock_assembly.asm` and `candidate_assembly.asm`: Docker-generated AArch64 Assembly.
- `assembly_comparison.json`: opcode, symbol-size and relocation comparison.
- `stock_kcfi.json`, `candidate_kcfi.json`, `kcfi_comparison.json`, `kcfi_status.json`: KCFI evidence.
- `joern_gate_report.json`, `joern_gate_summary.json`: mandatory Joern gate.
- `host_harness_report.json`: sanitized host behavior tests.
- `canonical_build_report.json`: two-cycle canonical Docker build and reproducibility evidence.
- `microtask_attestation.json`: machine-readable promotion decision.

## Next action

Inspect the stock and candidate prologue with the Assembly/P-Code pair to account for the single extra instruction before considering promotion. The current state is safe for offline analysis only.
