# Next47: `syna_testing_pt0a_zte`

## Scope

This checkpoint reconstructs only `syna_testing_pt0a_zte` at stock entry
`0x0011b4c0`. The stock module, Ghidra pseudocode, P-Code, AArch64 assembly
and extracted PT0A limit tables are the evidence sources. No internet-derived
NX809J implementation was used.

The result is an offline microtask pass. It is not a claim that the entire
`zte_tpd` module or the physical touch controller has completed dynamic
validation.

## Recovered contract

- Allocate a 4096-byte output buffer with stock flags `0xdc0`.
- Test connection bit zero at `syna_tcm + 0x582`.
- Resolve testing item `0x0a00` and populate rows at `+0x20`, columns at
  `+0x24`, high/low limits at `+0x38/+0x40`, and the result buffer at `+0xd8`.
- Preserve the `testing_run_fn(struct tcm_dev *, struct testing_item *, bool)`
  callback type and invoke it with `false`.
- Format signed `s16` matrix samples using the device column count as stride.
- Copy the formatted output, diagnose nonzero `lock_depth`, release result data
  through the managed device, clear buffer counters, and free the output.
- Preserve the two observed stock leaks on disconnected and missing-item paths.

The AArch64 layouts are enforced with compile-time assertions in
`zte_tpd_testing_layout.h`. The two 3200-byte PT0A tables are `const` and now
materialize in `.rodata`, matching the extracted ELF.

## Reproducible build

`build_next47_pt0a_final_report.json` records two clean builds in separate
ephemeral Linux container runs, with a complete clean before each cycle. The
validator promoted the candidate only after the two module hashes matched.
`build_next47_pt0a_path_independent_report.json` separately records the
different-`M=`-path probe that produced the same module bytes.

- Image: `nubia-sm8850-kernel-builder:latest`
- Clang: Android `clang-r536225` 19.0.1
- Build gate: `PASS`, 2/2 cycles
- Module SHA-256: `fbbdf07a4d854aaa188e0cb2e3425758ff0740428d0a325c6ac8c694f191a769`
- Module size: 24,672,280 bytes

The full-driver audit remains `INCOMPLETE` because mapping 211 still lacks an
independent review. That pre-existing global warning is not converted into a
microtask-218 failure or hidden from the published report.

## Assembly and Ghidra

The strict reports are intentionally retained and report `FAIL` because the
compiler placed equivalent basic blocks in a different physical order.
Nothing rewrites those reports to manufacture a strict pass.

Structural parity is exact:

| Surface | Stock | Candidate |
|---|---:|---:|
| ELF symbol size | 852 | 852 |
| Ghidra body bytes | 800 | 800 |
| AArch64 instructions | 213 | 213 |
| Relocations | 46 | 46 |
| P-Code records | 638 | 638 |

`ghidra_reordered_semantic_validation_next47_pt0a.json` passes a bounded,
block-order-tolerant gate. It requires identical instruction and control-flow
mnemonic multisets, direct-call targets, resolved strings, record counts and
resolved relocation multisets. It permits only these observed differences:

1. one `mov` lowers as P-Code `COPY` versus `INT_ZEXT` because of register width;
2. the candidate names `syna_testing_pt0a_zte.__key`, while the stripped stock
   module exposes the same local lock key only as `.bss+0x95e`.

## KCFI

`kcfi_comparison_next47_pt0a.json` passes with exact section, size and type ID:

- stock function type ID: `0xae20471c`
- candidate function type ID: `0xae20471c`
- indirect `testing_run_fn` guard in the callsite: `0x81c04a92`
- function-pointer cast bypasses: none

## Direct harness

`harness/next47_pt0a_host_test_report.json` records two reproducible ASAN+UBSAN
runs with 12 passing cases:

1. allocation failure and exact error text;
2. disconnected path and preserved stock allocation lifetime;
3. missing testing item and preserved stock allocation lifetime;
4. callback failure and `Fail` result;
5. successful `Pass` result;
6. successful test with a false result;
7. signed matrix formatting with a distinct device stride;
8. zero data length;
9. zero rows;
10. zero columns and per-row newlines;
11. nonzero `lock_depth` diagnostic;
12. missing managed device and deferred result release.

The two harness binaries are byte-identical with SHA-256
`e21bb270b47fed473132c88523001858747e2fac8d13ba610c31f646b5175e78`.

## Decision

Microtask `218_syna_testing_pt0a_zte` is `PASS` for the offline reconstruction
protocol. Physical validation remains a separate controlled hardware gate and
must not be inferred from this result.
