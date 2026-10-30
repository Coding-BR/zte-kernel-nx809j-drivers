# syna_tcm_get_features attestation

Target: zte_tpd, stock entry 0x00123a08, task 286_syna_tcm_get_features.

## Evidence

- Ghidra decompilation, P-Code and AArch64 stock assembly were reviewed as
  the source of truth.
- Joern v4.0.548 strict mode passed with one mapped internal method, 94 calls,
  16 control structures, zero unresolved calls and zero mapped call deltas.
- The host contract harness passed twice inside
  nubia-sm8850-kernel-builder:latest with AddressSanitizer and Undefined
  Behavior Sanitizer enabled.
- Both deterministic harness binaries have SHA-256
  46bd81f694d15060e1147172cf3a4bd93a239434d9b5733645455d5aedc141be.
- The alignment sanitizer is disabled to preserve the raw AArch64 structure
  layout used by the recovered code.

## Recovered contract

The function requires application firmware mode, sends command 0x32, returns
the write result immediately when the caller output is null, otherwise copies
up to 0x10 response bytes under the recovered response lock. Null response data
or insufficient capacity returns -22; transport failures are propagated.
Short responses are copied partially as in the stock implementation.

## Promotion status

This is a host/static reconstruction attestation, not a claim of binary
identity or hardware readiness. Canonical kernel build, KCFI/module ABI,
independent review and eventual hardware validation remain pending. No
smartphone test was performed.
