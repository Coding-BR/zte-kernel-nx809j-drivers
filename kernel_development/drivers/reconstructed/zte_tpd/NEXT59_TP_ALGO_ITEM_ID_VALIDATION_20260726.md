# Next59 Validation: `get_tp_algo_item_id`

Status: `PASS` for offline microtask `008_get_tp_algo_item_id`.

The stock module implements a fixed, ordered seven-entry selector. Each entry
is exactly 16 bytes: an ID byte at offset `+0`, seven padding bytes, and a
keyword pointer at offset `+8`. The first match wins; no match returns `-EIO`.

| ID | Stock keyword |
|---|---|
| 0 | `algo_open` |
| 1 | `jitter_pixel` |
| 2 | `jitter_timer` |
| 3 | `click_pixel` |
| 4 | `long_press_open` |
| 5 | `long_press_timer` |
| 6 | `long_press_pixel` |

The source keeps the selected keyword in AArch64 `x20` before every `strlen()`.
That is an evidence-driven code-generation constraint: it reproduces the stock
89-instruction, 356-byte function exactly while retaining a portable host-test
fallback outside AArch64.

Two independent clean container builds produced the same module SHA-256:
`7b05f0c8ac8a46f566d0d99f584625b5a3fb6eb783fa7c7811f5120caeabdf76`
(`24,704,624` bytes). The KCFI type ID is exactly `0x7bff871d`.

- [Canonical build](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next59_tp_algo_item_id_v5/build_next59_tp_algo_item_id_candidate_v5.json)
  (`b4798738977db030a29974738f039883e4eb7bc5504bb801bc38ccbf446f1da5`)
- [ASAN/UBSan direct harness](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next59_tp_algo_item_id_v5/next59_tp_algo_item_id_host_report_v5.json)
  (`c5bd1201977d7f18193a6b69a6d30443cdd245c137dac11663d3a29275950042`)
- [Exact assembly and relocation comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next59_tp_algo_item_id_v5/assembly_comparison_next59_tp_algo_item_id_canonical_v5.json)
  (`c5efe32358297fcf37c8467202eb162fc434caf057b1324f9264e362f328c623`)
- [KCFI comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next59_tp_algo_item_id_v5/kcfi_comparison_next59_tp_algo_item_id_v5.json)
  (`0d13386ffa7c21826b26e0ad1c9a484249e9747d35492b2ea032b1585afa8e85`)
- [Strict Joern summary](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next59_tp_algo_item_id_v5/joern_gate_summary.json)
  (`c188295b904e4033bb3c855fdc90d0d833b0968d82056b3c4c81303758f2ec94`)
- [Ghidra bounded semantic comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next59_tp_algo_item_id_v5/ghidra_bounded_next59_tp_algo_item_id_v5.json)
  (`3a5963b57e38a993327ccd12480baa35652d990b582b36202fe56fd7e5b53a21`)

The strict Ghidra report intentionally remains preserved. It reports only a
normalized decompiled-C representation difference; body size, P-Code shape,
calls, control flow, resolved log string, KCFI, relocations, and exact AArch64
assembly all match. The bounded report discloses that strict failure and accepts
no additional difference. Joern strict mode reports zero parse problems and
zero unresolved calls.

No smartphone or touch-controller interaction was performed. This is a static
ABI and behavior-surface proof; physical panel behavior still requires the
controlled hardware gate.
