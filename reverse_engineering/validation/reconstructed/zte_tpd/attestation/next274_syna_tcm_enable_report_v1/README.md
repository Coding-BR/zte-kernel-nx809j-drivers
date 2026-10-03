# syna_tcm_enable_report attestation

Target: zte_tpd, stock entry 0x0012231c, task 274_syna_tcm_enable_report.

## Evidence

- Ghidra decompilation, P-Code and AArch64 stock assembly were reviewed as
  the source of truth.
- Joern v4.0.548 strict mode passed with one mapped internal method, 27 calls,
  6 control structures, zero unresolved calls and zero mapped call deltas.
- The host contract harness passed twice inside
  nubia-sm8850-kernel-builder:latest with AddressSanitizer and Undefined
  Behavior Sanitizer enabled.
- Both deterministic harness binaries have SHA-256
  0b914d6d35bbfb812ae538294fe1694d42321ba7e6b29bff4a68e261c779ae05.
- The alignment sanitizer is disabled to preserve the raw AArch64 structure
  layout used by the recovered code.

## Recovered contract

The function rejects a null device or a non-application firmware mode with raw
return -241. It selects IRQ or polling delay when the caller supplies zero,
chooses command 0x05 for enable and 0x06 for disable, sends the one-byte report
code payload and propagates the transport return value. The harness covers
explicit delays, both transport modes, command/payload selection and write
failure propagation.

The transport object is a required precondition inherited from the stock
function; no new null transport guard was invented.

## Promotion status

This is a host/static reconstruction attestation, not a claim of binary
identity or hardware readiness. Canonical kernel build, KCFI/module ABI,
independent review and eventual hardware validation remain pending. No
smartphone test was performed.
