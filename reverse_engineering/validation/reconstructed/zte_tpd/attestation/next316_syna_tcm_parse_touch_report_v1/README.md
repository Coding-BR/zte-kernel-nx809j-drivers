# Target 316: `syna_tcm_parse_touch_report`

This attestation records the offline reconstruction of stock entry `0x0012860c`
from the NX809J ZTE TPD module.

## Scope

- Correlates the Ghidra decompilation, P-Code and AArch64 Assembly listing.
- Replaces the raw decompiler body with a typed transition that names the
  proven `tcm_dev` and touch-report offsets and isolates decoding helpers.
- Exercises the transition through 13 host assertions under ASan/UBSan in two
  reproducible container cycles.
- Keeps the transition classified as reviewable reverse-engineering work, not
  as canonical GKI C or hardware-equivalent code.

## Gates

1. Joern v4.0.548 strict gate: **PASS**; one mapped stock identity, zero
   mapped call deltas, zero unresolved calls and zero parser problems. The
   target graph contains 201 calls and 63 control structures.
2. Typed-transition host harness: **PASS** in two identical ASan/UBSan cycles;
   both binaries have SHA-256
   `866fc4ebc6c3783855100b306983bd251ec3fe988ed0507338c9f766d32286cc`.
3. AArch64 ABI probe syntax check and Assembly emission: **PASS** using
   Android clang 19.0.1 and `aarch64-linux-android34`.
4. Full project suite: **PASS** (`272 passed`) when run at publication time.

## Remaining review gates

The transition still uses an opaque `tcm_dev` layout view backed by proven
offsets. Before promotion, independently reconstruct and review the complete
layout, callback ABI/CFI identity, callback error propagation, truncated-report
handling, multi-object boundaries and malformed custom formats. A canonical
`vendor_dlkm` build, KCFI/relocation evidence and final hardware validation are
also required.

No smartphone test was run in this cycle.
