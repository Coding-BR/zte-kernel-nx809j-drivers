# syna_tcm_get_dynamic_config attestation

Target: zte_tpd, stock entry 0x00123228, task 281_syna_tcm_get_dynamic_config.

## Evidence

- Ghidra decompilation, P-Code and AArch64 stock assembly were reviewed as
  the source of truth.
- Joern v4.0.548 strict mode passed with one mapped internal method, 38 calls,
  7 control structures, zero unresolved calls and zero mapped call deltas.
- The host contract harness passed twice inside
  nubia-sm8850-kernel-builder:latest with AddressSanitizer and Undefined
  Behavior Sanitizer enabled.
- Both deterministic harness binaries have SHA-256
  b0d2b3b331c29c9f1324aea666b7fec9569fdae686dcad52d52582498f52972d.
- The alignment sanitizer is disabled to preserve the raw AArch64 structure
  layout used by the recovered code.

## Recovered contract

The function requires application firmware mode, selects IRQ or polling delay,
sends command 0x23 with the requested configuration ID as a one-byte payload,
and copies the first little-endian 16-bit response value. Transport failures
are propagated. A response shorter than two bytes logs the stock error but
returns the existing success value without writing the caller output.

The caller value and response data are required preconditions inherited from
the stock dereferences; the harness does not invent null guards for them.

## Promotion status

This is a host/static reconstruction attestation, not a claim of binary
identity or hardware readiness. Canonical kernel build, KCFI/module ABI,
independent review and eventual hardware validation remain pending. No
smartphone test was performed.
