# `next448_get_tp_report_rate_v1`

## Result

`get_tp_report_rate` is **OFFLINE_EXACT** at function level. The candidate
contains a mechanically lifted AArch64 implementation matching the stock
function at entry `0x0010bdd0`:

- 60 instructions and 240 symbol bytes;
- resolved branch, relocation, section, symbol-size and string checks passed;
- stock and candidate KCFI type ID: `0xf4e9d97c`;
- callback guard type ID: `0x73fc0d79`;
- Joern v4.0.548 strict review passed with zero parse problems, zero
  unresolved calls and one expected userspace-egress finding for
  `simple_read_from_buffer`;
- ASan/UBSan host harness passed twice with four deterministic cases;
- canonical Docker build passed for two accepted cycles.

The reconstructed access contract is the stock one: callback pointer at
`tpd_cdev + 0xf18`, report-rate value at `tpd_cdev + 0x464`, and the normal
`sysfs` read offset/EOF behavior. Hardware validation is deliberately
**DEFERRED**; this attestation does not claim smartphone execution.

## Evidence

- [Microtask attestation](microtask_attestation.json)
- [AArch64 validation](aarch64_validation_report.json)
- [Assembly comparison](assembly_comparison.json)
- [KCFI comparison](kcfi_comparison.json)
- [Canonical Docker build](canonical_build_report.json)
- [Host ASan/UBSan harness](host_harness_report.json)
- [Joern gate report](joern_gate_report.json)
- [Reconstruction map](../../../../../../kernel_development/drivers/reconstructed/zte_tpd/reconstruction_map.json)

All report and source hashes are recorded in the attestation and in the
driver reconstruction map. Promotion to hardware or boot images requires a
separate controlled validation record.
