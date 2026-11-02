# `tp_free_tp_firmware_data` -- offline exact attestation

## Scope

This package attests only `zte_tpd:tp_free_tp_firmware_data` (stock entry
`0x00107cf0`). It records the reproducible offline result for the
reconstructed source, not a claim that the complete driver or the NX809J
hardware path has been validated.

## Required gates

The package contains two independent canonical module builds, an exact
AArch64 instruction-order comparison, CFG comparison, KCFI type comparison,
the strict Joern gate, and an ASan/UBSan host harness. Each evidence file is
bound by SHA-256 in `microtask_attestation_v1.json` and in the driver
microtask manifest.

## Boundary

No physical device was used for this attestation. Scheduler timing,
allocator integration, dependent-driver interaction, and hardware behavior
remain explicitly unverified until the controlled device-validation phase.
