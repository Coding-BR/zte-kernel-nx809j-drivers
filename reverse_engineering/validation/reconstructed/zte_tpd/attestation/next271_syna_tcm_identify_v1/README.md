# syna_tcm_identify attestation

Target: zte_tpd, stock entry 0x00121f54, task 271_syna_tcm_identify.

## Evidence

- Ghidra decompilation, P-Code and AArch64 stock assembly were reviewed as
  the source of truth.
- Joern v4.0.548 strict mode passed with one mapped internal method, 85 calls,
  13 control structures, zero unresolved calls and zero mapped call deltas.
- The host contract harness passed twice inside
  nubia-sm8850-kernel-builder:latest with AddressSanitizer and Undefined
  Behavior Sanitizer enabled.
- Both deterministic harness binaries have SHA-256
  4c32b355a9283e243f39e2b824d9fe67e0811d14486ba055257011f7bdd67d79.
- The alignment sanitizer is disabled to preserve the raw AArch64 structure
  layout used by the recovered code.

## Recovered contract

The function rejects a null TCM device with raw return -241, selects IRQ or
polling timeout when the caller supplies zero, sends command 0x02, propagates
transport errors, updates firmware_mode from the identification record and
optionally copies a bounded identification structure from the response buffer.
Copy failures return -22 and use the mapped stock unlock helper. Successful
copies restore response lock depth and unlock the response mutex.

The source calls syna_tcm_buf_unlock_0 deliberately. The stock target's
unresolved call identity is the second unlock instance at the corresponding
reconstruction-map entry; Joern strict mode therefore requires this exact
mapped symbol rather than the generic syna_tcm_buf_unlock alias.

## Promotion status

This is a host/static reconstruction attestation, not a claim of binary
identity or hardware readiness. Canonical kernel build, KCFI/module ABI,
independent review and eventual hardware validation remain pending. No
smartphone test was performed.
