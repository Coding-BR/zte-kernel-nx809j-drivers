# Next110 Validation: tpd_zlog_check

Status: PASS_OFFLINE_EXACT for microtask 003_tpd_zlog_check.

The local NX809J stock `zte_tpd.ko` entry at `00107718` reads
`tpd_cdev + 0xab8` for `count[]` and `tpd_cdev + 0xb50` for `timer[]`.
It accepts array indexes 0 through 18, increments the selected count on every
return, and returns `-EIO` only when a prior count is nonzero and the converted
elapsed time is below 60000. That branch calls `jiffies_to_msecs` a second time,
emits the stock `_printk` format, then increments the count. The invalid enum
path is the compiler-inserted `brk #0x5512`; it is not a handwritten `BUG()`.

The reconstructed source deliberately has no null guard, no positive-only enum
guard, and no cached elapsed variable because each changes the stock AArch64
control flow. Ghidra pseudocode, P-Code, relocations, and exact assembly prove
this contract.

## Offline Evidence

| Gate | Result |
|---|---|
| Ghidra pseudocode and P-Code | PASS; direct global dereference, offsets, threshold, duplicate conversion, and bounds trap reviewed |
| Joern v4.0.548 strict | PASS; 1/1 source method, zero parser issues, zero unresolved calls |
| Isolated host harness | PASS; five direct cases in two independent ASan/UBSan cycles |
| Canonical Docker build | PASS; two independent clean cycles produced SHA-256 `9d712e098d4b406ada6aef2e58a6b7e7cfdfe6126264b526b118ea2d37a56d14` |
| AArch64 assembly | PASS; `.text`, 172 bytes, 43 instructions, 10 relocations, opcodes, and printk format match exactly |
| CFG | PASS; 7 blocks, 8 edges, 3 direct calls, and identical opcode/call sequences |
| KCFI | PASS; function type ID `0xc3c3f247` |

The host harness covers layout offsets, the initial event, the exact 60000
threshold, the repeated-event printk and `-EIO` path, and index zero. It does
not execute the invalid enum path because the required stock behavior is a
trap; that path is verified by exact AArch64 assembly.

No smartphone, ADB, fastboot, `insmod`, scheduler timing, SPI, IRQ, display,
or touch-controller test was performed. This is an exact offline microtask, not
a claim of complete-driver or hardware equivalence.

## Artifacts

- [Attestation](microtask_attestation_v1.json)
- [Canonical build](build_report.json)
- [ASan/UBSan harness](host_harness_report.json)
- [Joern strict gate](joern_gate_summary.json)
- [Assembly comparison](assembly_comparison.json)
- [KCFI comparison](kcfi_comparison.json)
