# Next108 Validation: `zlog_register_work_deinit`

Status: `PASS_OFFLINE_EXACT` for microtask `006_zlog_register_work_deinit`.

The local stock `zte_tpd.ko` at `00107874` records the stock lifecycle log,
cancels the delayed work at `tpd_cdev + 0xa50`, calls `vfree` for the buffer at
`+0xbe8`, and clears that pointer. Ghidra pseudocode, P-Code, and AArch64
confirm the sequence and all offsets. The reconstructed source now uses the
same `printk("\\0015tpd: %s enter", "zlog_register_work_deinit")` call.

## Offline Evidence

| Gate | Result |
|---|---|
| Ghidra pseudocode and P-Code | PASS; log, cancel, free, and clear sequence reviewed |
| Joern v4.0.548 strict | PASS; 1/1 source method, 17 calls, zero parser issues, no blockers |
| Direct host harness | PASS; ten cases in two independent ASan/UBSan cycles |
| Canonical Docker build | PASS; two independent clean cycles produced SHA-256 `90c6208b7e88ff61bbcc80f782cd5f6e019820e85e36d08e4c5ac186b7657e38` |
| AArch64 Assembly | PASS; `.text`, 80 bytes, 20 instructions, and nine relocations match exactly |
| CFG | PASS; one block and three direct calls on both sides |
| KCFI | PASS; function type ID `0xe5c47d60` |

No smartphone, ADB, fastboot, `insmod`, scheduler timing, SPI, IRQ, display,
or touch-controller test was performed. This is an exact offline microtask,
not a claim of complete-driver or hardware equivalence.

## Artifacts

- [Attestation](microtask_attestation_v1.json)
- [Canonical build](build_report.json)
- [ASan/UBSan harness](host_harness_report.json)
- [Joern strict gate](joern_gate_summary.json)
- [Assembly comparison](assembly_comparison.json)
- [KCFI comparison](kcfi_comparison.json)
