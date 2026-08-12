# syna_tcm_get_event_data attestation

Target: zte_tpd, stock entry 0x00121ad4, task 269_syna_tcm_get_event_data.

## Evidence

- Ghidra decompilation, P-Code and AArch64 stock assembly were reviewed as the
  source of truth.
- The final Joern v4.0.548 strict gate passed with one mapped internal method,
  46 calls, 10 control structures, zero unresolved calls and zero mapped call
  deltas.
- The host contract harness passed twice inside
  nubia-sm8850-kernel-builder:latest with AddressSanitizer and Undefined
  Behavior Sanitizer enabled.
- Both deterministic harness binaries have SHA-256
  b7ad7ea806eed9195fac260d4eea85b93e8b9a463b560690ec81148a5e136be6.
- The harness uses a typed mock for the indirect read callback and a direct
  mock for the local buffer-copy helper; this preserves the call contracts
  without hiding incompatible function-pointer types.

## Recovered contract

The function validates the TCM device and event-code pointers, calls the
recovered read callback, and propagates a negative transport result. With a
destination buffer it routes report codes 0x10 through 0xfe to the report
buffer and response codes 0x01 through 0x0f to the response buffer. Empty
source buffers are ignored, successful copies return zero, and copy failures
return the helper's negative result. Code zero and 0xff select neither buffer.

## Promotion status

This is a host/static reconstruction attestation, not a claim of binary
identity or hardware readiness. Canonical kernel build, KCFI/module ABI,
independent review and eventual hardware validation remain pending. No
smartphone test was performed.
