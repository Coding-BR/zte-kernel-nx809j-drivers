# Next122 Revalidation: `zlog_register_work_deinit`

Status: `PASS_OFFLINE_EXACT` for microtask `006_zlog_register_work_deinit`.

The local NX809J userdebug stock function logs teardown, synchronously cancels delayed work at `tpd_cdev + 0xa50`, frees the zlog buffer at `+0xbe8`, and clears that pointer. Ghidra pseudocode, P-Code, and AArch64 establish that exact order and the reconstructed source emits the same sequence.

## Offline Evidence

| Gate | Result |
|---|---|
| Ghidra pseudocode and P-Code | PASS; log, cancel, free, clear, offsets and call order reviewed at `00107874` |
| Joern v4.0.548 strict | PASS; 1/1 source method, ten calls, zero control structures, zero parser issues, zero unresolved calls, and no mapped call deltas |
| Direct host harness | PASS; direct teardown coverage in ten cases across two independent ASan/UBSan cycles; executable SHA-256 `7200189d6f3dd0efd853a01d49df851e057f251d6a60eacd77032373077e7748` |
| Canonical Docker build | PASS; two clean independent cycles reproduced module SHA-256 `c27e646c0deef520806e66a82100cd9397870bec5619bf90655b03f6477edaf4` |
| AArch64 assembly | PASS; `.text`, 80 bytes, 20 instructions, six normalized non-branch relocations, and all resolved branch targets match exactly |
| CFG | PASS; one block, zero edges, and three direct calls on both sides |
| KCFI | PASS; type ID `0xe5c47d60`, `.text` placement, and 80-byte symbol size match stock |

The raw relocation trace contains nine relocations, including calls to `_printk`, `cancel_delayed_work_sync`, and `vfree`. The normalized comparison resolves those branch targets and retains six remaining relocation identities.

No smartphone, ADB, fastboot, `insmod`, scheduler timing, memory pressure, SPI, IRQ, display, or touch-controller test was performed. This is not a claim of complete-driver or physical-hardware equivalence.

## Artifacts

- [Microtask attestation](microtask_attestation_v1.json)
- [Canonical build](build_report.json)
- [ASan/UBSan host harness](host_harness_report.json)
- [Joern strict gate](joern_gate_summary.json)
- [Assembly comparison](assembly_comparison.json)
- [KCFI comparison](kcfi_comparison.json)
- [CFG comparison](cfg_comparison.json)
