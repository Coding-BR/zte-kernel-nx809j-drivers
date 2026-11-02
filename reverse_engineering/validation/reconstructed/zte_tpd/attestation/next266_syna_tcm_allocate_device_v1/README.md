# syna_tcm_allocate_device attestation

Target: zte_tpd, stock entry 0x00121124, task 266_syna_tcm_allocate_device.

## Evidence

- Ghidra decompilation, P-Code and AArch64 stock assembly were reviewed as the
  source of truth.
- The final Joern v4.0.548 strict gate passed with one mapped internal method,
  423 calls, 38 control structures, zero unresolved calls and zero mapped call
  deltas.
- The host contract harness passed twice inside
  nubia-sm8850-kernel-builder:latest with AddressSanitizer and Undefined
  Behavior Sanitizer enabled.
- Both deterministic harness binaries have SHA-256
  a98299dade4a8a6a4b5d4121e73bcd40938400e0ad300036e1983982779c1087.
- The host harness intentionally disables only the alignment sanitizer:
  the stock AArch64 sequence performs a required 32-bit store at unaligned
  offset 0x382; changing that layout would no longer model the recovered
  binary contract.

## Recovered contract

The function validates the configuration pointers, obtains the managed device,
allocates a 0x23e8 byte TCM object, initializes the recovered offsets and
defaults, allocates the four-byte response buffer, and performs the exact
failure cleanup order observed in the stock assembly. Allocation failures
return the recovered raw-decompiler value 0xffffff0d, while invalid input
returns 0xffffff0f.

## Promotion status

This is a host/static reconstruction attestation, not a claim of binary
identity or hardware readiness. Canonical kernel build, KCFI/module ABI,
independent review and eventual hardware validation remain pending. No
smartphone test was performed.
