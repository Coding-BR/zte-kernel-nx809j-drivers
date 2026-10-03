# syna_tcm_send_command attestation

Target: zte_tpd, stock entry 0x00123dc0, task 288_syna_tcm_send_command.

## Evidence

- The original Ghidra-shaped C dump was replaced by typed C because its
  artificial symbols, PAC checks and SP_EL0 canary code could not compile as a
  host contract. The rewrite preserves the recovered command dispatch,
  response routing, buffer offsets and error values.
- Joern v4.0.548 strict mode passed with one mapped internal method, 67 calls,
  13 control structures, zero unresolved calls and zero mapped call deltas.
- The host contract harness passed twice inside
  nubia-sm8850-kernel-builder:latest with AddressSanitizer and Undefined
  Behavior Sanitizer enabled.
- Both deterministic harness binaries have SHA-256
  70fff58aa2d432073b83238ceb7af453933a1d6aeac55cbec7634e74879c3bb1.
- The alignment sanitizer is disabled to preserve the raw AArch64 structure
  layout used by the recovered code.

## Recovered contract

The function selects polling delay when needed, invokes the transport
write_message callback, returns the response code to the caller even when the
transport returns an error, routes report codes 0x10 through 0xfe to
report_buf and status codes 0x01 through 0x0f to response, and converts failed
buffer copies to -243. A null event-data destination skips buffer copying.

The host test uses separate mock buffer addresses to prove that each response
class selects the correct source buffer.

## Promotion status

This is a host/static reconstruction attestation, not a claim of binary
identity or hardware readiness. Canonical kernel build, KCFI/module ABI,
independent review and eventual hardware validation remain pending. No
smartphone test was performed.
