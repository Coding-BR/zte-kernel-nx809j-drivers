# `tp_edge_report_limit_read` offline exact attestation

This package records the reconstruction of the stock `zte_tpd` function at
entry `0x0010b150` from the NX809J userdebug `zte_tpd.ko` and local Ghidra
exports. It is an offline engineering result; it is not a claim of hardware
equivalence.

## Result

- Status: `OFFLINE_EXACT`
- AArch64 body: 335 instructions, 1340 bytes
- Assembly: exact instruction, section, symbol-size and relocation parity
- KCFI: exact type `0xf4e9d97c`
- Joern strict gate: PASS, with zero blockers, unresolved calls and parse problems
- Host harness: 3 cases, executed twice with ASan and UBSan, PASS
- Docker canonical build: 2 independent filesystem cycles, PASS
- Hardware validation: `DEFERRED`

## Recovered contract

The function returns EOF when `*offset` is nonzero. For the initial read it
allocates 3520 bytes with stock flags `4096`, reads values from `tpd_cdev`,
formats the edge-report text, calls `simple_read_from_buffer`, and frees the
temporary buffer. Allocation failure logs `\0015tpd: alloc data_buf failed` and
returns `-ENOMEM`.

The values represented by the stock text include `algo_open`, `jitter_pixel`,
`jitter_timer`, `click_pixel`, `long_press_open`, `long_press_timer`, the pixel
limit, click width and long-press pixel coordinates. The exact offsets and
format strings are preserved in the lifted Assembly and stock relocation
report; no MMIO meaning is inferred from this package alone.

## Reproduction evidence

Use `canonical_build_report.json`, `assembly_comparison.json`,
`kcfi_comparison.json`, `joern_gate_report.json`, `host_harness_report.json`
and `microtask_attestation.json` as the authoritative package reports. The
candidate artifact is `zte_tpd.ko`; its SHA-256 is recorded in the attestation.

The `.c` file is retained for the semantic review path. The `.S` file is the
mechanically lifted body used for exact offline opcode and relocation parity.
The stock Assembly, Ghidra decompilation and P-Code are included so another
engineer can audit every claim without a phone connection.

Do not flash or load this module as part of this offline gate. Any physical
test requires a separate controlled unbind, rollback and recovery protocol.
