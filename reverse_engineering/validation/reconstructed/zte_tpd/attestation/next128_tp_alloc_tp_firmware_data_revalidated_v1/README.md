# `tp_alloc_tp_firmware_data` -- offline exact attestation

## Scope

This package attests only `zte_tpd:tp_alloc_tp_firmware_data` at stock entry
`0x00107d54`. The source preserves the recovered allocation sequence,
descriptor size (`0x18`), GFP flags (`0xdc0`), cleanup ordering, diagnostics,
and the OEM dangling-slot behavior after a data-allocation failure.

## Required gates

Two independent canonical module builds produced identical artifacts. Exact
AArch64 instruction and relocation comparison, CFG topology, KCFI type and
symbol-size comparison, strict Joern analysis, and a direct ASan/UBSan
firmware-lifecycle harness all passed. Every evidence file is bound by
SHA-256 in `microtask_attestation_v1.json` and the driver microtask manifest.

## Boundary

This is an offline function-level result. No smartphone, ADB, fastboot,
module loading, SPI, IRQ, MMIO, scheduler integration, or physical hardware
behavior was exercised.
