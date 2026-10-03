# `tpd_touch_report` -- offline exact attestation

## Scope

This package attests only `zte_tpd:tpd_touch_report` at stock entry
`0x0010eb70`. The recovered source preserves the event order, optional
pressure and touch-major branches, mutex offset `0xc90`, and the `void`
return contract observed in Ghidra and Assembly.

## Required gates

Two independent canonical module builds produced the same SHA-256. Exact
AArch64 instruction and relocation comparison, CFG topology, KCFI absence,
strict Joern CPG analysis, and a direct ASan/UBSan harness all passed. The
Kbuild rule disables KCFI only for `tpd_touch_report.o`, matching the stock
module's lack of a valid entry preamble.

## Boundary

This is an offline function-level result. No smartphone, ADB, fastboot,
module loading, SPI, IRQ, MMIO, input-device registration, or physical
hardware behavior was exercised.
