# Next119 Validation: tpd_zlog_record_notify

Status: PASS_OFFLINE_EXACT for microtask `002_tpd_zlog_record_notify`.

The NX809J stock `zte_tpd.ko` function at Ghidra entry `00106998` is rebuilt
with the same AArch64 function body: 3,452 bytes, 863 instructions, 180
non-branch relocations and KCFI type ID `0xcc3d7e08`. The switch dispatch is
an anonymous 18-entry u16 table. Its stock mapping symbol is `$d.7`, while
the independently linked candidate locates the same table at `.rodata+0x49b0`.
The comparator accepts this relocation layout difference only after proving
the exact bounds-checked `ldrh`/`br` dispatch idiom, a unique relocation-free
36-byte table, and SHA-256
`d847359a463ca15b5d7b9e709a599ef006db7ce8a478a12cba3dad891f88bb2d`.

## Offline Evidence

| Gate | Result |
|---|---|
| Ghidra pseudocode and P-Code | PASS; all 18 cases, throttle paths, logs, zlog record/notify calls, and buffer clear path reviewed from local exports |
| Canonical Docker build | PASS; two isolated clean builds produced SHA-256 `c27e646c0deef520806e66a82100cd9397870bec5619bf90655b03f6477edaf4` |
| AArch64 comparison | PASS; section, symbol size, instruction order and all normalized relocations match; dispatch-table bytes are hash-bound |
| CFG structural audit | PASS for cardinalities and executable sequence: 130 blocks, 180 edges, 90 calls, raw opcode and ordered call similarity `1.0` |
| KCFI | PASS; stock and candidate type ID `0xcc3d7e08`, `.text`, and 3,452-byte symbol size match |
| Joern v4.0.548 strict | PASS; 1/1 mapped source method, zero parser problems, zero unresolved calls, zero mapped call deltas |
| ASan/UBSan host harness | PASS; two reproducible cycles, ten direct tests covering all 18 event mappings, escalation and notification gates |

The host harness intercepts the stock `memset(NULL, ...)` path after failed
zlog buffer allocation. It records that path without dereferencing null in a
userspace process; the reconstructed kernel source and its generated AArch64
remain unchanged. An out-of-range enum is deliberately not tested because the
stock function indexes the enum directly and has no bounds-check contract.

No smartphone, ADB, fastboot, `insmod`, Android zlog service, SPI, IRQ,
touch-controller, display, or power-management test was performed. This is a
function-level offline attestation, not a claim of complete-driver or physical
hardware equivalence.

## Artifacts

- [Attestation](microtask_attestation_v1.json)
- [Canonical build](build_report.json)
- [AArch64 comparison](assembly_comparison.json)
- [CFG audit](cfg_comparison.json)
- [KCFI comparison](kcfi_comparison.json)
- [Joern strict summary](joern_gate_summary.json)
- [ASan/UBSan harness](host_harness_report.json)
