# syna_tcm_sleep attestation

Target: zte_tpd, stock entry 0x001238fc, task 285_syna_tcm_sleep.

## Evidence

- Ghidra decompilation, P-Code and AArch64 stock assembly were reviewed as
  the source of truth.
- Joern v4.0.548 strict mode passed with one mapped internal method, 19 calls,
  5 control structures, zero unresolved calls and zero mapped call deltas.
- The host contract harness passed twice inside
  nubia-sm8850-kernel-builder:latest with AddressSanitizer and Undefined
  Behavior Sanitizer enabled.
- Both deterministic harness binaries have SHA-256
  f7466400ee700da06be03974329f324d394ae76f1ae5277c1ad381c09315efd9.
- The alignment sanitizer is disabled to preserve the raw AArch64 structure
  layout used by the recovered code.

## Recovered contract

The function rejects a null device with -241, selects IRQ or polling delay,
uses command 0x2c for enable and 0x2d for disable, sends no payload and
propagates transport failures. The harness covers both commands, both timeout
modes, explicit delay and failure propagation.

## Promotion status

This is a host/static reconstruction attestation, not a claim of binary
identity or hardware readiness. Canonical kernel build, KCFI/module ABI,
independent review and eventual hardware validation remain pending. No
smartphone test was performed.
