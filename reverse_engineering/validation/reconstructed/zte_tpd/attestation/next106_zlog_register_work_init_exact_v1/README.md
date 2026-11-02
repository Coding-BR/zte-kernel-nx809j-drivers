# Next106 Validation: `zlog_register_work_init`

Status: `PASS_OFFLINE_EXACT` for microtask `004_zlog_register_work_init`.

The stock function is at `001077c8` in the local NX809J userdebug
`zte_tpd.ko`. Ghidra pseudocode, P-Code, and AArch64 show one observable log
call followed by the delayed-work initialization at `tpd_cdev + 0xa50`. The
reconstructed source now uses the exact stock format
`"\\0015tpd: %s enter"` and argument `"zlog_register_work_init"`.

## Offline Evidence

| Gate | Result |
|---|---|
| Ghidra pseudocode and P-Code | PASS; effects, offsets, callback, and log arguments reviewed |
| Joern v4.0.548 strict | PASS; 1/1 source method, six calls, zero parser issues, no blockers |
| Direct host harness | PASS; ten cases in two independent ASan/UBSan cycles; executable SHA-256 `41d05a7f3c82acaabbac1754bbd52460ec27ea589d52cd38da2dc2d83afdc733` |
| Canonical Docker build | PASS; two independent clean cycles produced SHA-256 `5a88fc11f23f9271b316a5b76ded0da13d498153a7d0988b4493149764c89ea0` |
| AArch64 Assembly | PASS; `.text`, 120 bytes, 30 instructions, 12 normalized relocations, and the resolved printk format match exactly |
| CFG | PASS; one block and two direct calls on both sides |
| KCFI | PASS; function type ID `0xe5c47d60`; delayed-work callback type ID `0xa607748c` |

The callback body `zlog_register_work` is deliberately not promoted here. Its
KCFI type is verified because `INIT_DELAYED_WORK` stores its function pointer,
but its own implementation needs an independent microtask and strict Assembly
comparison.

No smartphone, ADB, fastboot, `insmod`, scheduler timing, SPI, IRQ, display,
or touch-controller test was performed. This exact offline result does not
claim complete-driver or hardware equivalence.

## Artifacts

- [Attestation](microtask_attestation_v1.json)
- [Canonical build](build_report.json)
- [ASan/UBSan harness](host_harness_report.json)
- [Joern strict gate](joern_gate_summary.json)
- [Assembly comparison](assembly_comparison.json)
- [KCFI comparison](kcfi_comparison.json)
