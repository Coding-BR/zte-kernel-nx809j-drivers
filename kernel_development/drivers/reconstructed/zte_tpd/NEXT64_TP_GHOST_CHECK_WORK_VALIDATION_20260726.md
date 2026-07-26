# Next64 Validation: `tp_ghost_check_work`

Status: `PASS` for offline microtask `023_tp_ghost_check_work`.

The stock function is a 176-byte AArch64 delayed-work callback at `00108690`.
It checks `tp_ghost_check()`, reads the reset counter at `tpd_cdev + 0x4a8`,
optionally dispatches the callback at `+0xff0`, calls `ghost_check_reset()`,
and clears the active byte at `+0x488`. The callback type is explicitly
`int (struct ztp_device *)`, matching the observed indirect-call KCFI tag
`0x73fc0d79`.

The source uses a scoped AArch64 `asm goto` to retain the stock signed
predicate `cmp #2` / `b.gt` for the reset-counter limit. The non-AArch64
harness path uses the equivalent C comparison. This is a code-generation lock
for one observed predicate, not a new API, synchronization primitive, or
hardware behavior.

## Offline Evidence

| Gate | Result |
|---|---|
| Two independent canonical builds | PASS, identical module SHA-256 `1a0a2dfbcfe54f2ea199f05fa8fb408b6c1d064278813b2df3239682321e9772`, 24,708,352 bytes |
| KCFI | PASS, `.text`, 176 bytes, function type ID `0xa607748c` |
| Ghidra 12.1.2 strict comparison | EXPECTED FAIL only for ordered P-Code block shape |
| Bounded Ghidra semantic surface | PASS, 137 P-Code records, body size, instruction/control multisets, direct calls, strings, relocations, and module hash all match |
| Joern v4.0.548 strict | PASS, 1/1 mapped function, zero parser problems, zero unresolved calls, zero mapped call deltas |
| Direct harness | PASS, four cases in two Docker runs using Android Clang 19.0.1 with ASan/UBSan; executable hashes match |

The strict assembly report intentionally fails on the same basic-block order
difference. The bounded report is the governing static equivalence result for
this function: it accepts only that disclosed ordering difference and does not
claim byte-identical instruction order. KCFI, reproducible builds, Joern, and
direct tests remain independent mandatory gates.

The harness covers: no ghost; detected ghost at the count limit; detected ghost
with a null callback; and a callback that mutates the counter, proving that the
function reloads it before incrementing and logging. No smartphone, workqueue
scheduler, or physical touch-controller execution was performed.

## Artifacts

- [Canonical build](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next64_tp_ghost_check_work_v1/build_next64_tp_ghost_check_work_final.json)
  (`d7be65cf994bc6b283557decd4bf35d5b22467ea3dae76a11b5f3820992e7f05`)
- [ASan/UBSan direct harness](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next64_tp_ghost_check_work_v1/host_harness_report.json)
  (`c0e6533f9ac02eec532d6727878f5fedc06005894946c9ed9e3c48a2da4178ca`)
- [Assembly and relocation comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next64_tp_ghost_check_work_v1/assembly_comparison_final.json)
  (`0bbbe2e23b7eebb6e6f24a85e33d403da38aacebb307b0d342051ac741f2d785`)
- [KCFI comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next64_tp_ghost_check_work_v1/kcfi_comparison_final.json)
  (`06a9fb8c882193b3aed345546cb1eb9fca9d9fb87bd6fc6eb237eb669c90682b`)
- [Strict Ghidra comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next64_tp_ghost_check_work_v1/ghidra_strict_final.json)
  (`10b80b7db3e3dd4834a646958a0d5cd49dfdc7d4caa5efae963ef1c460bd73c01`)
- [Bounded Ghidra semantic comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next64_tp_ghost_check_work_v1/ghidra_reordered_semantics_final.json)
  (`8be4dc0f99ad3c5d2cec56a38c52a9858a8a955be771070e8bf6febeee3159d6`)
- [Strict Joern summary](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next64_tp_ghost_check_work_v1/joern_gate_summary.json)
  (`582aa58bdb73225d98b1d64533f6669e48884b1ce770526c733cd025271df84c`)
- [Microtask attestation](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next64_tp_ghost_check_work_v1/microtask_attestation_v1.json)
  (`f9497109dd8fc1e7b70dadca76a9c523b1ad5e046a4c753f9673877cd0f8dd51`)
