# syna_tcm_get_app_info attestation

Target: zte_tpd, stock entry 0x00122c08, task 278_syna_tcm_get_app_info.

## Evidence

- Ghidra decompilation, P-Code and AArch64 stock assembly were reviewed as
  the source of truth.
- Joern v4.0.548 strict mode passed with one mapped internal method, 164 calls,
  19 control structures, zero unresolved calls and zero mapped call deltas.
- The host contract harness passed twice inside
  nubia-sm8850-kernel-builder:latest with AddressSanitizer and Undefined
  Behavior Sanitizer enabled.
- Both deterministic harness binaries have SHA-256
  ed86aa60932d5bd1ffab2cbda3954e7ca141192bcc04ca63db9461e9231129a0.
- The alignment sanitizer is disabled to preserve the raw AArch64 structure
  layout used by the recovered code.

## Recovered contract

The function requires application firmware mode, selects IRQ or polling
timeout, sends command 0x20, copies at most 0x30 bytes into the cached
application information and optional caller output, and restores response
buffer locking on every copy path. A zero application status updates the
derived geometry and customer configuration fields. Status 0xff and other
nonzero statuses return -242; null response data or insufficient capacity
returns -22; transport errors are propagated unchanged.

The harness writes little-endian protocol fields at their recovered offsets and
checks max_x, max_y, max_objects, image rows, image columns and the 16-byte
customer configuration identifier.

## Promotion status

This is a host/static reconstruction attestation, not a claim of binary
identity or hardware readiness. Canonical kernel build, KCFI/module ABI,
independent review and eventual hardware validation remain pending. No
smartphone test was performed.
