# Next62 Validation: `ztp_probe_work`

Status: `PASS` for offline microtask `020_ztp_probe_work`.

The stock callback has a 40-byte AArch64 body at `00108494`. It ignores the
`struct work_struct *` argument, logs the exact literal
`"\0015tpd: ztp_probe_work in"`, then calls `syna_dev_module_init()` and
ignores its return value. It has no branches, allocation, teardown, locking or
hardware access in its own body.

The first candidate was rejected even though its body size and KCFI identifier
matched: it referenced the generic `unk_33A5E` symbol instead of the stock
literal. The assembly gate detected the different data relocations. Replacing
that reference with the recovered literal made the candidate match exactly.

## Offline Evidence

| Gate | Result |
|---|---|
| Two independent canonical builds | PASS, identical module SHA-256 `e34af0a0b22e68cb31f1cfa73c20d66f925a0254c4d4d09190bdbede20561912`, 24,706,680 bytes |
| KCFI | PASS, `.text`, 40 bytes, type ID `0xa607748c` |
| AArch64 and relocations | PASS, 10 instructions and both string relocations exact |
| Ghidra 12.1.2 strict comparison | PASS, normalized decompiled C and 28 P-Code records exact |
| Joern v4.0.548 strict | PASS, 1/1 mapped function, zero parse problems and zero unresolved calls |
| Direct harness | PASS, 2 cases in two Docker runs using Android Clang 19.0.1 with ASan/UBSan; executable hashes match |

## Artifacts

- [Canonical build](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next62_ztp_probe_work_v1/build_next62_ztp_probe_work_candidate_v2.json)
  (`7713c87f1faf177aeb2178340321c4015e806b0add7d33e1fe2c6abcb0d7c0f9`)
- [ASan/UBSan direct harness](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next62_ztp_probe_work_v1/host_harness_report.json)
  (`10c75cd548b33b209247f906bdaf2c1b96eff080e17590131e41da105efa0b4e`)
- [Exact assembly and relocation comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next62_ztp_probe_work_v1/assembly_comparison_next62_ztp_probe_work_canonical_v2.json)
  (`a3523562af46c5cde1387b5e44c53bf82f6909243cd1ffb1d032d5ab004c7172`)
- [KCFI comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next62_ztp_probe_work_v1/kcfi_comparison_next62_ztp_probe_work_v2.json)
  (`77bb950e4af7f72839c7542b02ada8ad4e08a4d8f5caba83d48345ff0af28874`)
- [Strict Joern summary](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next62_ztp_probe_work_v1/joern_gate_summary.json)
  (`de255d616253d5f33ba97b238c072eecfdcb81086e7f8263cd30a87898a9007f`)
- [Strict Ghidra comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next62_ztp_probe_work_v1/ghidra_strict_next62_ztp_probe_work_v1.json)
  (`6a86c7b629f680bd6cdc4e6f9c2c32024d69114a81aee1672b44b5be74e75c15`)
- [Microtask attestation](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next62_ztp_probe_work_v1/microtask_attestation_v1.json)
  (`3ea970dfc3aee5dbaf242b66b8ac50e3e5c9bf3dbb1f8a558f91f9a0f184a7ab`)

No smartphone or workqueue scheduling was performed. This is an offline
reconstruction attestation, not a claim of hardware validation.
