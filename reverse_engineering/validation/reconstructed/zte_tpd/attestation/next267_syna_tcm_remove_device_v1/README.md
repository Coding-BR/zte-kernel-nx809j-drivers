# syna_tcm_remove_device attestation

Target: zte_tpd, stock entry 0x001216d0, task 267_syna_tcm_remove_device.

## Evidence

- Ghidra decompilation, P-Code and AArch64 stock assembly were reviewed as the
  source of truth.
- The final Joern v4.0.548 strict gate passed with one mapped internal method,
  141 calls, 28 control structures, zero unresolved calls and zero mapped call
  deltas.
- The host contract harness passed twice inside
  nubia-sm8850-kernel-builder:latest with AddressSanitizer and Undefined
  Behavior Sanitizer enabled.
- Both deterministic harness binaries have SHA-256
  27380d1b698f6877e2e912829c5edf816224f95eacf000741ecf583ceadeb863.
- The alignment sanitizer is disabled to keep the host oracle consistent with
  the raw AArch64 memory contract used by the recovered driver sources.

## Recovered contract

The function handles a null TCM pointer with only the final diagnostic,
otherwise processes six buffer records in stock order. For each record it
conditionally frees the data pointer when the managed device exists, clears
the adjacent state field and flag, and preserves the recovered pointer slots.
It then clears the identity fields at offsets 0x0 and 0x48 and frees the TCM
object when the managed device exists. Missing managed-device paths log and
continue with state cleanup, matching the stock control flow.

## Promotion status

This is a host/static reconstruction attestation, not a claim of binary
identity or hardware readiness. Canonical kernel build, KCFI/module ABI,
independent review and eventual hardware validation remain pending. No
smartphone test was performed.
