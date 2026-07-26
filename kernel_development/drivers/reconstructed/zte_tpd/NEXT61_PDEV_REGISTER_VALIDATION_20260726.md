# Next61 Validation: `zte_touch_pdev_register`

Status: `PASS` for offline microtask `016_zte_touch_pdev_register`.

The stock function has a 224-byte AArch64 body at `001081c8`. It allocates
the `zte_touch` platform device with ID `-1`, stores the result at
`tpd_cdev + 0xdd0`, and sets the callback slot at `tpd_cdev + 0xea0` only
after `platform_device_add` succeeds.

The failure paths are intentional and are preserved exactly:

- allocation failure logs the stock message, stores a null callback, and
  returns `-ENOMEM`;
- add failure logs the stock message with the negative return value, reloads
  the platform device from `+0xdd0`, calls
  `pdev->dev.release(&pdev->dev)`, stores a null callback, and returns the
  original error;
- the function does not add a null guard for `tpd_cdev`, because the stock
  body does not have one.

## Offline evidence

| Gate | Result |
|---|---|
| Two independent canonical builds | PASS, identical module SHA-256 `18ac3320f88d5f723ca3326877b71278c19adfdaef5ccd95c896a4fe659b76ba`, 24,706,656 bytes |
| KCFI | PASS, `.text`, 224 bytes, type ID `0x6fbb3035` |
| AArch64 and relocations | PASS, 56 instructions and all resolved relocations exact |
| Ghidra 12.1.2 strict comparison | PASS, normalized decompiled C and P-Code operation shape exact; 163 P-Code records |
| Joern v4.0.548 strict | PASS, 1/1 mapped function, zero parse problems, zero unresolved calls, 45 calls and 2 control structures |
| Direct harness | PASS, 3 cases in two Docker runs using Android Clang 19.0.1 with ASan/UBSan; executable hashes match |

The final C intentionally expresses the stock pointer lifetime so Clang selects
the same callee-saved registers and error-path reload. This is not a cosmetic
choice: the earlier typed candidate was behaviorally equivalent in the harness
but compiled to 232 bytes. The final source produces the stock 224-byte body.

## Artifacts

- [Canonical build](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next61_pdev_register_v1/build_next61_pdev_register_candidate_v3.json)
  (`4ab6d8a62a41fbb0c9b40bbb7f9ed30bef39062c0e0429fae824facd54dd0b83`)
- [ASan/UBSan direct harness](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next61_pdev_register_v1/host_harness_report.json)
  (`c12af28b41375e49a6c23d71029aa330c98d8a7e90a01b54974cf75aac1315a9`)
- [Exact assembly and relocation comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next61_pdev_register_v1/assembly_comparison_next61_pdev_register_canonical_v3.json)
  (`f9269b3b36667cb949a1fd6b15a621e3fcf14493d2a2549843aa903edd4d5288`)
- [KCFI comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next61_pdev_register_v1/kcfi_comparison_next61_pdev_register_v3.json)
  (`bd394bba61127d1148efbe670dbfc4dd8eac4143234070423ae3bd43588c3cc5`)
- [Strict Joern summary](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next61_pdev_register_v1/joern_gate_summary.json)
  (`98320ffbec0b1b591dfad58b59cd20337ceb21dc03ab0f2a6af1c7ba04aed572`)
- [Strict Ghidra comparison](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next61_pdev_register_v1/ghidra_strict_next61_pdev_register_v1.json)
  (`970a882d17b5bcf32e783278d53f7fc7f9668c7cd083d644bcd0624998a27a08`)
- [Microtask attestation](../../../../reverse_engineering/validation/reconstructed/zte_tpd/attestation/next61_pdev_register_v1/microtask_attestation_v1.json)
  (`998eef86eb445b6dc27158644184db7e04bccb9bd7b4cbf3d25313cae593b89d`)

No smartphone or platform-bus interaction was performed. This is an offline
reconstruction attestation, not a claim of hardware validation.
