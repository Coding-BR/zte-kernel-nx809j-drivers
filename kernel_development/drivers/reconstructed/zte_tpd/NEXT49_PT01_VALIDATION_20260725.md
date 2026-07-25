# Next49: `syna_testing_pt01_zte`

## Scope

This checkpoint reconstructs only `syna_testing_pt01_zte` at stock entry
`0x0011bb70`. The local stock module, Ghidra pseudocode, P-Code, AArch64
assembly and extracted 16-byte PT01 limit table are the evidence sources.

The result is an offline microtask pass. It is not a claim that the complete
`zte_tpd` module or the physical touch controller is dynamically validated.

## Recovered contract

- Allocate a 4096-byte output buffer with stock flags `0xdc0`.
- Do not add a connection-bit gate; the stock ZTE wrapper invokes item
  `0x0100` without checking `syna_tcm + 0x582`.
- Attach one 16-byte limit at `testing_item + 0x38` and the result buffer at
  `testing_item + 0xd8`.
- Preserve `testing_run_fn(struct tcm_dev *, struct testing_item *, bool)` and
  invoke it with `false`, including KCFI guard `0x81c04a92`.
- Emit every result byte as `x%02X `, followed by one newline.
- Copy the output, diagnose nonzero `lock_depth`, release result data through
  the managed device, clear buffer counters, and free the output buffer.
- Preserve the stock output-buffer leak when item `0x0100` is unavailable.

`pt01_limits` is `const` and therefore materializes in `.rodata` like stock.

## Reproducible build

Two clean builds ran in independent Linux containers with deliberately
different `M=` paths and Android Clang `r536225` 19.0.1. Both artifacts were
byte-identical and contained no warning, error or clock-skew diagnostic.

- Module SHA-256:
  `e0f09eed5f42dd45549911ac32a08c480095e081a362418d125804d0280aca30`
- Module size: 24,664,136 bytes
- Cycles accepted: 2/2

The full-driver rebuild audit also passed build, reproducibility, AArch64,
aliases, imports, namespace, vermagic and candidate/fresh-artifact checks. Its
global status remains `INCOMPLETE` because mapping 211 lacks independent
review.

## Assembly And Ghidra

Stock and candidate both have 692 symbol bytes, 640 Ghidra body bytes, 173
AArch64 instructions, 42 relocations and 499 P-Code records. The complete
instruction sequence is identical.

The strict assembly report remains `FAIL` only because the stripped stock ELF
identifies two lock-key relocations as `.bss+0x95e`, while the candidate names
`syna_testing_pt01_zte.__key`. The bounded relocation rule accepts exactly
that pair and no other delta.

The strict Ghidra report discloses normalized decompiled-C inequality. Body
size, ordered P-Code operation shape, P-Code operation multiset, calls,
control, strings, instruction surface and candidate hash binding all pass.

## KCFI And Joern

Stock and candidate KCFI type IDs are both `0xae20471c`; no function-pointer
cast bypass is present. Joern v4.0.548 resolved the target 1/1 with 88 call
nodes, 12 control structures, zero parse problems, zero unresolved calls and
zero mapped-call deltas. Joern records `promotion_claim=false`.

## Direct Harness

The Android Clang host harness passed nine cases in two reproducible
ASAN+UBSAN cycles with no stderr. It covers allocation failure, missing-item
lifetime, callback failure, pass/fail state, absence of a connection gate,
zero-length output, hexadecimal bytes `00/7F/80/FF`, lock diagnostics, managed
cleanup and missing-managed-device behavior.

The reproducible harness binary SHA-256 is
`3b8984636e2d4e5905d2909a44cd985759a0245eda06be84bbc514adedd73e80`.

## Decision

Microtask `220_syna_testing_pt01_zte` is `PASS` for the offline reconstruction
protocol. The global count is `172 PASS / 195 READY`. Physical validation and
independent review remain separate required gates.
