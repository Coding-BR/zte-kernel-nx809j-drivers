# Next120 Revalidation: `zlog_register_work_init`

Status: `PASS_OFFLINE_EXACT` for microtask `004_zlog_register_work_init`.

This is a clean revalidation of the reconstructed function against the local
NX809J userdebug stock `zte_tpd.ko`. It supersedes neither hardware validation
nor the separate microtask for the delayed-work callback body.

## Offline Evidence

| Gate | Result |
|---|---|
| Ghidra pseudocode and P-Code | PASS; reviewed against entry `001077c8`, including the `tpd_cdev + 0xa50` delayed-work state and log arguments |
| Joern v4.0.548 strict | PASS; 1/1 source method, six calls, zero parser issues, zero unresolved calls, and no mapped call deltas |
| Direct host harness | PASS; direct lifecycle coverage in ten cases across two independent ASan/UBSan cycles; executable SHA-256 `7200189d6f3dd0efd853a01d49df851e057f251d6a60eacd77032373077e7748` |
| Canonical Docker build | PASS; two clean independent cycles reproduced module SHA-256 `c27e646c0deef520806e66a82100cd9397870bec5619bf90655b03f6477edaf4` |
| AArch64 assembly | PASS; `.text`, 120 bytes, 30 instructions, 10 normalized non-branch relocations, resolved strings, and symbol size match exactly |
| CFG | PASS; one block, zero edges, and two direct calls on both sides |
| KCFI | PASS; initializer type ID `0xe5c47d60` and stored delayed-work callback type ID `0xa607748c` match stock |

The assembly comparison includes branch relocations in its raw relocation
trace. Its normalized semantic comparison resolves the two direct branch
targets and records ten remaining relocation identities. The callback body
`zlog_register_work` is not promoted by this package; only the callback pointer
type required by `INIT_DELAYED_WORK` is checked here.

No smartphone, ADB, fastboot, `insmod`, scheduler timing, SPI, IRQ, display,
or touch-controller test was performed. This is not a claim of complete-driver
or physical-hardware equivalence.

## Artifacts

- [Microtask attestation](microtask_attestation_v1.json)
- [Canonical build](build_report.json)
- [ASan/UBSan host harness](host_harness_report.json)
- [Joern strict gate](joern_gate_summary.json)
- [Assembly comparison](assembly_comparison.json)
- [KCFI comparison](kcfi_comparison.json)
- [CFG comparison](cfg_comparison.json)
