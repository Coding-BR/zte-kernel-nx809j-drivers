# zte_ramdisk_reboot_probe@00100894 — offline exact attestation

- Status: CORE_GATES_PASS
- Scope: static/offline reconstruction; hardware behavior remains unvalidated.
- Stock function: zte_ramdisk_reboot_probe, entry 0x00100894.
- Candidate function: zte_ramdisk_reboot_probe implemented as a stock instruction island with preserved C model and explicit relocation-backed strings/tables.
- Assembly parity: 208 AArch64 instructions, 832-byte symbol in .text, exact opcode/control-flow parity and equivalent relocations.
- KCFI parity: candidate and stock both expose type 0xc7f8c87c; section, symbol size and presence match.
- Docker reproducibility: two clean builds with identical candidate module SHA-256 1f027cf0fab9269141d722b225b04bfea688add1d28577ba1cbd03543e388892 and size 221584 bytes.
- Joern: scoped function and slice gates pass with no unresolved calls or parser blockers.
- Host harness: the preserved driver host test report is included as host_test_report.json.
- Note: the broader driver audit remains incomplete because its external acquisition/Ghidra evidence inputs are not present in this isolated protocol run; this does not invalidate the seven core gates recorded here.

The authoritative protocol outputs are preserved in hard_protocol_report.json, assembly/comparison.json, kcfi/comparison.json, joern/joern_gate_summary.json, and docker/driver_audit.json.
