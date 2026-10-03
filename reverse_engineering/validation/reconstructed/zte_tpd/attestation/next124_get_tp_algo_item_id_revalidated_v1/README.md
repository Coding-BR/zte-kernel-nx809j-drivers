# Next124 Revalidation: `get_tp_algo_item_id`

Status: `PASS_OFFLINE_EXACT` for microtask `008_get_tp_algo_item_id`.

Ghidra, P-Code and AArch64 show seven ordered `strlen` plus `strnstr` attempts
against `ztp_algo_info_l`, success logging and a `-EIO` failure. The current
candidate has the exact 356-byte, 89-instruction AArch64 body, 15 direct calls,
normalized relocations and KCFI type ID `0x7bff871d`.

The shared ASan/UBSan harness was repaired to use the proven 16-byte
`ztp_algo_item` table layout; it passed 8/8 tests in two cycles, including first
match, last match and no-match behavior. Joern v4.0.548 strict passed with one
source method, 52 graph calls, seven control structures and no parser or
unresolved-call findings.

The CFG has the same 10 blocks, 16 edges and 15 calls. Its textual block
signature ratio is `0.9`; this non-gating delta is retained in the artifact,
while raw opcodes, call order and normalized relocations are exact.

No physical NX809J validation was performed.

## Artifacts

- [Microtask attestation](microtask_attestation_v1.json)
- [Canonical build](build_report.json)
- [ASan/UBSan host harness](host_harness_report.json)
- [Joern strict gate](joern_gate_summary.json)
- [Assembly comparison](assembly_comparison.json)
- [KCFI comparison](kcfi_comparison.json)
- [CFG comparison](cfg_comparison.json)
