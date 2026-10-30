# `next451_set_follow_hand_level_v1`

## Result

`set_follow_hand_level` is **OFFLINE_EXACT** at function level. The candidate
matches stock entry `0x0010c080`:

- 49 instructions and 196 symbol bytes;
- resolved branch, relocation, section, symbol-size and string checks passed;
- stock and candidate KCFI type ID: `0xc3d43b4d`;
- indirect callback at `tpd_cdev + 0xf20`, callback guard type ID
  `0x6af8b499`;
- strict Joern v4.0.548 review passed with zero parse problems, zero missing
  map/source methods and no unresolved calls;
- ASan/UBSan host harness passed twice with four deterministic parser and
  callback cases;
- canonical Docker build passed for two accepted cycles.

The reconstructed write contract preserves base-10 parsing, `-EINVAL` on
failure, stock `printk` ordering and optional callback dispatch. Hardware
validation is deliberately **DEFERRED**; this attestation does not claim
smartphone execution.

## Evidence

- [Microtask attestation](microtask_attestation.json)
- [AArch64 validation](aarch64_validation_report.json)
- [Assembly comparison](assembly_comparison.json)
- [KCFI comparison](kcfi_comparison.json)
- [Canonical Docker build](canonical_build_report.json)
- [Host ASan/UBSan harness](host_harness_report.json)
- [Joern gate report](joern_final/joern_gate_report.json)
- [Reconstruction map](../../../../../../kernel_development/drivers/reconstructed/zte_tpd/reconstruction_map.json)

All report and source hashes are recorded in the attestation and in the
driver reconstruction map. Promotion to hardware or boot images requires a
separate controlled validation record.
