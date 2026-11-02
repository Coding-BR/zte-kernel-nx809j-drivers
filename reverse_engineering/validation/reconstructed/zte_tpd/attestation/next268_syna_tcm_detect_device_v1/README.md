# syna_tcm_detect_device attestation

Target: zte_tpd, stock entry 0x00121944, task 268_syna_tcm_detect_device.

## Evidence

- Ghidra decompilation, P-Code and AArch64 stock assembly were reviewed as the
  source of truth.
- The final Joern v4.0.548 strict gate passed with one mapped internal method,
  49 calls, 12 control structures, zero unresolved calls and zero mapped call
  deltas.
- The host contract harness passed twice inside
  nubia-sm8850-kernel-builder:latest with AddressSanitizer and Undefined
  Behavior Sanitizer enabled.
- Both deterministic harness binaries have SHA-256
  dc9c307064f956fa19660ee546f0b53474cee544d951f660b5658d3234e79085.

## Recovered contract

The function clears the detection-state halfword at offset 0x08, selects
TouchComm protocol from the low nibble, and forwards quick-setup and reinit
bits to syna_tcm_v1_detect. Protocol v1 error paths return the recovered
0xffffff0b value after the response-buffer diagnostic or the two missing
handler diagnostics. Quick setup returns 1. Non-quick v1 detection reports
bootloader mode 0x0b, application mode 0x01, or an unknown mode and returns
the resulting firmware-mode byte. Protocol v2 and invalid versions return
0xfffffff1.

The harness models the detector's required write of firmware_mode after the
stock halfword clear at +0x08, preserving the overlapping byte-level layout.

## Promotion status

This is a host/static reconstruction attestation, not a claim of binary
identity or hardware readiness. Canonical kernel build, KCFI/module ABI,
independent review and eventual hardware validation remain pending. No
smartphone test was performed.
