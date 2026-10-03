# Next123 Revalidation: `tpd_zlog_init`

Status: `PASS_OFFLINE_EXACT` for microtask `007_tpd_zlog_init`.

The local NX809J userdebug stock function at `001078c8` clears the zlog buffer
pointer at `tpd_cdev + 0xbe8`, clears the registration byte at `+0xbf0`, writes
`jiffies` to `+0xbf8`, then reads and writes `jiffies` independently for each
of the 19 timer slots from `+0xb50` through `+0xbe0`. Ghidra pseudocode,
P-Code, and AArch64 establish that exact contract. The reconstructed source
emits the same AArch64 instruction and relocation sequence.

## Offline Evidence

| Gate | Result |
|---|---|
| Ghidra pseudocode and P-Code | PASS; the 22 proven stores, their offsets and their order were reviewed at `001078c8` |
| Joern v4.0.548 strict | PASS; 1/1 source method, 15 graph calls, one control structure, zero parser issues, zero unresolved calls and no mapped call deltas |
| Direct host harness | PASS; three direct initialization and reinitialization cases in two independent ASan/UBSan cycles; executable SHA-256 `fca2f244dfd415e7950b55ae44bb198ce92cf6c4b110fd7a2fe3905a64d3ca9a` |
| Canonical Docker build | PASS; two clean independent cycles reproduced module SHA-256 `c27e646c0deef520806e66a82100cd9397870bec5619bf90655b03f6477edaf4` |
| AArch64 assembly | PASS; `.text`, 184 bytes, 46 instructions and 23 relocations match exactly |
| CFG | PASS; one block, zero edges and zero direct calls on both sides |
| KCFI | PASS; type ID `0xe5c47d60`, `.text` placement and 184-byte symbol size match stock |

No smartphone, ADB, fastboot, `insmod`, scheduler timing, SPI, IRQ, display or
touch-controller test was performed. This is not a claim of complete-driver or
physical-hardware equivalence.

## Artifacts

- [Microtask attestation](microtask_attestation_v1.json)
- [Canonical build](build_report.json)
- [ASan/UBSan host harness](host_harness_report.json)
- [Joern strict gate](joern_gate_summary.json)
- [Assembly comparison](assembly_comparison.json)
- [KCFI comparison](kcfi_comparison.json)
- [CFG comparison](cfg_comparison.json)
