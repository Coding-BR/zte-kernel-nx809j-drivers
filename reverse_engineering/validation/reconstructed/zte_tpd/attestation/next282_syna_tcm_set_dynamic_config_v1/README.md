# syna_tcm_set_dynamic_config attestation

Target: zte_tpd, stock entry 0x001233b4, task 282_syna_tcm_set_dynamic_config.

## Evidence

- Ghidra decompilation, P-Code and AArch64 stock assembly were reviewed as
  the source of truth.
- Joern v4.0.548 strict mode passed with one mapped internal method, 33 calls,
  6 control structures, zero unresolved calls and zero mapped call deltas.
- The host contract harness passed twice inside
  nubia-sm8850-kernel-builder:latest with AddressSanitizer and Undefined
  Behavior Sanitizer enabled.
- Both deterministic harness binaries have SHA-256
  f6f25d246fb2d0e1d87eb5a82888774caf3afcadd7e9d2b6f13c7666eada9a38.
- The alignment sanitizer is disabled to preserve the raw AArch64 structure
  layout used by the recovered code.

## Recovered contract

The function requires application firmware mode, selects IRQ or polling delay,
serializes a three-byte command payload containing the configuration ID and a
little-endian 16-bit value, sends command 0x24 and propagates transport errors.
The harness covers invalid device state, IRQ and polling timing, explicit delay,
payload byte order and failed writes.

## Promotion status

This is a host/static reconstruction attestation, not a claim of binary
identity or hardware readiness. Canonical kernel build, KCFI/module ABI,
independent review and eventual hardware validation remain pending. No
smartphone test was performed.
