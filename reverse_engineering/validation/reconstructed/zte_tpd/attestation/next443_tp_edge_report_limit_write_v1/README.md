# `tp_edge_report_limit_write` offline exact attestation

This package records the reconstruction of the stock `zte_tpd` function at
entry `0x0010b690` from the NX809J userdebug `zte_tpd.ko` and local Ghidra
exports. It is an offline engineering result, not a claim of hardware
equivalence.

## Result

- Status: `OFFLINE_EXACT`
- AArch64 body: 238 instructions, 952 bytes
- Assembly: exact instruction, section, symbol-size and relocation parity
- KCFI: exact type `0xc3d43b4d`
- Joern strict gate: PASS, with zero blockers, parse problems and unresolved calls
- Host harness: 4 cases, executed twice with ASan and UBSan, PASS
- Docker canonical build: 2 independent filesystem cycles, PASS
- Hardware validation: `DEFERRED`

## Recovered contract

The function caps the accepted write count at 100 bytes, copies the input,
resolves named edge-report parameters, parses decimal values and updates the
corresponding `tpd_cdev` fields. It handles `algo_open`, `jitter_pixel`,
`jitter_timer`, `click_pixel`, `long_press_open`, `long_press_timer` and the
four-value `long_press_pixel` vector. A numeric input from 0 through 10 sets
the pixel-limit level and derives the two limit fields from the stock formula.

The exact Assembly preserves the stock stack-canary path, calls, branches,
format strings and AArch64 relocations. The C file is the cleaned semantic
review view; the `.S` file is the exact offline opcode source used by Kbuild.

## Joern review

Joern reports seven high-severity `userspace_ingress` findings. They are
expected review findings for this userspace write entry point, not parser or
unresolved-call blockers. They remain in `joern_gate_report.json` and must be
reviewed again before any physical deployment.

## Reproduction evidence

Use `canonical_build_report.json`, `assembly_comparison.json`,
`kcfi_comparison.json`, `joern_gate_report.json`, `host_harness_report.json`
and `microtask_attestation.json` as the package reports. The candidate module
is `zte_tpd.ko`; its SHA-256 is recorded in the attestation.

Do not flash or load this module as part of this offline gate. Any physical
test requires the separate controlled unbind, rollback and recovery protocol.
