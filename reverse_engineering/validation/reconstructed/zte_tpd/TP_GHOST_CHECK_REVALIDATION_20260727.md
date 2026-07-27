# Revalidation: `tp_ghost_check`

Date: 2026-07-27 UTC

## Scope

This is a repeatable, host-only revalidation of microtask
`101_tp_ghost_check`. It validates only
`kernel_development/drivers/reconstructed/zte_tpd/tp_ghost_check.c`; it does
not promote the complete `zte_tpd` driver and does not make a hardware claim.

Stock input:

```text
engineering/runs/NX809J-20260711T011653Z/01_acquisition/modules/zte_tpd.ko
SHA-256: a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342
```

Candidate build: `next101_tp_ghost_check_rewrite3`.

```text
module SHA-256: 1fea20b5652789251164fd05bf19d4b131e533924cc1449d7d30c7b63fcb856c
source SHA-256: be1c716aeabd399f110210e641c316ad2e88fd905104b2f2992e657bf821a647
```

The canonical Docker build ran twice and produced the same module SHA-256.

## Gates

| Gate | Result | Evidence |
|---|---|---|
| Canonical Docker build, two cycles | PASS | `build_next101_tp_ghost_check_rewrite3.json` |
| AArch64 section, size, instructions and resolved relocations | PASS | `assembly_comparison_rewrite3.json` |
| KCFI | PASS | type `0x2fad8a96`, 1312 bytes, `.text` |
| Joern strict source CPG | PASS | `joern_rewrite3/joern_gate_report.json` |
| Direct-source ASan/UBSan harness | PASS | four cases, two identical runs, binary SHA-256 `8afc8d314820c997b323dcbfae94b4a7d48c34a4069eb3a4d91c60b495a85cec` |
| Ghidra P-Code operation sequence | PASS | 1191 operations on both artifacts |
| Ghidra normalized decompiled-C presentation | OPEN | see the limitation below |

The host harness controls `vmalloc`, `vfree`, `printk`, `snprintf`, ZLOG
notification, `tpd_cdev`, and all ten `point_report_info` entries. It covers
allocation failure, no detection, single detection, multi detection, return
values, notification count, and cleanup order. It runs without ADB, fastboot,
`insmod`, MMIO, IRQ, SPI, or firmware access.

## AArch64 Review

Stock and candidate have 1312 bytes, 328 instructions, and matching resolved
relocations. The comparison accepts ten explicitly recorded commutative
`ADD`/`MUL` operand encodings. They use the same registers, flags, control
flow, and relocation targets; no branch, load/store, call, size, or relocation
exception is accepted.

The initial independent loads of `ghost_active` were reordered in the C source
to match the stock sequence before this build. This removed the prior load-pair
equivalence from the assembly report.

## Ghidra Type-Recovery Limitation

The stock module has lost the original C type for `point_report_info`. Ghidra
therefore renders each element as a 32-bit `DAT_*` object and refers to the
second 16-bit field with `._2_2_`. The candidate retains ELF data-symbol and
layout information, so Ghidra renders the same addresses as typed `u16`
fields. After canonical cleanup, it renders individual `_DAT_*` fields instead.

`NormalizeGhidraDataSymbols.java` is the explicit, auditable cleanup step used
for this comparison. It clears only the named candidate data-symbol family and
its generated data objects before decompilation; it never changes the ELF,
relocations, instructions, or P-Code. Invoke it before
`ExportKernelModuleAnalysis.java`:

```text
-postScript NormalizeGhidraDataSymbols.java point_report_info
```

The cleanup confirms that the discrepancy is decompiler presentation and type
recovery, but normalized decompiled-C equality remains false because the stock
does not contain enough type information to reconstruct the same aggregate
objects. This gate is deliberately left OPEN. Do not replace it with a broad
regex or treat it as an automatic PASS.

The independent evidence is preserved: P-Code operation sequence is equal,
assembly and relocations pass, KCFI matches, Joern passes, and the direct
harness passes. A layout-aware Ghidra normalizer with negative tests is still
required before claiming strict decompiled-C equality.

## Status

`101_tp_ghost_check` remains the previously scoped `PASS` microtask. This
revalidation improves its reproducible host harness and documents the Ghidra
type-recovery boundary. It does not establish runtime behavior on NX809J, does
not establish full-driver semantic equivalence, and must not be described as a
100 percent reconstruction.
