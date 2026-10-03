# syna_tcm_wait_for_report attestation

Target: zte_tpd, stock entry 0x0012248c, task 275_syna_tcm_wait_for_report.

## Evidence

- The original decompiler-shaped C dump was replaced by typed C because the
  first Joern pass exposed no call graph for the recovered event-data call.
  The typed rewrite preserves the Ghidra conditions and proven offsets while
  making the transport IRQ callback overlay explicit.
- Joern v4.0.548 strict mode passed with one mapped internal method, 71 calls,
  12 control structures, zero unresolved calls and zero mapped call deltas.
- The host contract harness passed twice inside
  nubia-sm8850-kernel-builder:latest with AddressSanitizer and Undefined
  Behavior Sanitizer enabled.
- Both deterministic harness binaries have SHA-256
  b88d04c9ab440f3fb34c7b3d0d26948288dc52ae6bb3c852a662485078b3f35f.
- The alignment sanitizer is disabled to preserve the raw AArch64 structure
  layout used by the recovered code.

## Recovered contract

The function rejects null device and event-buffer handles and requires
application firmware mode, returning -241. It temporarily disables IRQ through
the transport callback when the stock flags and callback are present, polls
event data until the requested report code and non-zero event length are seen,
restores IRQ when the recovered state requires it, and returns -244 on timeout
without the requested valid event. The harness covers matching events,
polling retries, timeout, read failure, IRQ restore and synchronization balance.

The transport callback is represented by a local overlay at the stock offset
0x38. The raw stock dump had an untyped callback and compiler artifacts; the
rewritten source keeps the offset contract and does not infer unrelated fields.

## Promotion status

This is a host/static reconstruction attestation, not a claim of binary
identity or hardware readiness. Canonical kernel build, KCFI/module ABI,
independent review and eventual hardware validation remain pending. No
smartphone test was performed.
