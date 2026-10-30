# `tpd_copy_to_tp_firmware_data` -- offline exact attestation

## Scope

This package attests only `zte_tpd:tpd_copy_to_tp_firmware_data` at stock
entry `0x00107eb8`. The recovered source preserves the firmware-descriptor
null checks, diagnostics, return values, offset `0x448`, descriptor offset
`0xc58`, bounded copy calculation, `memcpy`, and position update.

## Required gates

Two independent canonical module builds produced the same module SHA-256.
Exact AArch64 instruction and normalized relocation comparison, CFG topology,
KCFI type and symbol-size comparison, a strict Joern CPG gate, and a direct
ASan/UBSan firmware-lifecycle harness all passed. The manifest binds each
evidence item with SHA-256; the driver microtask manifest independently
requires compile, KCFI, test, and Joern evidence.

## Boundary

This is an offline function-level result. No smartphone, ADB, fastboot,
module loading, SPI, IRQ, MMIO, scheduler integration, or physical hardware
behavior was exercised.
