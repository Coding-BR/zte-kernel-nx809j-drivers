# Next48: `syna_testing_pt05_zte`

## Scope

This checkpoint reconstructs only `syna_testing_pt05_zte` at stock entry
`0x0011b818`. The local stock module, Ghidra pseudocode, P-Code, AArch64
assembly and extracted PT05 limit tables are the evidence sources. No
internet-derived NX809J implementation was used.

The result is an offline microtask pass. It is not a claim that the complete
`zte_tpd` module or the physical touch controller has completed dynamic
validation.

## Recovered contract

- Allocate a 4096-byte output buffer with stock flags `0xdc0`.
- Test connection bit zero at `syna_tcm + 0x582`.
- Resolve testing item `0x0500` and populate rows at `+0x20`, columns at
  `+0x24`, high/low limits at `+0x38/+0x40`, and the result buffer at `+0xd8`.
- Preserve the `testing_run_fn(struct tcm_dev *, struct testing_item *, bool)`
  callback type and invoke it with `false`.
- Format unsigned `u16` matrix samples using the device column count as stride.
- Copy the output, diagnose nonzero `lock_depth`, release result data through
  the managed device, clear buffer counters, and free the output buffer.
- Preserve the two observed stock allocation leaks on disconnected and
  missing-item paths.

The two 3200-byte PT05 limit tables are `const` and materialize in `.rodata`,
matching the stock relocation surface.

## Reproducible build

`build_next48_pt05_path_independent_report.json` records two clean builds in
separate ephemeral Linux containers and deliberately different `M=` paths.
Promotion occurred only after both artifacts were byte-identical and their
logs contained no warnings, errors or clock-skew diagnostics.

- Image: `nubia-sm8850-kernel-builder:latest`
- Clang: Android `clang-r536225` 19.0.1
- Build gate: `PASS`, 2/2 cycles
- Module SHA-256: `18665cfcaa9dc4c090deb9cd3a30048e61d07d61c5471bcde6147aebd1005719`
- Module size: 24,678,288 bytes

The additional full-driver rebuild audit passed build, reproducibility,
AArch64, aliases, imports, namespace and accepted-vermagic checks. Its global
status remains `INCOMPLETE` because mapping 211 still lacks independent review.

## Assembly and Ghidra

The strict reports remain published as `FAIL`: Clang placed equivalent basic
blocks and string references in a different physical order. Structural parity
is exact:

| Surface | Stock | Candidate |
|---|---:|---:|
| ELF symbol size | 852 | 852 |
| Ghidra body bytes | 800 | 800 |
| AArch64 instructions | 213 | 213 |
| Relocations | 46 | 46 |
| P-Code records | 638 | 638 |

`ghidra_reordered_semantic_validation_next48_pt05.json` passed all bounded
invariants: instruction/control multisets, direct calls, strings, P-Code,
relocations, section, symbol size and candidate hash binding. The candidate
names the local lock key while the stripped stock module exposes it as a local
`.bss` offset.

## KCFI

`kcfi_comparison_next48_pt05.json` passes exact section, size and type ID:

- stock function type ID: `0xae20471c`
- candidate function type ID: `0xae20471c`
- indirect `testing_run_fn` guard: `0x81c04a92`
- function-pointer cast bypasses: none

## Joern

Joern v4.0.548 analyzed the complete candidate source tree while the gate was
bounded to `syna_testing_pt05_zte`. It resolved the stock and source identity
1/1, found zero parse problems, zero missing methods, zero unresolved calls and
zero mapped-call deltas. The selected function contains 139 CPG call nodes and
15 control structures after macro expansion. The two lifetime selectors are
review aids for the deliberately preserved stock allocation behavior.

Joern records `promotion_claim=false`; it supplements but never replaces
Ghidra, Assembly, P-Code, KCFI, the build or the harness.

## Direct harness

`harness/next48_pt05_host_test_report.json` records two reproducible
ASAN+UBSAN runs with 12 passing cases. Coverage includes allocation failure,
disconnected and missing-item lifetimes, callback failure, pass/fail status,
zero-length/row/column boundaries, lock diagnostics, missing managed device,
cleanup, and matrix stride. Values `65535`, `32768` and `40000` prove unsigned
`u16` formatting rather than the signed PT0A behavior.

The two harness binaries are byte-identical with SHA-256
`f66ae1b985d4885c02f947c38ace717a16fca2a6bc6d192b5cd2d8ee64cb745f`.

## Decision

Microtask `219_syna_testing_pt05_zte` is `PASS` for the offline reconstruction
protocol. The global count is `171 PASS / 196 READY`. Physical validation and
independent review remain separate required gates.
