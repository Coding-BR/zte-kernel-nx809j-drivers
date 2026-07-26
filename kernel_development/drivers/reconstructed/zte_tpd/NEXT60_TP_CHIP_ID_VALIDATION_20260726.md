# Next60 Validation: `get_tp_chip_id`

Status: `PASS` for offline microtask `009_get_tp_chip_id`.

The stock `.data` table is 176 bytes: 11 entries of 16 bytes each, with an ID
at offset `+0`, seven bytes of padding, and a keyword pointer at offset `+8`.
The values below were recovered from the stock table and its `.rela.data`
relocations, not inferred from public device sources.

| ID | Keyword |
|---|---|
| `0x01` | `synaptics` |
| `0x04` | `focal` |
| `0x05` | `goodix` |
| `0x08` | `himax` |
| `0x09` | `novatek` |
| `0x0a` | `ilitek` |
| `0x0b` | `tlsc` |
| `0x0c` | `chipone` |
| `0x0f` | `galaxycore` |
| `0x11` | `omnivision` |
| `0xff` | `Unknown` |

The function initializes `tpd_cdev + 0x446` to `0xff`, evaluates the fixed
`"Unknown_lcd"` panel string in table order, writes the selected ID at that
same offset, and emits the three stock log formats. A no-match result returns
`-EIO` after the initialization write and before the final log.

Two independent clean container builds produced the identical module SHA-256
`5e9be7a4bec2b6bd025ea87f41e793e1473822ae924791d74b50cc6702ad6c82`
(`24,703,840` bytes). The KCFI type ID is exactly `0x6fbb3035`.

- [Canonical build](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next60_tp_chip_id_v1/build_next60_tp_chip_id_candidate_v1.json)
  (`b805d6900d0fd6b8d9493930a4e4f22a815241b801c4bb51d04d4654346f3477`)
- [ASAN/UBSan direct harness](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next60_tp_chip_id_v1/next60_tp_chip_id_host_report_v1.json)
  (`c50510d5ec2c4ae43ef61c20c209cd41442265f571b757145f9d6836d4ca14dd`)
- [Exact assembly and relocation comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next60_tp_chip_id_v1/assembly_comparison_next60_tp_chip_id_canonical_v1.json)
  (`84e7c08208e87ed90f2953af59d47e0c749d2ec45063d3ceb442251a82fcf7ef`)
- [KCFI comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next60_tp_chip_id_v1/kcfi_comparison_next60_tp_chip_id_v1.json)
  (`befcf742160d70d34ca852a7ee7fc004a708b6ac849c3579ccda92b074229b4f`)
- [Strict Joern summary](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next60_tp_chip_id_v1/joern_gate_summary.json)
  (`d7392a83d32ddab6b1472da4fb7c2f4a4127eee3362a3e3fa48b9b86f281d193`)
- [Ghidra bounded semantic comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next60_tp_chip_id_v1/ghidra_bounded_next60_tp_chip_id_v1.json)
  (`37c39febbc8a028858bb6e9aa8e8f47578218cbc9d5819806d52fbe1bd52fc0d`)

The strict Ghidra report is retained because its normalized decompiled-C text
differs. That is disclosed rather than ignored: body size, P-Code shape,
calls, resolved strings, KCFI, relocations, and exact AArch64 assembly match;
the bounded gate accepts no other difference. Joern strict mode reports zero
parse problems and zero unresolved calls.

No smartphone or touch-controller interaction was performed. This proves the
offline ABI and observed behavior surface, not physical-panel behavior.
