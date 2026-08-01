# Next121 Revalidation: `zlog_register_work`

Status: `PASS_OFFLINE_EXACT` for microtask `005_zlog_register_work`.

The local NX809J userdebug stock module uses this delayed-work callback to
inspect bit zero of `tpd_cdev + 0xbf0`. It calls `tpd_zlog_register` only when
that bit is clear. The reconstructed source intentionally preserves the stock
precondition that `tpd_cdev` is valid; there is no unsupported null guard.

## Offline Evidence

| Gate | Result |
|---|---|
| Ghidra pseudocode and P-Code | PASS; global load, bit test, branch, and direct call reviewed at `00107844` |
| Joern v4.0.548 strict | PASS; 1/1 source method, six calls, one control structure, zero parser issues, zero unresolved calls, and no mapped call deltas |
| Direct host harness | PASS; direct callback coverage in ten cases across two independent ASan/UBSan cycles; executable SHA-256 `7200189d6f3dd0efd853a01d49df851e057f251d6a60eacd77032373077e7748` |
| Canonical Docker build | PASS; two clean independent cycles reproduced module SHA-256 `c27e646c0deef520806e66a82100cd9397870bec5619bf90655b03f6477edaf4` |
| AArch64 assembly | PASS; `.text`, 44 bytes, 11 instructions, two normalized non-branch relocations, and the resolved direct call match exactly |
| CFG | PASS; three blocks, one edge, and one direct call on both sides |
| KCFI | PASS; callback type ID `0xa607748c`, `.text` placement, and 44-byte symbol size match stock |

The raw relocation trace includes the direct `tpd_zlog_register` branch. The
normalized assembly comparison resolves that branch target and retains the two
global-address relocation identities.

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
