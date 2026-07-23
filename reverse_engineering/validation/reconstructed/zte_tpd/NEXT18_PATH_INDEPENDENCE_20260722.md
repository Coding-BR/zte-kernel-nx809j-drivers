# Next18: Path-Independent Canonical Build

## Verdict

`PASS` for byte-for-byte path-independent reconstruction of the current
`zte_tpd.ko` candidate. This is an offline build-property gate; no smartphone,
ADB, fastboot, module loading, IRQ, MMIO, or hardware test was performed.

- Candidate SHA-256:
  `214eb06c1a1074b329818fb0b0a7c9d0e9ca1e6880a1454442b8355fd3f4ea97`.
- Candidate size: `24,413,752` bytes.
- Build cycles accepted: `2/2`.
- Compiler: `clang-r536225`, Clang 19.0.1.
- Container: `nubia-sm8850-kernel-builder:latest`.

## Root Cause

The previous canonical build and the independent auditor were individually
reproducible but produced different module hashes. Source objects had path
mapping, while Kbuild compiled generated `zte_tpd.mod.c` outside the module
Makefile's effective `ccflags-y` scope. Absolute `M=` paths therefore remained
in `.debug_str` and `.debug_line_str`.

Exporting `KCFLAGS` inside the external-module Makefile did not reach the
modfinal invocation. The accepted fix passes this value on the top-level make
command line:

```text
KCFLAGS=-ffile-prefix-map=<absolute-M-path>=/zte_tpd
```

The module Makefile applies the matching map through `ccflags-y` to its own
source objects. The canonical builder and independent auditor pass `KCFLAGS`
explicitly so the generated `*.mod.c` object receives the same rule.

## Mandatory Gate

`run_zte_tpd_canonical_build.py` now assigns deliberately different `M=`
paths to every clean cycle. For this checkpoint it used:

```text
/work/engineering/validation/next18_production_final/a/zte_tpd
/work/engineering/validation/next18_production_final/path_independence_much_longer_cycle_2/zte_tpd
```

Both cycles normalize input mtimes, reject build diagnostics, and must produce
identical module size and SHA-256 before promotion. The authoritative machine
report is `build_next18_production_final_report.json`.

The independent auditor applies the same command-line map in
`validate_reconstructed_drivers.py`. Tests in
`test_zte_tpd_path_independence.py` prevent removal of either the source-object
or generated-module-object mapping and require distinct canonical paths.

## Scope And Limitations

Path independence proves that host directory names do not alter the promoted
ELF. It does not prove full driver semantics or hardware behavior. The map also
normalizes diagnostic strings derived from `__FILE__` to `/zte_tpd`; those
strings are intentionally stable but are not claimed to reproduce the OEM's
private build path. Function-level assembly, KCFI, Ghidra/P-Code, harness, and
eventual controlled hardware gates remain independent requirements.
