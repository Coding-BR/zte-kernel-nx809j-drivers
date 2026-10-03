# syna_tcm_buf_copy attestation

Target: zte_tpd, stock entry 0x00121c10, task 270_syna_tcm_buf_copy.
The recovered source file is named syna_tcm_buf_copy_2.c while the stock ELF
symbol is syna_tcm_buf_copy.

## Evidence

- Ghidra decompilation, P-Code and AArch64 stock assembly were reviewed as the
  source of truth.
- The final Joern v4.0.548 strict gate passed with one mapped internal method,
  200 calls, 33 control structures, zero unresolved calls and zero mapped call
  deltas.
- The host contract harness passed twice inside
  nubia-sm8850-kernel-builder:latest with AddressSanitizer and Undefined
  Behavior Sanitizer enabled.
- Both deterministic harness binaries have SHA-256
  b222e133b57423a23531b8715b0d0e81c437dd042cfb0505bd02394a025107a7.
- The alignment sanitizer is disabled to preserve the raw AArch64 buffer
  layout used by the recovered code.

## Recovered contract

The function locks destination and source buffers, increments their lock
depths, grows the destination to source data length plus one when required,
zeroes the destination allocation, copies the source bytes and propagates the
source length. Allocation failure returns the recovered raw value 0xffffff0d;
missing data or insufficient capacity returns 0xffffffea. Every tested exit
restores both lock depths and unlocks in the stock order.

The recovered function assumes non-null buffer objects because the stock code
dereferences the destination before its later defensive branch. The harness
therefore tests valid buffer-object preconditions and records this limitation
instead of inventing a new null guard.

## Promotion status

This is a host/static reconstruction attestation, not a claim of binary
identity or hardware readiness. Canonical kernel build, KCFI/module ABI,
independent review and eventual hardware validation remain pending. No
smartphone test was performed.
