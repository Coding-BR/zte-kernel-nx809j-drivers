# `next450_get_follow_hand_level_v1`

## Result

`get_follow_hand_level` is **OFFLINE_EXACT** at function level. The candidate
matches stock entry `0x0010bf8c`:

- 60 instructions and 240 symbol bytes;
- resolved branch, relocation, section, symbol-size and string checks passed;
- stock and candidate KCFI type ID: `0xf4e9d97c`;
- indirect callback at `tpd_cdev + 0xf28`, callback guard type ID
  `0x73fc0d79`;
- strict Joern v4.0.548 review passed with zero parse problems, zero missing
  map/source methods and no unresolved calls;
- ASan/UBSan host harness passed twice with four deterministic read cases;
- canonical Docker build passed for two accepted cycles.

The reconstructed read contract preserves the offset/EOF behavior, callback
ordering, value offset `tpd_cdev + 0x468` and unsigned `%u` formatting.
Hardware validation is deliberately **DEFERRED**; this attestation does not
claim smartphone execution.

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
