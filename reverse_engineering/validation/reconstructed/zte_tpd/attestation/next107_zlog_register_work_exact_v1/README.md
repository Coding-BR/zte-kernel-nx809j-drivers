# Next107 Validation: `zlog_register_work`

Status: `PASS_OFFLINE_EXACT` for microtask `005_zlog_register_work`.

Ghidra pseudocode, P-Code, and AArch64 show the exact stock sequence: load
`tpd_cdev`, test bit zero of `zlog_registered` at offset `0xbf0`, and call
`tpd_zlog_register` only when that bit is clear. The previous reconstructed
source added a null guard not present in stock. Removing that guard restores
the observed precondition and the exact 44-byte callback body.

## Offline Evidence

| Gate | Result |
|---|---|
| Ghidra pseudocode and P-Code | PASS; load, bit test, branch, and direct call reviewed |
| Joern v4.0.548 strict | PASS; 1/1 source method, six calls, zero parser issues, no blockers |
| Direct host harness | PASS; ten cases in two independent ASan/UBSan cycles |
| Canonical Docker build | PASS; two independent clean cycles produced SHA-256 `cc976c5f4202556d9e9430f5b40ea3d94847341679b5bb493b96999c0c08d81f` |
| AArch64 Assembly | PASS; `.text`, 44 bytes, 11 instructions, and three relocations match exactly |
| CFG | PASS; three blocks and one direct call on both sides |
| KCFI | PASS; function type ID `0xa607748c` |

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
