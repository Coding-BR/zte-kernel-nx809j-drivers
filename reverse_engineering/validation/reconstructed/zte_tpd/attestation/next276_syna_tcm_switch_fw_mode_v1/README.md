# syna_tcm_switch_fw_mode attestation

Target: zte_tpd, stock entry 0x001226ec, task 276_syna_tcm_switch_fw_mode.

## Evidence

- Ghidra decompilation, P-Code and AArch64 stock assembly were reviewed as
  the source of truth.
- Joern v4.0.548 strict mode passed with one mapped internal method, 26 calls,
  11 control structures, zero unresolved calls and zero mapped call deltas.
- The host contract harness passed twice inside
  nubia-sm8850-kernel-builder:latest with AddressSanitizer and Undefined
  Behavior Sanitizer enabled.
- Both deterministic harness binaries have SHA-256
  7efacddc9a3b01a42bed10bba8ab77aa8e8fbb3b700e62fe6e9568a76f55d9aa.
- The alignment sanitizer is disabled to preserve the raw AArch64 structure
  layout used by the recovered code.

## Recovered contract

The function rejects a null device with -241, normalizes delay against the
proven timing field and transport IRQ capability, switches to application mode
with command 0x14 or bootloader mode with command 0x1f, preserves idempotent
mode requests, propagates transport errors, returns -242 when the requested
mode is not reached and invokes the optional max-read/write-size check after a
successful switch. The harness covers both firmware modes, IRQ and polling
delay selection, the delay floor, no-op behavior and failure propagation.

The callback return from check_max_rw_size is intentionally ignored because
that is the recovered stock behavior.

## Promotion status

This is a host/static reconstruction attestation, not a claim of binary
identity or hardware readiness. Canonical kernel build, KCFI/module ABI,
independent review and eventual hardware validation remain pending. No
smartphone test was performed.
