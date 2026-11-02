# Next109 Validation: tpd_zlog_init

Status: PASS_OFFLINE_EXACT for microtask 007_tpd_zlog_init.

The local NX809J stock zte_tpd.ko entry at 001078c8 clears the zlog buffer
pointer at tpd_cdev + 0xbe8, clears the registration byte at +0xbf0, writes
jiffies to +0xbf8, and writes it independently to all 19 timer slots from
+0xb50 through +0xbe0. Ghidra pseudocode, P-Code, and AArch64 assembly
establish this contract. The reconstructed C source uses the typed
struct ztp_device overlay and preserves the stock loop semantics.

## Offline Evidence

| Gate | Result |
|---|---|
| Ghidra pseudocode and P-Code | PASS; all 22 stores and their proven offsets reviewed |
| Joern v4.0.548 strict | PASS; 1/1 source method, zero parser issues, zero unresolved calls |
| Isolated host harness | PASS; three direct cases in two independent ASan/UBSan cycles |
| Canonical Docker build | PASS; two independent clean cycles produced SHA-256 90c6208b7e88ff61bbcc80f782cd5f6e019820e85e36d08e4c5ac186b7657e38 |
| AArch64 assembly | PASS; .text, 184 bytes, 46 instructions, and 23 relocations match exactly |
| CFG | PASS; one block and zero direct calls on both sides |
| KCFI | PASS; function type ID 0xe5c47d60 |

The direct host harness asserts the named offsets, reset behavior, all timer
writes, preservation of count[], and preservation of adjacent fields that
the stock function does not access.

No smartphone, ADB, fastboot, insmod, scheduler timing, SPI, IRQ, display,
or touch-controller test was performed. This is an exact offline microtask,
not a claim of complete-driver or hardware equivalence.

## Artifacts

- [Attestation](microtask_attestation_v1.json)
- [Canonical build](build_report.json)
- [ASan/UBSan harness](host_harness_report.json)
- [Joern strict gate](joern_gate_summary.json)
- [Assembly comparison](assembly_comparison.json)
- [KCFI comparison](kcfi_comparison.json)
