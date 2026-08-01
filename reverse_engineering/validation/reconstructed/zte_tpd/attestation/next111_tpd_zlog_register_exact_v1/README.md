# Next111 Validation: tpd_zlog_register

Status: PASS_OFFLINE_EXACT for microtask 001_tpd_zlog_register.

The local NX809J stock `zte_tpd.ko` entry at `0010688c` first checks the
client pointer at `cdev + 0xa48`, registers `zlog_tp_dev` when empty, and sets
the registration byte at `+0xbf0` only in that registration path. It stores the
`vmalloc_noprof(0x800)` result at `+0xbe8`, reads the probe-failure byte at
`+0xc00` as unsigned, and uses the global `tpd_cdev` buffer for `snprintf`.

The stock behavior after a failed allocation is intentionally preserved: it
logs `ztp_zlog_buffer`, invokes `memset` with the stored null buffer, then
continues to the probe-failure notification path. This is established by local
Ghidra P-Code and exact AArch64 assembly; it is not executed in a kernel or on
the smartphone by this validation.

## Offline Evidence

| Gate | Result |
|---|---|
| Ghidra pseudocode and P-Code | PASS; all client, buffer, global-pointer, log, and registration-state paths reviewed |
| Joern v4.0.548 strict | PASS; 1/1 source method, zero parser issues, zero unresolved calls |
| Isolated host harness | PASS; six direct cases in two independent ASan/UBSan cycles |
| Canonical Docker build | PASS; two independent clean cycles produced SHA-256 `15ba01b87c62e3568fbe0945a6b67fc1d217075632083d26d1076bc38ec6acc4` |
| AArch64 assembly | PASS; `.text`, 264 bytes, 66 instructions, 25 relocations, opcodes, and printk formats match exactly |
| CFG | PASS; 13 blocks, 9 direct calls, and identical opcode/call sequences |
| KCFI | PASS; function type ID `0xd02e5b64` |

The host harness covers an existing client, client-registration failure,
successful buffer registration with a global output buffer, allocation failure
with intercepted null `memset`, and the `0xff` probe-id branch. The intercept
is required so a host test can prove the stock control flow without performing
an invalid write.

No smartphone, ADB, fastboot, `insmod`, allocator timing, SPI, IRQ, display,
or touch-controller test was performed. This is an exact offline microtask, not
a claim of complete-driver or hardware equivalence.

## Artifacts

- [Attestation](microtask_attestation_v1.json)
- [Canonical build](build_report.json)
- [ASan/UBSan harness](host_harness_report.json)
- [Joern strict gate](joern_gate_summary.json)
- [Assembly comparison](assembly_comparison.json)
- [KCFI comparison](kcfi_comparison.json)
