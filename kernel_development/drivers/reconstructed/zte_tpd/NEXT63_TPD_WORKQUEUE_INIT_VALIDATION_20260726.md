# Next63 Validation: `tpd_workqueue_init`

Status: `PASS` for offline microtask `022_tpd_workqueue_init`.

The stock function is a 388-byte AArch64 lifecycle initializer at `00108508`.
It logs `"\0015tpd: enter"`, creates the `tpd_wq` workqueue through
`alloc_workqueue("%s", 0x6000a, 1, "tpd_wq")`, stores it at
`tpd_cdev + 0x4b0`, and then calls `tpd_report_work_init()`.

On success it manually initializes three delayed-work objects, rather than
calling the reconstructed helpers: `ztp_probe_work` at `+0x8d0`,
`zlog_register_work` at `+0xa50`, and `tp_ghost_check_work` at `+0x938`.
Each uses `delayed_work_timer_fn` with flags `0x200000`. Volatile slot access
is intentionally limited to this function so Clang preserves the exact stock
store sequence; it does not change the offsets, API surface, or locking model.

The failure path is also preserved exactly. If `tpd_report_work_init()` fails,
the stock code reloads the saved `+0x4b0` slot and invokes
`destroy_workqueue(NULL)` only when that slot is already zero. The direct
harness contains a controlled mutation of that slot to prove this otherwise
counterintuitive branch.

## Offline Evidence

| Gate | Result |
|---|---|
| Two independent canonical builds | PASS, identical module SHA-256 `2e27df8900f1880339a47b991621df37d294fbb86acc2b91b4629b1d0fb5289d`, 24,707,096 bytes |
| AArch64 and relocations | PASS, exact 97 instructions, 388-byte symbol, and resolved relocations |
| KCFI | PASS, `.text`, 388 bytes, type ID `0x6fbb3035` |
| Ghidra 12.1.2 strict comparison | PASS, normalized decompiled C and all 280 P-Code records match |
| Joern v4.0.548 strict | PASS, 1/1 mapped function, zero parser problems, zero unresolved calls, zero mapped call deltas |
| Direct harness | PASS, 4 cases in two Docker runs using Android Clang 19.0.1 with ASan/UBSan; executable hashes match |

The Ghidra comparator now resolves short printable NUL-terminated strings
directly from the stock and candidate ELF sections when Ghidra omits them from
`strings.jsonl`. For this task, that independently proves the `"%s"` format
literal by SHA-256. The resolver requires valid little-endian ELF64 section
metadata, an exact Ghidra memory-block-to-section size match, and records
`elf_section_bytes` as the evidence source. It does not normalize arbitrary
data references.

## Artifacts

- [Canonical build](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next63_tpd_workqueue_init_v1/build_next63_tpd_workqueue_init_v2.json)
  (`e70a6593a1cd32a4c0d49269358a2f5582f3a10919d0b260cc332eadbd40b78c`)
- [ASan/UBSan direct harness](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next63_tpd_workqueue_init_v1/host_harness_report.json)
  (`9b40980b04785e710bf0e016c2555da911009da8dd05c635219098449a14d02d`)
- [Exact assembly and relocation comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next63_tpd_workqueue_init_v1/assembly_comparison_next63_tpd_workqueue_init_v2.json)
  (`aeca10b060a62237a794869cd461dba328b1b59a24679b2d23736e9cae8028de`)
- [KCFI comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next63_tpd_workqueue_init_v1/kcfi_comparison_next63_tpd_workqueue_init_v2.json)
  (`473be15c089dbe23971edb4174df01b517b9173868dd5a4e4e1bcae4e887a2ce`)
- [Strict Ghidra comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next63_tpd_workqueue_init_v1/ghidra_strict_next63_tpd_workqueue_init_v1.json)
  (`e120a767e88b78b47c386408cd0f45999a3fa19855c6b4f0d248e95d934560bf`)
- [Strict Joern summary](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next63_tpd_workqueue_init_v1/joern_gate_summary.json)
  (`feacb39598d6ae354122801a0aec89e9023a251b981cafe896f1eec48ff9e63e`)
- [Microtask attestation](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next63_tpd_workqueue_init_v1/microtask_attestation_v1.json)
  (`095fad82985eb061d85a8dc56678a3999cabc2ba2b9088001e44615019fd750e`)

No smartphone, scheduler, touch controller, or workqueue runtime execution was
performed. This is an offline reconstruction attestation, not a hardware
validation claim.
