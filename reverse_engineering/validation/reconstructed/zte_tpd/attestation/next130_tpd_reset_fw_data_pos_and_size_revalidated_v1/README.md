# `tpd_reset_fw_data_pos_and_size` -- offline exact attestation

## Scope

This package attests only `zte_tpd:tpd_reset_fw_data_pos_and_size` at stock
entry `0x00107f84`. The recovered source preserves the direct read from
offset `0x448`, zero-extended 64-bit descriptor store through offset `0xc58`,
and the subsequent 32-bit zero reset at offset `0x448`.

## Required gates

Two independent canonical module builds produced the same SHA-256. Exact
AArch64 instruction and relocation comparison, CFG topology, KCFI type and
symbol-size comparison, strict Joern CPG analysis, and a direct ASan/UBSan
harness all passed. Each file is bound by SHA-256 in the microtask manifest.

## Boundary

This is an offline function-level result. No smartphone, ADB, fastboot,
module loading, SPI, IRQ, MMIO, firmware transport, scheduler integration, or
physical hardware behavior was exercised.
