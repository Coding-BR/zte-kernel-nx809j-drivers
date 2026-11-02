# syna_tcm_get_boot_info attestation

Target: zte_tpd, stock entry 0x001229c8, task 277_syna_tcm_get_boot_info.

## Evidence

- Ghidra decompilation, P-Code and AArch64 stock assembly were reviewed as
  the source of truth.
- Joern v4.0.548 strict mode passed with one mapped internal method, 100 calls,
  16 control structures, zero unresolved calls and zero mapped call deltas.
- The host contract harness passed twice inside
  nubia-sm8850-kernel-builder:latest with AddressSanitizer and Undefined
  Behavior Sanitizer enabled.
- Both deterministic harness binaries have SHA-256
  efa0c906d9123e332ca87f3fa72071f07f37fce07bd99f97c1214950eb8f3544.
- The alignment sanitizer is disabled to preserve the raw AArch64 structure
  layout used by the recovered code.

## Recovered contract

The function requires a valid TCM device in bootloader mode, selects IRQ or
polling timeout, sends command 0x10, copies at most sizeof(struct tcm_boot_info)
from the response buffer into the cached boot information and optionally into
the caller output, and returns transport errors unchanged. Missing response
data or insufficient response capacity returns -22 while restoring response
lock depth and mutex state. The harness covers validation, both timeout modes,
copy truncation, null output, short/null response buffers and nested locks.

The cached boot-info copy is retained because the stock function updates the
TCM object before optionally copying to its caller.

## Promotion status

This is a host/static reconstruction attestation, not a claim of binary
identity or hardware readiness. Canonical kernel build, KCFI/module ABI,
independent review and eventual hardware validation remain pending. No
smartphone test was performed.
